package io.opencaesar.oml.dsl.ide.diagram;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import org.eclipse.emf.common.util.TreeIterator;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;

import io.opencaesar.oml.AnonymousConceptInstance;
import io.opencaesar.oml.Aspect;
import io.opencaesar.oml.Assertion;
import io.opencaesar.oml.Axiom;
import io.opencaesar.oml.Concept;
import io.opencaesar.oml.ConceptInstance;
import io.opencaesar.oml.Element;
import io.opencaesar.oml.Entity;
import io.opencaesar.oml.Instance;
import io.opencaesar.oml.KeyAxiom;
import io.opencaesar.oml.Member;
import io.opencaesar.oml.NamedInstance;
import io.opencaesar.oml.Ontology;
import io.opencaesar.oml.PropertyCardinalityRestrictionAxiom;
import io.opencaesar.oml.PropertyRangeRestrictionAxiom;
import io.opencaesar.oml.PropertyValueAssertion;
import io.opencaesar.oml.PropertyValueRestrictionAxiom;
import io.opencaesar.oml.Relation;
import io.opencaesar.oml.RelationEntity;
import io.opencaesar.oml.RelationInstance;
import io.opencaesar.oml.Scalar;
import io.opencaesar.oml.ScalarProperty;
import io.opencaesar.oml.SemanticProperty;
import io.opencaesar.oml.SpecializationAxiom;
import io.opencaesar.oml.Type;
import io.opencaesar.oml.UnreifiedRelation;
import io.opencaesar.oml.util.OmlRead;
import io.opencaesar.oml.util.OmlSearch;
import io.opencaesar.oml.util.OmlSwitch;

class OmlOntoloyDiagramScope {

	private enum Mode {
		// Find all entities
		Phase1,
		// Find which properties (incl. inherited) must be included
		Phase2
	}

	private Mode mode;
	private final Ontology ontology;
	private final Set<Resource> scope;
	private final DiagramVisitor visitor;

	private final Set<Ontology> allImportedOntologies;
	private final Set<Element> allImportedElements;

	private final Map<Aspect, Set<Element>> aspects;
	private final Map<Concept, Set<Element>> concepts;
	private final Map<RelationEntity, Set<Element>> relationEntities;
	private final Map<Relation, Set<Element>> relations;
	private final Map<Scalar, Set<Element>> scalars;
	private final Map<Member, Set<Element>> memberIncidentElements;
	private final Set<ScalarProperty> allScalarProperties;
	private final Set<PropertyValueAssertion> allPropertyValueAssertions;

	final Map<Entity, Set<ScalarProperty>> scalarProperties;
	final Map<Entity, Set<Axiom>> entityAxioms;

	// For a ConceptInstance or RelationInstance, the set of Assertions or
	// RelationInstances.
	final Map<NamedInstance, Set<Element>> instanceAssertions;

	private final Map<AnonymousConceptInstance, Set<Assertion>> anonymousConceptAssertions;
	private final Set<Element> secondPhase;

	public OmlOntoloyDiagramScope(final Ontology ontology) {
		this.mode = Mode.Phase1;
		this.ontology = ontology;
		this.scope = OmlRead.getImportScope(ontology);
		this.visitor = new DiagramVisitor();
		this.allImportedOntologies = new HashSet<>();
		this.allImportedElements = new HashSet<>();
		this.aspects = new HashMap<>();
		this.concepts = new HashMap<>();
		this.relationEntities = new HashMap<>();
		this.relations = new HashMap<>();
		this.memberIncidentElements = new HashMap<>();
		this.scalars = new HashMap<>();
		this.scalarProperties = new HashMap<>();
		this.allScalarProperties = new HashSet<>();
		this.allPropertyValueAssertions = new HashSet<>();
		this.entityAxioms = new HashMap<>();
		this.instanceAssertions = new HashMap<>();
		this.anonymousConceptAssertions = new HashMap<>();
		this.secondPhase = new HashSet<>();
	}

	private boolean includes(final EObject e) {
		if (e instanceof Aspect) {
			return aspects.containsKey((Aspect) e);
		} else if (e instanceof Concept) {
			return concepts.containsKey((Concept) e);
		} else if (e instanceof RelationEntity) {
			return relationEntities.containsKey((RelationEntity) e);
		} else if (e instanceof Scalar) {
			return scalars.containsKey((Scalar) e);
		} else if (e instanceof Relation) {
			return relations.containsKey((Relation) e);
		} else if (e instanceof ScalarProperty) {
			return allScalarProperties.contains((ScalarProperty) e);
		} else if (e instanceof NamedInstance) {
			return instanceAssertions.containsKey((NamedInstance) e);
		} else if (e instanceof AnonymousConceptInstance) {
			return anonymousConceptAssertions.containsKey((AnonymousConceptInstance) e);
		} else if (e instanceof PropertyValueAssertion) {
			return allPropertyValueAssertions.contains((PropertyValueAssertion) e);
		} else if (e instanceof SpecializationAxiom) {
			SpecializationAxiom ax = (SpecializationAxiom) e;
			return includes(ax.getSuperTerm()) && includes(ax.getOwningTerm());
		} else
			return false;
	}

	public boolean entityHasPropertiesOrEdges(Entity entity) {
		final boolean hasPropertiesOrEdges = !scalarProperties.get(entity).isEmpty() || !entityAxioms.get(entity).isEmpty();
		if (entity instanceof RelationEntity) {
			final RelationEntity re = (RelationEntity) entity;
			return hasPropertiesOrEdges || !memberIncidentElements.get(re).isEmpty();
		} else
			return hasPropertiesOrEdges;
	}

	private void analyze1Ontology(Ontology o) {
		if (null != o) {
			allImportedOntologies.add(o);
			TreeIterator<EObject> i = o.eAllContents();
			while (i.hasNext()) {
				EObject obj = i.next();
				if (obj instanceof Axiom || obj instanceof Type || obj instanceof SemanticProperty || obj instanceof NamedInstance || obj instanceof Assertion)
					allImportedElements.add((Element) obj);
			}
		}
	}

	public OmlOntoloyDiagramScope analyze() {
		OmlRead.getImportedOntologyClosure(ontology, true).forEach(o -> analyze1Ontology(o));

		for (Iterator<EObject> i = ontology.eAllContents(); i.hasNext();) {
			EObject obj = i.next();
			if (obj instanceof Element) {
				visitor.doSwitch((Element) obj);
			}
		}
		mode = Mode.Phase2;
		secondPhase.forEach(e -> visitor.doSwitch(e));
		return this;
	}

	public Set<Element> scope() {
		Set<Element> s = new HashSet<>();
		s.addAll(aspects.keySet());
		s.addAll(concepts.keySet());
		s.addAll(scalars.keySet());
		s.addAll(relationEntities.keySet());
		s.addAll(relations.keySet());
		s.addAll(instanceAssertions.keySet());
		s.addAll(anonymousConceptAssertions.keySet());
		s.addAll(allPropertyValueAssertions);
		return s;
	}

	private void phase1InitializeEntity(final Entity e) {
		phase1InitializeEntityProperties(e);
		if (!entityAxioms.containsKey(e)) {
			entityAxioms.put(e, new HashSet<>());
		}
	}

	private void phase1InitializeEntityProperties(final Entity entity) {
		if (!scalarProperties.containsKey(entity)) {
			scalarProperties.put(entity, new HashSet<>());
		}
		
		OmlSearch.findAllSuperTerms(entity, true, scope).stream()
			.filter(t -> t instanceof Entity)
			.map(t -> (Entity) t)
			.flatMap(c -> OmlSearch.findScalarPropertiesWithDomain(c, scope).stream())
				.filter(p -> allImportedElements.contains(p))
				.forEach(p -> allScalarProperties.add(p));
	}

	private void phase2AddEntityScalarProperty(final Entity entity, final ScalarProperty p) {
		scalarProperties.get(entity).add(p);
	}

	private void phase2ScanAllEntityProperties(final Entity entity) {
		OmlSearch.findAllSuperTerms(entity, true, scope).stream().filter(t -> t instanceof Entity).map(t -> (Entity) t).forEach(parent -> {
			OmlSearch.findScalarPropertiesWithDomain(parent, scope).forEach(p -> {
				if (allImportedElements.contains(p)) {
					if (p instanceof ScalarProperty) {
						ScalarProperty sp = (ScalarProperty) p;
						if (includes(parent)) {
							phase2AddEntityScalarProperty(parent, sp);
						} else {
							phase2AddEntityScalarProperty(entity, sp);
						}
					}
				}
			});
		});
	}

	private void phase1ScanEntityAxioms(final Entity e, final Set<Element> others) {
		OmlSearch.findKeyAxioms(e, scope).forEach(ax -> {
			if (allImportedElements.contains(ax)) {
				others.add(ax);
			}
		});
		OmlSearch.findSpecializationAxiomsWithSubTerm(e, scope).forEach(ax -> {
			if (allImportedElements.contains(ax)) {
				others.add(ax);
			}
		});
		OmlSearch.findPropertyRestrictionAxioms(e, scope).forEach(ax -> {
			if (allImportedElements.contains(ax)) {
				others.add(ax);
			}
		});
	}

	private void phase2FilterEntityAxioms(final Entity e, final Set<Element> others) {
		final Set<Axiom> ax = entityAxioms.get(e);
		others.forEach(o -> {
			if (o instanceof KeyAxiom) {
				KeyAxiom x = (KeyAxiom) o;
				if (x.getProperties().stream().allMatch(p -> includes(p))) {
					ax.add(x);
				}
			} else if (o instanceof SpecializationAxiom) {
				SpecializationAxiom x = (SpecializationAxiom) o;
				if (includes(x.getSuperTerm())) {
					ax.add(x);
				}
			} else if (o instanceof PropertyRangeRestrictionAxiom) {
				PropertyRangeRestrictionAxiom x = (PropertyRangeRestrictionAxiom) o;
				boolean needToCheckRange = x.getProperty() instanceof Relation && x.getRange() != null;
				if (includes(x.getProperty()) && (!needToCheckRange || includes(x.getRange()))) {
					ax.add(x);
				}
			} else if (o instanceof PropertyCardinalityRestrictionAxiom) {
				PropertyCardinalityRestrictionAxiom x = (PropertyCardinalityRestrictionAxiom) o;
				boolean needToCheckRange = x.getProperty() instanceof Relation && x.getRange() != null;
				if (includes(x.getProperty()) && (!needToCheckRange || includes(x.getRange()))) {
					ax.add(x);
				}
			} else if (o instanceof PropertyValueRestrictionAxiom) {
				PropertyValueRestrictionAxiom x = (PropertyValueRestrictionAxiom) o;
				boolean needToCheckRange = x.getProperty() instanceof Relation;
				if (includes(x.getProperty()) && (!needToCheckRange || includes(x.getValue()))) {
					ax.add(x);
				}
			}
		});
	}

	private class DiagramVisitor extends OmlSwitch<OmlOntoloyDiagramScope> {

		@Override
		public OmlOntoloyDiagramScope doSwitch(EObject eObject) {
			OmlOntoloyDiagramScope result = OmlOntoloyDiagramScope.this;
			switch (mode) {
			case Phase1:
				if (!includes(eObject)) {
					result = super.doSwitch(eObject);
				}
				break;
			case Phase2:
				result = super.doSwitch(eObject);
				break;
			}
			return result;
		}

		public OmlOntoloyDiagramScope caseAspect(Aspect a) {
			a = (Aspect) a.resolve();
			switch (mode) {
			case Phase1:
				phase1InitializeEntity(a);
				if (!aspects.containsKey(a)) {
					aspects.put(a, new HashSet<>());
				}
				final Set<Element> others = aspects.get(a);
				phase1ScanEntityAxioms(a, others);
				secondPhase.add(a);
				break;
			case Phase2:
				phase2ScanAllEntityProperties(a);
				phase2FilterEntityAxioms(a, aspects.get(a));
				break;
			}
			return OmlOntoloyDiagramScope.this;
		}

		public OmlOntoloyDiagramScope caseConcept(Concept c) {
			c = (Concept) c.resolve();
			switch (mode) {
			case Phase1:
				phase1InitializeEntity(c);
				if (!concepts.containsKey(c)) {
					concepts.put(c, new HashSet<>());
				}
				final Set<Element> others = concepts.get(c);
				phase1ScanEntityAxioms(c, others);
				secondPhase.add(c);
				break;
			case Phase2:
				phase2ScanAllEntityProperties(c);
				phase2FilterEntityAxioms(c, concepts.get(c));
				break;
			}
			return OmlOntoloyDiagramScope.this;
		}

		public OmlOntoloyDiagramScope caseRelationEntity(RelationEntity e) {
			e = (RelationEntity) e.resolve();
			switch (mode) {
			case Phase1:
				phase1InitializeEntity(e);
				if (!relationEntities.containsKey(e)) {
					relationEntities.put(e, new HashSet<>());
				}
				if (!memberIncidentElements.containsKey(e)) {
					memberIncidentElements.put(e, new HashSet<>());
				}
				Set<Element> others = relationEntities.get(e);
				Set<Element> incident = memberIncidentElements.get(e);
				phase1ScanEntityAxioms(e, others);
				doSwitch(e.getSources().get(0));
				doSwitch(e.getTargets().get(0));
				OmlSearch.findSpecializationAxiomsWithSuperTerm(e, scope).forEach(ax -> {
					if (allImportedElements.contains(ax)) {
						incident.add(ax);
					}
				});
				OmlSearch.findPropertyRangeRestrictionAxiomsWithRange(e, scope).forEach(ax -> {
					if (allImportedElements.contains(ax)) {
						incident.add(ax);
					}
				});
				OmlSearch.findSourceRelations(e, scope).forEach(r -> {
					if (allImportedElements.contains(r)) {
						incident.add(r);
					}
				});
				OmlSearch.findTargetRelations(e, scope).forEach(r -> {
					if (allImportedElements.contains(r)) {
						incident.add(r);
					}
				});
				secondPhase.add(e);
				break;
			case Phase2:
				phase2ScanAllEntityProperties(e);
				phase2FilterEntityAxioms(e, relationEntities.get(e));
				break;
			}
			return OmlOntoloyDiagramScope.this;
		}

		public OmlOntoloyDiagramScope caseUnreifiedRelation(UnreifiedRelation ur) {
			Relation e = (Relation) ur.resolve();
			switch (mode) {
			case Phase1:
				if (!relations.containsKey(e)) {
					relations.put(e, new HashSet<>());
				}
				if (!memberIncidentElements.containsKey(e)) {
					memberIncidentElements.put(e, new HashSet<>());
				}
				Set<Element> incident = memberIncidentElements.get(e);
				doSwitch(e.getDomains().get(0));
				doSwitch(e.getRanges().get(0));
				OmlSearch.findSpecializationAxiomsWithSuperTerm(e, scope).forEach(ax -> {
					if (allImportedElements.contains(ax)) {
						incident.add(ax);
					}
				});
				secondPhase.add(e);
				break;
			case Phase2:
				break;
			}
			return OmlOntoloyDiagramScope.this;
		}

		public OmlOntoloyDiagramScope caseScalar(Scalar s) {
			s = (Scalar) s.resolve();
			switch (mode) {
			case Phase1:
				if (!scalars.containsKey(s)) {
					scalars.put(s, new HashSet<>());
				}
				break;
			case Phase2:
				break;
			}
			return OmlOntoloyDiagramScope.this;
		}

		public void phase1ScanInstanceAssertions(final NamedInstance i, final Set<Element> others) {
			OmlSearch.findPropertyValueAssertionsWithSubject(i, scope).forEach(ax -> {
				if (allImportedElements.contains(ax)) {
					if (ax.getValue() instanceof Instance) {
						allPropertyValueAssertions.add(ax);
					} else {
						others.add(ax);
					}
				}
			});
			OmlSearch.findRelationInstancesWithSource(i, scope).forEach(ri -> {
				if (allImportedElements.contains(ri)) {
					others.add(ri);
				}
			});
		}

		public OmlOntoloyDiagramScope caseConceptInstance(ConceptInstance ci) {
			ci = (ConceptInstance) ci.resolve();
			switch (mode) {
			case Phase1:
				if (!instanceAssertions.containsKey(ci)) {
					instanceAssertions.put(ci, new HashSet<>());
				}
				final Set<Element> others = instanceAssertions.get(ci);
				phase1ScanInstanceAssertions(ci, others);
				break;
			case Phase2:
				break;
			}
			return OmlOntoloyDiagramScope.this;
		}

		public OmlOntoloyDiagramScope caseRelationInstance(RelationInstance ri) {
			ri = (RelationInstance) ri.resolve();
			switch (mode) {
			case Phase1:
				if (!instanceAssertions.containsKey(ri)) {
					instanceAssertions.put(ri, new HashSet<>());
				}
				final Set<Element> others = instanceAssertions.get(ri);
				phase1ScanInstanceAssertions(ri, others);
				break;
			case Phase2:
				break;
			}
			return OmlOntoloyDiagramScope.this;
		}

		public OmlOntoloyDiagramScope caseAnonymousConceptInstance(final AnonymousConceptInstance si) {
			switch (mode) {
			case Phase1:
				if (!anonymousConceptAssertions.containsKey(si)) {
					anonymousConceptAssertions.put(si, new HashSet<>());
				}
				break;
			case Phase2:
				break;
			}
			return OmlOntoloyDiagramScope.this;
		}
	}
}
