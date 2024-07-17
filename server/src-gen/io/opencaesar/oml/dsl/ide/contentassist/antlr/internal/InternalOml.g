/*
 * Copyright 2019 California Institute of Technology (\"Caltech\").
 * U.S. Government sponsorship acknowledged.
 *
 * Licensed under the Apache License, Version 2.0 (the \"License\");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an \"AS IS\" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
grammar InternalOml;

options {
	superClass=AbstractInternalContentAssistParser;
}

@lexer::header {
package io.opencaesar.oml.dsl.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package io.opencaesar.oml.dsl.ide.contentassist.antlr.internal;

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.DFA;
import io.opencaesar.oml.dsl.services.OmlGrammarAccess;

}
@parser::members {
	private OmlGrammarAccess grammarAccess;

	public void setGrammarAccess(OmlGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}

	@Override
	protected Grammar getGrammar() {
		return grammarAccess.getGrammar();
	}

	@Override
	protected String getValueForTokenName(String tokenName) {
		return tokenName;
	}
}

// Entry rule entryRuleOntology
entryRuleOntology
:
{ before(grammarAccess.getOntologyRule()); }
	 ruleOntology
{ after(grammarAccess.getOntologyRule()); } 
	 EOF 
;

// Rule Ontology
ruleOntology 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getOntologyAccess().getAlternatives()); }
		(rule__Ontology__Alternatives)
		{ after(grammarAccess.getOntologyAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleAnnotation
entryRuleAnnotation
:
{ before(grammarAccess.getAnnotationRule()); }
	 ruleAnnotation
{ after(grammarAccess.getAnnotationRule()); } 
	 EOF 
;

// Rule Annotation
ruleAnnotation 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getAnnotationAccess().getGroup()); }
		(rule__Annotation__Group__0)
		{ after(grammarAccess.getAnnotationAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}


// Rule AnnotationValue
ruleAnnotationValue 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getAnnotationValueAccess().getAlternatives()); }
		(rule__AnnotationValue__Alternatives)
		{ after(grammarAccess.getAnnotationValueAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleVocabularyBox
entryRuleVocabularyBox
:
{ before(grammarAccess.getVocabularyBoxRule()); }
	 ruleVocabularyBox
{ after(grammarAccess.getVocabularyBoxRule()); } 
	 EOF 
;

// Rule VocabularyBox
ruleVocabularyBox 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getVocabularyBoxAccess().getAlternatives()); }
		(rule__VocabularyBox__Alternatives)
		{ after(grammarAccess.getVocabularyBoxAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleVocabulary
entryRuleVocabulary
:
{ before(grammarAccess.getVocabularyRule()); }
	 ruleVocabulary
{ after(grammarAccess.getVocabularyRule()); } 
	 EOF 
;

// Rule Vocabulary
ruleVocabulary 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getVocabularyAccess().getGroup()); }
		(rule__Vocabulary__Group__0)
		{ after(grammarAccess.getVocabularyAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleVocabularyBundle
entryRuleVocabularyBundle
:
{ before(grammarAccess.getVocabularyBundleRule()); }
	 ruleVocabularyBundle
{ after(grammarAccess.getVocabularyBundleRule()); } 
	 EOF 
;

// Rule VocabularyBundle
ruleVocabularyBundle 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getVocabularyBundleAccess().getGroup()); }
		(rule__VocabularyBundle__Group__0)
		{ after(grammarAccess.getVocabularyBundleAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleDescriptionBox
entryRuleDescriptionBox
:
{ before(grammarAccess.getDescriptionBoxRule()); }
	 ruleDescriptionBox
{ after(grammarAccess.getDescriptionBoxRule()); } 
	 EOF 
;

// Rule DescriptionBox
ruleDescriptionBox 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getDescriptionBoxAccess().getAlternatives()); }
		(rule__DescriptionBox__Alternatives)
		{ after(grammarAccess.getDescriptionBoxAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleDescription
entryRuleDescription
:
{ before(grammarAccess.getDescriptionRule()); }
	 ruleDescription
{ after(grammarAccess.getDescriptionRule()); } 
	 EOF 
;

// Rule Description
ruleDescription 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getDescriptionAccess().getGroup()); }
		(rule__Description__Group__0)
		{ after(grammarAccess.getDescriptionAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleDescriptionBundle
entryRuleDescriptionBundle
:
{ before(grammarAccess.getDescriptionBundleRule()); }
	 ruleDescriptionBundle
{ after(grammarAccess.getDescriptionBundleRule()); } 
	 EOF 
;

// Rule DescriptionBundle
ruleDescriptionBundle 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getDescriptionBundleAccess().getGroup()); }
		(rule__DescriptionBundle__Group__0)
		{ after(grammarAccess.getDescriptionBundleAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleSpecializableTerm
entryRuleSpecializableTerm
:
{ before(grammarAccess.getSpecializableTermRule()); }
	 ruleSpecializableTerm
{ after(grammarAccess.getSpecializableTermRule()); } 
	 EOF 
;

// Rule SpecializableTerm
ruleSpecializableTerm 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getSpecializableTermAccess().getAlternatives()); }
		(rule__SpecializableTerm__Alternatives)
		{ after(grammarAccess.getSpecializableTermAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleType
entryRuleType
:
{ before(grammarAccess.getTypeRule()); }
	 ruleType
{ after(grammarAccess.getTypeRule()); } 
	 EOF 
;

// Rule Type
ruleType 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getTypeAccess().getAlternatives()); }
		(rule__Type__Alternatives)
		{ after(grammarAccess.getTypeAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleClassifier
entryRuleClassifier
:
{ before(grammarAccess.getClassifierRule()); }
	 ruleClassifier
{ after(grammarAccess.getClassifierRule()); } 
	 EOF 
;

// Rule Classifier
ruleClassifier 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getClassifierAccess().getAlternatives()); }
		(rule__Classifier__Alternatives)
		{ after(grammarAccess.getClassifierAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleEntity
entryRuleEntity
:
{ before(grammarAccess.getEntityRule()); }
	 ruleEntity
{ after(grammarAccess.getEntityRule()); } 
	 EOF 
;

// Rule Entity
ruleEntity 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getEntityAccess().getAlternatives()); }
		(rule__Entity__Alternatives)
		{ after(grammarAccess.getEntityAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleAspect
entryRuleAspect
:
{ before(grammarAccess.getAspectRule()); }
	 ruleAspect
{ after(grammarAccess.getAspectRule()); } 
	 EOF 
;

// Rule Aspect
ruleAspect 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getAspectAccess().getGroup()); }
		(rule__Aspect__Group__0)
		{ after(grammarAccess.getAspectAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleConcept
entryRuleConcept
:
{ before(grammarAccess.getConceptRule()); }
	 ruleConcept
{ after(grammarAccess.getConceptRule()); } 
	 EOF 
;

// Rule Concept
ruleConcept 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getConceptAccess().getGroup()); }
		(rule__Concept__Group__0)
		{ after(grammarAccess.getConceptAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleRelationEntity
entryRuleRelationEntity
:
{ before(grammarAccess.getRelationEntityRule()); }
	 ruleRelationEntity
{ after(grammarAccess.getRelationEntityRule()); } 
	 EOF 
;

// Rule RelationEntity
ruleRelationEntity 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getRelationEntityAccess().getGroup()); }
		(rule__RelationEntity__Group__0)
		{ after(grammarAccess.getRelationEntityAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleStructure
entryRuleStructure
:
{ before(grammarAccess.getStructureRule()); }
	 ruleStructure
{ after(grammarAccess.getStructureRule()); } 
	 EOF 
;

// Rule Structure
ruleStructure 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getStructureAccess().getGroup()); }
		(rule__Structure__Group__0)
		{ after(grammarAccess.getStructureAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}


// Rule ClassifierSpecialization
ruleClassifierSpecialization 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getClassifierSpecializationAccess().getGroup()); }
		(rule__ClassifierSpecialization__Group__0)
		{ after(grammarAccess.getClassifierSpecializationAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}


// Rule ClassifierEquivalence
ruleClassifierEquivalence 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getClassifierEquivalenceAccess().getGroup()); }
		(rule__ClassifierEquivalence__Group__0)
		{ after(grammarAccess.getClassifierEquivalenceAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleClassifierEquivalenceAxiom
entryRuleClassifierEquivalenceAxiom
:
{ before(grammarAccess.getClassifierEquivalenceAxiomRule()); }
	 ruleClassifierEquivalenceAxiom
{ after(grammarAccess.getClassifierEquivalenceAxiomRule()); } 
	 EOF 
;

// Rule ClassifierEquivalenceAxiom
ruleClassifierEquivalenceAxiom 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getClassifierEquivalenceAxiomAccess().getAlternatives()); }
		(rule__ClassifierEquivalenceAxiom__Alternatives)
		{ after(grammarAccess.getClassifierEquivalenceAxiomAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleScalar
entryRuleScalar
:
{ before(grammarAccess.getScalarRule()); }
	 ruleScalar
{ after(grammarAccess.getScalarRule()); } 
	 EOF 
;

// Rule Scalar
ruleScalar 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getScalarAccess().getGroup()); }
		(rule__Scalar__Group__0)
		{ after(grammarAccess.getScalarAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}


// Rule ScalarSpecialization
ruleScalarSpecialization 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getScalarSpecializationAccess().getGroup()); }
		(rule__ScalarSpecialization__Group__0)
		{ after(grammarAccess.getScalarSpecializationAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}


// Rule ScalarEquivalence
ruleScalarEquivalence 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getScalarEquivalenceAccess().getGroup()); }
		(rule__ScalarEquivalence__Group__0)
		{ after(grammarAccess.getScalarEquivalenceAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleScalarEquivalenceAxiom
entryRuleScalarEquivalenceAxiom
:
{ before(grammarAccess.getScalarEquivalenceAxiomRule()); }
	 ruleScalarEquivalenceAxiom
{ after(grammarAccess.getScalarEquivalenceAxiomRule()); } 
	 EOF 
;

// Rule ScalarEquivalenceAxiom
ruleScalarEquivalenceAxiom 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getGroup()); }
		(rule__ScalarEquivalenceAxiom__Group__0)
		{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleAnnotationProperty
entryRuleAnnotationProperty
:
{ before(grammarAccess.getAnnotationPropertyRule()); }
	 ruleAnnotationProperty
{ after(grammarAccess.getAnnotationPropertyRule()); } 
	 EOF 
;

// Rule AnnotationProperty
ruleAnnotationProperty 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getAnnotationPropertyAccess().getGroup()); }
		(rule__AnnotationProperty__Group__0)
		{ after(grammarAccess.getAnnotationPropertyAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleSemanticProperty
entryRuleSemanticProperty
:
{ before(grammarAccess.getSemanticPropertyRule()); }
	 ruleSemanticProperty
{ after(grammarAccess.getSemanticPropertyRule()); } 
	 EOF 
;

// Rule SemanticProperty
ruleSemanticProperty 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getSemanticPropertyAccess().getAlternatives()); }
		(rule__SemanticProperty__Alternatives)
		{ after(grammarAccess.getSemanticPropertyAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleScalarProperty
entryRuleScalarProperty
:
{ before(grammarAccess.getScalarPropertyRule()); }
	 ruleScalarProperty
{ after(grammarAccess.getScalarPropertyRule()); } 
	 EOF 
;

// Rule ScalarProperty
ruleScalarProperty 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getScalarPropertyAccess().getGroup()); }
		(rule__ScalarProperty__Group__0)
		{ after(grammarAccess.getScalarPropertyAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleStructuredProperty
entryRuleStructuredProperty
:
{ before(grammarAccess.getStructuredPropertyRule()); }
	 ruleStructuredProperty
{ after(grammarAccess.getStructuredPropertyRule()); } 
	 EOF 
;

// Rule StructuredProperty
ruleStructuredProperty 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getStructuredPropertyAccess().getGroup()); }
		(rule__StructuredProperty__Group__0)
		{ after(grammarAccess.getStructuredPropertyAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleRelation
entryRuleRelation
:
{ before(grammarAccess.getRelationRule()); }
	 ruleRelation
{ after(grammarAccess.getRelationRule()); } 
	 EOF 
;

// Rule Relation
ruleRelation 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getRelationAccess().getAlternatives()); }
		(rule__Relation__Alternatives)
		{ after(grammarAccess.getRelationAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleForwardRelation
entryRuleForwardRelation
:
{ before(grammarAccess.getForwardRelationRule()); }
	 ruleForwardRelation
{ after(grammarAccess.getForwardRelationRule()); } 
	 EOF 
;

// Rule ForwardRelation
ruleForwardRelation 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getForwardRelationAccess().getGroup()); }
		(rule__ForwardRelation__Group__0)
		{ after(grammarAccess.getForwardRelationAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleReverseRelation
entryRuleReverseRelation
:
{ before(grammarAccess.getReverseRelationRule()); }
	 ruleReverseRelation
{ after(grammarAccess.getReverseRelationRule()); } 
	 EOF 
;

// Rule ReverseRelation
ruleReverseRelation 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getReverseRelationAccess().getGroup()); }
		(rule__ReverseRelation__Group__0)
		{ after(grammarAccess.getReverseRelationAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleUnreifiedRelation
entryRuleUnreifiedRelation
:
{ before(grammarAccess.getUnreifiedRelationRule()); }
	 ruleUnreifiedRelation
{ after(grammarAccess.getUnreifiedRelationRule()); } 
	 EOF 
;

// Rule UnreifiedRelation
ruleUnreifiedRelation 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getUnreifiedRelationAccess().getGroup()); }
		(rule__UnreifiedRelation__Group__0)
		{ after(grammarAccess.getUnreifiedRelationAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}


// Rule PropertySpecialization
rulePropertySpecialization 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getPropertySpecializationAccess().getGroup()); }
		(rule__PropertySpecialization__Group__0)
		{ after(grammarAccess.getPropertySpecializationAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}


// Rule PropertyEquivalence
rulePropertyEquivalence 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getPropertyEquivalenceAccess().getGroup()); }
		(rule__PropertyEquivalence__Group__0)
		{ after(grammarAccess.getPropertyEquivalenceAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRulePropertyEquivalenceAxiom
entryRulePropertyEquivalenceAxiom
:
{ before(grammarAccess.getPropertyEquivalenceAxiomRule()); }
	 rulePropertyEquivalenceAxiom
{ after(grammarAccess.getPropertyEquivalenceAxiomRule()); } 
	 EOF 
;

// Rule PropertyEquivalenceAxiom
rulePropertyEquivalenceAxiom 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getPropertyEquivalenceAxiomAccess().getSuperPropertyAssignment()); }
		(rule__PropertyEquivalenceAxiom__SuperPropertyAssignment)
		{ after(grammarAccess.getPropertyEquivalenceAxiomAccess().getSuperPropertyAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleRule
entryRuleRule
:
{ before(grammarAccess.getRuleRule()); }
	 ruleRule
{ after(grammarAccess.getRuleRule()); } 
	 EOF 
;

// Rule Rule
ruleRule 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getRuleAccess().getGroup()); }
		(rule__Rule__Group__0)
		{ after(grammarAccess.getRuleAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleBuiltIn
entryRuleBuiltIn
:
{ before(grammarAccess.getBuiltInRule()); }
	 ruleBuiltIn
{ after(grammarAccess.getBuiltInRule()); } 
	 EOF 
;

// Rule BuiltIn
ruleBuiltIn 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getBuiltInAccess().getGroup()); }
		(rule__BuiltIn__Group__0)
		{ after(grammarAccess.getBuiltInAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleAnonymousInstance
entryRuleAnonymousInstance
:
{ before(grammarAccess.getAnonymousInstanceRule()); }
	 ruleAnonymousInstance
{ after(grammarAccess.getAnonymousInstanceRule()); } 
	 EOF 
;

// Rule AnonymousInstance
ruleAnonymousInstance 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getAnonymousInstanceAccess().getAlternatives()); }
		(rule__AnonymousInstance__Alternatives)
		{ after(grammarAccess.getAnonymousInstanceAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleStructureInstance
entryRuleStructureInstance
:
{ before(grammarAccess.getStructureInstanceRule()); }
	 ruleStructureInstance
{ after(grammarAccess.getStructureInstanceRule()); } 
	 EOF 
;

// Rule StructureInstance
ruleStructureInstance 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getStructureInstanceAccess().getGroup()); }
		(rule__StructureInstance__Group__0)
		{ after(grammarAccess.getStructureInstanceAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleAnonymousRelationInstance
entryRuleAnonymousRelationInstance
:
{ before(grammarAccess.getAnonymousRelationInstanceRule()); }
	 ruleAnonymousRelationInstance
{ after(grammarAccess.getAnonymousRelationInstanceRule()); } 
	 EOF 
;

// Rule AnonymousRelationInstance
ruleAnonymousRelationInstance 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getAnonymousRelationInstanceAccess().getGroup()); }
		(rule__AnonymousRelationInstance__Group__0)
		{ after(grammarAccess.getAnonymousRelationInstanceAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleNamedInstance
entryRuleNamedInstance
:
{ before(grammarAccess.getNamedInstanceRule()); }
	 ruleNamedInstance
{ after(grammarAccess.getNamedInstanceRule()); } 
	 EOF 
;

// Rule NamedInstance
ruleNamedInstance 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getNamedInstanceAccess().getAlternatives()); }
		(rule__NamedInstance__Alternatives)
		{ after(grammarAccess.getNamedInstanceAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleConceptInstance
entryRuleConceptInstance
:
{ before(grammarAccess.getConceptInstanceRule()); }
	 ruleConceptInstance
{ after(grammarAccess.getConceptInstanceRule()); } 
	 EOF 
;

// Rule ConceptInstance
ruleConceptInstance 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getConceptInstanceAccess().getGroup()); }
		(rule__ConceptInstance__Group__0)
		{ after(grammarAccess.getConceptInstanceAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleRelationInstance
entryRuleRelationInstance
:
{ before(grammarAccess.getRelationInstanceRule()); }
	 ruleRelationInstance
{ after(grammarAccess.getRelationInstanceRule()); } 
	 EOF 
;

// Rule RelationInstance
ruleRelationInstance 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getRelationInstanceAccess().getGroup()); }
		(rule__RelationInstance__Group__0)
		{ after(grammarAccess.getRelationInstanceAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleVocabularyStatement
entryRuleVocabularyStatement
:
{ before(grammarAccess.getVocabularyStatementRule()); }
	 ruleVocabularyStatement
{ after(grammarAccess.getVocabularyStatementRule()); } 
	 EOF 
;

// Rule VocabularyStatement
ruleVocabularyStatement 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getVocabularyStatementAccess().getAlternatives()); }
		(rule__VocabularyStatement__Alternatives)
		{ after(grammarAccess.getVocabularyStatementAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleDescriptionStatement
entryRuleDescriptionStatement
:
{ before(grammarAccess.getDescriptionStatementRule()); }
	 ruleDescriptionStatement
{ after(grammarAccess.getDescriptionStatementRule()); } 
	 EOF 
;

// Rule DescriptionStatement
ruleDescriptionStatement 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getDescriptionStatementAccess().getNamedInstanceParserRuleCall()); }
		ruleNamedInstance
		{ after(grammarAccess.getDescriptionStatementAccess().getNamedInstanceParserRuleCall()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleExtension
entryRuleExtension
:
{ before(grammarAccess.getExtensionRule()); }
	 ruleExtension
{ after(grammarAccess.getExtensionRule()); } 
	 EOF 
;

// Rule Extension
ruleExtension 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getExtensionAccess().getGroup()); }
		(rule__Extension__Group__0)
		{ after(grammarAccess.getExtensionAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleUsage
entryRuleUsage
:
{ before(grammarAccess.getUsageRule()); }
	 ruleUsage
{ after(grammarAccess.getUsageRule()); } 
	 EOF 
;

// Rule Usage
ruleUsage 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getUsageAccess().getGroup()); }
		(rule__Usage__Group__0)
		{ after(grammarAccess.getUsageAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleInclusion
entryRuleInclusion
:
{ before(grammarAccess.getInclusionRule()); }
	 ruleInclusion
{ after(grammarAccess.getInclusionRule()); } 
	 EOF 
;

// Rule Inclusion
ruleInclusion 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getInclusionAccess().getGroup()); }
		(rule__Inclusion__Group__0)
		{ after(grammarAccess.getInclusionAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleSpecializationAxiom
entryRuleSpecializationAxiom
:
{ before(grammarAccess.getSpecializationAxiomRule()); }
	 ruleSpecializationAxiom
{ after(grammarAccess.getSpecializationAxiomRule()); } 
	 EOF 
;

// Rule SpecializationAxiom
ruleSpecializationAxiom 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getSpecializationAxiomAccess().getSuperTermAssignment()); }
		(rule__SpecializationAxiom__SuperTermAssignment)
		{ after(grammarAccess.getSpecializationAxiomAccess().getSuperTermAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRulePropertyRestrictionAxiom
entryRulePropertyRestrictionAxiom
:
{ before(grammarAccess.getPropertyRestrictionAxiomRule()); }
	 rulePropertyRestrictionAxiom
{ after(grammarAccess.getPropertyRestrictionAxiomRule()); } 
	 EOF 
;

// Rule PropertyRestrictionAxiom
rulePropertyRestrictionAxiom 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getPropertyRestrictionAxiomAccess().getAlternatives()); }
		(rule__PropertyRestrictionAxiom__Alternatives)
		{ after(grammarAccess.getPropertyRestrictionAxiomAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRulePropertyRangeRestrictionAxiom
entryRulePropertyRangeRestrictionAxiom
:
{ before(grammarAccess.getPropertyRangeRestrictionAxiomRule()); }
	 rulePropertyRangeRestrictionAxiom
{ after(grammarAccess.getPropertyRangeRestrictionAxiomRule()); } 
	 EOF 
;

// Rule PropertyRangeRestrictionAxiom
rulePropertyRangeRestrictionAxiom 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getPropertyRangeRestrictionAxiomAccess().getGroup()); }
		(rule__PropertyRangeRestrictionAxiom__Group__0)
		{ after(grammarAccess.getPropertyRangeRestrictionAxiomAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRulePropertyCardinalityRestrictionAxiom
entryRulePropertyCardinalityRestrictionAxiom
:
{ before(grammarAccess.getPropertyCardinalityRestrictionAxiomRule()); }
	 rulePropertyCardinalityRestrictionAxiom
{ after(grammarAccess.getPropertyCardinalityRestrictionAxiomRule()); } 
	 EOF 
;

// Rule PropertyCardinalityRestrictionAxiom
rulePropertyCardinalityRestrictionAxiom 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getPropertyCardinalityRestrictionAxiomAccess().getGroup()); }
		(rule__PropertyCardinalityRestrictionAxiom__Group__0)
		{ after(grammarAccess.getPropertyCardinalityRestrictionAxiomAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRulePropertyValueRestrictionAxiom
entryRulePropertyValueRestrictionAxiom
:
{ before(grammarAccess.getPropertyValueRestrictionAxiomRule()); }
	 rulePropertyValueRestrictionAxiom
{ after(grammarAccess.getPropertyValueRestrictionAxiomRule()); } 
	 EOF 
;

// Rule PropertyValueRestrictionAxiom
rulePropertyValueRestrictionAxiom 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getPropertyValueRestrictionAxiomAccess().getGroup()); }
		(rule__PropertyValueRestrictionAxiom__Group__0)
		{ after(grammarAccess.getPropertyValueRestrictionAxiomAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRulePropertySelfRestrictionAxiom
entryRulePropertySelfRestrictionAxiom
:
{ before(grammarAccess.getPropertySelfRestrictionAxiomRule()); }
	 rulePropertySelfRestrictionAxiom
{ after(grammarAccess.getPropertySelfRestrictionAxiomRule()); } 
	 EOF 
;

// Rule PropertySelfRestrictionAxiom
rulePropertySelfRestrictionAxiom 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getPropertySelfRestrictionAxiomAccess().getGroup()); }
		(rule__PropertySelfRestrictionAxiom__Group__0)
		{ after(grammarAccess.getPropertySelfRestrictionAxiomAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleKeyAxiom
entryRuleKeyAxiom
:
{ before(grammarAccess.getKeyAxiomRule()); }
	 ruleKeyAxiom
{ after(grammarAccess.getKeyAxiomRule()); } 
	 EOF 
;

// Rule KeyAxiom
ruleKeyAxiom 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getKeyAxiomAccess().getGroup()); }
		(rule__KeyAxiom__Group__0)
		{ after(grammarAccess.getKeyAxiomAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleInstanceEnumerationAxiom
entryRuleInstanceEnumerationAxiom
:
{ before(grammarAccess.getInstanceEnumerationAxiomRule()); }
	 ruleInstanceEnumerationAxiom
{ after(grammarAccess.getInstanceEnumerationAxiomRule()); } 
	 EOF 
;

// Rule InstanceEnumerationAxiom
ruleInstanceEnumerationAxiom 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getInstanceEnumerationAxiomAccess().getGroup()); }
		(rule__InstanceEnumerationAxiom__Group__0)
		{ after(grammarAccess.getInstanceEnumerationAxiomAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleLiteralEnumerationAxiom
entryRuleLiteralEnumerationAxiom
:
{ before(grammarAccess.getLiteralEnumerationAxiomRule()); }
	 ruleLiteralEnumerationAxiom
{ after(grammarAccess.getLiteralEnumerationAxiomRule()); } 
	 EOF 
;

// Rule LiteralEnumerationAxiom
ruleLiteralEnumerationAxiom 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getLiteralEnumerationAxiomAccess().getGroup()); }
		(rule__LiteralEnumerationAxiom__Group__0)
		{ after(grammarAccess.getLiteralEnumerationAxiomAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleConceptTypeAssertion
entryRuleConceptTypeAssertion
:
{ before(grammarAccess.getConceptTypeAssertionRule()); }
	 ruleConceptTypeAssertion
{ after(grammarAccess.getConceptTypeAssertionRule()); } 
	 EOF 
;

// Rule ConceptTypeAssertion
ruleConceptTypeAssertion 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getConceptTypeAssertionAccess().getTypeAssignment()); }
		(rule__ConceptTypeAssertion__TypeAssignment)
		{ after(grammarAccess.getConceptTypeAssertionAccess().getTypeAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleRelationTypeAssertion
entryRuleRelationTypeAssertion
:
{ before(grammarAccess.getRelationTypeAssertionRule()); }
	 ruleRelationTypeAssertion
{ after(grammarAccess.getRelationTypeAssertionRule()); } 
	 EOF 
;

// Rule RelationTypeAssertion
ruleRelationTypeAssertion 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getRelationTypeAssertionAccess().getTypeAssignment()); }
		(rule__RelationTypeAssertion__TypeAssignment)
		{ after(grammarAccess.getRelationTypeAssertionAccess().getTypeAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRulePropertyValueAssertion
entryRulePropertyValueAssertion
:
{ before(grammarAccess.getPropertyValueAssertionRule()); }
	 rulePropertyValueAssertion
{ after(grammarAccess.getPropertyValueAssertionRule()); } 
	 EOF 
;

// Rule PropertyValueAssertion
rulePropertyValueAssertion 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getPropertyValueAssertionAccess().getGroup()); }
		(rule__PropertyValueAssertion__Group__0)
		{ after(grammarAccess.getPropertyValueAssertionAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}


// Rule PropertyValue
rulePropertyValue 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getPropertyValueAccess().getAlternatives()); }
		(rule__PropertyValue__Alternatives)
		{ after(grammarAccess.getPropertyValueAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRulePredicate
entryRulePredicate
:
{ before(grammarAccess.getPredicateRule()); }
	 rulePredicate
{ after(grammarAccess.getPredicateRule()); } 
	 EOF 
;

// Rule Predicate
rulePredicate 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getPredicateAccess().getAlternatives()); }
		(rule__Predicate__Alternatives)
		{ after(grammarAccess.getPredicateAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleUnaryPredicate
entryRuleUnaryPredicate
:
{ before(grammarAccess.getUnaryPredicateRule()); }
	 ruleUnaryPredicate
{ after(grammarAccess.getUnaryPredicateRule()); } 
	 EOF 
;

// Rule UnaryPredicate
ruleUnaryPredicate 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getUnaryPredicateAccess().getAlternatives()); }
		(rule__UnaryPredicate__Alternatives)
		{ after(grammarAccess.getUnaryPredicateAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleBinaryPredicate
entryRuleBinaryPredicate
:
{ before(grammarAccess.getBinaryPredicateRule()); }
	 ruleBinaryPredicate
{ after(grammarAccess.getBinaryPredicateRule()); } 
	 EOF 
;

// Rule BinaryPredicate
ruleBinaryPredicate 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getBinaryPredicateAccess().getAlternatives()); }
		(rule__BinaryPredicate__Alternatives)
		{ after(grammarAccess.getBinaryPredicateAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleTypePredicate
entryRuleTypePredicate
:
{ before(grammarAccess.getTypePredicateRule()); }
	 ruleTypePredicate
{ after(grammarAccess.getTypePredicateRule()); } 
	 EOF 
;

// Rule TypePredicate
ruleTypePredicate 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getTypePredicateAccess().getGroup()); }
		(rule__TypePredicate__Group__0)
		{ after(grammarAccess.getTypePredicateAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleRelationEntityPredicate
entryRuleRelationEntityPredicate
:
{ before(grammarAccess.getRelationEntityPredicateRule()); }
	 ruleRelationEntityPredicate
{ after(grammarAccess.getRelationEntityPredicateRule()); } 
	 EOF 
;

// Rule RelationEntityPredicate
ruleRelationEntityPredicate 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getRelationEntityPredicateAccess().getGroup()); }
		(rule__RelationEntityPredicate__Group__0)
		{ after(grammarAccess.getRelationEntityPredicateAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRulePropertyPredicate
entryRulePropertyPredicate
:
{ before(grammarAccess.getPropertyPredicateRule()); }
	 rulePropertyPredicate
{ after(grammarAccess.getPropertyPredicateRule()); } 
	 EOF 
;

// Rule PropertyPredicate
rulePropertyPredicate 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getPropertyPredicateAccess().getGroup()); }
		(rule__PropertyPredicate__Group__0)
		{ after(grammarAccess.getPropertyPredicateAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleSameAsPredicate
entryRuleSameAsPredicate
:
{ before(grammarAccess.getSameAsPredicateRule()); }
	 ruleSameAsPredicate
{ after(grammarAccess.getSameAsPredicateRule()); } 
	 EOF 
;

// Rule SameAsPredicate
ruleSameAsPredicate 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getSameAsPredicateAccess().getGroup()); }
		(rule__SameAsPredicate__Group__0)
		{ after(grammarAccess.getSameAsPredicateAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleDifferentFromPredicate
entryRuleDifferentFromPredicate
:
{ before(grammarAccess.getDifferentFromPredicateRule()); }
	 ruleDifferentFromPredicate
{ after(grammarAccess.getDifferentFromPredicateRule()); } 
	 EOF 
;

// Rule DifferentFromPredicate
ruleDifferentFromPredicate 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getDifferentFromPredicateAccess().getGroup()); }
		(rule__DifferentFromPredicate__Group__0)
		{ after(grammarAccess.getDifferentFromPredicateAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleBuiltInPredicate
entryRuleBuiltInPredicate
:
{ before(grammarAccess.getBuiltInPredicateRule()); }
	 ruleBuiltInPredicate
{ after(grammarAccess.getBuiltInPredicateRule()); } 
	 EOF 
;

// Rule BuiltInPredicate
ruleBuiltInPredicate 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getBuiltInPredicateAccess().getGroup()); }
		(rule__BuiltInPredicate__Group__0)
		{ after(grammarAccess.getBuiltInPredicateAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleArgument
entryRuleArgument
:
{ before(grammarAccess.getArgumentRule()); }
	 ruleArgument
{ after(grammarAccess.getArgumentRule()); } 
	 EOF 
;

// Rule Argument
ruleArgument 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getArgumentAccess().getAlternatives()); }
		(rule__Argument__Alternatives)
		{ after(grammarAccess.getArgumentAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleLiteral
entryRuleLiteral
:
{ before(grammarAccess.getLiteralRule()); }
	 ruleLiteral
{ after(grammarAccess.getLiteralRule()); } 
	 EOF 
;

// Rule Literal
ruleLiteral 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getLiteralAccess().getAlternatives()); }
		(rule__Literal__Alternatives)
		{ after(grammarAccess.getLiteralAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleIntegerLiteral
entryRuleIntegerLiteral
:
{ before(grammarAccess.getIntegerLiteralRule()); }
	 ruleIntegerLiteral
{ after(grammarAccess.getIntegerLiteralRule()); } 
	 EOF 
;

// Rule IntegerLiteral
ruleIntegerLiteral 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getIntegerLiteralAccess().getValueAssignment()); }
		(rule__IntegerLiteral__ValueAssignment)
		{ after(grammarAccess.getIntegerLiteralAccess().getValueAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleDecimalLiteral
entryRuleDecimalLiteral
:
{ before(grammarAccess.getDecimalLiteralRule()); }
	 ruleDecimalLiteral
{ after(grammarAccess.getDecimalLiteralRule()); } 
	 EOF 
;

// Rule DecimalLiteral
ruleDecimalLiteral 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getDecimalLiteralAccess().getValueAssignment()); }
		(rule__DecimalLiteral__ValueAssignment)
		{ after(grammarAccess.getDecimalLiteralAccess().getValueAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleDoubleLiteral
entryRuleDoubleLiteral
:
{ before(grammarAccess.getDoubleLiteralRule()); }
	 ruleDoubleLiteral
{ after(grammarAccess.getDoubleLiteralRule()); } 
	 EOF 
;

// Rule DoubleLiteral
ruleDoubleLiteral 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getDoubleLiteralAccess().getValueAssignment()); }
		(rule__DoubleLiteral__ValueAssignment)
		{ after(grammarAccess.getDoubleLiteralAccess().getValueAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleBooleanLiteral
entryRuleBooleanLiteral
:
{ before(grammarAccess.getBooleanLiteralRule()); }
	 ruleBooleanLiteral
{ after(grammarAccess.getBooleanLiteralRule()); } 
	 EOF 
;

// Rule BooleanLiteral
ruleBooleanLiteral 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getBooleanLiteralAccess().getValueAssignment()); }
		(rule__BooleanLiteral__ValueAssignment)
		{ after(grammarAccess.getBooleanLiteralAccess().getValueAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleQuotedLiteral
entryRuleQuotedLiteral
:
{ before(grammarAccess.getQuotedLiteralRule()); }
	 ruleQuotedLiteral
{ after(grammarAccess.getQuotedLiteralRule()); } 
	 EOF 
;

// Rule QuotedLiteral
ruleQuotedLiteral 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getQuotedLiteralAccess().getGroup()); }
		(rule__QuotedLiteral__Group__0)
		{ after(grammarAccess.getQuotedLiteralAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleRef
entryRuleRef
:
{ before(grammarAccess.getRefRule()); }
	 ruleRef
{ after(grammarAccess.getRefRule()); } 
	 EOF 
;

// Rule Ref
ruleRef 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getRefAccess().getAlternatives()); }
		(rule__Ref__Alternatives)
		{ after(grammarAccess.getRefAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleCrossRef
entryRuleCrossRef
:
{ before(grammarAccess.getCrossRefRule()); }
	 ruleCrossRef
{ after(grammarAccess.getCrossRefRule()); } 
	 EOF 
;

// Rule CrossRef
ruleCrossRef 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getCrossRefAccess().getAlternatives()); }
		(rule__CrossRef__Alternatives)
		{ after(grammarAccess.getCrossRefAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleBoolean
entryRuleBoolean
:
{ before(grammarAccess.getBooleanRule()); }
	 ruleBoolean
{ after(grammarAccess.getBooleanRule()); } 
	 EOF 
;

// Rule Boolean
ruleBoolean 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getBooleanAccess().getBOOLEAN_STRTerminalRuleCall()); }
		RULE_BOOLEAN_STR
		{ after(grammarAccess.getBooleanAccess().getBOOLEAN_STRTerminalRuleCall()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleUnsignedInteger
entryRuleUnsignedInteger
:
{ before(grammarAccess.getUnsignedIntegerRule()); }
	 ruleUnsignedInteger
{ after(grammarAccess.getUnsignedIntegerRule()); } 
	 EOF 
;

// Rule UnsignedInteger
ruleUnsignedInteger 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getUnsignedIntegerAccess().getUNSIGNED_INTEGER_STRTerminalRuleCall()); }
		RULE_UNSIGNED_INTEGER_STR
		{ after(grammarAccess.getUnsignedIntegerAccess().getUNSIGNED_INTEGER_STRTerminalRuleCall()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleInteger
entryRuleInteger
:
{ before(grammarAccess.getIntegerRule()); }
	 ruleInteger
{ after(grammarAccess.getIntegerRule()); } 
	 EOF 
;

// Rule Integer
ruleInteger 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getIntegerAccess().getAlternatives()); }
		(rule__Integer__Alternatives)
		{ after(grammarAccess.getIntegerAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleDecimal
entryRuleDecimal
:
{ before(grammarAccess.getDecimalRule()); }
	 ruleDecimal
{ after(grammarAccess.getDecimalRule()); } 
	 EOF 
;

// Rule Decimal
ruleDecimal 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getDecimalAccess().getDECIMAL_STRTerminalRuleCall()); }
		RULE_DECIMAL_STR
		{ after(grammarAccess.getDecimalAccess().getDECIMAL_STRTerminalRuleCall()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleDouble
entryRuleDouble
:
{ before(grammarAccess.getDoubleRule()); }
	 ruleDouble
{ after(grammarAccess.getDoubleRule()); } 
	 EOF 
;

// Rule Double
ruleDouble 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getDoubleAccess().getDOUBLE_STRTerminalRuleCall()); }
		RULE_DOUBLE_STR
		{ after(grammarAccess.getDoubleAccess().getDOUBLE_STRTerminalRuleCall()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Rule RangeRestrictionKind
ruleRangeRestrictionKind
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRangeRestrictionKindAccess().getAlternatives()); }
		(rule__RangeRestrictionKind__Alternatives)
		{ after(grammarAccess.getRangeRestrictionKindAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Rule CardinalityRestrictionKind
ruleCardinalityRestrictionKind
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getCardinalityRestrictionKindAccess().getAlternatives()); }
		(rule__CardinalityRestrictionKind__Alternatives)
		{ after(grammarAccess.getCardinalityRestrictionKindAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Rule Extends
ruleExtends
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getExtendsAccess().getExtensionEnumLiteralDeclaration()); }
		('extends')
		{ after(grammarAccess.getExtendsAccess().getExtensionEnumLiteralDeclaration()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Rule Uses
ruleUses
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getUsesAccess().getUsageEnumLiteralDeclaration()); }
		('uses')
		{ after(grammarAccess.getUsesAccess().getUsageEnumLiteralDeclaration()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Rule Includes
ruleIncludes
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getIncludesAccess().getInclusionEnumLiteralDeclaration()); }
		('includes')
		{ after(grammarAccess.getIncludesAccess().getInclusionEnumLiteralDeclaration()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Ontology__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getOntologyAccess().getVocabularyBoxParserRuleCall_0()); }
		ruleVocabularyBox
		{ after(grammarAccess.getOntologyAccess().getVocabularyBoxParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getOntologyAccess().getDescriptionBoxParserRuleCall_1()); }
		ruleDescriptionBox
		{ after(grammarAccess.getOntologyAccess().getDescriptionBoxParserRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__AnnotationValue__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAnnotationValueAccess().getLiteralValueAssignment_0()); }
		(rule__AnnotationValue__LiteralValueAssignment_0)
		{ after(grammarAccess.getAnnotationValueAccess().getLiteralValueAssignment_0()); }
	)
	|
	(
		{ before(grammarAccess.getAnnotationValueAccess().getReferencedValueAssignment_1()); }
		(rule__AnnotationValue__ReferencedValueAssignment_1)
		{ after(grammarAccess.getAnnotationValueAccess().getReferencedValueAssignment_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__VocabularyBox__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVocabularyBoxAccess().getVocabularyParserRuleCall_0()); }
		ruleVocabulary
		{ after(grammarAccess.getVocabularyBoxAccess().getVocabularyParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getVocabularyBoxAccess().getVocabularyBundleParserRuleCall_1()); }
		ruleVocabularyBundle
		{ after(grammarAccess.getVocabularyBoxAccess().getVocabularyBundleParserRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Vocabulary__OwnedImportsAlternatives_6_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVocabularyAccess().getOwnedImportsExtensionParserRuleCall_6_0_0()); }
		ruleExtension
		{ after(grammarAccess.getVocabularyAccess().getOwnedImportsExtensionParserRuleCall_6_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getVocabularyAccess().getOwnedImportsUsageParserRuleCall_6_0_1()); }
		ruleUsage
		{ after(grammarAccess.getVocabularyAccess().getOwnedImportsUsageParserRuleCall_6_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__VocabularyBundle__OwnedImportsAlternatives_7_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVocabularyBundleAccess().getOwnedImportsExtensionParserRuleCall_7_0_0()); }
		ruleExtension
		{ after(grammarAccess.getVocabularyBundleAccess().getOwnedImportsExtensionParserRuleCall_7_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getVocabularyBundleAccess().getOwnedImportsInclusionParserRuleCall_7_0_1()); }
		ruleInclusion
		{ after(grammarAccess.getVocabularyBundleAccess().getOwnedImportsInclusionParserRuleCall_7_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__DescriptionBox__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDescriptionBoxAccess().getDescriptionParserRuleCall_0()); }
		ruleDescription
		{ after(grammarAccess.getDescriptionBoxAccess().getDescriptionParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getDescriptionBoxAccess().getDescriptionBundleParserRuleCall_1()); }
		ruleDescriptionBundle
		{ after(grammarAccess.getDescriptionBoxAccess().getDescriptionBundleParserRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Description__OwnedImportsAlternatives_6_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDescriptionAccess().getOwnedImportsExtensionParserRuleCall_6_0_0()); }
		ruleExtension
		{ after(grammarAccess.getDescriptionAccess().getOwnedImportsExtensionParserRuleCall_6_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getDescriptionAccess().getOwnedImportsUsageParserRuleCall_6_0_1()); }
		ruleUsage
		{ after(grammarAccess.getDescriptionAccess().getOwnedImportsUsageParserRuleCall_6_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__DescriptionBundle__OwnedImportsAlternatives_7_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDescriptionBundleAccess().getOwnedImportsExtensionParserRuleCall_7_0_0()); }
		ruleExtension
		{ after(grammarAccess.getDescriptionBundleAccess().getOwnedImportsExtensionParserRuleCall_7_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getDescriptionBundleAccess().getOwnedImportsUsageParserRuleCall_7_0_1()); }
		ruleUsage
		{ after(grammarAccess.getDescriptionBundleAccess().getOwnedImportsUsageParserRuleCall_7_0_1()); }
	)
	|
	(
		{ before(grammarAccess.getDescriptionBundleAccess().getOwnedImportsInclusionParserRuleCall_7_0_2()); }
		ruleInclusion
		{ after(grammarAccess.getDescriptionBundleAccess().getOwnedImportsInclusionParserRuleCall_7_0_2()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SpecializableTerm__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSpecializableTermAccess().getTypeParserRuleCall_0()); }
		ruleType
		{ after(grammarAccess.getSpecializableTermAccess().getTypeParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getSpecializableTermAccess().getAnnotationPropertyParserRuleCall_1()); }
		ruleAnnotationProperty
		{ after(grammarAccess.getSpecializableTermAccess().getAnnotationPropertyParserRuleCall_1()); }
	)
	|
	(
		{ before(grammarAccess.getSpecializableTermAccess().getScalarPropertyParserRuleCall_2()); }
		ruleScalarProperty
		{ after(grammarAccess.getSpecializableTermAccess().getScalarPropertyParserRuleCall_2()); }
	)
	|
	(
		{ before(grammarAccess.getSpecializableTermAccess().getStructuredPropertyParserRuleCall_3()); }
		ruleStructuredProperty
		{ after(grammarAccess.getSpecializableTermAccess().getStructuredPropertyParserRuleCall_3()); }
	)
	|
	(
		{ before(grammarAccess.getSpecializableTermAccess().getUnreifiedRelationParserRuleCall_4()); }
		ruleUnreifiedRelation
		{ after(grammarAccess.getSpecializableTermAccess().getUnreifiedRelationParserRuleCall_4()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Type__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTypeAccess().getClassifierParserRuleCall_0()); }
		ruleClassifier
		{ after(grammarAccess.getTypeAccess().getClassifierParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getTypeAccess().getScalarParserRuleCall_1()); }
		ruleScalar
		{ after(grammarAccess.getTypeAccess().getScalarParserRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Classifier__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassifierAccess().getEntityParserRuleCall_0()); }
		ruleEntity
		{ after(grammarAccess.getClassifierAccess().getEntityParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getClassifierAccess().getStructureParserRuleCall_1()); }
		ruleStructure
		{ after(grammarAccess.getClassifierAccess().getStructureParserRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Entity__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getEntityAccess().getAspectParserRuleCall_0()); }
		ruleAspect
		{ after(grammarAccess.getEntityAccess().getAspectParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getEntityAccess().getConceptParserRuleCall_1()); }
		ruleConcept
		{ after(grammarAccess.getEntityAccess().getConceptParserRuleCall_1()); }
	)
	|
	(
		{ before(grammarAccess.getEntityAccess().getRelationEntityParserRuleCall_2()); }
		ruleRelationEntity
		{ after(grammarAccess.getEntityAccess().getRelationEntityParserRuleCall_2()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Aspect__Alternatives_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAspectAccess().getGroup_1_0()); }
		(rule__Aspect__Group_1_0__0)
		{ after(grammarAccess.getAspectAccess().getGroup_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getAspectAccess().getGroup_1_1()); }
		(rule__Aspect__Group_1_1__0)
		{ after(grammarAccess.getAspectAccess().getGroup_1_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Concept__Alternatives_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getConceptAccess().getGroup_1_0()); }
		(rule__Concept__Group_1_0__0)
		{ after(grammarAccess.getConceptAccess().getGroup_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getConceptAccess().getGroup_1_1()); }
		(rule__Concept__Group_1_1__0)
		{ after(grammarAccess.getConceptAccess().getGroup_1_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Alternatives_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationEntityAccess().getGroup_1_0()); }
		(rule__RelationEntity__Group_1_0__0)
		{ after(grammarAccess.getRelationEntityAccess().getGroup_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getRelationEntityAccess().getGroup_1_1()); }
		(rule__RelationEntity__Group_1_1__0)
		{ after(grammarAccess.getRelationEntityAccess().getGroup_1_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Structure__Alternatives_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStructureAccess().getGroup_1_0()); }
		(rule__Structure__Group_1_0__0)
		{ after(grammarAccess.getStructureAccess().getGroup_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getStructureAccess().getGroup_1_1()); }
		(rule__Structure__Group_1_1__0)
		{ after(grammarAccess.getStructureAccess().getGroup_1_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierSpecialization__Alternatives_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassifierSpecializationAccess().getGroup_1_0()); }
		(rule__ClassifierSpecialization__Group_1_0__0)
		{ after(grammarAccess.getClassifierSpecializationAccess().getGroup_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getClassifierSpecializationAccess().getGroup_1_1()); }
		(rule__ClassifierSpecialization__Group_1_1__0)
		{ after(grammarAccess.getClassifierSpecializationAccess().getGroup_1_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierEquivalenceAxiom__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassifierEquivalenceAxiomAccess().getGroup_0()); }
		(rule__ClassifierEquivalenceAxiom__Group_0__0)
		{ after(grammarAccess.getClassifierEquivalenceAxiomAccess().getGroup_0()); }
	)
	|
	(
		{ before(grammarAccess.getClassifierEquivalenceAxiomAccess().getGroup_1()); }
		(rule__ClassifierEquivalenceAxiom__Group_1__0)
		{ after(grammarAccess.getClassifierEquivalenceAxiomAccess().getGroup_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Scalar__Alternatives_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScalarAccess().getGroup_1_0()); }
		(rule__Scalar__Group_1_0__0)
		{ after(grammarAccess.getScalarAccess().getGroup_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getScalarAccess().getGroup_1_1()); }
		(rule__Scalar__Group_1_1__0)
		{ after(grammarAccess.getScalarAccess().getGroup_1_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__AnnotationProperty__Alternatives_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAnnotationPropertyAccess().getGroup_1_0()); }
		(rule__AnnotationProperty__Group_1_0__0)
		{ after(grammarAccess.getAnnotationPropertyAccess().getGroup_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getAnnotationPropertyAccess().getGroup_1_1()); }
		(rule__AnnotationProperty__Group_1_1__0)
		{ after(grammarAccess.getAnnotationPropertyAccess().getGroup_1_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SemanticProperty__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSemanticPropertyAccess().getScalarPropertyParserRuleCall_0()); }
		ruleScalarProperty
		{ after(grammarAccess.getSemanticPropertyAccess().getScalarPropertyParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getSemanticPropertyAccess().getStructuredPropertyParserRuleCall_1()); }
		ruleStructuredProperty
		{ after(grammarAccess.getSemanticPropertyAccess().getStructuredPropertyParserRuleCall_1()); }
	)
	|
	(
		{ before(grammarAccess.getSemanticPropertyAccess().getRelationParserRuleCall_2()); }
		ruleRelation
		{ after(grammarAccess.getSemanticPropertyAccess().getRelationParserRuleCall_2()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Alternatives_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScalarPropertyAccess().getGroup_1_0()); }
		(rule__ScalarProperty__Group_1_0__0)
		{ after(grammarAccess.getScalarPropertyAccess().getGroup_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getScalarPropertyAccess().getGroup_1_1()); }
		(rule__ScalarProperty__Group_1_1__0)
		{ after(grammarAccess.getScalarPropertyAccess().getGroup_1_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Alternatives_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStructuredPropertyAccess().getGroup_1_0()); }
		(rule__StructuredProperty__Group_1_0__0)
		{ after(grammarAccess.getStructuredPropertyAccess().getGroup_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getStructuredPropertyAccess().getGroup_1_1()); }
		(rule__StructuredProperty__Group_1_1__0)
		{ after(grammarAccess.getStructuredPropertyAccess().getGroup_1_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Relation__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationAccess().getForwardRelationParserRuleCall_0()); }
		ruleForwardRelation
		{ after(grammarAccess.getRelationAccess().getForwardRelationParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getRelationAccess().getReverseRelationParserRuleCall_1()); }
		ruleReverseRelation
		{ after(grammarAccess.getRelationAccess().getReverseRelationParserRuleCall_1()); }
	)
	|
	(
		{ before(grammarAccess.getRelationAccess().getUnreifiedRelationParserRuleCall_2()); }
		ruleUnreifiedRelation
		{ after(grammarAccess.getRelationAccess().getUnreifiedRelationParserRuleCall_2()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Alternatives_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getUnreifiedRelationAccess().getGroup_1_0()); }
		(rule__UnreifiedRelation__Group_1_0__0)
		{ after(grammarAccess.getUnreifiedRelationAccess().getGroup_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getUnreifiedRelationAccess().getGroup_1_1()); }
		(rule__UnreifiedRelation__Group_1_1__0)
		{ after(grammarAccess.getUnreifiedRelationAccess().getGroup_1_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Alternatives_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRuleAccess().getGroup_1_0()); }
		(rule__Rule__Group_1_0__0)
		{ after(grammarAccess.getRuleAccess().getGroup_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getRuleAccess().getGroup_1_1()); }
		(rule__Rule__Group_1_1__0)
		{ after(grammarAccess.getRuleAccess().getGroup_1_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__BuiltIn__Alternatives_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getBuiltInAccess().getGroup_1_0()); }
		(rule__BuiltIn__Group_1_0__0)
		{ after(grammarAccess.getBuiltInAccess().getGroup_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getBuiltInAccess().getGroup_1_1()); }
		(rule__BuiltIn__Group_1_1__0)
		{ after(grammarAccess.getBuiltInAccess().getGroup_1_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__AnonymousInstance__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAnonymousInstanceAccess().getStructureInstanceParserRuleCall_0()); }
		ruleStructureInstance
		{ after(grammarAccess.getAnonymousInstanceAccess().getStructureInstanceParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getAnonymousInstanceAccess().getAnonymousRelationInstanceParserRuleCall_1()); }
		ruleAnonymousRelationInstance
		{ after(grammarAccess.getAnonymousInstanceAccess().getAnonymousRelationInstanceParserRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__NamedInstance__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getNamedInstanceAccess().getConceptInstanceParserRuleCall_0()); }
		ruleConceptInstance
		{ after(grammarAccess.getNamedInstanceAccess().getConceptInstanceParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getNamedInstanceAccess().getRelationInstanceParserRuleCall_1()); }
		ruleRelationInstance
		{ after(grammarAccess.getNamedInstanceAccess().getRelationInstanceParserRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ConceptInstance__Alternatives_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getConceptInstanceAccess().getGroup_1_0()); }
		(rule__ConceptInstance__Group_1_0__0)
		{ after(grammarAccess.getConceptInstanceAccess().getGroup_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getConceptInstanceAccess().getGroup_1_1()); }
		(rule__ConceptInstance__Group_1_1__0)
		{ after(grammarAccess.getConceptInstanceAccess().getGroup_1_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Alternatives_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationInstanceAccess().getGroup_1_0()); }
		(rule__RelationInstance__Group_1_0__0)
		{ after(grammarAccess.getRelationInstanceAccess().getGroup_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getRelationInstanceAccess().getGroup_1_1()); }
		(rule__RelationInstance__Group_1_1__0)
		{ after(grammarAccess.getRelationInstanceAccess().getGroup_1_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__VocabularyStatement__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVocabularyStatementAccess().getRuleParserRuleCall_0()); }
		ruleRule
		{ after(grammarAccess.getVocabularyStatementAccess().getRuleParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getVocabularyStatementAccess().getBuiltInParserRuleCall_1()); }
		ruleBuiltIn
		{ after(grammarAccess.getVocabularyStatementAccess().getBuiltInParserRuleCall_1()); }
	)
	|
	(
		{ before(grammarAccess.getVocabularyStatementAccess().getSpecializableTermParserRuleCall_2()); }
		ruleSpecializableTerm
		{ after(grammarAccess.getVocabularyStatementAccess().getSpecializableTermParserRuleCall_2()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyRestrictionAxiom__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPropertyRestrictionAxiomAccess().getPropertySelfRestrictionAxiomParserRuleCall_0()); }
		rulePropertySelfRestrictionAxiom
		{ after(grammarAccess.getPropertyRestrictionAxiomAccess().getPropertySelfRestrictionAxiomParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getPropertyRestrictionAxiomAccess().getPropertyRangeRestrictionAxiomParserRuleCall_1()); }
		rulePropertyRangeRestrictionAxiom
		{ after(grammarAccess.getPropertyRestrictionAxiomAccess().getPropertyRangeRestrictionAxiomParserRuleCall_1()); }
	)
	|
	(
		{ before(grammarAccess.getPropertyRestrictionAxiomAccess().getPropertyCardinalityRestrictionAxiomParserRuleCall_2()); }
		rulePropertyCardinalityRestrictionAxiom
		{ after(grammarAccess.getPropertyRestrictionAxiomAccess().getPropertyCardinalityRestrictionAxiomParserRuleCall_2()); }
	)
	|
	(
		{ before(grammarAccess.getPropertyRestrictionAxiomAccess().getPropertyValueRestrictionAxiomParserRuleCall_3()); }
		rulePropertyValueRestrictionAxiom
		{ after(grammarAccess.getPropertyRestrictionAxiomAccess().getPropertyValueRestrictionAxiomParserRuleCall_3()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyValueRestrictionAxiom__Alternatives_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPropertyValueRestrictionAxiomAccess().getLiteralValueAssignment_3_0()); }
		(rule__PropertyValueRestrictionAxiom__LiteralValueAssignment_3_0)
		{ after(grammarAccess.getPropertyValueRestrictionAxiomAccess().getLiteralValueAssignment_3_0()); }
	)
	|
	(
		{ before(grammarAccess.getPropertyValueRestrictionAxiomAccess().getContainedValueAssignment_3_1()); }
		(rule__PropertyValueRestrictionAxiom__ContainedValueAssignment_3_1)
		{ after(grammarAccess.getPropertyValueRestrictionAxiomAccess().getContainedValueAssignment_3_1()); }
	)
	|
	(
		{ before(grammarAccess.getPropertyValueRestrictionAxiomAccess().getReferencedValueAssignment_3_2()); }
		(rule__PropertyValueRestrictionAxiom__ReferencedValueAssignment_3_2)
		{ after(grammarAccess.getPropertyValueRestrictionAxiomAccess().getReferencedValueAssignment_3_2()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyValue__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPropertyValueAccess().getLiteralValueAssignment_0()); }
		(rule__PropertyValue__LiteralValueAssignment_0)
		{ after(grammarAccess.getPropertyValueAccess().getLiteralValueAssignment_0()); }
	)
	|
	(
		{ before(grammarAccess.getPropertyValueAccess().getContainedValueAssignment_1()); }
		(rule__PropertyValue__ContainedValueAssignment_1)
		{ after(grammarAccess.getPropertyValueAccess().getContainedValueAssignment_1()); }
	)
	|
	(
		{ before(grammarAccess.getPropertyValueAccess().getReferencedValueAssignment_2()); }
		(rule__PropertyValue__ReferencedValueAssignment_2)
		{ after(grammarAccess.getPropertyValueAccess().getReferencedValueAssignment_2()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Predicate__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPredicateAccess().getUnaryPredicateParserRuleCall_0()); }
		ruleUnaryPredicate
		{ after(grammarAccess.getPredicateAccess().getUnaryPredicateParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getPredicateAccess().getBinaryPredicateParserRuleCall_1()); }
		ruleBinaryPredicate
		{ after(grammarAccess.getPredicateAccess().getBinaryPredicateParserRuleCall_1()); }
	)
	|
	(
		{ before(grammarAccess.getPredicateAccess().getBuiltInPredicateParserRuleCall_2()); }
		ruleBuiltInPredicate
		{ after(grammarAccess.getPredicateAccess().getBuiltInPredicateParserRuleCall_2()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnaryPredicate__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getUnaryPredicateAccess().getTypePredicateParserRuleCall_0()); }
		ruleTypePredicate
		{ after(grammarAccess.getUnaryPredicateAccess().getTypePredicateParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getUnaryPredicateAccess().getRelationEntityPredicateParserRuleCall_1()); }
		ruleRelationEntityPredicate
		{ after(grammarAccess.getUnaryPredicateAccess().getRelationEntityPredicateParserRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__BinaryPredicate__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getBinaryPredicateAccess().getPropertyPredicateParserRuleCall_0()); }
		rulePropertyPredicate
		{ after(grammarAccess.getBinaryPredicateAccess().getPropertyPredicateParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getBinaryPredicateAccess().getSameAsPredicateParserRuleCall_1()); }
		ruleSameAsPredicate
		{ after(grammarAccess.getBinaryPredicateAccess().getSameAsPredicateParserRuleCall_1()); }
	)
	|
	(
		{ before(grammarAccess.getBinaryPredicateAccess().getDifferentFromPredicateParserRuleCall_2()); }
		ruleDifferentFromPredicate
		{ after(grammarAccess.getBinaryPredicateAccess().getDifferentFromPredicateParserRuleCall_2()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Argument__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getArgumentAccess().getVariableAssignment_0()); }
		(rule__Argument__VariableAssignment_0)
		{ after(grammarAccess.getArgumentAccess().getVariableAssignment_0()); }
	)
	|
	(
		{ before(grammarAccess.getArgumentAccess().getLiteralAssignment_1()); }
		(rule__Argument__LiteralAssignment_1)
		{ after(grammarAccess.getArgumentAccess().getLiteralAssignment_1()); }
	)
	|
	(
		{ before(grammarAccess.getArgumentAccess().getInstanceAssignment_2()); }
		(rule__Argument__InstanceAssignment_2)
		{ after(grammarAccess.getArgumentAccess().getInstanceAssignment_2()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Literal__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLiteralAccess().getIntegerLiteralParserRuleCall_0()); }
		ruleIntegerLiteral
		{ after(grammarAccess.getLiteralAccess().getIntegerLiteralParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getLiteralAccess().getDecimalLiteralParserRuleCall_1()); }
		ruleDecimalLiteral
		{ after(grammarAccess.getLiteralAccess().getDecimalLiteralParserRuleCall_1()); }
	)
	|
	(
		{ before(grammarAccess.getLiteralAccess().getDoubleLiteralParserRuleCall_2()); }
		ruleDoubleLiteral
		{ after(grammarAccess.getLiteralAccess().getDoubleLiteralParserRuleCall_2()); }
	)
	|
	(
		{ before(grammarAccess.getLiteralAccess().getBooleanLiteralParserRuleCall_3()); }
		ruleBooleanLiteral
		{ after(grammarAccess.getLiteralAccess().getBooleanLiteralParserRuleCall_3()); }
	)
	|
	(
		{ before(grammarAccess.getLiteralAccess().getQuotedLiteralParserRuleCall_4()); }
		ruleQuotedLiteral
		{ after(grammarAccess.getLiteralAccess().getQuotedLiteralParserRuleCall_4()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__QuotedLiteral__Alternatives_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getQuotedLiteralAccess().getGroup_1_0()); }
		(rule__QuotedLiteral__Group_1_0__0)
		{ after(grammarAccess.getQuotedLiteralAccess().getGroup_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getQuotedLiteralAccess().getGroup_1_1()); }
		(rule__QuotedLiteral__Group_1_1__0)
		{ after(grammarAccess.getQuotedLiteralAccess().getGroup_1_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Ref__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRefAccess().getIDTerminalRuleCall_0()); }
		RULE_ID
		{ after(grammarAccess.getRefAccess().getIDTerminalRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getRefAccess().getQNAMETerminalRuleCall_1()); }
		RULE_QNAME
		{ after(grammarAccess.getRefAccess().getQNAMETerminalRuleCall_1()); }
	)
	|
	(
		{ before(grammarAccess.getRefAccess().getIRITerminalRuleCall_2()); }
		RULE_IRI
		{ after(grammarAccess.getRefAccess().getIRITerminalRuleCall_2()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__CrossRef__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getCrossRefAccess().getQNAMETerminalRuleCall_0()); }
		RULE_QNAME
		{ after(grammarAccess.getCrossRefAccess().getQNAMETerminalRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getCrossRefAccess().getIRITerminalRuleCall_1()); }
		RULE_IRI
		{ after(grammarAccess.getCrossRefAccess().getIRITerminalRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Integer__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getIntegerAccess().getUNSIGNED_INTEGER_STRTerminalRuleCall_0()); }
		RULE_UNSIGNED_INTEGER_STR
		{ after(grammarAccess.getIntegerAccess().getUNSIGNED_INTEGER_STRTerminalRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getIntegerAccess().getINTEGER_STRTerminalRuleCall_1()); }
		RULE_INTEGER_STR
		{ after(grammarAccess.getIntegerAccess().getINTEGER_STRTerminalRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RangeRestrictionKind__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRangeRestrictionKindAccess().getAllEnumLiteralDeclaration_0()); }
		('all')
		{ after(grammarAccess.getRangeRestrictionKindAccess().getAllEnumLiteralDeclaration_0()); }
	)
	|
	(
		{ before(grammarAccess.getRangeRestrictionKindAccess().getSomeEnumLiteralDeclaration_1()); }
		('some')
		{ after(grammarAccess.getRangeRestrictionKindAccess().getSomeEnumLiteralDeclaration_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__CardinalityRestrictionKind__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getCardinalityRestrictionKindAccess().getExactlyEnumLiteralDeclaration_0()); }
		('exactly')
		{ after(grammarAccess.getCardinalityRestrictionKindAccess().getExactlyEnumLiteralDeclaration_0()); }
	)
	|
	(
		{ before(grammarAccess.getCardinalityRestrictionKindAccess().getMinEnumLiteralDeclaration_1()); }
		('min')
		{ after(grammarAccess.getCardinalityRestrictionKindAccess().getMinEnumLiteralDeclaration_1()); }
	)
	|
	(
		{ before(grammarAccess.getCardinalityRestrictionKindAccess().getMaxEnumLiteralDeclaration_2()); }
		('max')
		{ after(grammarAccess.getCardinalityRestrictionKindAccess().getMaxEnumLiteralDeclaration_2()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Annotation__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Annotation__Group__0__Impl
	rule__Annotation__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Annotation__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAnnotationAccess().getCommercialAtKeyword_0()); }
	'@'
	{ after(grammarAccess.getAnnotationAccess().getCommercialAtKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Annotation__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Annotation__Group__1__Impl
	rule__Annotation__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Annotation__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAnnotationAccess().getAnnotationAction_1()); }
	()
	{ after(grammarAccess.getAnnotationAccess().getAnnotationAction_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Annotation__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Annotation__Group__2__Impl
	rule__Annotation__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Annotation__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAnnotationAccess().getPropertyAssignment_2()); }
	(rule__Annotation__PropertyAssignment_2)
	{ after(grammarAccess.getAnnotationAccess().getPropertyAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Annotation__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Annotation__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Annotation__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAnnotationAccess().getGroup_3()); }
	(rule__Annotation__Group_3__0)?
	{ after(grammarAccess.getAnnotationAccess().getGroup_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Annotation__Group_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Annotation__Group_3__0__Impl
	rule__Annotation__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Annotation__Group_3__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAnnotationAccess().getAnnotationValueParserRuleCall_3_0()); }
	ruleAnnotationValue
	{ after(grammarAccess.getAnnotationAccess().getAnnotationValueParserRuleCall_3_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Annotation__Group_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Annotation__Group_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Annotation__Group_3__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAnnotationAccess().getGroup_3_1()); }
	(rule__Annotation__Group_3_1__0)*
	{ after(grammarAccess.getAnnotationAccess().getGroup_3_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Annotation__Group_3_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Annotation__Group_3_1__0__Impl
	rule__Annotation__Group_3_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Annotation__Group_3_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAnnotationAccess().getCommaKeyword_3_1_0()); }
	','
	{ after(grammarAccess.getAnnotationAccess().getCommaKeyword_3_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Annotation__Group_3_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Annotation__Group_3_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Annotation__Group_3_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAnnotationAccess().getAnnotationValueParserRuleCall_3_1_1()); }
	ruleAnnotationValue
	{ after(grammarAccess.getAnnotationAccess().getAnnotationValueParserRuleCall_3_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Vocabulary__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Vocabulary__Group__0__Impl
	rule__Vocabulary__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Vocabulary__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVocabularyAccess().getOwnedAnnotationsAssignment_0()); }
	(rule__Vocabulary__OwnedAnnotationsAssignment_0)*
	{ after(grammarAccess.getVocabularyAccess().getOwnedAnnotationsAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Vocabulary__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Vocabulary__Group__1__Impl
	rule__Vocabulary__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Vocabulary__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVocabularyAccess().getVocabularyKeyword_1()); }
	'vocabulary'
	{ after(grammarAccess.getVocabularyAccess().getVocabularyKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Vocabulary__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Vocabulary__Group__2__Impl
	rule__Vocabulary__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Vocabulary__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVocabularyAccess().getNamespaceAssignment_2()); }
	(rule__Vocabulary__NamespaceAssignment_2)
	{ after(grammarAccess.getVocabularyAccess().getNamespaceAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Vocabulary__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Vocabulary__Group__3__Impl
	rule__Vocabulary__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Vocabulary__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVocabularyAccess().getAsKeyword_3()); }
	'as'
	{ after(grammarAccess.getVocabularyAccess().getAsKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Vocabulary__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Vocabulary__Group__4__Impl
	rule__Vocabulary__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__Vocabulary__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVocabularyAccess().getPrefixAssignment_4()); }
	(rule__Vocabulary__PrefixAssignment_4)
	{ after(grammarAccess.getVocabularyAccess().getPrefixAssignment_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Vocabulary__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Vocabulary__Group__5__Impl
	rule__Vocabulary__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__Vocabulary__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVocabularyAccess().getLeftCurlyBracketKeyword_5()); }
	'{'
	{ after(grammarAccess.getVocabularyAccess().getLeftCurlyBracketKeyword_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Vocabulary__Group__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Vocabulary__Group__6__Impl
	rule__Vocabulary__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__Vocabulary__Group__6__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVocabularyAccess().getOwnedImportsAssignment_6()); }
	(rule__Vocabulary__OwnedImportsAssignment_6)*
	{ after(grammarAccess.getVocabularyAccess().getOwnedImportsAssignment_6()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Vocabulary__Group__7
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Vocabulary__Group__7__Impl
	rule__Vocabulary__Group__8
;
finally {
	restoreStackSize(stackSize);
}

rule__Vocabulary__Group__7__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVocabularyAccess().getOwnedStatementsAssignment_7()); }
	(rule__Vocabulary__OwnedStatementsAssignment_7)*
	{ after(grammarAccess.getVocabularyAccess().getOwnedStatementsAssignment_7()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Vocabulary__Group__8
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Vocabulary__Group__8__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Vocabulary__Group__8__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVocabularyAccess().getRightCurlyBracketKeyword_8()); }
	'}'
	{ after(grammarAccess.getVocabularyAccess().getRightCurlyBracketKeyword_8()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__VocabularyBundle__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__VocabularyBundle__Group__0__Impl
	rule__VocabularyBundle__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__VocabularyBundle__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVocabularyBundleAccess().getOwnedAnnotationsAssignment_0()); }
	(rule__VocabularyBundle__OwnedAnnotationsAssignment_0)*
	{ after(grammarAccess.getVocabularyBundleAccess().getOwnedAnnotationsAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__VocabularyBundle__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__VocabularyBundle__Group__1__Impl
	rule__VocabularyBundle__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__VocabularyBundle__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVocabularyBundleAccess().getVocabularyKeyword_1()); }
	'vocabulary'
	{ after(grammarAccess.getVocabularyBundleAccess().getVocabularyKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__VocabularyBundle__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__VocabularyBundle__Group__2__Impl
	rule__VocabularyBundle__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__VocabularyBundle__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVocabularyBundleAccess().getBundleKeyword_2()); }
	'bundle'
	{ after(grammarAccess.getVocabularyBundleAccess().getBundleKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__VocabularyBundle__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__VocabularyBundle__Group__3__Impl
	rule__VocabularyBundle__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__VocabularyBundle__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVocabularyBundleAccess().getNamespaceAssignment_3()); }
	(rule__VocabularyBundle__NamespaceAssignment_3)
	{ after(grammarAccess.getVocabularyBundleAccess().getNamespaceAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__VocabularyBundle__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__VocabularyBundle__Group__4__Impl
	rule__VocabularyBundle__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__VocabularyBundle__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVocabularyBundleAccess().getAsKeyword_4()); }
	'as'
	{ after(grammarAccess.getVocabularyBundleAccess().getAsKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__VocabularyBundle__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__VocabularyBundle__Group__5__Impl
	rule__VocabularyBundle__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__VocabularyBundle__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVocabularyBundleAccess().getPrefixAssignment_5()); }
	(rule__VocabularyBundle__PrefixAssignment_5)
	{ after(grammarAccess.getVocabularyBundleAccess().getPrefixAssignment_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__VocabularyBundle__Group__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__VocabularyBundle__Group__6__Impl
	rule__VocabularyBundle__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__VocabularyBundle__Group__6__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVocabularyBundleAccess().getLeftCurlyBracketKeyword_6()); }
	'{'
	{ after(grammarAccess.getVocabularyBundleAccess().getLeftCurlyBracketKeyword_6()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__VocabularyBundle__Group__7
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__VocabularyBundle__Group__7__Impl
	rule__VocabularyBundle__Group__8
;
finally {
	restoreStackSize(stackSize);
}

rule__VocabularyBundle__Group__7__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVocabularyBundleAccess().getOwnedImportsAssignment_7()); }
	(rule__VocabularyBundle__OwnedImportsAssignment_7)*
	{ after(grammarAccess.getVocabularyBundleAccess().getOwnedImportsAssignment_7()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__VocabularyBundle__Group__8
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__VocabularyBundle__Group__8__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__VocabularyBundle__Group__8__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVocabularyBundleAccess().getRightCurlyBracketKeyword_8()); }
	'}'
	{ after(grammarAccess.getVocabularyBundleAccess().getRightCurlyBracketKeyword_8()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Description__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Description__Group__0__Impl
	rule__Description__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Description__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDescriptionAccess().getOwnedAnnotationsAssignment_0()); }
	(rule__Description__OwnedAnnotationsAssignment_0)*
	{ after(grammarAccess.getDescriptionAccess().getOwnedAnnotationsAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Description__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Description__Group__1__Impl
	rule__Description__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Description__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDescriptionAccess().getDescriptionKeyword_1()); }
	'description'
	{ after(grammarAccess.getDescriptionAccess().getDescriptionKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Description__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Description__Group__2__Impl
	rule__Description__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Description__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDescriptionAccess().getNamespaceAssignment_2()); }
	(rule__Description__NamespaceAssignment_2)
	{ after(grammarAccess.getDescriptionAccess().getNamespaceAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Description__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Description__Group__3__Impl
	rule__Description__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Description__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDescriptionAccess().getAsKeyword_3()); }
	'as'
	{ after(grammarAccess.getDescriptionAccess().getAsKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Description__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Description__Group__4__Impl
	rule__Description__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__Description__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDescriptionAccess().getPrefixAssignment_4()); }
	(rule__Description__PrefixAssignment_4)
	{ after(grammarAccess.getDescriptionAccess().getPrefixAssignment_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Description__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Description__Group__5__Impl
	rule__Description__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__Description__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDescriptionAccess().getLeftCurlyBracketKeyword_5()); }
	'{'
	{ after(grammarAccess.getDescriptionAccess().getLeftCurlyBracketKeyword_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Description__Group__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Description__Group__6__Impl
	rule__Description__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__Description__Group__6__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDescriptionAccess().getOwnedImportsAssignment_6()); }
	(rule__Description__OwnedImportsAssignment_6)*
	{ after(grammarAccess.getDescriptionAccess().getOwnedImportsAssignment_6()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Description__Group__7
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Description__Group__7__Impl
	rule__Description__Group__8
;
finally {
	restoreStackSize(stackSize);
}

rule__Description__Group__7__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDescriptionAccess().getOwnedStatementsAssignment_7()); }
	(rule__Description__OwnedStatementsAssignment_7)*
	{ after(grammarAccess.getDescriptionAccess().getOwnedStatementsAssignment_7()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Description__Group__8
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Description__Group__8__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Description__Group__8__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDescriptionAccess().getRightCurlyBracketKeyword_8()); }
	'}'
	{ after(grammarAccess.getDescriptionAccess().getRightCurlyBracketKeyword_8()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__DescriptionBundle__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DescriptionBundle__Group__0__Impl
	rule__DescriptionBundle__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DescriptionBundle__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDescriptionBundleAccess().getOwnedAnnotationsAssignment_0()); }
	(rule__DescriptionBundle__OwnedAnnotationsAssignment_0)*
	{ after(grammarAccess.getDescriptionBundleAccess().getOwnedAnnotationsAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__DescriptionBundle__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DescriptionBundle__Group__1__Impl
	rule__DescriptionBundle__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__DescriptionBundle__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDescriptionBundleAccess().getDescriptionKeyword_1()); }
	'description'
	{ after(grammarAccess.getDescriptionBundleAccess().getDescriptionKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__DescriptionBundle__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DescriptionBundle__Group__2__Impl
	rule__DescriptionBundle__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__DescriptionBundle__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDescriptionBundleAccess().getBundleKeyword_2()); }
	'bundle'
	{ after(grammarAccess.getDescriptionBundleAccess().getBundleKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__DescriptionBundle__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DescriptionBundle__Group__3__Impl
	rule__DescriptionBundle__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__DescriptionBundle__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDescriptionBundleAccess().getNamespaceAssignment_3()); }
	(rule__DescriptionBundle__NamespaceAssignment_3)
	{ after(grammarAccess.getDescriptionBundleAccess().getNamespaceAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__DescriptionBundle__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DescriptionBundle__Group__4__Impl
	rule__DescriptionBundle__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__DescriptionBundle__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDescriptionBundleAccess().getAsKeyword_4()); }
	'as'
	{ after(grammarAccess.getDescriptionBundleAccess().getAsKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__DescriptionBundle__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DescriptionBundle__Group__5__Impl
	rule__DescriptionBundle__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__DescriptionBundle__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDescriptionBundleAccess().getPrefixAssignment_5()); }
	(rule__DescriptionBundle__PrefixAssignment_5)
	{ after(grammarAccess.getDescriptionBundleAccess().getPrefixAssignment_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__DescriptionBundle__Group__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DescriptionBundle__Group__6__Impl
	rule__DescriptionBundle__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__DescriptionBundle__Group__6__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDescriptionBundleAccess().getLeftCurlyBracketKeyword_6()); }
	'{'
	{ after(grammarAccess.getDescriptionBundleAccess().getLeftCurlyBracketKeyword_6()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__DescriptionBundle__Group__7
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DescriptionBundle__Group__7__Impl
	rule__DescriptionBundle__Group__8
;
finally {
	restoreStackSize(stackSize);
}

rule__DescriptionBundle__Group__7__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDescriptionBundleAccess().getOwnedImportsAssignment_7()); }
	(rule__DescriptionBundle__OwnedImportsAssignment_7)*
	{ after(grammarAccess.getDescriptionBundleAccess().getOwnedImportsAssignment_7()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__DescriptionBundle__Group__8
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DescriptionBundle__Group__8__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DescriptionBundle__Group__8__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDescriptionBundleAccess().getRightCurlyBracketKeyword_8()); }
	'}'
	{ after(grammarAccess.getDescriptionBundleAccess().getRightCurlyBracketKeyword_8()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Aspect__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Aspect__Group__0__Impl
	rule__Aspect__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Aspect__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAspectAccess().getOwnedAnnotationsAssignment_0()); }
	(rule__Aspect__OwnedAnnotationsAssignment_0)*
	{ after(grammarAccess.getAspectAccess().getOwnedAnnotationsAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Aspect__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Aspect__Group__1__Impl
	rule__Aspect__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Aspect__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAspectAccess().getAlternatives_1()); }
	(rule__Aspect__Alternatives_1)
	{ after(grammarAccess.getAspectAccess().getAlternatives_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Aspect__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Aspect__Group__2__Impl
	rule__Aspect__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Aspect__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAspectAccess().getGroup_2()); }
	(rule__Aspect__Group_2__0)?
	{ after(grammarAccess.getAspectAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Aspect__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Aspect__Group__3__Impl
	rule__Aspect__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Aspect__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAspectAccess().getClassifierSpecializationParserRuleCall_3()); }
	(ruleClassifierSpecialization)?
	{ after(grammarAccess.getAspectAccess().getClassifierSpecializationParserRuleCall_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Aspect__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Aspect__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Aspect__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAspectAccess().getClassifierEquivalenceParserRuleCall_4()); }
	(ruleClassifierEquivalence)?
	{ after(grammarAccess.getAspectAccess().getClassifierEquivalenceParserRuleCall_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Aspect__Group_1_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Aspect__Group_1_0__0__Impl
	rule__Aspect__Group_1_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Aspect__Group_1_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAspectAccess().getAspectKeyword_1_0_0()); }
	'aspect'
	{ after(grammarAccess.getAspectAccess().getAspectKeyword_1_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Aspect__Group_1_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Aspect__Group_1_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Aspect__Group_1_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAspectAccess().getNameAssignment_1_0_1()); }
	(rule__Aspect__NameAssignment_1_0_1)
	{ after(grammarAccess.getAspectAccess().getNameAssignment_1_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Aspect__Group_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Aspect__Group_1_1__0__Impl
	rule__Aspect__Group_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Aspect__Group_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAspectAccess().getRefKeyword_1_1_0()); }
	'ref'
	{ after(grammarAccess.getAspectAccess().getRefKeyword_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Aspect__Group_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Aspect__Group_1_1__1__Impl
	rule__Aspect__Group_1_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Aspect__Group_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAspectAccess().getAspectKeyword_1_1_1()); }
	'aspect'
	{ after(grammarAccess.getAspectAccess().getAspectKeyword_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Aspect__Group_1_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Aspect__Group_1_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Aspect__Group_1_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAspectAccess().getRefAssignment_1_1_2()); }
	(rule__Aspect__RefAssignment_1_1_2)
	{ after(grammarAccess.getAspectAccess().getRefAssignment_1_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Aspect__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Aspect__Group_2__0__Impl
	rule__Aspect__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Aspect__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAspectAccess().getLeftSquareBracketKeyword_2_0()); }
	'['
	{ after(grammarAccess.getAspectAccess().getLeftSquareBracketKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Aspect__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Aspect__Group_2__1__Impl
	rule__Aspect__Group_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Aspect__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAspectAccess().getOwnedKeysAssignment_2_1()); }
	(rule__Aspect__OwnedKeysAssignment_2_1)*
	{ after(grammarAccess.getAspectAccess().getOwnedKeysAssignment_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Aspect__Group_2__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Aspect__Group_2__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Aspect__Group_2__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAspectAccess().getRightSquareBracketKeyword_2_2()); }
	']'
	{ after(grammarAccess.getAspectAccess().getRightSquareBracketKeyword_2_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Concept__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Concept__Group__0__Impl
	rule__Concept__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Concept__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConceptAccess().getOwnedAnnotationsAssignment_0()); }
	(rule__Concept__OwnedAnnotationsAssignment_0)*
	{ after(grammarAccess.getConceptAccess().getOwnedAnnotationsAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Concept__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Concept__Group__1__Impl
	rule__Concept__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Concept__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConceptAccess().getAlternatives_1()); }
	(rule__Concept__Alternatives_1)
	{ after(grammarAccess.getConceptAccess().getAlternatives_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Concept__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Concept__Group__2__Impl
	rule__Concept__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Concept__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConceptAccess().getGroup_2()); }
	(rule__Concept__Group_2__0)?
	{ after(grammarAccess.getConceptAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Concept__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Concept__Group__3__Impl
	rule__Concept__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Concept__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConceptAccess().getClassifierSpecializationParserRuleCall_3()); }
	(ruleClassifierSpecialization)?
	{ after(grammarAccess.getConceptAccess().getClassifierSpecializationParserRuleCall_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Concept__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Concept__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Concept__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConceptAccess().getClassifierEquivalenceParserRuleCall_4()); }
	(ruleClassifierEquivalence)?
	{ after(grammarAccess.getConceptAccess().getClassifierEquivalenceParserRuleCall_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Concept__Group_1_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Concept__Group_1_0__0__Impl
	rule__Concept__Group_1_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Concept__Group_1_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConceptAccess().getConceptKeyword_1_0_0()); }
	'concept'
	{ after(grammarAccess.getConceptAccess().getConceptKeyword_1_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Concept__Group_1_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Concept__Group_1_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Concept__Group_1_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConceptAccess().getNameAssignment_1_0_1()); }
	(rule__Concept__NameAssignment_1_0_1)
	{ after(grammarAccess.getConceptAccess().getNameAssignment_1_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Concept__Group_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Concept__Group_1_1__0__Impl
	rule__Concept__Group_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Concept__Group_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConceptAccess().getRefKeyword_1_1_0()); }
	'ref'
	{ after(grammarAccess.getConceptAccess().getRefKeyword_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Concept__Group_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Concept__Group_1_1__1__Impl
	rule__Concept__Group_1_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Concept__Group_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConceptAccess().getConceptKeyword_1_1_1()); }
	'concept'
	{ after(grammarAccess.getConceptAccess().getConceptKeyword_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Concept__Group_1_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Concept__Group_1_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Concept__Group_1_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConceptAccess().getRefAssignment_1_1_2()); }
	(rule__Concept__RefAssignment_1_1_2)
	{ after(grammarAccess.getConceptAccess().getRefAssignment_1_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Concept__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Concept__Group_2__0__Impl
	rule__Concept__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Concept__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConceptAccess().getLeftSquareBracketKeyword_2_0()); }
	'['
	{ after(grammarAccess.getConceptAccess().getLeftSquareBracketKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Concept__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Concept__Group_2__1__Impl
	rule__Concept__Group_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Concept__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConceptAccess().getOwnedEnumerationAssignment_2_1()); }
	(rule__Concept__OwnedEnumerationAssignment_2_1)?
	{ after(grammarAccess.getConceptAccess().getOwnedEnumerationAssignment_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Concept__Group_2__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Concept__Group_2__2__Impl
	rule__Concept__Group_2__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Concept__Group_2__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConceptAccess().getOwnedKeysAssignment_2_2()); }
	(rule__Concept__OwnedKeysAssignment_2_2)*
	{ after(grammarAccess.getConceptAccess().getOwnedKeysAssignment_2_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Concept__Group_2__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Concept__Group_2__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Concept__Group_2__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConceptAccess().getRightSquareBracketKeyword_2_3()); }
	']'
	{ after(grammarAccess.getConceptAccess().getRightSquareBracketKeyword_2_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RelationEntity__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__Group__0__Impl
	rule__RelationEntity__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityAccess().getOwnedAnnotationsAssignment_0()); }
	(rule__RelationEntity__OwnedAnnotationsAssignment_0)*
	{ after(grammarAccess.getRelationEntityAccess().getOwnedAnnotationsAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__Group__1__Impl
	rule__RelationEntity__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityAccess().getAlternatives_1()); }
	(rule__RelationEntity__Alternatives_1)
	{ after(grammarAccess.getRelationEntityAccess().getAlternatives_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__Group__2__Impl
	rule__RelationEntity__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityAccess().getGroup_2()); }
	(rule__RelationEntity__Group_2__0)?
	{ after(grammarAccess.getRelationEntityAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__Group__3__Impl
	rule__RelationEntity__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityAccess().getClassifierSpecializationParserRuleCall_3()); }
	(ruleClassifierSpecialization)?
	{ after(grammarAccess.getRelationEntityAccess().getClassifierSpecializationParserRuleCall_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityAccess().getClassifierEquivalenceParserRuleCall_4()); }
	(ruleClassifierEquivalence)?
	{ after(grammarAccess.getRelationEntityAccess().getClassifierEquivalenceParserRuleCall_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RelationEntity__Group_1_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__Group_1_0__0__Impl
	rule__RelationEntity__Group_1_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_1_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityAccess().getRelationKeyword_1_0_0()); }
	'relation'
	{ after(grammarAccess.getRelationEntityAccess().getRelationKeyword_1_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_1_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__Group_1_0__1__Impl
	rule__RelationEntity__Group_1_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_1_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityAccess().getEntityKeyword_1_0_1()); }
	'entity'
	{ after(grammarAccess.getRelationEntityAccess().getEntityKeyword_1_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_1_0__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__Group_1_0__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_1_0__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityAccess().getNameAssignment_1_0_2()); }
	(rule__RelationEntity__NameAssignment_1_0_2)
	{ after(grammarAccess.getRelationEntityAccess().getNameAssignment_1_0_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RelationEntity__Group_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__Group_1_1__0__Impl
	rule__RelationEntity__Group_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityAccess().getRefKeyword_1_1_0()); }
	'ref'
	{ after(grammarAccess.getRelationEntityAccess().getRefKeyword_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__Group_1_1__1__Impl
	rule__RelationEntity__Group_1_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityAccess().getRelationKeyword_1_1_1()); }
	'relation'
	{ after(grammarAccess.getRelationEntityAccess().getRelationKeyword_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_1_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__Group_1_1__2__Impl
	rule__RelationEntity__Group_1_1__3
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_1_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityAccess().getEntityKeyword_1_1_2()); }
	'entity'
	{ after(grammarAccess.getRelationEntityAccess().getEntityKeyword_1_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_1_1__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__Group_1_1__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_1_1__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityAccess().getRefAssignment_1_1_3()); }
	(rule__RelationEntity__RefAssignment_1_1_3)
	{ after(grammarAccess.getRelationEntityAccess().getRefAssignment_1_1_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RelationEntity__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__Group_2__0__Impl
	rule__RelationEntity__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityAccess().getLeftSquareBracketKeyword_2_0()); }
	'['
	{ after(grammarAccess.getRelationEntityAccess().getLeftSquareBracketKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__Group_2__1__Impl
	rule__RelationEntity__Group_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityAccess().getGroup_2_1()); }
	(rule__RelationEntity__Group_2_1__0)?
	{ after(grammarAccess.getRelationEntityAccess().getGroup_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_2__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__Group_2__2__Impl
	rule__RelationEntity__Group_2__3
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_2__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityAccess().getGroup_2_2()); }
	(rule__RelationEntity__Group_2_2__0)?
	{ after(grammarAccess.getRelationEntityAccess().getGroup_2_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_2__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__Group_2__3__Impl
	rule__RelationEntity__Group_2__4
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_2__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityAccess().getForwardRelationAssignment_2_3()); }
	(rule__RelationEntity__ForwardRelationAssignment_2_3)?
	{ after(grammarAccess.getRelationEntityAccess().getForwardRelationAssignment_2_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_2__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__Group_2__4__Impl
	rule__RelationEntity__Group_2__5
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_2__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityAccess().getReverseRelationAssignment_2_4()); }
	(rule__RelationEntity__ReverseRelationAssignment_2_4)?
	{ after(grammarAccess.getRelationEntityAccess().getReverseRelationAssignment_2_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_2__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__Group_2__5__Impl
	rule__RelationEntity__Group_2__6
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_2__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityAccess().getUnorderedGroup_2_5()); }
	(rule__RelationEntity__UnorderedGroup_2_5)
	{ after(grammarAccess.getRelationEntityAccess().getUnorderedGroup_2_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_2__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__Group_2__6__Impl
	rule__RelationEntity__Group_2__7
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_2__6__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityAccess().getOwnedKeysAssignment_2_6()); }
	(rule__RelationEntity__OwnedKeysAssignment_2_6)*
	{ after(grammarAccess.getRelationEntityAccess().getOwnedKeysAssignment_2_6()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_2__7
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__Group_2__7__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_2__7__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityAccess().getRightSquareBracketKeyword_2_7()); }
	']'
	{ after(grammarAccess.getRelationEntityAccess().getRightSquareBracketKeyword_2_7()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RelationEntity__Group_2_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__Group_2_1__0__Impl
	rule__RelationEntity__Group_2_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_2_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityAccess().getFromKeyword_2_1_0()); }
	'from'
	{ after(grammarAccess.getRelationEntityAccess().getFromKeyword_2_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_2_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__Group_2_1__1__Impl
	rule__RelationEntity__Group_2_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_2_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityAccess().getSourcesAssignment_2_1_1()); }
	(rule__RelationEntity__SourcesAssignment_2_1_1)
	{ after(grammarAccess.getRelationEntityAccess().getSourcesAssignment_2_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_2_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__Group_2_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_2_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityAccess().getGroup_2_1_2()); }
	(rule__RelationEntity__Group_2_1_2__0)*
	{ after(grammarAccess.getRelationEntityAccess().getGroup_2_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RelationEntity__Group_2_1_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__Group_2_1_2__0__Impl
	rule__RelationEntity__Group_2_1_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_2_1_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityAccess().getCommaKeyword_2_1_2_0()); }
	','
	{ after(grammarAccess.getRelationEntityAccess().getCommaKeyword_2_1_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_2_1_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__Group_2_1_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_2_1_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityAccess().getSourcesAssignment_2_1_2_1()); }
	(rule__RelationEntity__SourcesAssignment_2_1_2_1)
	{ after(grammarAccess.getRelationEntityAccess().getSourcesAssignment_2_1_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RelationEntity__Group_2_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__Group_2_2__0__Impl
	rule__RelationEntity__Group_2_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_2_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityAccess().getToKeyword_2_2_0()); }
	'to'
	{ after(grammarAccess.getRelationEntityAccess().getToKeyword_2_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_2_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__Group_2_2__1__Impl
	rule__RelationEntity__Group_2_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_2_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityAccess().getTargetsAssignment_2_2_1()); }
	(rule__RelationEntity__TargetsAssignment_2_2_1)
	{ after(grammarAccess.getRelationEntityAccess().getTargetsAssignment_2_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_2_2__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__Group_2_2__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_2_2__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityAccess().getGroup_2_2_2()); }
	(rule__RelationEntity__Group_2_2_2__0)*
	{ after(grammarAccess.getRelationEntityAccess().getGroup_2_2_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RelationEntity__Group_2_2_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__Group_2_2_2__0__Impl
	rule__RelationEntity__Group_2_2_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_2_2_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityAccess().getCommaKeyword_2_2_2_0()); }
	','
	{ after(grammarAccess.getRelationEntityAccess().getCommaKeyword_2_2_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_2_2_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__Group_2_2_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_2_2_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityAccess().getTargetsAssignment_2_2_2_1()); }
	(rule__RelationEntity__TargetsAssignment_2_2_2_1)
	{ after(grammarAccess.getRelationEntityAccess().getTargetsAssignment_2_2_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RelationEntity__Group_2_5_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__Group_2_5_1__0__Impl
	rule__RelationEntity__Group_2_5_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_2_5_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityAccess().getInverseFunctionalAssignment_2_5_1_0()); }
	(rule__RelationEntity__InverseFunctionalAssignment_2_5_1_0)
	{ after(grammarAccess.getRelationEntityAccess().getInverseFunctionalAssignment_2_5_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_2_5_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__Group_2_5_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__Group_2_5_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityAccess().getFunctionalKeyword_2_5_1_1()); }
	'functional'
	{ after(grammarAccess.getRelationEntityAccess().getFunctionalKeyword_2_5_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Structure__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Structure__Group__0__Impl
	rule__Structure__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Structure__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructureAccess().getOwnedAnnotationsAssignment_0()); }
	(rule__Structure__OwnedAnnotationsAssignment_0)*
	{ after(grammarAccess.getStructureAccess().getOwnedAnnotationsAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Structure__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Structure__Group__1__Impl
	rule__Structure__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Structure__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructureAccess().getAlternatives_1()); }
	(rule__Structure__Alternatives_1)
	{ after(grammarAccess.getStructureAccess().getAlternatives_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Structure__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Structure__Group__2__Impl
	rule__Structure__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Structure__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructureAccess().getClassifierSpecializationParserRuleCall_2()); }
	(ruleClassifierSpecialization)?
	{ after(grammarAccess.getStructureAccess().getClassifierSpecializationParserRuleCall_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Structure__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Structure__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Structure__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructureAccess().getClassifierEquivalenceParserRuleCall_3()); }
	(ruleClassifierEquivalence)?
	{ after(grammarAccess.getStructureAccess().getClassifierEquivalenceParserRuleCall_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Structure__Group_1_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Structure__Group_1_0__0__Impl
	rule__Structure__Group_1_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Structure__Group_1_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructureAccess().getStructureKeyword_1_0_0()); }
	'structure'
	{ after(grammarAccess.getStructureAccess().getStructureKeyword_1_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Structure__Group_1_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Structure__Group_1_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Structure__Group_1_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructureAccess().getNameAssignment_1_0_1()); }
	(rule__Structure__NameAssignment_1_0_1)
	{ after(grammarAccess.getStructureAccess().getNameAssignment_1_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Structure__Group_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Structure__Group_1_1__0__Impl
	rule__Structure__Group_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Structure__Group_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructureAccess().getRefKeyword_1_1_0()); }
	'ref'
	{ after(grammarAccess.getStructureAccess().getRefKeyword_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Structure__Group_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Structure__Group_1_1__1__Impl
	rule__Structure__Group_1_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Structure__Group_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructureAccess().getStructureKeyword_1_1_1()); }
	'structure'
	{ after(grammarAccess.getStructureAccess().getStructureKeyword_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Structure__Group_1_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Structure__Group_1_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Structure__Group_1_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructureAccess().getRefAssignment_1_1_2()); }
	(rule__Structure__RefAssignment_1_1_2)
	{ after(grammarAccess.getStructureAccess().getRefAssignment_1_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ClassifierSpecialization__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassifierSpecialization__Group__0__Impl
	rule__ClassifierSpecialization__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierSpecialization__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassifierSpecializationAccess().getLessThanSignKeyword_0()); }
	'<'
	{ after(grammarAccess.getClassifierSpecializationAccess().getLessThanSignKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierSpecialization__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassifierSpecialization__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierSpecialization__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassifierSpecializationAccess().getAlternatives_1()); }
	(rule__ClassifierSpecialization__Alternatives_1)
	{ after(grammarAccess.getClassifierSpecializationAccess().getAlternatives_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ClassifierSpecialization__Group_1_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassifierSpecialization__Group_1_0__0__Impl
	rule__ClassifierSpecialization__Group_1_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierSpecialization__Group_1_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassifierSpecializationAccess().getOwnedSpecializationsAssignment_1_0_0()); }
	(rule__ClassifierSpecialization__OwnedSpecializationsAssignment_1_0_0)
	{ after(grammarAccess.getClassifierSpecializationAccess().getOwnedSpecializationsAssignment_1_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierSpecialization__Group_1_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassifierSpecialization__Group_1_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierSpecialization__Group_1_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassifierSpecializationAccess().getGroup_1_0_1()); }
	(rule__ClassifierSpecialization__Group_1_0_1__0)*
	{ after(grammarAccess.getClassifierSpecializationAccess().getGroup_1_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ClassifierSpecialization__Group_1_0_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassifierSpecialization__Group_1_0_1__0__Impl
	rule__ClassifierSpecialization__Group_1_0_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierSpecialization__Group_1_0_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassifierSpecializationAccess().getCommaKeyword_1_0_1_0()); }
	','
	{ after(grammarAccess.getClassifierSpecializationAccess().getCommaKeyword_1_0_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierSpecialization__Group_1_0_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassifierSpecialization__Group_1_0_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierSpecialization__Group_1_0_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassifierSpecializationAccess().getOwnedSpecializationsAssignment_1_0_1_1()); }
	(rule__ClassifierSpecialization__OwnedSpecializationsAssignment_1_0_1_1)
	{ after(grammarAccess.getClassifierSpecializationAccess().getOwnedSpecializationsAssignment_1_0_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ClassifierSpecialization__Group_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassifierSpecialization__Group_1_1__0__Impl
	rule__ClassifierSpecialization__Group_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierSpecialization__Group_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassifierSpecializationAccess().getGroup_1_1_0()); }
	(rule__ClassifierSpecialization__Group_1_1_0__0)?
	{ after(grammarAccess.getClassifierSpecializationAccess().getGroup_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierSpecialization__Group_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassifierSpecialization__Group_1_1__1__Impl
	rule__ClassifierSpecialization__Group_1_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierSpecialization__Group_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassifierSpecializationAccess().getLeftSquareBracketKeyword_1_1_1()); }
	'['
	{ after(grammarAccess.getClassifierSpecializationAccess().getLeftSquareBracketKeyword_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierSpecialization__Group_1_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassifierSpecialization__Group_1_1__2__Impl
	rule__ClassifierSpecialization__Group_1_1__3
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierSpecialization__Group_1_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassifierSpecializationAccess().getOwnedPropertyRestrictionsAssignment_1_1_2()); }
	(rule__ClassifierSpecialization__OwnedPropertyRestrictionsAssignment_1_1_2)*
	{ after(grammarAccess.getClassifierSpecializationAccess().getOwnedPropertyRestrictionsAssignment_1_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierSpecialization__Group_1_1__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassifierSpecialization__Group_1_1__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierSpecialization__Group_1_1__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassifierSpecializationAccess().getRightSquareBracketKeyword_1_1_3()); }
	']'
	{ after(grammarAccess.getClassifierSpecializationAccess().getRightSquareBracketKeyword_1_1_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ClassifierSpecialization__Group_1_1_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassifierSpecialization__Group_1_1_0__0__Impl
	rule__ClassifierSpecialization__Group_1_1_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierSpecialization__Group_1_1_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassifierSpecializationAccess().getOwnedSpecializationsAssignment_1_1_0_0()); }
	(rule__ClassifierSpecialization__OwnedSpecializationsAssignment_1_1_0_0)
	{ after(grammarAccess.getClassifierSpecializationAccess().getOwnedSpecializationsAssignment_1_1_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierSpecialization__Group_1_1_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassifierSpecialization__Group_1_1_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierSpecialization__Group_1_1_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassifierSpecializationAccess().getGroup_1_1_0_1()); }
	(rule__ClassifierSpecialization__Group_1_1_0_1__0)*
	{ after(grammarAccess.getClassifierSpecializationAccess().getGroup_1_1_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ClassifierSpecialization__Group_1_1_0_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassifierSpecialization__Group_1_1_0_1__0__Impl
	rule__ClassifierSpecialization__Group_1_1_0_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierSpecialization__Group_1_1_0_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassifierSpecializationAccess().getCommaKeyword_1_1_0_1_0()); }
	','
	{ after(grammarAccess.getClassifierSpecializationAccess().getCommaKeyword_1_1_0_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierSpecialization__Group_1_1_0_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassifierSpecialization__Group_1_1_0_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierSpecialization__Group_1_1_0_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassifierSpecializationAccess().getOwnedSpecializationsAssignment_1_1_0_1_1()); }
	(rule__ClassifierSpecialization__OwnedSpecializationsAssignment_1_1_0_1_1)
	{ after(grammarAccess.getClassifierSpecializationAccess().getOwnedSpecializationsAssignment_1_1_0_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ClassifierEquivalence__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassifierEquivalence__Group__0__Impl
	rule__ClassifierEquivalence__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierEquivalence__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassifierEquivalenceAccess().getEqualsSignKeyword_0()); }
	'='
	{ after(grammarAccess.getClassifierEquivalenceAccess().getEqualsSignKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierEquivalence__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassifierEquivalence__Group__1__Impl
	rule__ClassifierEquivalence__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierEquivalence__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassifierEquivalenceAccess().getOwnedEquivalencesAssignment_1()); }
	(rule__ClassifierEquivalence__OwnedEquivalencesAssignment_1)
	{ after(grammarAccess.getClassifierEquivalenceAccess().getOwnedEquivalencesAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierEquivalence__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassifierEquivalence__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierEquivalence__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassifierEquivalenceAccess().getGroup_2()); }
	(rule__ClassifierEquivalence__Group_2__0)*
	{ after(grammarAccess.getClassifierEquivalenceAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ClassifierEquivalence__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassifierEquivalence__Group_2__0__Impl
	rule__ClassifierEquivalence__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierEquivalence__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassifierEquivalenceAccess().getCommaKeyword_2_0()); }
	','
	{ after(grammarAccess.getClassifierEquivalenceAccess().getCommaKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierEquivalence__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassifierEquivalence__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierEquivalence__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassifierEquivalenceAccess().getOwnedEquivalencesAssignment_2_1()); }
	(rule__ClassifierEquivalence__OwnedEquivalencesAssignment_2_1)
	{ after(grammarAccess.getClassifierEquivalenceAccess().getOwnedEquivalencesAssignment_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ClassifierEquivalenceAxiom__Group_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassifierEquivalenceAxiom__Group_0__0__Impl
	rule__ClassifierEquivalenceAxiom__Group_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierEquivalenceAxiom__Group_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassifierEquivalenceAxiomAccess().getSuperClassifiersAssignment_0_0()); }
	(rule__ClassifierEquivalenceAxiom__SuperClassifiersAssignment_0_0)
	{ after(grammarAccess.getClassifierEquivalenceAxiomAccess().getSuperClassifiersAssignment_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierEquivalenceAxiom__Group_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassifierEquivalenceAxiom__Group_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierEquivalenceAxiom__Group_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassifierEquivalenceAxiomAccess().getGroup_0_1()); }
	(rule__ClassifierEquivalenceAxiom__Group_0_1__0)*
	{ after(grammarAccess.getClassifierEquivalenceAxiomAccess().getGroup_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ClassifierEquivalenceAxiom__Group_0_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassifierEquivalenceAxiom__Group_0_1__0__Impl
	rule__ClassifierEquivalenceAxiom__Group_0_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierEquivalenceAxiom__Group_0_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassifierEquivalenceAxiomAccess().getAmpersandKeyword_0_1_0()); }
	'&'
	{ after(grammarAccess.getClassifierEquivalenceAxiomAccess().getAmpersandKeyword_0_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierEquivalenceAxiom__Group_0_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassifierEquivalenceAxiom__Group_0_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierEquivalenceAxiom__Group_0_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassifierEquivalenceAxiomAccess().getSuperClassifiersAssignment_0_1_1()); }
	(rule__ClassifierEquivalenceAxiom__SuperClassifiersAssignment_0_1_1)
	{ after(grammarAccess.getClassifierEquivalenceAxiomAccess().getSuperClassifiersAssignment_0_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ClassifierEquivalenceAxiom__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassifierEquivalenceAxiom__Group_1__0__Impl
	rule__ClassifierEquivalenceAxiom__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierEquivalenceAxiom__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassifierEquivalenceAxiomAccess().getClassifierEquivalenceAxiomAction_1_0()); }
	()
	{ after(grammarAccess.getClassifierEquivalenceAxiomAccess().getClassifierEquivalenceAxiomAction_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierEquivalenceAxiom__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassifierEquivalenceAxiom__Group_1__1__Impl
	rule__ClassifierEquivalenceAxiom__Group_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierEquivalenceAxiom__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassifierEquivalenceAxiomAccess().getGroup_1_1()); }
	(rule__ClassifierEquivalenceAxiom__Group_1_1__0)?
	{ after(grammarAccess.getClassifierEquivalenceAxiomAccess().getGroup_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierEquivalenceAxiom__Group_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassifierEquivalenceAxiom__Group_1__2__Impl
	rule__ClassifierEquivalenceAxiom__Group_1__3
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierEquivalenceAxiom__Group_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassifierEquivalenceAxiomAccess().getLeftSquareBracketKeyword_1_2()); }
	'['
	{ after(grammarAccess.getClassifierEquivalenceAxiomAccess().getLeftSquareBracketKeyword_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierEquivalenceAxiom__Group_1__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassifierEquivalenceAxiom__Group_1__3__Impl
	rule__ClassifierEquivalenceAxiom__Group_1__4
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierEquivalenceAxiom__Group_1__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassifierEquivalenceAxiomAccess().getOwnedPropertyRestrictionsAssignment_1_3()); }
	(rule__ClassifierEquivalenceAxiom__OwnedPropertyRestrictionsAssignment_1_3)*
	{ after(grammarAccess.getClassifierEquivalenceAxiomAccess().getOwnedPropertyRestrictionsAssignment_1_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierEquivalenceAxiom__Group_1__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassifierEquivalenceAxiom__Group_1__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierEquivalenceAxiom__Group_1__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassifierEquivalenceAxiomAccess().getRightSquareBracketKeyword_1_4()); }
	']'
	{ after(grammarAccess.getClassifierEquivalenceAxiomAccess().getRightSquareBracketKeyword_1_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ClassifierEquivalenceAxiom__Group_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassifierEquivalenceAxiom__Group_1_1__0__Impl
	rule__ClassifierEquivalenceAxiom__Group_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierEquivalenceAxiom__Group_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassifierEquivalenceAxiomAccess().getSuperClassifiersAssignment_1_1_0()); }
	(rule__ClassifierEquivalenceAxiom__SuperClassifiersAssignment_1_1_0)
	{ after(grammarAccess.getClassifierEquivalenceAxiomAccess().getSuperClassifiersAssignment_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierEquivalenceAxiom__Group_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassifierEquivalenceAxiom__Group_1_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierEquivalenceAxiom__Group_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassifierEquivalenceAxiomAccess().getGroup_1_1_1()); }
	(rule__ClassifierEquivalenceAxiom__Group_1_1_1__0)*
	{ after(grammarAccess.getClassifierEquivalenceAxiomAccess().getGroup_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ClassifierEquivalenceAxiom__Group_1_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassifierEquivalenceAxiom__Group_1_1_1__0__Impl
	rule__ClassifierEquivalenceAxiom__Group_1_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierEquivalenceAxiom__Group_1_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassifierEquivalenceAxiomAccess().getAmpersandKeyword_1_1_1_0()); }
	'&'
	{ after(grammarAccess.getClassifierEquivalenceAxiomAccess().getAmpersandKeyword_1_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierEquivalenceAxiom__Group_1_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassifierEquivalenceAxiom__Group_1_1_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierEquivalenceAxiom__Group_1_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassifierEquivalenceAxiomAccess().getSuperClassifiersAssignment_1_1_1_1()); }
	(rule__ClassifierEquivalenceAxiom__SuperClassifiersAssignment_1_1_1_1)
	{ after(grammarAccess.getClassifierEquivalenceAxiomAccess().getSuperClassifiersAssignment_1_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Scalar__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Scalar__Group__0__Impl
	rule__Scalar__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Scalar__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarAccess().getOwnedAnnotationsAssignment_0()); }
	(rule__Scalar__OwnedAnnotationsAssignment_0)*
	{ after(grammarAccess.getScalarAccess().getOwnedAnnotationsAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Scalar__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Scalar__Group__1__Impl
	rule__Scalar__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Scalar__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarAccess().getAlternatives_1()); }
	(rule__Scalar__Alternatives_1)
	{ after(grammarAccess.getScalarAccess().getAlternatives_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Scalar__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Scalar__Group__2__Impl
	rule__Scalar__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Scalar__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarAccess().getGroup_2()); }
	(rule__Scalar__Group_2__0)?
	{ after(grammarAccess.getScalarAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Scalar__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Scalar__Group__3__Impl
	rule__Scalar__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Scalar__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarAccess().getScalarSpecializationParserRuleCall_3()); }
	(ruleScalarSpecialization)?
	{ after(grammarAccess.getScalarAccess().getScalarSpecializationParserRuleCall_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Scalar__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Scalar__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Scalar__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarAccess().getScalarEquivalenceParserRuleCall_4()); }
	(ruleScalarEquivalence)?
	{ after(grammarAccess.getScalarAccess().getScalarEquivalenceParserRuleCall_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Scalar__Group_1_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Scalar__Group_1_0__0__Impl
	rule__Scalar__Group_1_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Scalar__Group_1_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarAccess().getScalarKeyword_1_0_0()); }
	'scalar'
	{ after(grammarAccess.getScalarAccess().getScalarKeyword_1_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Scalar__Group_1_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Scalar__Group_1_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Scalar__Group_1_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarAccess().getNameAssignment_1_0_1()); }
	(rule__Scalar__NameAssignment_1_0_1)
	{ after(grammarAccess.getScalarAccess().getNameAssignment_1_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Scalar__Group_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Scalar__Group_1_1__0__Impl
	rule__Scalar__Group_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Scalar__Group_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarAccess().getRefKeyword_1_1_0()); }
	'ref'
	{ after(grammarAccess.getScalarAccess().getRefKeyword_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Scalar__Group_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Scalar__Group_1_1__1__Impl
	rule__Scalar__Group_1_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Scalar__Group_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarAccess().getScalarKeyword_1_1_1()); }
	'scalar'
	{ after(grammarAccess.getScalarAccess().getScalarKeyword_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Scalar__Group_1_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Scalar__Group_1_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Scalar__Group_1_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarAccess().getRefAssignment_1_1_2()); }
	(rule__Scalar__RefAssignment_1_1_2)
	{ after(grammarAccess.getScalarAccess().getRefAssignment_1_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Scalar__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Scalar__Group_2__0__Impl
	rule__Scalar__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Scalar__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarAccess().getLeftSquareBracketKeyword_2_0()); }
	'['
	{ after(grammarAccess.getScalarAccess().getLeftSquareBracketKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Scalar__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Scalar__Group_2__1__Impl
	rule__Scalar__Group_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Scalar__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarAccess().getOwnedEnumerationAssignment_2_1()); }
	(rule__Scalar__OwnedEnumerationAssignment_2_1)
	{ after(grammarAccess.getScalarAccess().getOwnedEnumerationAssignment_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Scalar__Group_2__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Scalar__Group_2__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Scalar__Group_2__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarAccess().getRightSquareBracketKeyword_2_2()); }
	']'
	{ after(grammarAccess.getScalarAccess().getRightSquareBracketKeyword_2_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ScalarSpecialization__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarSpecialization__Group__0__Impl
	rule__ScalarSpecialization__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarSpecialization__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarSpecializationAccess().getLessThanSignKeyword_0()); }
	'<'
	{ after(grammarAccess.getScalarSpecializationAccess().getLessThanSignKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarSpecialization__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarSpecialization__Group__1__Impl
	rule__ScalarSpecialization__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarSpecialization__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarSpecializationAccess().getOwnedSpecializationsAssignment_1()); }
	(rule__ScalarSpecialization__OwnedSpecializationsAssignment_1)
	{ after(grammarAccess.getScalarSpecializationAccess().getOwnedSpecializationsAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarSpecialization__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarSpecialization__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarSpecialization__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarSpecializationAccess().getGroup_2()); }
	(rule__ScalarSpecialization__Group_2__0)*
	{ after(grammarAccess.getScalarSpecializationAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ScalarSpecialization__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarSpecialization__Group_2__0__Impl
	rule__ScalarSpecialization__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarSpecialization__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarSpecializationAccess().getCommaKeyword_2_0()); }
	','
	{ after(grammarAccess.getScalarSpecializationAccess().getCommaKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarSpecialization__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarSpecialization__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarSpecialization__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarSpecializationAccess().getOwnedSpecializationsAssignment_2_1()); }
	(rule__ScalarSpecialization__OwnedSpecializationsAssignment_2_1)
	{ after(grammarAccess.getScalarSpecializationAccess().getOwnedSpecializationsAssignment_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ScalarEquivalence__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarEquivalence__Group__0__Impl
	rule__ScalarEquivalence__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalence__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarEquivalenceAccess().getEqualsSignKeyword_0()); }
	'='
	{ after(grammarAccess.getScalarEquivalenceAccess().getEqualsSignKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalence__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarEquivalence__Group__1__Impl
	rule__ScalarEquivalence__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalence__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarEquivalenceAccess().getOwnedEquivalencesAssignment_1()); }
	(rule__ScalarEquivalence__OwnedEquivalencesAssignment_1)
	{ after(grammarAccess.getScalarEquivalenceAccess().getOwnedEquivalencesAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalence__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarEquivalence__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalence__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarEquivalenceAccess().getGroup_2()); }
	(rule__ScalarEquivalence__Group_2__0)*
	{ after(grammarAccess.getScalarEquivalenceAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ScalarEquivalence__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarEquivalence__Group_2__0__Impl
	rule__ScalarEquivalence__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalence__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarEquivalenceAccess().getCommaKeyword_2_0()); }
	','
	{ after(grammarAccess.getScalarEquivalenceAccess().getCommaKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalence__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarEquivalence__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalence__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarEquivalenceAccess().getOwnedEquivalencesAssignment_2_1()); }
	(rule__ScalarEquivalence__OwnedEquivalencesAssignment_2_1)
	{ after(grammarAccess.getScalarEquivalenceAccess().getOwnedEquivalencesAssignment_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ScalarEquivalenceAxiom__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarEquivalenceAxiom__Group__0__Impl
	rule__ScalarEquivalenceAxiom__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getSuperScalarAssignment_0()); }
	(rule__ScalarEquivalenceAxiom__SuperScalarAssignment_0)
	{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getSuperScalarAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarEquivalenceAxiom__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getGroup_1()); }
	(rule__ScalarEquivalenceAxiom__Group_1__0)?
	{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ScalarEquivalenceAxiom__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarEquivalenceAxiom__Group_1__0__Impl
	rule__ScalarEquivalenceAxiom__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getLeftSquareBracketKeyword_1_0()); }
	'['
	{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getLeftSquareBracketKeyword_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarEquivalenceAxiom__Group_1__1__Impl
	rule__ScalarEquivalenceAxiom__Group_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getUnorderedGroup_1_1()); }
	(rule__ScalarEquivalenceAxiom__UnorderedGroup_1_1)
	{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getUnorderedGroup_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__Group_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarEquivalenceAxiom__Group_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__Group_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getRightSquareBracketKeyword_1_2()); }
	']'
	{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getRightSquareBracketKeyword_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ScalarEquivalenceAxiom__Group_1_1_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarEquivalenceAxiom__Group_1_1_0__0__Impl
	rule__ScalarEquivalenceAxiom__Group_1_1_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__Group_1_1_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getLengthKeyword_1_1_0_0()); }
	'length'
	{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getLengthKeyword_1_1_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__Group_1_1_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarEquivalenceAxiom__Group_1_1_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__Group_1_1_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getLengthAssignment_1_1_0_1()); }
	(rule__ScalarEquivalenceAxiom__LengthAssignment_1_1_0_1)
	{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getLengthAssignment_1_1_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ScalarEquivalenceAxiom__Group_1_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarEquivalenceAxiom__Group_1_1_1__0__Impl
	rule__ScalarEquivalenceAxiom__Group_1_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__Group_1_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getMinLengthKeyword_1_1_1_0()); }
	'minLength'
	{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getMinLengthKeyword_1_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__Group_1_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarEquivalenceAxiom__Group_1_1_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__Group_1_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getMinLengthAssignment_1_1_1_1()); }
	(rule__ScalarEquivalenceAxiom__MinLengthAssignment_1_1_1_1)
	{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getMinLengthAssignment_1_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ScalarEquivalenceAxiom__Group_1_1_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarEquivalenceAxiom__Group_1_1_2__0__Impl
	rule__ScalarEquivalenceAxiom__Group_1_1_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__Group_1_1_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getMaxLengthKeyword_1_1_2_0()); }
	'maxLength'
	{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getMaxLengthKeyword_1_1_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__Group_1_1_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarEquivalenceAxiom__Group_1_1_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__Group_1_1_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getMaxLengthAssignment_1_1_2_1()); }
	(rule__ScalarEquivalenceAxiom__MaxLengthAssignment_1_1_2_1)
	{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getMaxLengthAssignment_1_1_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ScalarEquivalenceAxiom__Group_1_1_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarEquivalenceAxiom__Group_1_1_3__0__Impl
	rule__ScalarEquivalenceAxiom__Group_1_1_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__Group_1_1_3__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getPatternKeyword_1_1_3_0()); }
	'pattern'
	{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getPatternKeyword_1_1_3_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__Group_1_1_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarEquivalenceAxiom__Group_1_1_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__Group_1_1_3__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getPatternAssignment_1_1_3_1()); }
	(rule__ScalarEquivalenceAxiom__PatternAssignment_1_1_3_1)
	{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getPatternAssignment_1_1_3_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ScalarEquivalenceAxiom__Group_1_1_4__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarEquivalenceAxiom__Group_1_1_4__0__Impl
	rule__ScalarEquivalenceAxiom__Group_1_1_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__Group_1_1_4__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getLanguageKeyword_1_1_4_0()); }
	'language'
	{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getLanguageKeyword_1_1_4_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__Group_1_1_4__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarEquivalenceAxiom__Group_1_1_4__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__Group_1_1_4__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getLanguageAssignment_1_1_4_1()); }
	(rule__ScalarEquivalenceAxiom__LanguageAssignment_1_1_4_1)
	{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getLanguageAssignment_1_1_4_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ScalarEquivalenceAxiom__Group_1_1_5__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarEquivalenceAxiom__Group_1_1_5__0__Impl
	rule__ScalarEquivalenceAxiom__Group_1_1_5__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__Group_1_1_5__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getMinInclusiveKeyword_1_1_5_0()); }
	'minInclusive'
	{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getMinInclusiveKeyword_1_1_5_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__Group_1_1_5__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarEquivalenceAxiom__Group_1_1_5__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__Group_1_1_5__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getMinInclusiveAssignment_1_1_5_1()); }
	(rule__ScalarEquivalenceAxiom__MinInclusiveAssignment_1_1_5_1)
	{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getMinInclusiveAssignment_1_1_5_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ScalarEquivalenceAxiom__Group_1_1_6__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarEquivalenceAxiom__Group_1_1_6__0__Impl
	rule__ScalarEquivalenceAxiom__Group_1_1_6__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__Group_1_1_6__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getMinExclusiveKeyword_1_1_6_0()); }
	'minExclusive'
	{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getMinExclusiveKeyword_1_1_6_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__Group_1_1_6__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarEquivalenceAxiom__Group_1_1_6__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__Group_1_1_6__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getMinExclusiveAssignment_1_1_6_1()); }
	(rule__ScalarEquivalenceAxiom__MinExclusiveAssignment_1_1_6_1)
	{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getMinExclusiveAssignment_1_1_6_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ScalarEquivalenceAxiom__Group_1_1_7__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarEquivalenceAxiom__Group_1_1_7__0__Impl
	rule__ScalarEquivalenceAxiom__Group_1_1_7__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__Group_1_1_7__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getMaxInclusiveKeyword_1_1_7_0()); }
	'maxInclusive'
	{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getMaxInclusiveKeyword_1_1_7_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__Group_1_1_7__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarEquivalenceAxiom__Group_1_1_7__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__Group_1_1_7__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getMaxInclusiveAssignment_1_1_7_1()); }
	(rule__ScalarEquivalenceAxiom__MaxInclusiveAssignment_1_1_7_1)
	{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getMaxInclusiveAssignment_1_1_7_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ScalarEquivalenceAxiom__Group_1_1_8__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarEquivalenceAxiom__Group_1_1_8__0__Impl
	rule__ScalarEquivalenceAxiom__Group_1_1_8__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__Group_1_1_8__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getMaxExclusiveKeyword_1_1_8_0()); }
	'maxExclusive'
	{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getMaxExclusiveKeyword_1_1_8_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__Group_1_1_8__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarEquivalenceAxiom__Group_1_1_8__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__Group_1_1_8__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getMaxExclusiveAssignment_1_1_8_1()); }
	(rule__ScalarEquivalenceAxiom__MaxExclusiveAssignment_1_1_8_1)
	{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getMaxExclusiveAssignment_1_1_8_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__AnnotationProperty__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__AnnotationProperty__Group__0__Impl
	rule__AnnotationProperty__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AnnotationProperty__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAnnotationPropertyAccess().getOwnedAnnotationsAssignment_0()); }
	(rule__AnnotationProperty__OwnedAnnotationsAssignment_0)*
	{ after(grammarAccess.getAnnotationPropertyAccess().getOwnedAnnotationsAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__AnnotationProperty__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__AnnotationProperty__Group__1__Impl
	rule__AnnotationProperty__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__AnnotationProperty__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAnnotationPropertyAccess().getAlternatives_1()); }
	(rule__AnnotationProperty__Alternatives_1)
	{ after(grammarAccess.getAnnotationPropertyAccess().getAlternatives_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__AnnotationProperty__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__AnnotationProperty__Group__2__Impl
	rule__AnnotationProperty__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__AnnotationProperty__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAnnotationPropertyAccess().getPropertySpecializationParserRuleCall_2()); }
	(rulePropertySpecialization)?
	{ after(grammarAccess.getAnnotationPropertyAccess().getPropertySpecializationParserRuleCall_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__AnnotationProperty__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__AnnotationProperty__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AnnotationProperty__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAnnotationPropertyAccess().getPropertyEquivalenceParserRuleCall_3()); }
	(rulePropertyEquivalence)?
	{ after(grammarAccess.getAnnotationPropertyAccess().getPropertyEquivalenceParserRuleCall_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__AnnotationProperty__Group_1_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__AnnotationProperty__Group_1_0__0__Impl
	rule__AnnotationProperty__Group_1_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AnnotationProperty__Group_1_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAnnotationPropertyAccess().getAnnotationKeyword_1_0_0()); }
	'annotation'
	{ after(grammarAccess.getAnnotationPropertyAccess().getAnnotationKeyword_1_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__AnnotationProperty__Group_1_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__AnnotationProperty__Group_1_0__1__Impl
	rule__AnnotationProperty__Group_1_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__AnnotationProperty__Group_1_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAnnotationPropertyAccess().getPropertyKeyword_1_0_1()); }
	'property'
	{ after(grammarAccess.getAnnotationPropertyAccess().getPropertyKeyword_1_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__AnnotationProperty__Group_1_0__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__AnnotationProperty__Group_1_0__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AnnotationProperty__Group_1_0__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAnnotationPropertyAccess().getNameAssignment_1_0_2()); }
	(rule__AnnotationProperty__NameAssignment_1_0_2)
	{ after(grammarAccess.getAnnotationPropertyAccess().getNameAssignment_1_0_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__AnnotationProperty__Group_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__AnnotationProperty__Group_1_1__0__Impl
	rule__AnnotationProperty__Group_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AnnotationProperty__Group_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAnnotationPropertyAccess().getRefKeyword_1_1_0()); }
	'ref'
	{ after(grammarAccess.getAnnotationPropertyAccess().getRefKeyword_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__AnnotationProperty__Group_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__AnnotationProperty__Group_1_1__1__Impl
	rule__AnnotationProperty__Group_1_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__AnnotationProperty__Group_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAnnotationPropertyAccess().getAnnotationKeyword_1_1_1()); }
	'annotation'
	{ after(grammarAccess.getAnnotationPropertyAccess().getAnnotationKeyword_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__AnnotationProperty__Group_1_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__AnnotationProperty__Group_1_1__2__Impl
	rule__AnnotationProperty__Group_1_1__3
;
finally {
	restoreStackSize(stackSize);
}

rule__AnnotationProperty__Group_1_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAnnotationPropertyAccess().getPropertyKeyword_1_1_2()); }
	'property'
	{ after(grammarAccess.getAnnotationPropertyAccess().getPropertyKeyword_1_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__AnnotationProperty__Group_1_1__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__AnnotationProperty__Group_1_1__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AnnotationProperty__Group_1_1__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAnnotationPropertyAccess().getRefAssignment_1_1_3()); }
	(rule__AnnotationProperty__RefAssignment_1_1_3)
	{ after(grammarAccess.getAnnotationPropertyAccess().getRefAssignment_1_1_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ScalarProperty__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarProperty__Group__0__Impl
	rule__ScalarProperty__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarPropertyAccess().getOwnedAnnotationsAssignment_0()); }
	(rule__ScalarProperty__OwnedAnnotationsAssignment_0)*
	{ after(grammarAccess.getScalarPropertyAccess().getOwnedAnnotationsAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarProperty__Group__1__Impl
	rule__ScalarProperty__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarPropertyAccess().getAlternatives_1()); }
	(rule__ScalarProperty__Alternatives_1)
	{ after(grammarAccess.getScalarPropertyAccess().getAlternatives_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarProperty__Group__2__Impl
	rule__ScalarProperty__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarPropertyAccess().getGroup_2()); }
	(rule__ScalarProperty__Group_2__0)?
	{ after(grammarAccess.getScalarPropertyAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarProperty__Group__3__Impl
	rule__ScalarProperty__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarPropertyAccess().getPropertySpecializationParserRuleCall_3()); }
	(rulePropertySpecialization)?
	{ after(grammarAccess.getScalarPropertyAccess().getPropertySpecializationParserRuleCall_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarProperty__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarPropertyAccess().getPropertyEquivalenceParserRuleCall_4()); }
	(rulePropertyEquivalence)?
	{ after(grammarAccess.getScalarPropertyAccess().getPropertyEquivalenceParserRuleCall_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ScalarProperty__Group_1_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarProperty__Group_1_0__0__Impl
	rule__ScalarProperty__Group_1_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group_1_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarPropertyAccess().getScalarKeyword_1_0_0()); }
	'scalar'
	{ after(grammarAccess.getScalarPropertyAccess().getScalarKeyword_1_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group_1_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarProperty__Group_1_0__1__Impl
	rule__ScalarProperty__Group_1_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group_1_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarPropertyAccess().getPropertyKeyword_1_0_1()); }
	'property'
	{ after(grammarAccess.getScalarPropertyAccess().getPropertyKeyword_1_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group_1_0__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarProperty__Group_1_0__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group_1_0__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarPropertyAccess().getNameAssignment_1_0_2()); }
	(rule__ScalarProperty__NameAssignment_1_0_2)
	{ after(grammarAccess.getScalarPropertyAccess().getNameAssignment_1_0_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ScalarProperty__Group_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarProperty__Group_1_1__0__Impl
	rule__ScalarProperty__Group_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarPropertyAccess().getRefKeyword_1_1_0()); }
	'ref'
	{ after(grammarAccess.getScalarPropertyAccess().getRefKeyword_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarProperty__Group_1_1__1__Impl
	rule__ScalarProperty__Group_1_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarPropertyAccess().getScalarKeyword_1_1_1()); }
	'scalar'
	{ after(grammarAccess.getScalarPropertyAccess().getScalarKeyword_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group_1_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarProperty__Group_1_1__2__Impl
	rule__ScalarProperty__Group_1_1__3
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group_1_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarPropertyAccess().getPropertyKeyword_1_1_2()); }
	'property'
	{ after(grammarAccess.getScalarPropertyAccess().getPropertyKeyword_1_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group_1_1__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarProperty__Group_1_1__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group_1_1__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarPropertyAccess().getRefAssignment_1_1_3()); }
	(rule__ScalarProperty__RefAssignment_1_1_3)
	{ after(grammarAccess.getScalarPropertyAccess().getRefAssignment_1_1_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ScalarProperty__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarProperty__Group_2__0__Impl
	rule__ScalarProperty__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarPropertyAccess().getLeftSquareBracketKeyword_2_0()); }
	'['
	{ after(grammarAccess.getScalarPropertyAccess().getLeftSquareBracketKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarProperty__Group_2__1__Impl
	rule__ScalarProperty__Group_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarPropertyAccess().getGroup_2_1()); }
	(rule__ScalarProperty__Group_2_1__0)?
	{ after(grammarAccess.getScalarPropertyAccess().getGroup_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group_2__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarProperty__Group_2__2__Impl
	rule__ScalarProperty__Group_2__3
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group_2__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarPropertyAccess().getGroup_2_2()); }
	(rule__ScalarProperty__Group_2_2__0)?
	{ after(grammarAccess.getScalarPropertyAccess().getGroup_2_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group_2__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarProperty__Group_2__3__Impl
	rule__ScalarProperty__Group_2__4
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group_2__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarPropertyAccess().getFunctionalAssignment_2_3()); }
	(rule__ScalarProperty__FunctionalAssignment_2_3)?
	{ after(grammarAccess.getScalarPropertyAccess().getFunctionalAssignment_2_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group_2__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarProperty__Group_2__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group_2__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarPropertyAccess().getRightSquareBracketKeyword_2_4()); }
	']'
	{ after(grammarAccess.getScalarPropertyAccess().getRightSquareBracketKeyword_2_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ScalarProperty__Group_2_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarProperty__Group_2_1__0__Impl
	rule__ScalarProperty__Group_2_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group_2_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarPropertyAccess().getDomainKeyword_2_1_0()); }
	'domain'
	{ after(grammarAccess.getScalarPropertyAccess().getDomainKeyword_2_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group_2_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarProperty__Group_2_1__1__Impl
	rule__ScalarProperty__Group_2_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group_2_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarPropertyAccess().getDomainsAssignment_2_1_1()); }
	(rule__ScalarProperty__DomainsAssignment_2_1_1)
	{ after(grammarAccess.getScalarPropertyAccess().getDomainsAssignment_2_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group_2_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarProperty__Group_2_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group_2_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarPropertyAccess().getGroup_2_1_2()); }
	(rule__ScalarProperty__Group_2_1_2__0)*
	{ after(grammarAccess.getScalarPropertyAccess().getGroup_2_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ScalarProperty__Group_2_1_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarProperty__Group_2_1_2__0__Impl
	rule__ScalarProperty__Group_2_1_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group_2_1_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarPropertyAccess().getCommaKeyword_2_1_2_0()); }
	','
	{ after(grammarAccess.getScalarPropertyAccess().getCommaKeyword_2_1_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group_2_1_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarProperty__Group_2_1_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group_2_1_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarPropertyAccess().getDomainsAssignment_2_1_2_1()); }
	(rule__ScalarProperty__DomainsAssignment_2_1_2_1)
	{ after(grammarAccess.getScalarPropertyAccess().getDomainsAssignment_2_1_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ScalarProperty__Group_2_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarProperty__Group_2_2__0__Impl
	rule__ScalarProperty__Group_2_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group_2_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarPropertyAccess().getRangeKeyword_2_2_0()); }
	'range'
	{ after(grammarAccess.getScalarPropertyAccess().getRangeKeyword_2_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group_2_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarProperty__Group_2_2__1__Impl
	rule__ScalarProperty__Group_2_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group_2_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarPropertyAccess().getRangesAssignment_2_2_1()); }
	(rule__ScalarProperty__RangesAssignment_2_2_1)
	{ after(grammarAccess.getScalarPropertyAccess().getRangesAssignment_2_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group_2_2__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarProperty__Group_2_2__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group_2_2__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarPropertyAccess().getGroup_2_2_2()); }
	(rule__ScalarProperty__Group_2_2_2__0)*
	{ after(grammarAccess.getScalarPropertyAccess().getGroup_2_2_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ScalarProperty__Group_2_2_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarProperty__Group_2_2_2__0__Impl
	rule__ScalarProperty__Group_2_2_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group_2_2_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarPropertyAccess().getCommaKeyword_2_2_2_0()); }
	','
	{ after(grammarAccess.getScalarPropertyAccess().getCommaKeyword_2_2_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group_2_2_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarProperty__Group_2_2_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__Group_2_2_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getScalarPropertyAccess().getRangesAssignment_2_2_2_1()); }
	(rule__ScalarProperty__RangesAssignment_2_2_2_1)
	{ after(grammarAccess.getScalarPropertyAccess().getRangesAssignment_2_2_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__StructuredProperty__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StructuredProperty__Group__0__Impl
	rule__StructuredProperty__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructuredPropertyAccess().getOwnedAnnotationsAssignment_0()); }
	(rule__StructuredProperty__OwnedAnnotationsAssignment_0)*
	{ after(grammarAccess.getStructuredPropertyAccess().getOwnedAnnotationsAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StructuredProperty__Group__1__Impl
	rule__StructuredProperty__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructuredPropertyAccess().getAlternatives_1()); }
	(rule__StructuredProperty__Alternatives_1)
	{ after(grammarAccess.getStructuredPropertyAccess().getAlternatives_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StructuredProperty__Group__2__Impl
	rule__StructuredProperty__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructuredPropertyAccess().getGroup_2()); }
	(rule__StructuredProperty__Group_2__0)?
	{ after(grammarAccess.getStructuredPropertyAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StructuredProperty__Group__3__Impl
	rule__StructuredProperty__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructuredPropertyAccess().getPropertySpecializationParserRuleCall_3()); }
	(rulePropertySpecialization)?
	{ after(grammarAccess.getStructuredPropertyAccess().getPropertySpecializationParserRuleCall_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StructuredProperty__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructuredPropertyAccess().getPropertyEquivalenceParserRuleCall_4()); }
	(rulePropertyEquivalence)?
	{ after(grammarAccess.getStructuredPropertyAccess().getPropertyEquivalenceParserRuleCall_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__StructuredProperty__Group_1_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StructuredProperty__Group_1_0__0__Impl
	rule__StructuredProperty__Group_1_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group_1_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructuredPropertyAccess().getStructuredKeyword_1_0_0()); }
	'structured'
	{ after(grammarAccess.getStructuredPropertyAccess().getStructuredKeyword_1_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group_1_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StructuredProperty__Group_1_0__1__Impl
	rule__StructuredProperty__Group_1_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group_1_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructuredPropertyAccess().getPropertyKeyword_1_0_1()); }
	'property'
	{ after(grammarAccess.getStructuredPropertyAccess().getPropertyKeyword_1_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group_1_0__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StructuredProperty__Group_1_0__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group_1_0__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructuredPropertyAccess().getNameAssignment_1_0_2()); }
	(rule__StructuredProperty__NameAssignment_1_0_2)
	{ after(grammarAccess.getStructuredPropertyAccess().getNameAssignment_1_0_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__StructuredProperty__Group_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StructuredProperty__Group_1_1__0__Impl
	rule__StructuredProperty__Group_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructuredPropertyAccess().getRefKeyword_1_1_0()); }
	'ref'
	{ after(grammarAccess.getStructuredPropertyAccess().getRefKeyword_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StructuredProperty__Group_1_1__1__Impl
	rule__StructuredProperty__Group_1_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructuredPropertyAccess().getStructuredKeyword_1_1_1()); }
	'structured'
	{ after(grammarAccess.getStructuredPropertyAccess().getStructuredKeyword_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group_1_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StructuredProperty__Group_1_1__2__Impl
	rule__StructuredProperty__Group_1_1__3
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group_1_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructuredPropertyAccess().getPropertyKeyword_1_1_2()); }
	'property'
	{ after(grammarAccess.getStructuredPropertyAccess().getPropertyKeyword_1_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group_1_1__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StructuredProperty__Group_1_1__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group_1_1__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructuredPropertyAccess().getRefAssignment_1_1_3()); }
	(rule__StructuredProperty__RefAssignment_1_1_3)
	{ after(grammarAccess.getStructuredPropertyAccess().getRefAssignment_1_1_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__StructuredProperty__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StructuredProperty__Group_2__0__Impl
	rule__StructuredProperty__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructuredPropertyAccess().getLeftSquareBracketKeyword_2_0()); }
	'['
	{ after(grammarAccess.getStructuredPropertyAccess().getLeftSquareBracketKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StructuredProperty__Group_2__1__Impl
	rule__StructuredProperty__Group_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructuredPropertyAccess().getGroup_2_1()); }
	(rule__StructuredProperty__Group_2_1__0)?
	{ after(grammarAccess.getStructuredPropertyAccess().getGroup_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group_2__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StructuredProperty__Group_2__2__Impl
	rule__StructuredProperty__Group_2__3
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group_2__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructuredPropertyAccess().getGroup_2_2()); }
	(rule__StructuredProperty__Group_2_2__0)?
	{ after(grammarAccess.getStructuredPropertyAccess().getGroup_2_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group_2__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StructuredProperty__Group_2__3__Impl
	rule__StructuredProperty__Group_2__4
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group_2__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructuredPropertyAccess().getFunctionalAssignment_2_3()); }
	(rule__StructuredProperty__FunctionalAssignment_2_3)?
	{ after(grammarAccess.getStructuredPropertyAccess().getFunctionalAssignment_2_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group_2__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StructuredProperty__Group_2__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group_2__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructuredPropertyAccess().getRightSquareBracketKeyword_2_4()); }
	']'
	{ after(grammarAccess.getStructuredPropertyAccess().getRightSquareBracketKeyword_2_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__StructuredProperty__Group_2_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StructuredProperty__Group_2_1__0__Impl
	rule__StructuredProperty__Group_2_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group_2_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructuredPropertyAccess().getDomainKeyword_2_1_0()); }
	'domain'
	{ after(grammarAccess.getStructuredPropertyAccess().getDomainKeyword_2_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group_2_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StructuredProperty__Group_2_1__1__Impl
	rule__StructuredProperty__Group_2_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group_2_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructuredPropertyAccess().getDomainsAssignment_2_1_1()); }
	(rule__StructuredProperty__DomainsAssignment_2_1_1)
	{ after(grammarAccess.getStructuredPropertyAccess().getDomainsAssignment_2_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group_2_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StructuredProperty__Group_2_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group_2_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructuredPropertyAccess().getGroup_2_1_2()); }
	(rule__StructuredProperty__Group_2_1_2__0)*
	{ after(grammarAccess.getStructuredPropertyAccess().getGroup_2_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__StructuredProperty__Group_2_1_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StructuredProperty__Group_2_1_2__0__Impl
	rule__StructuredProperty__Group_2_1_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group_2_1_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructuredPropertyAccess().getCommaKeyword_2_1_2_0()); }
	','
	{ after(grammarAccess.getStructuredPropertyAccess().getCommaKeyword_2_1_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group_2_1_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StructuredProperty__Group_2_1_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group_2_1_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructuredPropertyAccess().getDomainsAssignment_2_1_2_1()); }
	(rule__StructuredProperty__DomainsAssignment_2_1_2_1)
	{ after(grammarAccess.getStructuredPropertyAccess().getDomainsAssignment_2_1_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__StructuredProperty__Group_2_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StructuredProperty__Group_2_2__0__Impl
	rule__StructuredProperty__Group_2_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group_2_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructuredPropertyAccess().getRangeKeyword_2_2_0()); }
	'range'
	{ after(grammarAccess.getStructuredPropertyAccess().getRangeKeyword_2_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group_2_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StructuredProperty__Group_2_2__1__Impl
	rule__StructuredProperty__Group_2_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group_2_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructuredPropertyAccess().getRangesAssignment_2_2_1()); }
	(rule__StructuredProperty__RangesAssignment_2_2_1)
	{ after(grammarAccess.getStructuredPropertyAccess().getRangesAssignment_2_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group_2_2__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StructuredProperty__Group_2_2__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group_2_2__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructuredPropertyAccess().getGroup_2_2_2()); }
	(rule__StructuredProperty__Group_2_2_2__0)*
	{ after(grammarAccess.getStructuredPropertyAccess().getGroup_2_2_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__StructuredProperty__Group_2_2_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StructuredProperty__Group_2_2_2__0__Impl
	rule__StructuredProperty__Group_2_2_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group_2_2_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructuredPropertyAccess().getCommaKeyword_2_2_2_0()); }
	','
	{ after(grammarAccess.getStructuredPropertyAccess().getCommaKeyword_2_2_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group_2_2_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StructuredProperty__Group_2_2_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__Group_2_2_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructuredPropertyAccess().getRangesAssignment_2_2_2_1()); }
	(rule__StructuredProperty__RangesAssignment_2_2_2_1)
	{ after(grammarAccess.getStructuredPropertyAccess().getRangesAssignment_2_2_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ForwardRelation__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ForwardRelation__Group__0__Impl
	rule__ForwardRelation__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ForwardRelation__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getForwardRelationAccess().getOwnedAnnotationsAssignment_0()); }
	(rule__ForwardRelation__OwnedAnnotationsAssignment_0)*
	{ after(grammarAccess.getForwardRelationAccess().getOwnedAnnotationsAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ForwardRelation__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ForwardRelation__Group__1__Impl
	rule__ForwardRelation__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ForwardRelation__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getForwardRelationAccess().getForwardKeyword_1()); }
	'forward'
	{ after(grammarAccess.getForwardRelationAccess().getForwardKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ForwardRelation__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ForwardRelation__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ForwardRelation__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getForwardRelationAccess().getNameAssignment_2()); }
	(rule__ForwardRelation__NameAssignment_2)
	{ after(grammarAccess.getForwardRelationAccess().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ReverseRelation__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ReverseRelation__Group__0__Impl
	rule__ReverseRelation__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ReverseRelation__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReverseRelationAccess().getOwnedAnnotationsAssignment_0()); }
	(rule__ReverseRelation__OwnedAnnotationsAssignment_0)*
	{ after(grammarAccess.getReverseRelationAccess().getOwnedAnnotationsAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ReverseRelation__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ReverseRelation__Group__1__Impl
	rule__ReverseRelation__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ReverseRelation__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReverseRelationAccess().getReverseKeyword_1()); }
	'reverse'
	{ after(grammarAccess.getReverseRelationAccess().getReverseKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ReverseRelation__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ReverseRelation__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ReverseRelation__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReverseRelationAccess().getNameAssignment_2()); }
	(rule__ReverseRelation__NameAssignment_2)
	{ after(grammarAccess.getReverseRelationAccess().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__UnreifiedRelation__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnreifiedRelation__Group__0__Impl
	rule__UnreifiedRelation__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUnreifiedRelationAccess().getOwnedAnnotationsAssignment_0()); }
	(rule__UnreifiedRelation__OwnedAnnotationsAssignment_0)*
	{ after(grammarAccess.getUnreifiedRelationAccess().getOwnedAnnotationsAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnreifiedRelation__Group__1__Impl
	rule__UnreifiedRelation__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUnreifiedRelationAccess().getAlternatives_1()); }
	(rule__UnreifiedRelation__Alternatives_1)
	{ after(grammarAccess.getUnreifiedRelationAccess().getAlternatives_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnreifiedRelation__Group__2__Impl
	rule__UnreifiedRelation__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUnreifiedRelationAccess().getGroup_2()); }
	(rule__UnreifiedRelation__Group_2__0)?
	{ after(grammarAccess.getUnreifiedRelationAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnreifiedRelation__Group__3__Impl
	rule__UnreifiedRelation__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUnreifiedRelationAccess().getPropertySpecializationParserRuleCall_3()); }
	(rulePropertySpecialization)?
	{ after(grammarAccess.getUnreifiedRelationAccess().getPropertySpecializationParserRuleCall_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnreifiedRelation__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUnreifiedRelationAccess().getPropertyEquivalenceParserRuleCall_4()); }
	(rulePropertyEquivalence)?
	{ after(grammarAccess.getUnreifiedRelationAccess().getPropertyEquivalenceParserRuleCall_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__UnreifiedRelation__Group_1_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnreifiedRelation__Group_1_0__0__Impl
	rule__UnreifiedRelation__Group_1_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group_1_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUnreifiedRelationAccess().getRelationKeyword_1_0_0()); }
	'relation'
	{ after(grammarAccess.getUnreifiedRelationAccess().getRelationKeyword_1_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group_1_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnreifiedRelation__Group_1_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group_1_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUnreifiedRelationAccess().getNameAssignment_1_0_1()); }
	(rule__UnreifiedRelation__NameAssignment_1_0_1)
	{ after(grammarAccess.getUnreifiedRelationAccess().getNameAssignment_1_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__UnreifiedRelation__Group_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnreifiedRelation__Group_1_1__0__Impl
	rule__UnreifiedRelation__Group_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUnreifiedRelationAccess().getRefKeyword_1_1_0()); }
	'ref'
	{ after(grammarAccess.getUnreifiedRelationAccess().getRefKeyword_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnreifiedRelation__Group_1_1__1__Impl
	rule__UnreifiedRelation__Group_1_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUnreifiedRelationAccess().getRelationKeyword_1_1_1()); }
	'relation'
	{ after(grammarAccess.getUnreifiedRelationAccess().getRelationKeyword_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group_1_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnreifiedRelation__Group_1_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group_1_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUnreifiedRelationAccess().getRefAssignment_1_1_2()); }
	(rule__UnreifiedRelation__RefAssignment_1_1_2)
	{ after(grammarAccess.getUnreifiedRelationAccess().getRefAssignment_1_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__UnreifiedRelation__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnreifiedRelation__Group_2__0__Impl
	rule__UnreifiedRelation__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUnreifiedRelationAccess().getLeftSquareBracketKeyword_2_0()); }
	'['
	{ after(grammarAccess.getUnreifiedRelationAccess().getLeftSquareBracketKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnreifiedRelation__Group_2__1__Impl
	rule__UnreifiedRelation__Group_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUnreifiedRelationAccess().getGroup_2_1()); }
	(rule__UnreifiedRelation__Group_2_1__0)?
	{ after(grammarAccess.getUnreifiedRelationAccess().getGroup_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group_2__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnreifiedRelation__Group_2__2__Impl
	rule__UnreifiedRelation__Group_2__3
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group_2__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUnreifiedRelationAccess().getGroup_2_2()); }
	(rule__UnreifiedRelation__Group_2_2__0)?
	{ after(grammarAccess.getUnreifiedRelationAccess().getGroup_2_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group_2__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnreifiedRelation__Group_2__3__Impl
	rule__UnreifiedRelation__Group_2__4
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group_2__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUnreifiedRelationAccess().getReverseRelationAssignment_2_3()); }
	(rule__UnreifiedRelation__ReverseRelationAssignment_2_3)?
	{ after(grammarAccess.getUnreifiedRelationAccess().getReverseRelationAssignment_2_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group_2__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnreifiedRelation__Group_2__4__Impl
	rule__UnreifiedRelation__Group_2__5
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group_2__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUnreifiedRelationAccess().getUnorderedGroup_2_4()); }
	(rule__UnreifiedRelation__UnorderedGroup_2_4)
	{ after(grammarAccess.getUnreifiedRelationAccess().getUnorderedGroup_2_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group_2__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnreifiedRelation__Group_2__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group_2__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUnreifiedRelationAccess().getRightSquareBracketKeyword_2_5()); }
	']'
	{ after(grammarAccess.getUnreifiedRelationAccess().getRightSquareBracketKeyword_2_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__UnreifiedRelation__Group_2_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnreifiedRelation__Group_2_1__0__Impl
	rule__UnreifiedRelation__Group_2_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group_2_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUnreifiedRelationAccess().getFromKeyword_2_1_0()); }
	'from'
	{ after(grammarAccess.getUnreifiedRelationAccess().getFromKeyword_2_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group_2_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnreifiedRelation__Group_2_1__1__Impl
	rule__UnreifiedRelation__Group_2_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group_2_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUnreifiedRelationAccess().getSourcesAssignment_2_1_1()); }
	(rule__UnreifiedRelation__SourcesAssignment_2_1_1)
	{ after(grammarAccess.getUnreifiedRelationAccess().getSourcesAssignment_2_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group_2_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnreifiedRelation__Group_2_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group_2_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUnreifiedRelationAccess().getGroup_2_1_2()); }
	(rule__UnreifiedRelation__Group_2_1_2__0)*
	{ after(grammarAccess.getUnreifiedRelationAccess().getGroup_2_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__UnreifiedRelation__Group_2_1_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnreifiedRelation__Group_2_1_2__0__Impl
	rule__UnreifiedRelation__Group_2_1_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group_2_1_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUnreifiedRelationAccess().getCommaKeyword_2_1_2_0()); }
	','
	{ after(grammarAccess.getUnreifiedRelationAccess().getCommaKeyword_2_1_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group_2_1_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnreifiedRelation__Group_2_1_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group_2_1_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUnreifiedRelationAccess().getSourcesAssignment_2_1_2_1()); }
	(rule__UnreifiedRelation__SourcesAssignment_2_1_2_1)
	{ after(grammarAccess.getUnreifiedRelationAccess().getSourcesAssignment_2_1_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__UnreifiedRelation__Group_2_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnreifiedRelation__Group_2_2__0__Impl
	rule__UnreifiedRelation__Group_2_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group_2_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUnreifiedRelationAccess().getToKeyword_2_2_0()); }
	'to'
	{ after(grammarAccess.getUnreifiedRelationAccess().getToKeyword_2_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group_2_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnreifiedRelation__Group_2_2__1__Impl
	rule__UnreifiedRelation__Group_2_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group_2_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUnreifiedRelationAccess().getTargetsAssignment_2_2_1()); }
	(rule__UnreifiedRelation__TargetsAssignment_2_2_1)
	{ after(grammarAccess.getUnreifiedRelationAccess().getTargetsAssignment_2_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group_2_2__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnreifiedRelation__Group_2_2__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group_2_2__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUnreifiedRelationAccess().getGroup_2_2_2()); }
	(rule__UnreifiedRelation__Group_2_2_2__0)*
	{ after(grammarAccess.getUnreifiedRelationAccess().getGroup_2_2_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__UnreifiedRelation__Group_2_2_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnreifiedRelation__Group_2_2_2__0__Impl
	rule__UnreifiedRelation__Group_2_2_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group_2_2_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUnreifiedRelationAccess().getCommaKeyword_2_2_2_0()); }
	','
	{ after(grammarAccess.getUnreifiedRelationAccess().getCommaKeyword_2_2_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group_2_2_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnreifiedRelation__Group_2_2_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group_2_2_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUnreifiedRelationAccess().getTargetsAssignment_2_2_2_1()); }
	(rule__UnreifiedRelation__TargetsAssignment_2_2_2_1)
	{ after(grammarAccess.getUnreifiedRelationAccess().getTargetsAssignment_2_2_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__UnreifiedRelation__Group_2_4_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnreifiedRelation__Group_2_4_1__0__Impl
	rule__UnreifiedRelation__Group_2_4_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group_2_4_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUnreifiedRelationAccess().getInverseFunctionalAssignment_2_4_1_0()); }
	(rule__UnreifiedRelation__InverseFunctionalAssignment_2_4_1_0)
	{ after(grammarAccess.getUnreifiedRelationAccess().getInverseFunctionalAssignment_2_4_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group_2_4_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnreifiedRelation__Group_2_4_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__Group_2_4_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUnreifiedRelationAccess().getFunctionalKeyword_2_4_1_1()); }
	'functional'
	{ after(grammarAccess.getUnreifiedRelationAccess().getFunctionalKeyword_2_4_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__PropertySpecialization__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertySpecialization__Group__0__Impl
	rule__PropertySpecialization__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertySpecialization__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertySpecializationAccess().getLessThanSignKeyword_0()); }
	'<'
	{ after(grammarAccess.getPropertySpecializationAccess().getLessThanSignKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertySpecialization__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertySpecialization__Group__1__Impl
	rule__PropertySpecialization__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertySpecialization__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertySpecializationAccess().getOwnedSpecializationsAssignment_1()); }
	(rule__PropertySpecialization__OwnedSpecializationsAssignment_1)
	{ after(grammarAccess.getPropertySpecializationAccess().getOwnedSpecializationsAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertySpecialization__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertySpecialization__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertySpecialization__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertySpecializationAccess().getGroup_2()); }
	(rule__PropertySpecialization__Group_2__0)*
	{ after(grammarAccess.getPropertySpecializationAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__PropertySpecialization__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertySpecialization__Group_2__0__Impl
	rule__PropertySpecialization__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertySpecialization__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertySpecializationAccess().getCommaKeyword_2_0()); }
	','
	{ after(grammarAccess.getPropertySpecializationAccess().getCommaKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertySpecialization__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertySpecialization__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertySpecialization__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertySpecializationAccess().getOwnedSpecializationsAssignment_2_1()); }
	(rule__PropertySpecialization__OwnedSpecializationsAssignment_2_1)
	{ after(grammarAccess.getPropertySpecializationAccess().getOwnedSpecializationsAssignment_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__PropertyEquivalence__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyEquivalence__Group__0__Impl
	rule__PropertyEquivalence__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyEquivalence__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyEquivalenceAccess().getEqualsSignKeyword_0()); }
	'='
	{ after(grammarAccess.getPropertyEquivalenceAccess().getEqualsSignKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyEquivalence__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyEquivalence__Group__1__Impl
	rule__PropertyEquivalence__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyEquivalence__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyEquivalenceAccess().getOwnedEquivalencesAssignment_1()); }
	(rule__PropertyEquivalence__OwnedEquivalencesAssignment_1)
	{ after(grammarAccess.getPropertyEquivalenceAccess().getOwnedEquivalencesAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyEquivalence__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyEquivalence__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyEquivalence__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyEquivalenceAccess().getGroup_2()); }
	(rule__PropertyEquivalence__Group_2__0)*
	{ after(grammarAccess.getPropertyEquivalenceAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__PropertyEquivalence__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyEquivalence__Group_2__0__Impl
	rule__PropertyEquivalence__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyEquivalence__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyEquivalenceAccess().getCommaKeyword_2_0()); }
	','
	{ after(grammarAccess.getPropertyEquivalenceAccess().getCommaKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyEquivalence__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyEquivalence__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyEquivalence__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyEquivalenceAccess().getOwnedEquivalencesAssignment_2_1()); }
	(rule__PropertyEquivalence__OwnedEquivalencesAssignment_2_1)
	{ after(grammarAccess.getPropertyEquivalenceAccess().getOwnedEquivalencesAssignment_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Rule__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Rule__Group__0__Impl
	rule__Rule__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRuleAccess().getOwnedAnnotationsAssignment_0()); }
	(rule__Rule__OwnedAnnotationsAssignment_0)*
	{ after(grammarAccess.getRuleAccess().getOwnedAnnotationsAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Rule__Group__1__Impl
	rule__Rule__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRuleAccess().getAlternatives_1()); }
	(rule__Rule__Alternatives_1)
	{ after(grammarAccess.getRuleAccess().getAlternatives_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Rule__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRuleAccess().getGroup_2()); }
	(rule__Rule__Group_2__0)?
	{ after(grammarAccess.getRuleAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Rule__Group_1_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Rule__Group_1_0__0__Impl
	rule__Rule__Group_1_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group_1_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRuleAccess().getRuleKeyword_1_0_0()); }
	'rule'
	{ after(grammarAccess.getRuleAccess().getRuleKeyword_1_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group_1_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Rule__Group_1_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group_1_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRuleAccess().getNameAssignment_1_0_1()); }
	(rule__Rule__NameAssignment_1_0_1)
	{ after(grammarAccess.getRuleAccess().getNameAssignment_1_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Rule__Group_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Rule__Group_1_1__0__Impl
	rule__Rule__Group_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRuleAccess().getRefKeyword_1_1_0()); }
	'ref'
	{ after(grammarAccess.getRuleAccess().getRefKeyword_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Rule__Group_1_1__1__Impl
	rule__Rule__Group_1_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRuleAccess().getRuleKeyword_1_1_1()); }
	'rule'
	{ after(grammarAccess.getRuleAccess().getRuleKeyword_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group_1_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Rule__Group_1_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group_1_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRuleAccess().getRefAssignment_1_1_2()); }
	(rule__Rule__RefAssignment_1_1_2)
	{ after(grammarAccess.getRuleAccess().getRefAssignment_1_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Rule__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Rule__Group_2__0__Impl
	rule__Rule__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRuleAccess().getLeftSquareBracketKeyword_2_0()); }
	'['
	{ after(grammarAccess.getRuleAccess().getLeftSquareBracketKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Rule__Group_2__1__Impl
	rule__Rule__Group_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRuleAccess().getGroup_2_1()); }
	(rule__Rule__Group_2_1__0)?
	{ after(grammarAccess.getRuleAccess().getGroup_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group_2__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Rule__Group_2__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group_2__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRuleAccess().getRightSquareBracketKeyword_2_2()); }
	']'
	{ after(grammarAccess.getRuleAccess().getRightSquareBracketKeyword_2_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Rule__Group_2_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Rule__Group_2_1__0__Impl
	rule__Rule__Group_2_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group_2_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRuleAccess().getAntecedentAssignment_2_1_0()); }
	(rule__Rule__AntecedentAssignment_2_1_0)
	{ after(grammarAccess.getRuleAccess().getAntecedentAssignment_2_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group_2_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Rule__Group_2_1__1__Impl
	rule__Rule__Group_2_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group_2_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRuleAccess().getGroup_2_1_1()); }
	(rule__Rule__Group_2_1_1__0)*
	{ after(grammarAccess.getRuleAccess().getGroup_2_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group_2_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Rule__Group_2_1__2__Impl
	rule__Rule__Group_2_1__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group_2_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRuleAccess().getHyphenMinusGreaterThanSignKeyword_2_1_2()); }
	'->'
	{ after(grammarAccess.getRuleAccess().getHyphenMinusGreaterThanSignKeyword_2_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group_2_1__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Rule__Group_2_1__3__Impl
	rule__Rule__Group_2_1__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group_2_1__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRuleAccess().getConsequentAssignment_2_1_3()); }
	(rule__Rule__ConsequentAssignment_2_1_3)
	{ after(grammarAccess.getRuleAccess().getConsequentAssignment_2_1_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group_2_1__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Rule__Group_2_1__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group_2_1__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRuleAccess().getGroup_2_1_4()); }
	(rule__Rule__Group_2_1_4__0)*
	{ after(grammarAccess.getRuleAccess().getGroup_2_1_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Rule__Group_2_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Rule__Group_2_1_1__0__Impl
	rule__Rule__Group_2_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group_2_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRuleAccess().getAmpersandKeyword_2_1_1_0()); }
	'&'
	{ after(grammarAccess.getRuleAccess().getAmpersandKeyword_2_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group_2_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Rule__Group_2_1_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group_2_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRuleAccess().getAntecedentAssignment_2_1_1_1()); }
	(rule__Rule__AntecedentAssignment_2_1_1_1)
	{ after(grammarAccess.getRuleAccess().getAntecedentAssignment_2_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Rule__Group_2_1_4__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Rule__Group_2_1_4__0__Impl
	rule__Rule__Group_2_1_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group_2_1_4__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRuleAccess().getAmpersandKeyword_2_1_4_0()); }
	'&'
	{ after(grammarAccess.getRuleAccess().getAmpersandKeyword_2_1_4_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group_2_1_4__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Rule__Group_2_1_4__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__Group_2_1_4__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRuleAccess().getConsequentAssignment_2_1_4_1()); }
	(rule__Rule__ConsequentAssignment_2_1_4_1)
	{ after(grammarAccess.getRuleAccess().getConsequentAssignment_2_1_4_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__BuiltIn__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__BuiltIn__Group__0__Impl
	rule__BuiltIn__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__BuiltIn__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBuiltInAccess().getOwnedAnnotationsAssignment_0()); }
	(rule__BuiltIn__OwnedAnnotationsAssignment_0)*
	{ after(grammarAccess.getBuiltInAccess().getOwnedAnnotationsAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__BuiltIn__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__BuiltIn__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__BuiltIn__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBuiltInAccess().getAlternatives_1()); }
	(rule__BuiltIn__Alternatives_1)
	{ after(grammarAccess.getBuiltInAccess().getAlternatives_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__BuiltIn__Group_1_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__BuiltIn__Group_1_0__0__Impl
	rule__BuiltIn__Group_1_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__BuiltIn__Group_1_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBuiltInAccess().getBuiltinKeyword_1_0_0()); }
	'builtin'
	{ after(grammarAccess.getBuiltInAccess().getBuiltinKeyword_1_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__BuiltIn__Group_1_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__BuiltIn__Group_1_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__BuiltIn__Group_1_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBuiltInAccess().getNameAssignment_1_0_1()); }
	(rule__BuiltIn__NameAssignment_1_0_1)
	{ after(grammarAccess.getBuiltInAccess().getNameAssignment_1_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__BuiltIn__Group_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__BuiltIn__Group_1_1__0__Impl
	rule__BuiltIn__Group_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__BuiltIn__Group_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBuiltInAccess().getRefKeyword_1_1_0()); }
	'ref'
	{ after(grammarAccess.getBuiltInAccess().getRefKeyword_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__BuiltIn__Group_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__BuiltIn__Group_1_1__1__Impl
	rule__BuiltIn__Group_1_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__BuiltIn__Group_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBuiltInAccess().getBuiltinKeyword_1_1_1()); }
	'builtin'
	{ after(grammarAccess.getBuiltInAccess().getBuiltinKeyword_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__BuiltIn__Group_1_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__BuiltIn__Group_1_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__BuiltIn__Group_1_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBuiltInAccess().getRefAssignment_1_1_2()); }
	(rule__BuiltIn__RefAssignment_1_1_2)
	{ after(grammarAccess.getBuiltInAccess().getRefAssignment_1_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__StructureInstance__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StructureInstance__Group__0__Impl
	rule__StructureInstance__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__StructureInstance__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructureInstanceAccess().getColonKeyword_0()); }
	':'
	{ after(grammarAccess.getStructureInstanceAccess().getColonKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StructureInstance__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StructureInstance__Group__1__Impl
	rule__StructureInstance__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__StructureInstance__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructureInstanceAccess().getTypeAssignment_1()); }
	(rule__StructureInstance__TypeAssignment_1)
	{ after(grammarAccess.getStructureInstanceAccess().getTypeAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StructureInstance__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StructureInstance__Group__2__Impl
	rule__StructureInstance__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__StructureInstance__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructureInstanceAccess().getLeftSquareBracketKeyword_2()); }
	'['
	{ after(grammarAccess.getStructureInstanceAccess().getLeftSquareBracketKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StructureInstance__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StructureInstance__Group__3__Impl
	rule__StructureInstance__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__StructureInstance__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructureInstanceAccess().getOwnedPropertyValuesAssignment_3()); }
	(rule__StructureInstance__OwnedPropertyValuesAssignment_3)*
	{ after(grammarAccess.getStructureInstanceAccess().getOwnedPropertyValuesAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__StructureInstance__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__StructureInstance__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__StructureInstance__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStructureInstanceAccess().getRightSquareBracketKeyword_4()); }
	']'
	{ after(grammarAccess.getStructureInstanceAccess().getRightSquareBracketKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__AnonymousRelationInstance__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__AnonymousRelationInstance__Group__0__Impl
	rule__AnonymousRelationInstance__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AnonymousRelationInstance__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAnonymousRelationInstanceAccess().getTargetAssignment_0()); }
	(rule__AnonymousRelationInstance__TargetAssignment_0)
	{ after(grammarAccess.getAnonymousRelationInstanceAccess().getTargetAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__AnonymousRelationInstance__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__AnonymousRelationInstance__Group__1__Impl
	rule__AnonymousRelationInstance__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__AnonymousRelationInstance__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAnonymousRelationInstanceAccess().getLeftSquareBracketKeyword_1()); }
	'['
	{ after(grammarAccess.getAnonymousRelationInstanceAccess().getLeftSquareBracketKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__AnonymousRelationInstance__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__AnonymousRelationInstance__Group__2__Impl
	rule__AnonymousRelationInstance__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__AnonymousRelationInstance__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAnonymousRelationInstanceAccess().getOwnedPropertyValuesAssignment_2()); }
	(rule__AnonymousRelationInstance__OwnedPropertyValuesAssignment_2)*
	{ after(grammarAccess.getAnonymousRelationInstanceAccess().getOwnedPropertyValuesAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__AnonymousRelationInstance__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__AnonymousRelationInstance__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AnonymousRelationInstance__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAnonymousRelationInstanceAccess().getRightSquareBracketKeyword_3()); }
	']'
	{ after(grammarAccess.getAnonymousRelationInstanceAccess().getRightSquareBracketKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ConceptInstance__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ConceptInstance__Group__0__Impl
	rule__ConceptInstance__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ConceptInstance__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConceptInstanceAccess().getOwnedAnnotationsAssignment_0()); }
	(rule__ConceptInstance__OwnedAnnotationsAssignment_0)*
	{ after(grammarAccess.getConceptInstanceAccess().getOwnedAnnotationsAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ConceptInstance__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ConceptInstance__Group__1__Impl
	rule__ConceptInstance__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ConceptInstance__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConceptInstanceAccess().getAlternatives_1()); }
	(rule__ConceptInstance__Alternatives_1)
	{ after(grammarAccess.getConceptInstanceAccess().getAlternatives_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ConceptInstance__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ConceptInstance__Group__2__Impl
	rule__ConceptInstance__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__ConceptInstance__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConceptInstanceAccess().getGroup_2()); }
	(rule__ConceptInstance__Group_2__0)?
	{ after(grammarAccess.getConceptInstanceAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ConceptInstance__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ConceptInstance__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ConceptInstance__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConceptInstanceAccess().getGroup_3()); }
	(rule__ConceptInstance__Group_3__0)?
	{ after(grammarAccess.getConceptInstanceAccess().getGroup_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ConceptInstance__Group_1_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ConceptInstance__Group_1_0__0__Impl
	rule__ConceptInstance__Group_1_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ConceptInstance__Group_1_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConceptInstanceAccess().getInstanceKeyword_1_0_0()); }
	'instance'
	{ after(grammarAccess.getConceptInstanceAccess().getInstanceKeyword_1_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ConceptInstance__Group_1_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ConceptInstance__Group_1_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ConceptInstance__Group_1_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConceptInstanceAccess().getNameAssignment_1_0_1()); }
	(rule__ConceptInstance__NameAssignment_1_0_1)
	{ after(grammarAccess.getConceptInstanceAccess().getNameAssignment_1_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ConceptInstance__Group_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ConceptInstance__Group_1_1__0__Impl
	rule__ConceptInstance__Group_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ConceptInstance__Group_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConceptInstanceAccess().getRefKeyword_1_1_0()); }
	'ref'
	{ after(grammarAccess.getConceptInstanceAccess().getRefKeyword_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ConceptInstance__Group_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ConceptInstance__Group_1_1__1__Impl
	rule__ConceptInstance__Group_1_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ConceptInstance__Group_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConceptInstanceAccess().getInstanceKeyword_1_1_1()); }
	'instance'
	{ after(grammarAccess.getConceptInstanceAccess().getInstanceKeyword_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ConceptInstance__Group_1_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ConceptInstance__Group_1_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ConceptInstance__Group_1_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConceptInstanceAccess().getRefAssignment_1_1_2()); }
	(rule__ConceptInstance__RefAssignment_1_1_2)
	{ after(grammarAccess.getConceptInstanceAccess().getRefAssignment_1_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ConceptInstance__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ConceptInstance__Group_2__0__Impl
	rule__ConceptInstance__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ConceptInstance__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConceptInstanceAccess().getColonKeyword_2_0()); }
	':'
	{ after(grammarAccess.getConceptInstanceAccess().getColonKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ConceptInstance__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ConceptInstance__Group_2__1__Impl
	rule__ConceptInstance__Group_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ConceptInstance__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConceptInstanceAccess().getOwnedTypesAssignment_2_1()); }
	(rule__ConceptInstance__OwnedTypesAssignment_2_1)
	{ after(grammarAccess.getConceptInstanceAccess().getOwnedTypesAssignment_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ConceptInstance__Group_2__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ConceptInstance__Group_2__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ConceptInstance__Group_2__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConceptInstanceAccess().getGroup_2_2()); }
	(rule__ConceptInstance__Group_2_2__0)*
	{ after(grammarAccess.getConceptInstanceAccess().getGroup_2_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ConceptInstance__Group_2_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ConceptInstance__Group_2_2__0__Impl
	rule__ConceptInstance__Group_2_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ConceptInstance__Group_2_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConceptInstanceAccess().getCommaKeyword_2_2_0()); }
	','
	{ after(grammarAccess.getConceptInstanceAccess().getCommaKeyword_2_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ConceptInstance__Group_2_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ConceptInstance__Group_2_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ConceptInstance__Group_2_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConceptInstanceAccess().getOwnedTypesAssignment_2_2_1()); }
	(rule__ConceptInstance__OwnedTypesAssignment_2_2_1)
	{ after(grammarAccess.getConceptInstanceAccess().getOwnedTypesAssignment_2_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ConceptInstance__Group_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ConceptInstance__Group_3__0__Impl
	rule__ConceptInstance__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ConceptInstance__Group_3__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConceptInstanceAccess().getLeftSquareBracketKeyword_3_0()); }
	'['
	{ after(grammarAccess.getConceptInstanceAccess().getLeftSquareBracketKeyword_3_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ConceptInstance__Group_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ConceptInstance__Group_3__1__Impl
	rule__ConceptInstance__Group_3__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ConceptInstance__Group_3__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConceptInstanceAccess().getOwnedPropertyValuesAssignment_3_1()); }
	(rule__ConceptInstance__OwnedPropertyValuesAssignment_3_1)*
	{ after(grammarAccess.getConceptInstanceAccess().getOwnedPropertyValuesAssignment_3_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ConceptInstance__Group_3__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ConceptInstance__Group_3__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ConceptInstance__Group_3__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConceptInstanceAccess().getRightSquareBracketKeyword_3_2()); }
	']'
	{ after(grammarAccess.getConceptInstanceAccess().getRightSquareBracketKeyword_3_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RelationInstance__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationInstance__Group__0__Impl
	rule__RelationInstance__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationInstanceAccess().getOwnedAnnotationsAssignment_0()); }
	(rule__RelationInstance__OwnedAnnotationsAssignment_0)*
	{ after(grammarAccess.getRelationInstanceAccess().getOwnedAnnotationsAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationInstance__Group__1__Impl
	rule__RelationInstance__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationInstanceAccess().getAlternatives_1()); }
	(rule__RelationInstance__Alternatives_1)
	{ after(grammarAccess.getRelationInstanceAccess().getAlternatives_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationInstance__Group__2__Impl
	rule__RelationInstance__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationInstanceAccess().getGroup_2()); }
	(rule__RelationInstance__Group_2__0)?
	{ after(grammarAccess.getRelationInstanceAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationInstance__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationInstanceAccess().getGroup_3()); }
	(rule__RelationInstance__Group_3__0)?
	{ after(grammarAccess.getRelationInstanceAccess().getGroup_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RelationInstance__Group_1_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationInstance__Group_1_0__0__Impl
	rule__RelationInstance__Group_1_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_1_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationInstanceAccess().getRelationKeyword_1_0_0()); }
	'relation'
	{ after(grammarAccess.getRelationInstanceAccess().getRelationKeyword_1_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_1_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationInstance__Group_1_0__1__Impl
	rule__RelationInstance__Group_1_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_1_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationInstanceAccess().getInstanceKeyword_1_0_1()); }
	'instance'
	{ after(grammarAccess.getRelationInstanceAccess().getInstanceKeyword_1_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_1_0__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationInstance__Group_1_0__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_1_0__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationInstanceAccess().getNameAssignment_1_0_2()); }
	(rule__RelationInstance__NameAssignment_1_0_2)
	{ after(grammarAccess.getRelationInstanceAccess().getNameAssignment_1_0_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RelationInstance__Group_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationInstance__Group_1_1__0__Impl
	rule__RelationInstance__Group_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationInstanceAccess().getRefKeyword_1_1_0()); }
	'ref'
	{ after(grammarAccess.getRelationInstanceAccess().getRefKeyword_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationInstance__Group_1_1__1__Impl
	rule__RelationInstance__Group_1_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationInstanceAccess().getRelationKeyword_1_1_1()); }
	'relation'
	{ after(grammarAccess.getRelationInstanceAccess().getRelationKeyword_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_1_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationInstance__Group_1_1__2__Impl
	rule__RelationInstance__Group_1_1__3
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_1_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationInstanceAccess().getInstanceKeyword_1_1_2()); }
	'instance'
	{ after(grammarAccess.getRelationInstanceAccess().getInstanceKeyword_1_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_1_1__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationInstance__Group_1_1__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_1_1__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationInstanceAccess().getRefAssignment_1_1_3()); }
	(rule__RelationInstance__RefAssignment_1_1_3)
	{ after(grammarAccess.getRelationInstanceAccess().getRefAssignment_1_1_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RelationInstance__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationInstance__Group_2__0__Impl
	rule__RelationInstance__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationInstanceAccess().getColonKeyword_2_0()); }
	':'
	{ after(grammarAccess.getRelationInstanceAccess().getColonKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationInstance__Group_2__1__Impl
	rule__RelationInstance__Group_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationInstanceAccess().getOwnedTypesAssignment_2_1()); }
	(rule__RelationInstance__OwnedTypesAssignment_2_1)
	{ after(grammarAccess.getRelationInstanceAccess().getOwnedTypesAssignment_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_2__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationInstance__Group_2__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_2__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationInstanceAccess().getGroup_2_2()); }
	(rule__RelationInstance__Group_2_2__0)*
	{ after(grammarAccess.getRelationInstanceAccess().getGroup_2_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RelationInstance__Group_2_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationInstance__Group_2_2__0__Impl
	rule__RelationInstance__Group_2_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_2_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationInstanceAccess().getCommaKeyword_2_2_0()); }
	','
	{ after(grammarAccess.getRelationInstanceAccess().getCommaKeyword_2_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_2_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationInstance__Group_2_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_2_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationInstanceAccess().getOwnedTypesAssignment_2_2_1()); }
	(rule__RelationInstance__OwnedTypesAssignment_2_2_1)
	{ after(grammarAccess.getRelationInstanceAccess().getOwnedTypesAssignment_2_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RelationInstance__Group_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationInstance__Group_3__0__Impl
	rule__RelationInstance__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_3__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationInstanceAccess().getLeftSquareBracketKeyword_3_0()); }
	'['
	{ after(grammarAccess.getRelationInstanceAccess().getLeftSquareBracketKeyword_3_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationInstance__Group_3__1__Impl
	rule__RelationInstance__Group_3__2
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_3__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationInstanceAccess().getGroup_3_1()); }
	(rule__RelationInstance__Group_3_1__0)?
	{ after(grammarAccess.getRelationInstanceAccess().getGroup_3_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_3__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationInstance__Group_3__2__Impl
	rule__RelationInstance__Group_3__3
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_3__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationInstanceAccess().getGroup_3_2()); }
	(rule__RelationInstance__Group_3_2__0)?
	{ after(grammarAccess.getRelationInstanceAccess().getGroup_3_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_3__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationInstance__Group_3__3__Impl
	rule__RelationInstance__Group_3__4
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_3__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationInstanceAccess().getOwnedPropertyValuesAssignment_3_3()); }
	(rule__RelationInstance__OwnedPropertyValuesAssignment_3_3)*
	{ after(grammarAccess.getRelationInstanceAccess().getOwnedPropertyValuesAssignment_3_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_3__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationInstance__Group_3__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_3__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationInstanceAccess().getRightSquareBracketKeyword_3_4()); }
	']'
	{ after(grammarAccess.getRelationInstanceAccess().getRightSquareBracketKeyword_3_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RelationInstance__Group_3_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationInstance__Group_3_1__0__Impl
	rule__RelationInstance__Group_3_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_3_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationInstanceAccess().getFromKeyword_3_1_0()); }
	'from'
	{ after(grammarAccess.getRelationInstanceAccess().getFromKeyword_3_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_3_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationInstance__Group_3_1__1__Impl
	rule__RelationInstance__Group_3_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_3_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationInstanceAccess().getSourcesAssignment_3_1_1()); }
	(rule__RelationInstance__SourcesAssignment_3_1_1)
	{ after(grammarAccess.getRelationInstanceAccess().getSourcesAssignment_3_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_3_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationInstance__Group_3_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_3_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationInstanceAccess().getGroup_3_1_2()); }
	(rule__RelationInstance__Group_3_1_2__0)*
	{ after(grammarAccess.getRelationInstanceAccess().getGroup_3_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RelationInstance__Group_3_1_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationInstance__Group_3_1_2__0__Impl
	rule__RelationInstance__Group_3_1_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_3_1_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationInstanceAccess().getCommaKeyword_3_1_2_0()); }
	','
	{ after(grammarAccess.getRelationInstanceAccess().getCommaKeyword_3_1_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_3_1_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationInstance__Group_3_1_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_3_1_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationInstanceAccess().getSourcesAssignment_3_1_2_1()); }
	(rule__RelationInstance__SourcesAssignment_3_1_2_1)
	{ after(grammarAccess.getRelationInstanceAccess().getSourcesAssignment_3_1_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RelationInstance__Group_3_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationInstance__Group_3_2__0__Impl
	rule__RelationInstance__Group_3_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_3_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationInstanceAccess().getToKeyword_3_2_0()); }
	'to'
	{ after(grammarAccess.getRelationInstanceAccess().getToKeyword_3_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_3_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationInstance__Group_3_2__1__Impl
	rule__RelationInstance__Group_3_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_3_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationInstanceAccess().getTargetsAssignment_3_2_1()); }
	(rule__RelationInstance__TargetsAssignment_3_2_1)
	{ after(grammarAccess.getRelationInstanceAccess().getTargetsAssignment_3_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_3_2__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationInstance__Group_3_2__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_3_2__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationInstanceAccess().getGroup_3_2_2()); }
	(rule__RelationInstance__Group_3_2_2__0)*
	{ after(grammarAccess.getRelationInstanceAccess().getGroup_3_2_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RelationInstance__Group_3_2_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationInstance__Group_3_2_2__0__Impl
	rule__RelationInstance__Group_3_2_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_3_2_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationInstanceAccess().getCommaKeyword_3_2_2_0()); }
	','
	{ after(grammarAccess.getRelationInstanceAccess().getCommaKeyword_3_2_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_3_2_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationInstance__Group_3_2_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__Group_3_2_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationInstanceAccess().getTargetsAssignment_3_2_2_1()); }
	(rule__RelationInstance__TargetsAssignment_3_2_2_1)
	{ after(grammarAccess.getRelationInstanceAccess().getTargetsAssignment_3_2_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Extension__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Extension__Group__0__Impl
	rule__Extension__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Extension__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getExtensionAccess().getKindAssignment_0()); }
	(rule__Extension__KindAssignment_0)
	{ after(grammarAccess.getExtensionAccess().getKindAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Extension__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Extension__Group__1__Impl
	rule__Extension__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Extension__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getExtensionAccess().getNamespaceAssignment_1()); }
	(rule__Extension__NamespaceAssignment_1)
	{ after(grammarAccess.getExtensionAccess().getNamespaceAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Extension__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Extension__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Extension__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getExtensionAccess().getGroup_2()); }
	(rule__Extension__Group_2__0)?
	{ after(grammarAccess.getExtensionAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Extension__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Extension__Group_2__0__Impl
	rule__Extension__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Extension__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getExtensionAccess().getAsKeyword_2_0()); }
	'as'
	{ after(grammarAccess.getExtensionAccess().getAsKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Extension__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Extension__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Extension__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getExtensionAccess().getPrefixAssignment_2_1()); }
	(rule__Extension__PrefixAssignment_2_1)
	{ after(grammarAccess.getExtensionAccess().getPrefixAssignment_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Usage__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Usage__Group__0__Impl
	rule__Usage__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Usage__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUsageAccess().getKindAssignment_0()); }
	(rule__Usage__KindAssignment_0)
	{ after(grammarAccess.getUsageAccess().getKindAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Usage__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Usage__Group__1__Impl
	rule__Usage__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Usage__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUsageAccess().getNamespaceAssignment_1()); }
	(rule__Usage__NamespaceAssignment_1)
	{ after(grammarAccess.getUsageAccess().getNamespaceAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Usage__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Usage__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Usage__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUsageAccess().getGroup_2()); }
	(rule__Usage__Group_2__0)?
	{ after(grammarAccess.getUsageAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Usage__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Usage__Group_2__0__Impl
	rule__Usage__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Usage__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUsageAccess().getAsKeyword_2_0()); }
	'as'
	{ after(grammarAccess.getUsageAccess().getAsKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Usage__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Usage__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Usage__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUsageAccess().getPrefixAssignment_2_1()); }
	(rule__Usage__PrefixAssignment_2_1)
	{ after(grammarAccess.getUsageAccess().getPrefixAssignment_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Inclusion__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Inclusion__Group__0__Impl
	rule__Inclusion__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Inclusion__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInclusionAccess().getKindAssignment_0()); }
	(rule__Inclusion__KindAssignment_0)
	{ after(grammarAccess.getInclusionAccess().getKindAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Inclusion__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Inclusion__Group__1__Impl
	rule__Inclusion__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Inclusion__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInclusionAccess().getNamespaceAssignment_1()); }
	(rule__Inclusion__NamespaceAssignment_1)
	{ after(grammarAccess.getInclusionAccess().getNamespaceAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Inclusion__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Inclusion__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Inclusion__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInclusionAccess().getGroup_2()); }
	(rule__Inclusion__Group_2__0)?
	{ after(grammarAccess.getInclusionAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Inclusion__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Inclusion__Group_2__0__Impl
	rule__Inclusion__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Inclusion__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInclusionAccess().getAsKeyword_2_0()); }
	'as'
	{ after(grammarAccess.getInclusionAccess().getAsKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Inclusion__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Inclusion__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Inclusion__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInclusionAccess().getPrefixAssignment_2_1()); }
	(rule__Inclusion__PrefixAssignment_2_1)
	{ after(grammarAccess.getInclusionAccess().getPrefixAssignment_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__PropertyRangeRestrictionAxiom__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyRangeRestrictionAxiom__Group__0__Impl
	rule__PropertyRangeRestrictionAxiom__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyRangeRestrictionAxiom__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyRangeRestrictionAxiomAccess().getRestrictsKeyword_0()); }
	'restricts'
	{ after(grammarAccess.getPropertyRangeRestrictionAxiomAccess().getRestrictsKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyRangeRestrictionAxiom__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyRangeRestrictionAxiom__Group__1__Impl
	rule__PropertyRangeRestrictionAxiom__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyRangeRestrictionAxiom__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyRangeRestrictionAxiomAccess().getKindAssignment_1()); }
	(rule__PropertyRangeRestrictionAxiom__KindAssignment_1)
	{ after(grammarAccess.getPropertyRangeRestrictionAxiomAccess().getKindAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyRangeRestrictionAxiom__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyRangeRestrictionAxiom__Group__2__Impl
	rule__PropertyRangeRestrictionAxiom__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyRangeRestrictionAxiom__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyRangeRestrictionAxiomAccess().getPropertyAssignment_2()); }
	(rule__PropertyRangeRestrictionAxiom__PropertyAssignment_2)
	{ after(grammarAccess.getPropertyRangeRestrictionAxiomAccess().getPropertyAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyRangeRestrictionAxiom__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyRangeRestrictionAxiom__Group__3__Impl
	rule__PropertyRangeRestrictionAxiom__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyRangeRestrictionAxiom__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyRangeRestrictionAxiomAccess().getToKeyword_3()); }
	'to'
	{ after(grammarAccess.getPropertyRangeRestrictionAxiomAccess().getToKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyRangeRestrictionAxiom__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyRangeRestrictionAxiom__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyRangeRestrictionAxiom__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyRangeRestrictionAxiomAccess().getRangeAssignment_4()); }
	(rule__PropertyRangeRestrictionAxiom__RangeAssignment_4)
	{ after(grammarAccess.getPropertyRangeRestrictionAxiomAccess().getRangeAssignment_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__PropertyCardinalityRestrictionAxiom__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyCardinalityRestrictionAxiom__Group__0__Impl
	rule__PropertyCardinalityRestrictionAxiom__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyCardinalityRestrictionAxiom__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyCardinalityRestrictionAxiomAccess().getRestrictsKeyword_0()); }
	'restricts'
	{ after(grammarAccess.getPropertyCardinalityRestrictionAxiomAccess().getRestrictsKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyCardinalityRestrictionAxiom__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyCardinalityRestrictionAxiom__Group__1__Impl
	rule__PropertyCardinalityRestrictionAxiom__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyCardinalityRestrictionAxiom__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyCardinalityRestrictionAxiomAccess().getPropertyAssignment_1()); }
	(rule__PropertyCardinalityRestrictionAxiom__PropertyAssignment_1)
	{ after(grammarAccess.getPropertyCardinalityRestrictionAxiomAccess().getPropertyAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyCardinalityRestrictionAxiom__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyCardinalityRestrictionAxiom__Group__2__Impl
	rule__PropertyCardinalityRestrictionAxiom__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyCardinalityRestrictionAxiom__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyCardinalityRestrictionAxiomAccess().getToKeyword_2()); }
	'to'
	{ after(grammarAccess.getPropertyCardinalityRestrictionAxiomAccess().getToKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyCardinalityRestrictionAxiom__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyCardinalityRestrictionAxiom__Group__3__Impl
	rule__PropertyCardinalityRestrictionAxiom__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyCardinalityRestrictionAxiom__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyCardinalityRestrictionAxiomAccess().getKindAssignment_3()); }
	(rule__PropertyCardinalityRestrictionAxiom__KindAssignment_3)
	{ after(grammarAccess.getPropertyCardinalityRestrictionAxiomAccess().getKindAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyCardinalityRestrictionAxiom__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyCardinalityRestrictionAxiom__Group__4__Impl
	rule__PropertyCardinalityRestrictionAxiom__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyCardinalityRestrictionAxiom__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyCardinalityRestrictionAxiomAccess().getCardinalityAssignment_4()); }
	(rule__PropertyCardinalityRestrictionAxiom__CardinalityAssignment_4)
	{ after(grammarAccess.getPropertyCardinalityRestrictionAxiomAccess().getCardinalityAssignment_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyCardinalityRestrictionAxiom__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyCardinalityRestrictionAxiom__Group__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyCardinalityRestrictionAxiom__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyCardinalityRestrictionAxiomAccess().getRangeAssignment_5()); }
	(rule__PropertyCardinalityRestrictionAxiom__RangeAssignment_5)?
	{ after(grammarAccess.getPropertyCardinalityRestrictionAxiomAccess().getRangeAssignment_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__PropertyValueRestrictionAxiom__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyValueRestrictionAxiom__Group__0__Impl
	rule__PropertyValueRestrictionAxiom__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyValueRestrictionAxiom__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyValueRestrictionAxiomAccess().getRestrictsKeyword_0()); }
	'restricts'
	{ after(grammarAccess.getPropertyValueRestrictionAxiomAccess().getRestrictsKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyValueRestrictionAxiom__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyValueRestrictionAxiom__Group__1__Impl
	rule__PropertyValueRestrictionAxiom__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyValueRestrictionAxiom__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyValueRestrictionAxiomAccess().getPropertyAssignment_1()); }
	(rule__PropertyValueRestrictionAxiom__PropertyAssignment_1)
	{ after(grammarAccess.getPropertyValueRestrictionAxiomAccess().getPropertyAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyValueRestrictionAxiom__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyValueRestrictionAxiom__Group__2__Impl
	rule__PropertyValueRestrictionAxiom__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyValueRestrictionAxiom__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyValueRestrictionAxiomAccess().getToKeyword_2()); }
	'to'
	{ after(grammarAccess.getPropertyValueRestrictionAxiomAccess().getToKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyValueRestrictionAxiom__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyValueRestrictionAxiom__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyValueRestrictionAxiom__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyValueRestrictionAxiomAccess().getAlternatives_3()); }
	(rule__PropertyValueRestrictionAxiom__Alternatives_3)
	{ after(grammarAccess.getPropertyValueRestrictionAxiomAccess().getAlternatives_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__PropertySelfRestrictionAxiom__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertySelfRestrictionAxiom__Group__0__Impl
	rule__PropertySelfRestrictionAxiom__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertySelfRestrictionAxiom__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertySelfRestrictionAxiomAccess().getRestrictsKeyword_0()); }
	'restricts'
	{ after(grammarAccess.getPropertySelfRestrictionAxiomAccess().getRestrictsKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertySelfRestrictionAxiom__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertySelfRestrictionAxiom__Group__1__Impl
	rule__PropertySelfRestrictionAxiom__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertySelfRestrictionAxiom__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertySelfRestrictionAxiomAccess().getPropertyAssignment_1()); }
	(rule__PropertySelfRestrictionAxiom__PropertyAssignment_1)
	{ after(grammarAccess.getPropertySelfRestrictionAxiomAccess().getPropertyAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertySelfRestrictionAxiom__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertySelfRestrictionAxiom__Group__2__Impl
	rule__PropertySelfRestrictionAxiom__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertySelfRestrictionAxiom__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertySelfRestrictionAxiomAccess().getToKeyword_2()); }
	'to'
	{ after(grammarAccess.getPropertySelfRestrictionAxiomAccess().getToKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertySelfRestrictionAxiom__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertySelfRestrictionAxiom__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertySelfRestrictionAxiom__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertySelfRestrictionAxiomAccess().getSelfKeyword_3()); }
	'self'
	{ after(grammarAccess.getPropertySelfRestrictionAxiomAccess().getSelfKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__KeyAxiom__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__KeyAxiom__Group__0__Impl
	rule__KeyAxiom__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__KeyAxiom__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getKeyAxiomAccess().getKeyKeyword_0()); }
	'key'
	{ after(grammarAccess.getKeyAxiomAccess().getKeyKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__KeyAxiom__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__KeyAxiom__Group__1__Impl
	rule__KeyAxiom__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__KeyAxiom__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getKeyAxiomAccess().getPropertiesAssignment_1()); }
	(rule__KeyAxiom__PropertiesAssignment_1)
	{ after(grammarAccess.getKeyAxiomAccess().getPropertiesAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__KeyAxiom__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__KeyAxiom__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__KeyAxiom__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getKeyAxiomAccess().getGroup_2()); }
	(rule__KeyAxiom__Group_2__0)*
	{ after(grammarAccess.getKeyAxiomAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__KeyAxiom__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__KeyAxiom__Group_2__0__Impl
	rule__KeyAxiom__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__KeyAxiom__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getKeyAxiomAccess().getCommaKeyword_2_0()); }
	','
	{ after(grammarAccess.getKeyAxiomAccess().getCommaKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__KeyAxiom__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__KeyAxiom__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__KeyAxiom__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getKeyAxiomAccess().getPropertiesAssignment_2_1()); }
	(rule__KeyAxiom__PropertiesAssignment_2_1)
	{ after(grammarAccess.getKeyAxiomAccess().getPropertiesAssignment_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__InstanceEnumerationAxiom__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__InstanceEnumerationAxiom__Group__0__Impl
	rule__InstanceEnumerationAxiom__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__InstanceEnumerationAxiom__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInstanceEnumerationAxiomAccess().getOneOfKeyword_0()); }
	'oneOf'
	{ after(grammarAccess.getInstanceEnumerationAxiomAccess().getOneOfKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__InstanceEnumerationAxiom__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__InstanceEnumerationAxiom__Group__1__Impl
	rule__InstanceEnumerationAxiom__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__InstanceEnumerationAxiom__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInstanceEnumerationAxiomAccess().getInstancesAssignment_1()); }
	(rule__InstanceEnumerationAxiom__InstancesAssignment_1)
	{ after(grammarAccess.getInstanceEnumerationAxiomAccess().getInstancesAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__InstanceEnumerationAxiom__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__InstanceEnumerationAxiom__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__InstanceEnumerationAxiom__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInstanceEnumerationAxiomAccess().getGroup_2()); }
	(rule__InstanceEnumerationAxiom__Group_2__0)*
	{ after(grammarAccess.getInstanceEnumerationAxiomAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__InstanceEnumerationAxiom__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__InstanceEnumerationAxiom__Group_2__0__Impl
	rule__InstanceEnumerationAxiom__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__InstanceEnumerationAxiom__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInstanceEnumerationAxiomAccess().getCommaKeyword_2_0()); }
	','
	{ after(grammarAccess.getInstanceEnumerationAxiomAccess().getCommaKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__InstanceEnumerationAxiom__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__InstanceEnumerationAxiom__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__InstanceEnumerationAxiom__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInstanceEnumerationAxiomAccess().getInstancesAssignment_2_1()); }
	(rule__InstanceEnumerationAxiom__InstancesAssignment_2_1)
	{ after(grammarAccess.getInstanceEnumerationAxiomAccess().getInstancesAssignment_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__LiteralEnumerationAxiom__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LiteralEnumerationAxiom__Group__0__Impl
	rule__LiteralEnumerationAxiom__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__LiteralEnumerationAxiom__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLiteralEnumerationAxiomAccess().getOneOfKeyword_0()); }
	'oneOf'
	{ after(grammarAccess.getLiteralEnumerationAxiomAccess().getOneOfKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__LiteralEnumerationAxiom__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LiteralEnumerationAxiom__Group__1__Impl
	rule__LiteralEnumerationAxiom__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__LiteralEnumerationAxiom__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLiteralEnumerationAxiomAccess().getLiteralsAssignment_1()); }
	(rule__LiteralEnumerationAxiom__LiteralsAssignment_1)
	{ after(grammarAccess.getLiteralEnumerationAxiomAccess().getLiteralsAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__LiteralEnumerationAxiom__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LiteralEnumerationAxiom__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__LiteralEnumerationAxiom__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLiteralEnumerationAxiomAccess().getGroup_2()); }
	(rule__LiteralEnumerationAxiom__Group_2__0)*
	{ after(grammarAccess.getLiteralEnumerationAxiomAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__LiteralEnumerationAxiom__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LiteralEnumerationAxiom__Group_2__0__Impl
	rule__LiteralEnumerationAxiom__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__LiteralEnumerationAxiom__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLiteralEnumerationAxiomAccess().getCommaKeyword_2_0()); }
	','
	{ after(grammarAccess.getLiteralEnumerationAxiomAccess().getCommaKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__LiteralEnumerationAxiom__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LiteralEnumerationAxiom__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__LiteralEnumerationAxiom__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLiteralEnumerationAxiomAccess().getLiteralsAssignment_2_1()); }
	(rule__LiteralEnumerationAxiom__LiteralsAssignment_2_1)
	{ after(grammarAccess.getLiteralEnumerationAxiomAccess().getLiteralsAssignment_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__PropertyValueAssertion__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyValueAssertion__Group__0__Impl
	rule__PropertyValueAssertion__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyValueAssertion__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyValueAssertionAccess().getPropertyAssignment_0()); }
	(rule__PropertyValueAssertion__PropertyAssignment_0)
	{ after(grammarAccess.getPropertyValueAssertionAccess().getPropertyAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyValueAssertion__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyValueAssertion__Group__1__Impl
	rule__PropertyValueAssertion__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyValueAssertion__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyValueAssertionAccess().getPropertyValueParserRuleCall_1()); }
	rulePropertyValue
	{ after(grammarAccess.getPropertyValueAssertionAccess().getPropertyValueParserRuleCall_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyValueAssertion__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyValueAssertion__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyValueAssertion__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyValueAssertionAccess().getGroup_2()); }
	(rule__PropertyValueAssertion__Group_2__0)*
	{ after(grammarAccess.getPropertyValueAssertionAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__PropertyValueAssertion__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyValueAssertion__Group_2__0__Impl
	rule__PropertyValueAssertion__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyValueAssertion__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyValueAssertionAccess().getCommaKeyword_2_0()); }
	','
	{ after(grammarAccess.getPropertyValueAssertionAccess().getCommaKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyValueAssertion__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyValueAssertion__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyValueAssertion__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyValueAssertionAccess().getPropertyValueParserRuleCall_2_1()); }
	rulePropertyValue
	{ after(grammarAccess.getPropertyValueAssertionAccess().getPropertyValueParserRuleCall_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__TypePredicate__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TypePredicate__Group__0__Impl
	rule__TypePredicate__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TypePredicate__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTypePredicateAccess().getTypeAssignment_0()); }
	(rule__TypePredicate__TypeAssignment_0)
	{ after(grammarAccess.getTypePredicateAccess().getTypeAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TypePredicate__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TypePredicate__Group__1__Impl
	rule__TypePredicate__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__TypePredicate__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTypePredicateAccess().getLeftParenthesisKeyword_1()); }
	'('
	{ after(grammarAccess.getTypePredicateAccess().getLeftParenthesisKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TypePredicate__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TypePredicate__Group__2__Impl
	rule__TypePredicate__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__TypePredicate__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTypePredicateAccess().getArgumentAssignment_2()); }
	(rule__TypePredicate__ArgumentAssignment_2)
	{ after(grammarAccess.getTypePredicateAccess().getArgumentAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TypePredicate__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TypePredicate__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TypePredicate__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTypePredicateAccess().getRightParenthesisKeyword_3()); }
	')'
	{ after(grammarAccess.getTypePredicateAccess().getRightParenthesisKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RelationEntityPredicate__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntityPredicate__Group__0__Impl
	rule__RelationEntityPredicate__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntityPredicate__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityPredicateAccess().getTypeAssignment_0()); }
	(rule__RelationEntityPredicate__TypeAssignment_0)
	{ after(grammarAccess.getRelationEntityPredicateAccess().getTypeAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntityPredicate__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntityPredicate__Group__1__Impl
	rule__RelationEntityPredicate__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntityPredicate__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityPredicateAccess().getLeftParenthesisKeyword_1()); }
	'('
	{ after(grammarAccess.getRelationEntityPredicateAccess().getLeftParenthesisKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntityPredicate__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntityPredicate__Group__2__Impl
	rule__RelationEntityPredicate__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntityPredicate__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityPredicateAccess().getArgument1Assignment_2()); }
	(rule__RelationEntityPredicate__Argument1Assignment_2)
	{ after(grammarAccess.getRelationEntityPredicateAccess().getArgument1Assignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntityPredicate__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntityPredicate__Group__3__Impl
	rule__RelationEntityPredicate__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntityPredicate__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityPredicateAccess().getCommaKeyword_3()); }
	','
	{ after(grammarAccess.getRelationEntityPredicateAccess().getCommaKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntityPredicate__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntityPredicate__Group__4__Impl
	rule__RelationEntityPredicate__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntityPredicate__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityPredicateAccess().getArgumentAssignment_4()); }
	(rule__RelationEntityPredicate__ArgumentAssignment_4)
	{ after(grammarAccess.getRelationEntityPredicateAccess().getArgumentAssignment_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntityPredicate__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntityPredicate__Group__5__Impl
	rule__RelationEntityPredicate__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntityPredicate__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityPredicateAccess().getCommaKeyword_5()); }
	','
	{ after(grammarAccess.getRelationEntityPredicateAccess().getCommaKeyword_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntityPredicate__Group__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntityPredicate__Group__6__Impl
	rule__RelationEntityPredicate__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntityPredicate__Group__6__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityPredicateAccess().getArgument2Assignment_6()); }
	(rule__RelationEntityPredicate__Argument2Assignment_6)
	{ after(grammarAccess.getRelationEntityPredicateAccess().getArgument2Assignment_6()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntityPredicate__Group__7
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntityPredicate__Group__7__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntityPredicate__Group__7__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationEntityPredicateAccess().getRightParenthesisKeyword_7()); }
	')'
	{ after(grammarAccess.getRelationEntityPredicateAccess().getRightParenthesisKeyword_7()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__PropertyPredicate__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyPredicate__Group__0__Impl
	rule__PropertyPredicate__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyPredicate__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyPredicateAccess().getPropertyAssignment_0()); }
	(rule__PropertyPredicate__PropertyAssignment_0)
	{ after(grammarAccess.getPropertyPredicateAccess().getPropertyAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyPredicate__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyPredicate__Group__1__Impl
	rule__PropertyPredicate__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyPredicate__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyPredicateAccess().getLeftParenthesisKeyword_1()); }
	'('
	{ after(grammarAccess.getPropertyPredicateAccess().getLeftParenthesisKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyPredicate__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyPredicate__Group__2__Impl
	rule__PropertyPredicate__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyPredicate__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyPredicateAccess().getArgument1Assignment_2()); }
	(rule__PropertyPredicate__Argument1Assignment_2)
	{ after(grammarAccess.getPropertyPredicateAccess().getArgument1Assignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyPredicate__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyPredicate__Group__3__Impl
	rule__PropertyPredicate__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyPredicate__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyPredicateAccess().getCommaKeyword_3()); }
	','
	{ after(grammarAccess.getPropertyPredicateAccess().getCommaKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyPredicate__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyPredicate__Group__4__Impl
	rule__PropertyPredicate__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyPredicate__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyPredicateAccess().getArgument2Assignment_4()); }
	(rule__PropertyPredicate__Argument2Assignment_4)
	{ after(grammarAccess.getPropertyPredicateAccess().getArgument2Assignment_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyPredicate__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyPredicate__Group__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyPredicate__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyPredicateAccess().getRightParenthesisKeyword_5()); }
	')'
	{ after(grammarAccess.getPropertyPredicateAccess().getRightParenthesisKeyword_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__SameAsPredicate__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SameAsPredicate__Group__0__Impl
	rule__SameAsPredicate__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SameAsPredicate__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSameAsPredicateAccess().getSameAsKeyword_0()); }
	'sameAs'
	{ after(grammarAccess.getSameAsPredicateAccess().getSameAsKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SameAsPredicate__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SameAsPredicate__Group__1__Impl
	rule__SameAsPredicate__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__SameAsPredicate__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSameAsPredicateAccess().getLeftParenthesisKeyword_1()); }
	'('
	{ after(grammarAccess.getSameAsPredicateAccess().getLeftParenthesisKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SameAsPredicate__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SameAsPredicate__Group__2__Impl
	rule__SameAsPredicate__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__SameAsPredicate__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSameAsPredicateAccess().getArgument1Assignment_2()); }
	(rule__SameAsPredicate__Argument1Assignment_2)
	{ after(grammarAccess.getSameAsPredicateAccess().getArgument1Assignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SameAsPredicate__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SameAsPredicate__Group__3__Impl
	rule__SameAsPredicate__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__SameAsPredicate__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSameAsPredicateAccess().getCommaKeyword_3()); }
	','
	{ after(grammarAccess.getSameAsPredicateAccess().getCommaKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SameAsPredicate__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SameAsPredicate__Group__4__Impl
	rule__SameAsPredicate__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__SameAsPredicate__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSameAsPredicateAccess().getArgument2Assignment_4()); }
	(rule__SameAsPredicate__Argument2Assignment_4)
	{ after(grammarAccess.getSameAsPredicateAccess().getArgument2Assignment_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SameAsPredicate__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SameAsPredicate__Group__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SameAsPredicate__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSameAsPredicateAccess().getRightParenthesisKeyword_5()); }
	')'
	{ after(grammarAccess.getSameAsPredicateAccess().getRightParenthesisKeyword_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__DifferentFromPredicate__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DifferentFromPredicate__Group__0__Impl
	rule__DifferentFromPredicate__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DifferentFromPredicate__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDifferentFromPredicateAccess().getDifferentFromKeyword_0()); }
	'differentFrom'
	{ after(grammarAccess.getDifferentFromPredicateAccess().getDifferentFromKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__DifferentFromPredicate__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DifferentFromPredicate__Group__1__Impl
	rule__DifferentFromPredicate__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__DifferentFromPredicate__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDifferentFromPredicateAccess().getLeftParenthesisKeyword_1()); }
	'('
	{ after(grammarAccess.getDifferentFromPredicateAccess().getLeftParenthesisKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__DifferentFromPredicate__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DifferentFromPredicate__Group__2__Impl
	rule__DifferentFromPredicate__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__DifferentFromPredicate__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDifferentFromPredicateAccess().getArgument1Assignment_2()); }
	(rule__DifferentFromPredicate__Argument1Assignment_2)
	{ after(grammarAccess.getDifferentFromPredicateAccess().getArgument1Assignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__DifferentFromPredicate__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DifferentFromPredicate__Group__3__Impl
	rule__DifferentFromPredicate__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__DifferentFromPredicate__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDifferentFromPredicateAccess().getCommaKeyword_3()); }
	','
	{ after(grammarAccess.getDifferentFromPredicateAccess().getCommaKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__DifferentFromPredicate__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DifferentFromPredicate__Group__4__Impl
	rule__DifferentFromPredicate__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__DifferentFromPredicate__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDifferentFromPredicateAccess().getArgument2Assignment_4()); }
	(rule__DifferentFromPredicate__Argument2Assignment_4)
	{ after(grammarAccess.getDifferentFromPredicateAccess().getArgument2Assignment_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__DifferentFromPredicate__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DifferentFromPredicate__Group__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DifferentFromPredicate__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDifferentFromPredicateAccess().getRightParenthesisKeyword_5()); }
	')'
	{ after(grammarAccess.getDifferentFromPredicateAccess().getRightParenthesisKeyword_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__BuiltInPredicate__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__BuiltInPredicate__Group__0__Impl
	rule__BuiltInPredicate__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__BuiltInPredicate__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBuiltInPredicateAccess().getBuiltInKeyword_0()); }
	'builtIn'
	{ after(grammarAccess.getBuiltInPredicateAccess().getBuiltInKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__BuiltInPredicate__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__BuiltInPredicate__Group__1__Impl
	rule__BuiltInPredicate__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__BuiltInPredicate__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBuiltInPredicateAccess().getLeftParenthesisKeyword_1()); }
	'('
	{ after(grammarAccess.getBuiltInPredicateAccess().getLeftParenthesisKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__BuiltInPredicate__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__BuiltInPredicate__Group__2__Impl
	rule__BuiltInPredicate__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__BuiltInPredicate__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBuiltInPredicateAccess().getBuiltInAssignment_2()); }
	(rule__BuiltInPredicate__BuiltInAssignment_2)
	{ after(grammarAccess.getBuiltInPredicateAccess().getBuiltInAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__BuiltInPredicate__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__BuiltInPredicate__Group__3__Impl
	rule__BuiltInPredicate__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__BuiltInPredicate__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBuiltInPredicateAccess().getCommaKeyword_3()); }
	','
	{ after(grammarAccess.getBuiltInPredicateAccess().getCommaKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__BuiltInPredicate__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__BuiltInPredicate__Group__4__Impl
	rule__BuiltInPredicate__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__BuiltInPredicate__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBuiltInPredicateAccess().getArgumentsAssignment_4()); }
	(rule__BuiltInPredicate__ArgumentsAssignment_4)
	{ after(grammarAccess.getBuiltInPredicateAccess().getArgumentsAssignment_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__BuiltInPredicate__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__BuiltInPredicate__Group__5__Impl
	rule__BuiltInPredicate__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__BuiltInPredicate__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBuiltInPredicateAccess().getGroup_5()); }
	(rule__BuiltInPredicate__Group_5__0)*
	{ after(grammarAccess.getBuiltInPredicateAccess().getGroup_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__BuiltInPredicate__Group__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__BuiltInPredicate__Group__6__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__BuiltInPredicate__Group__6__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBuiltInPredicateAccess().getRightParenthesisKeyword_6()); }
	')'
	{ after(grammarAccess.getBuiltInPredicateAccess().getRightParenthesisKeyword_6()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__BuiltInPredicate__Group_5__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__BuiltInPredicate__Group_5__0__Impl
	rule__BuiltInPredicate__Group_5__1
;
finally {
	restoreStackSize(stackSize);
}

rule__BuiltInPredicate__Group_5__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBuiltInPredicateAccess().getCommaKeyword_5_0()); }
	','
	{ after(grammarAccess.getBuiltInPredicateAccess().getCommaKeyword_5_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__BuiltInPredicate__Group_5__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__BuiltInPredicate__Group_5__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__BuiltInPredicate__Group_5__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBuiltInPredicateAccess().getArgumentsAssignment_5_1()); }
	(rule__BuiltInPredicate__ArgumentsAssignment_5_1)
	{ after(grammarAccess.getBuiltInPredicateAccess().getArgumentsAssignment_5_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__QuotedLiteral__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__QuotedLiteral__Group__0__Impl
	rule__QuotedLiteral__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__QuotedLiteral__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getQuotedLiteralAccess().getValueAssignment_0()); }
	(rule__QuotedLiteral__ValueAssignment_0)
	{ after(grammarAccess.getQuotedLiteralAccess().getValueAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__QuotedLiteral__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__QuotedLiteral__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__QuotedLiteral__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getQuotedLiteralAccess().getAlternatives_1()); }
	(rule__QuotedLiteral__Alternatives_1)?
	{ after(grammarAccess.getQuotedLiteralAccess().getAlternatives_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__QuotedLiteral__Group_1_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__QuotedLiteral__Group_1_0__0__Impl
	rule__QuotedLiteral__Group_1_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__QuotedLiteral__Group_1_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getQuotedLiteralAccess().getCircumflexAccentCircumflexAccentKeyword_1_0_0()); }
	'^^'
	{ after(grammarAccess.getQuotedLiteralAccess().getCircumflexAccentCircumflexAccentKeyword_1_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__QuotedLiteral__Group_1_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__QuotedLiteral__Group_1_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__QuotedLiteral__Group_1_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getQuotedLiteralAccess().getTypeAssignment_1_0_1()); }
	(rule__QuotedLiteral__TypeAssignment_1_0_1)
	{ after(grammarAccess.getQuotedLiteralAccess().getTypeAssignment_1_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__QuotedLiteral__Group_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__QuotedLiteral__Group_1_1__0__Impl
	rule__QuotedLiteral__Group_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__QuotedLiteral__Group_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getQuotedLiteralAccess().getDollarSignKeyword_1_1_0()); }
	'$'
	{ after(grammarAccess.getQuotedLiteralAccess().getDollarSignKeyword_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__QuotedLiteral__Group_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__QuotedLiteral__Group_1_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__QuotedLiteral__Group_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getQuotedLiteralAccess().getLangTagAssignment_1_1_1()); }
	(rule__QuotedLiteral__LangTagAssignment_1_1_1)
	{ after(grammarAccess.getQuotedLiteralAccess().getLangTagAssignment_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RelationEntity__UnorderedGroup_2_5
	@init {
		int stackSize = keepStackSize();
		getUnorderedGroupHelper().enter(grammarAccess.getRelationEntityAccess().getUnorderedGroup_2_5());
	}
:
	rule__RelationEntity__UnorderedGroup_2_5__0
	?
;
finally {
	getUnorderedGroupHelper().leave(grammarAccess.getRelationEntityAccess().getUnorderedGroup_2_5());
	restoreStackSize(stackSize);
}

rule__RelationEntity__UnorderedGroup_2_5__Impl
	@init {
		int stackSize = keepStackSize();
		boolean selected = false;
	}
:
		(
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getRelationEntityAccess().getUnorderedGroup_2_5(), 0)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getRelationEntityAccess().getUnorderedGroup_2_5(), 0);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getRelationEntityAccess().getFunctionalAssignment_2_5_0()); }
					(rule__RelationEntity__FunctionalAssignment_2_5_0)
					{ after(grammarAccess.getRelationEntityAccess().getFunctionalAssignment_2_5_0()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getRelationEntityAccess().getUnorderedGroup_2_5(), 1)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getRelationEntityAccess().getUnorderedGroup_2_5(), 1);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getRelationEntityAccess().getGroup_2_5_1()); }
					(rule__RelationEntity__Group_2_5_1__0)
					{ after(grammarAccess.getRelationEntityAccess().getGroup_2_5_1()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getRelationEntityAccess().getUnorderedGroup_2_5(), 2)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getRelationEntityAccess().getUnorderedGroup_2_5(), 2);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getRelationEntityAccess().getSymmetricAssignment_2_5_2()); }
					(rule__RelationEntity__SymmetricAssignment_2_5_2)
					{ after(grammarAccess.getRelationEntityAccess().getSymmetricAssignment_2_5_2()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getRelationEntityAccess().getUnorderedGroup_2_5(), 3)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getRelationEntityAccess().getUnorderedGroup_2_5(), 3);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getRelationEntityAccess().getAsymmetricAssignment_2_5_3()); }
					(rule__RelationEntity__AsymmetricAssignment_2_5_3)
					{ after(grammarAccess.getRelationEntityAccess().getAsymmetricAssignment_2_5_3()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getRelationEntityAccess().getUnorderedGroup_2_5(), 4)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getRelationEntityAccess().getUnorderedGroup_2_5(), 4);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getRelationEntityAccess().getReflexiveAssignment_2_5_4()); }
					(rule__RelationEntity__ReflexiveAssignment_2_5_4)
					{ after(grammarAccess.getRelationEntityAccess().getReflexiveAssignment_2_5_4()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getRelationEntityAccess().getUnorderedGroup_2_5(), 5)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getRelationEntityAccess().getUnorderedGroup_2_5(), 5);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getRelationEntityAccess().getIrreflexiveAssignment_2_5_5()); }
					(rule__RelationEntity__IrreflexiveAssignment_2_5_5)
					{ after(grammarAccess.getRelationEntityAccess().getIrreflexiveAssignment_2_5_5()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getRelationEntityAccess().getUnorderedGroup_2_5(), 6)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getRelationEntityAccess().getUnorderedGroup_2_5(), 6);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getRelationEntityAccess().getTransitiveAssignment_2_5_6()); }
					(rule__RelationEntity__TransitiveAssignment_2_5_6)
					{ after(grammarAccess.getRelationEntityAccess().getTransitiveAssignment_2_5_6()); }
				)
			)
		)
		)
;
finally {
	if (selected)
		getUnorderedGroupHelper().returnFromSelection(grammarAccess.getRelationEntityAccess().getUnorderedGroup_2_5());
	restoreStackSize(stackSize);
}

rule__RelationEntity__UnorderedGroup_2_5__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__UnorderedGroup_2_5__Impl
	rule__RelationEntity__UnorderedGroup_2_5__1?
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__UnorderedGroup_2_5__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__UnorderedGroup_2_5__Impl
	rule__RelationEntity__UnorderedGroup_2_5__2?
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__UnorderedGroup_2_5__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__UnorderedGroup_2_5__Impl
	rule__RelationEntity__UnorderedGroup_2_5__3?
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__UnorderedGroup_2_5__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__UnorderedGroup_2_5__Impl
	rule__RelationEntity__UnorderedGroup_2_5__4?
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__UnorderedGroup_2_5__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__UnorderedGroup_2_5__Impl
	rule__RelationEntity__UnorderedGroup_2_5__5?
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__UnorderedGroup_2_5__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__UnorderedGroup_2_5__Impl
	rule__RelationEntity__UnorderedGroup_2_5__6?
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__UnorderedGroup_2_5__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationEntity__UnorderedGroup_2_5__Impl
;
finally {
	restoreStackSize(stackSize);
}


rule__ScalarEquivalenceAxiom__UnorderedGroup_1_1
	@init {
		int stackSize = keepStackSize();
		getUnorderedGroupHelper().enter(grammarAccess.getScalarEquivalenceAxiomAccess().getUnorderedGroup_1_1());
	}
:
	rule__ScalarEquivalenceAxiom__UnorderedGroup_1_1__0
	?
;
finally {
	getUnorderedGroupHelper().leave(grammarAccess.getScalarEquivalenceAxiomAccess().getUnorderedGroup_1_1());
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__UnorderedGroup_1_1__Impl
	@init {
		int stackSize = keepStackSize();
		boolean selected = false;
	}
:
		(
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getScalarEquivalenceAxiomAccess().getUnorderedGroup_1_1(), 0)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getScalarEquivalenceAxiomAccess().getUnorderedGroup_1_1(), 0);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getGroup_1_1_0()); }
					(rule__ScalarEquivalenceAxiom__Group_1_1_0__0)
					{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getGroup_1_1_0()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getScalarEquivalenceAxiomAccess().getUnorderedGroup_1_1(), 1)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getScalarEquivalenceAxiomAccess().getUnorderedGroup_1_1(), 1);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getGroup_1_1_1()); }
					(rule__ScalarEquivalenceAxiom__Group_1_1_1__0)
					{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getGroup_1_1_1()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getScalarEquivalenceAxiomAccess().getUnorderedGroup_1_1(), 2)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getScalarEquivalenceAxiomAccess().getUnorderedGroup_1_1(), 2);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getGroup_1_1_2()); }
					(rule__ScalarEquivalenceAxiom__Group_1_1_2__0)
					{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getGroup_1_1_2()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getScalarEquivalenceAxiomAccess().getUnorderedGroup_1_1(), 3)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getScalarEquivalenceAxiomAccess().getUnorderedGroup_1_1(), 3);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getGroup_1_1_3()); }
					(rule__ScalarEquivalenceAxiom__Group_1_1_3__0)
					{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getGroup_1_1_3()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getScalarEquivalenceAxiomAccess().getUnorderedGroup_1_1(), 4)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getScalarEquivalenceAxiomAccess().getUnorderedGroup_1_1(), 4);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getGroup_1_1_4()); }
					(rule__ScalarEquivalenceAxiom__Group_1_1_4__0)
					{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getGroup_1_1_4()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getScalarEquivalenceAxiomAccess().getUnorderedGroup_1_1(), 5)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getScalarEquivalenceAxiomAccess().getUnorderedGroup_1_1(), 5);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getGroup_1_1_5()); }
					(rule__ScalarEquivalenceAxiom__Group_1_1_5__0)
					{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getGroup_1_1_5()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getScalarEquivalenceAxiomAccess().getUnorderedGroup_1_1(), 6)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getScalarEquivalenceAxiomAccess().getUnorderedGroup_1_1(), 6);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getGroup_1_1_6()); }
					(rule__ScalarEquivalenceAxiom__Group_1_1_6__0)
					{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getGroup_1_1_6()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getScalarEquivalenceAxiomAccess().getUnorderedGroup_1_1(), 7)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getScalarEquivalenceAxiomAccess().getUnorderedGroup_1_1(), 7);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getGroup_1_1_7()); }
					(rule__ScalarEquivalenceAxiom__Group_1_1_7__0)
					{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getGroup_1_1_7()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getScalarEquivalenceAxiomAccess().getUnorderedGroup_1_1(), 8)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getScalarEquivalenceAxiomAccess().getUnorderedGroup_1_1(), 8);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getGroup_1_1_8()); }
					(rule__ScalarEquivalenceAxiom__Group_1_1_8__0)
					{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getGroup_1_1_8()); }
				)
			)
		)
		)
;
finally {
	if (selected)
		getUnorderedGroupHelper().returnFromSelection(grammarAccess.getScalarEquivalenceAxiomAccess().getUnorderedGroup_1_1());
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__UnorderedGroup_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarEquivalenceAxiom__UnorderedGroup_1_1__Impl
	rule__ScalarEquivalenceAxiom__UnorderedGroup_1_1__1?
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__UnorderedGroup_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarEquivalenceAxiom__UnorderedGroup_1_1__Impl
	rule__ScalarEquivalenceAxiom__UnorderedGroup_1_1__2?
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__UnorderedGroup_1_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarEquivalenceAxiom__UnorderedGroup_1_1__Impl
	rule__ScalarEquivalenceAxiom__UnorderedGroup_1_1__3?
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__UnorderedGroup_1_1__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarEquivalenceAxiom__UnorderedGroup_1_1__Impl
	rule__ScalarEquivalenceAxiom__UnorderedGroup_1_1__4?
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__UnorderedGroup_1_1__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarEquivalenceAxiom__UnorderedGroup_1_1__Impl
	rule__ScalarEquivalenceAxiom__UnorderedGroup_1_1__5?
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__UnorderedGroup_1_1__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarEquivalenceAxiom__UnorderedGroup_1_1__Impl
	rule__ScalarEquivalenceAxiom__UnorderedGroup_1_1__6?
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__UnorderedGroup_1_1__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarEquivalenceAxiom__UnorderedGroup_1_1__Impl
	rule__ScalarEquivalenceAxiom__UnorderedGroup_1_1__7?
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__UnorderedGroup_1_1__7
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarEquivalenceAxiom__UnorderedGroup_1_1__Impl
	rule__ScalarEquivalenceAxiom__UnorderedGroup_1_1__8?
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__UnorderedGroup_1_1__8
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ScalarEquivalenceAxiom__UnorderedGroup_1_1__Impl
;
finally {
	restoreStackSize(stackSize);
}


rule__UnreifiedRelation__UnorderedGroup_2_4
	@init {
		int stackSize = keepStackSize();
		getUnorderedGroupHelper().enter(grammarAccess.getUnreifiedRelationAccess().getUnorderedGroup_2_4());
	}
:
	rule__UnreifiedRelation__UnorderedGroup_2_4__0
	?
;
finally {
	getUnorderedGroupHelper().leave(grammarAccess.getUnreifiedRelationAccess().getUnorderedGroup_2_4());
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__UnorderedGroup_2_4__Impl
	@init {
		int stackSize = keepStackSize();
		boolean selected = false;
	}
:
		(
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getUnreifiedRelationAccess().getUnorderedGroup_2_4(), 0)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getUnreifiedRelationAccess().getUnorderedGroup_2_4(), 0);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getUnreifiedRelationAccess().getFunctionalAssignment_2_4_0()); }
					(rule__UnreifiedRelation__FunctionalAssignment_2_4_0)
					{ after(grammarAccess.getUnreifiedRelationAccess().getFunctionalAssignment_2_4_0()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getUnreifiedRelationAccess().getUnorderedGroup_2_4(), 1)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getUnreifiedRelationAccess().getUnorderedGroup_2_4(), 1);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getUnreifiedRelationAccess().getGroup_2_4_1()); }
					(rule__UnreifiedRelation__Group_2_4_1__0)
					{ after(grammarAccess.getUnreifiedRelationAccess().getGroup_2_4_1()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getUnreifiedRelationAccess().getUnorderedGroup_2_4(), 2)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getUnreifiedRelationAccess().getUnorderedGroup_2_4(), 2);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getUnreifiedRelationAccess().getSymmetricAssignment_2_4_2()); }
					(rule__UnreifiedRelation__SymmetricAssignment_2_4_2)
					{ after(grammarAccess.getUnreifiedRelationAccess().getSymmetricAssignment_2_4_2()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getUnreifiedRelationAccess().getUnorderedGroup_2_4(), 3)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getUnreifiedRelationAccess().getUnorderedGroup_2_4(), 3);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getUnreifiedRelationAccess().getAsymmetricAssignment_2_4_3()); }
					(rule__UnreifiedRelation__AsymmetricAssignment_2_4_3)
					{ after(grammarAccess.getUnreifiedRelationAccess().getAsymmetricAssignment_2_4_3()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getUnreifiedRelationAccess().getUnorderedGroup_2_4(), 4)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getUnreifiedRelationAccess().getUnorderedGroup_2_4(), 4);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getUnreifiedRelationAccess().getReflexiveAssignment_2_4_4()); }
					(rule__UnreifiedRelation__ReflexiveAssignment_2_4_4)
					{ after(grammarAccess.getUnreifiedRelationAccess().getReflexiveAssignment_2_4_4()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getUnreifiedRelationAccess().getUnorderedGroup_2_4(), 5)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getUnreifiedRelationAccess().getUnorderedGroup_2_4(), 5);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getUnreifiedRelationAccess().getIrreflexiveAssignment_2_4_5()); }
					(rule__UnreifiedRelation__IrreflexiveAssignment_2_4_5)
					{ after(grammarAccess.getUnreifiedRelationAccess().getIrreflexiveAssignment_2_4_5()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getUnreifiedRelationAccess().getUnorderedGroup_2_4(), 6)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getUnreifiedRelationAccess().getUnorderedGroup_2_4(), 6);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getUnreifiedRelationAccess().getTransitiveAssignment_2_4_6()); }
					(rule__UnreifiedRelation__TransitiveAssignment_2_4_6)
					{ after(grammarAccess.getUnreifiedRelationAccess().getTransitiveAssignment_2_4_6()); }
				)
			)
		)
		)
;
finally {
	if (selected)
		getUnorderedGroupHelper().returnFromSelection(grammarAccess.getUnreifiedRelationAccess().getUnorderedGroup_2_4());
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__UnorderedGroup_2_4__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnreifiedRelation__UnorderedGroup_2_4__Impl
	rule__UnreifiedRelation__UnorderedGroup_2_4__1?
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__UnorderedGroup_2_4__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnreifiedRelation__UnorderedGroup_2_4__Impl
	rule__UnreifiedRelation__UnorderedGroup_2_4__2?
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__UnorderedGroup_2_4__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnreifiedRelation__UnorderedGroup_2_4__Impl
	rule__UnreifiedRelation__UnorderedGroup_2_4__3?
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__UnorderedGroup_2_4__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnreifiedRelation__UnorderedGroup_2_4__Impl
	rule__UnreifiedRelation__UnorderedGroup_2_4__4?
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__UnorderedGroup_2_4__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnreifiedRelation__UnorderedGroup_2_4__Impl
	rule__UnreifiedRelation__UnorderedGroup_2_4__5?
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__UnorderedGroup_2_4__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnreifiedRelation__UnorderedGroup_2_4__Impl
	rule__UnreifiedRelation__UnorderedGroup_2_4__6?
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__UnorderedGroup_2_4__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnreifiedRelation__UnorderedGroup_2_4__Impl
;
finally {
	restoreStackSize(stackSize);
}


rule__Annotation__PropertyAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAnnotationAccess().getPropertyAnnotationPropertyCrossReference_2_0()); }
		(
			{ before(grammarAccess.getAnnotationAccess().getPropertyAnnotationPropertyRefParserRuleCall_2_0_1()); }
			ruleRef
			{ after(grammarAccess.getAnnotationAccess().getPropertyAnnotationPropertyRefParserRuleCall_2_0_1()); }
		)
		{ after(grammarAccess.getAnnotationAccess().getPropertyAnnotationPropertyCrossReference_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__AnnotationValue__LiteralValueAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAnnotationValueAccess().getLiteralValueLiteralParserRuleCall_0_0()); }
		ruleLiteral
		{ after(grammarAccess.getAnnotationValueAccess().getLiteralValueLiteralParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__AnnotationValue__ReferencedValueAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAnnotationValueAccess().getReferencedValueMemberCrossReference_1_0()); }
		(
			{ before(grammarAccess.getAnnotationValueAccess().getReferencedValueMemberRefParserRuleCall_1_0_1()); }
			ruleRef
			{ after(grammarAccess.getAnnotationValueAccess().getReferencedValueMemberRefParserRuleCall_1_0_1()); }
		)
		{ after(grammarAccess.getAnnotationValueAccess().getReferencedValueMemberCrossReference_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Vocabulary__OwnedAnnotationsAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVocabularyAccess().getOwnedAnnotationsAnnotationParserRuleCall_0_0()); }
		ruleAnnotation
		{ after(grammarAccess.getVocabularyAccess().getOwnedAnnotationsAnnotationParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Vocabulary__NamespaceAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVocabularyAccess().getNamespaceNAMESPACETerminalRuleCall_2_0()); }
		RULE_NAMESPACE
		{ after(grammarAccess.getVocabularyAccess().getNamespaceNAMESPACETerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Vocabulary__PrefixAssignment_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVocabularyAccess().getPrefixIDTerminalRuleCall_4_0()); }
		RULE_ID
		{ after(grammarAccess.getVocabularyAccess().getPrefixIDTerminalRuleCall_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Vocabulary__OwnedImportsAssignment_6
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVocabularyAccess().getOwnedImportsAlternatives_6_0()); }
		(rule__Vocabulary__OwnedImportsAlternatives_6_0)
		{ after(grammarAccess.getVocabularyAccess().getOwnedImportsAlternatives_6_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Vocabulary__OwnedStatementsAssignment_7
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVocabularyAccess().getOwnedStatementsVocabularyStatementParserRuleCall_7_0()); }
		ruleVocabularyStatement
		{ after(grammarAccess.getVocabularyAccess().getOwnedStatementsVocabularyStatementParserRuleCall_7_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__VocabularyBundle__OwnedAnnotationsAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVocabularyBundleAccess().getOwnedAnnotationsAnnotationParserRuleCall_0_0()); }
		ruleAnnotation
		{ after(grammarAccess.getVocabularyBundleAccess().getOwnedAnnotationsAnnotationParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__VocabularyBundle__NamespaceAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVocabularyBundleAccess().getNamespaceNAMESPACETerminalRuleCall_3_0()); }
		RULE_NAMESPACE
		{ after(grammarAccess.getVocabularyBundleAccess().getNamespaceNAMESPACETerminalRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__VocabularyBundle__PrefixAssignment_5
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVocabularyBundleAccess().getPrefixIDTerminalRuleCall_5_0()); }
		RULE_ID
		{ after(grammarAccess.getVocabularyBundleAccess().getPrefixIDTerminalRuleCall_5_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__VocabularyBundle__OwnedImportsAssignment_7
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVocabularyBundleAccess().getOwnedImportsAlternatives_7_0()); }
		(rule__VocabularyBundle__OwnedImportsAlternatives_7_0)
		{ after(grammarAccess.getVocabularyBundleAccess().getOwnedImportsAlternatives_7_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Description__OwnedAnnotationsAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDescriptionAccess().getOwnedAnnotationsAnnotationParserRuleCall_0_0()); }
		ruleAnnotation
		{ after(grammarAccess.getDescriptionAccess().getOwnedAnnotationsAnnotationParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Description__NamespaceAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDescriptionAccess().getNamespaceNAMESPACETerminalRuleCall_2_0()); }
		RULE_NAMESPACE
		{ after(grammarAccess.getDescriptionAccess().getNamespaceNAMESPACETerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Description__PrefixAssignment_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDescriptionAccess().getPrefixIDTerminalRuleCall_4_0()); }
		RULE_ID
		{ after(grammarAccess.getDescriptionAccess().getPrefixIDTerminalRuleCall_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Description__OwnedImportsAssignment_6
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDescriptionAccess().getOwnedImportsAlternatives_6_0()); }
		(rule__Description__OwnedImportsAlternatives_6_0)
		{ after(grammarAccess.getDescriptionAccess().getOwnedImportsAlternatives_6_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Description__OwnedStatementsAssignment_7
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDescriptionAccess().getOwnedStatementsDescriptionStatementParserRuleCall_7_0()); }
		ruleDescriptionStatement
		{ after(grammarAccess.getDescriptionAccess().getOwnedStatementsDescriptionStatementParserRuleCall_7_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__DescriptionBundle__OwnedAnnotationsAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDescriptionBundleAccess().getOwnedAnnotationsAnnotationParserRuleCall_0_0()); }
		ruleAnnotation
		{ after(grammarAccess.getDescriptionBundleAccess().getOwnedAnnotationsAnnotationParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__DescriptionBundle__NamespaceAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDescriptionBundleAccess().getNamespaceNAMESPACETerminalRuleCall_3_0()); }
		RULE_NAMESPACE
		{ after(grammarAccess.getDescriptionBundleAccess().getNamespaceNAMESPACETerminalRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__DescriptionBundle__PrefixAssignment_5
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDescriptionBundleAccess().getPrefixIDTerminalRuleCall_5_0()); }
		RULE_ID
		{ after(grammarAccess.getDescriptionBundleAccess().getPrefixIDTerminalRuleCall_5_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__DescriptionBundle__OwnedImportsAssignment_7
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDescriptionBundleAccess().getOwnedImportsAlternatives_7_0()); }
		(rule__DescriptionBundle__OwnedImportsAlternatives_7_0)
		{ after(grammarAccess.getDescriptionBundleAccess().getOwnedImportsAlternatives_7_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Aspect__OwnedAnnotationsAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAspectAccess().getOwnedAnnotationsAnnotationParserRuleCall_0_0()); }
		ruleAnnotation
		{ after(grammarAccess.getAspectAccess().getOwnedAnnotationsAnnotationParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Aspect__NameAssignment_1_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAspectAccess().getNameIDTerminalRuleCall_1_0_1_0()); }
		RULE_ID
		{ after(grammarAccess.getAspectAccess().getNameIDTerminalRuleCall_1_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Aspect__RefAssignment_1_1_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAspectAccess().getRefAspectCrossReference_1_1_2_0()); }
		(
			{ before(grammarAccess.getAspectAccess().getRefAspectRefParserRuleCall_1_1_2_0_1()); }
			ruleRef
			{ after(grammarAccess.getAspectAccess().getRefAspectRefParserRuleCall_1_1_2_0_1()); }
		)
		{ after(grammarAccess.getAspectAccess().getRefAspectCrossReference_1_1_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Aspect__OwnedKeysAssignment_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAspectAccess().getOwnedKeysKeyAxiomParserRuleCall_2_1_0()); }
		ruleKeyAxiom
		{ after(grammarAccess.getAspectAccess().getOwnedKeysKeyAxiomParserRuleCall_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Concept__OwnedAnnotationsAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getConceptAccess().getOwnedAnnotationsAnnotationParserRuleCall_0_0()); }
		ruleAnnotation
		{ after(grammarAccess.getConceptAccess().getOwnedAnnotationsAnnotationParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Concept__NameAssignment_1_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getConceptAccess().getNameIDTerminalRuleCall_1_0_1_0()); }
		RULE_ID
		{ after(grammarAccess.getConceptAccess().getNameIDTerminalRuleCall_1_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Concept__RefAssignment_1_1_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getConceptAccess().getRefConceptCrossReference_1_1_2_0()); }
		(
			{ before(grammarAccess.getConceptAccess().getRefConceptRefParserRuleCall_1_1_2_0_1()); }
			ruleRef
			{ after(grammarAccess.getConceptAccess().getRefConceptRefParserRuleCall_1_1_2_0_1()); }
		)
		{ after(grammarAccess.getConceptAccess().getRefConceptCrossReference_1_1_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Concept__OwnedEnumerationAssignment_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getConceptAccess().getOwnedEnumerationInstanceEnumerationAxiomParserRuleCall_2_1_0()); }
		ruleInstanceEnumerationAxiom
		{ after(grammarAccess.getConceptAccess().getOwnedEnumerationInstanceEnumerationAxiomParserRuleCall_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Concept__OwnedKeysAssignment_2_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getConceptAccess().getOwnedKeysKeyAxiomParserRuleCall_2_2_0()); }
		ruleKeyAxiom
		{ after(grammarAccess.getConceptAccess().getOwnedKeysKeyAxiomParserRuleCall_2_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__OwnedAnnotationsAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationEntityAccess().getOwnedAnnotationsAnnotationParserRuleCall_0_0()); }
		ruleAnnotation
		{ after(grammarAccess.getRelationEntityAccess().getOwnedAnnotationsAnnotationParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__NameAssignment_1_0_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationEntityAccess().getNameIDTerminalRuleCall_1_0_2_0()); }
		RULE_ID
		{ after(grammarAccess.getRelationEntityAccess().getNameIDTerminalRuleCall_1_0_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__RefAssignment_1_1_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationEntityAccess().getRefRelationEntityCrossReference_1_1_3_0()); }
		(
			{ before(grammarAccess.getRelationEntityAccess().getRefRelationEntityRefParserRuleCall_1_1_3_0_1()); }
			ruleRef
			{ after(grammarAccess.getRelationEntityAccess().getRefRelationEntityRefParserRuleCall_1_1_3_0_1()); }
		)
		{ after(grammarAccess.getRelationEntityAccess().getRefRelationEntityCrossReference_1_1_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__SourcesAssignment_2_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationEntityAccess().getSourcesEntityCrossReference_2_1_1_0()); }
		(
			{ before(grammarAccess.getRelationEntityAccess().getSourcesEntityRefParserRuleCall_2_1_1_0_1()); }
			ruleRef
			{ after(grammarAccess.getRelationEntityAccess().getSourcesEntityRefParserRuleCall_2_1_1_0_1()); }
		)
		{ after(grammarAccess.getRelationEntityAccess().getSourcesEntityCrossReference_2_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__SourcesAssignment_2_1_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationEntityAccess().getSourcesEntityCrossReference_2_1_2_1_0()); }
		(
			{ before(grammarAccess.getRelationEntityAccess().getSourcesEntityRefParserRuleCall_2_1_2_1_0_1()); }
			ruleRef
			{ after(grammarAccess.getRelationEntityAccess().getSourcesEntityRefParserRuleCall_2_1_2_1_0_1()); }
		)
		{ after(grammarAccess.getRelationEntityAccess().getSourcesEntityCrossReference_2_1_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__TargetsAssignment_2_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationEntityAccess().getTargetsEntityCrossReference_2_2_1_0()); }
		(
			{ before(grammarAccess.getRelationEntityAccess().getTargetsEntityRefParserRuleCall_2_2_1_0_1()); }
			ruleRef
			{ after(grammarAccess.getRelationEntityAccess().getTargetsEntityRefParserRuleCall_2_2_1_0_1()); }
		)
		{ after(grammarAccess.getRelationEntityAccess().getTargetsEntityCrossReference_2_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__TargetsAssignment_2_2_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationEntityAccess().getTargetsEntityCrossReference_2_2_2_1_0()); }
		(
			{ before(grammarAccess.getRelationEntityAccess().getTargetsEntityRefParserRuleCall_2_2_2_1_0_1()); }
			ruleRef
			{ after(grammarAccess.getRelationEntityAccess().getTargetsEntityRefParserRuleCall_2_2_2_1_0_1()); }
		)
		{ after(grammarAccess.getRelationEntityAccess().getTargetsEntityCrossReference_2_2_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__ForwardRelationAssignment_2_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationEntityAccess().getForwardRelationForwardRelationParserRuleCall_2_3_0()); }
		ruleForwardRelation
		{ after(grammarAccess.getRelationEntityAccess().getForwardRelationForwardRelationParserRuleCall_2_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__ReverseRelationAssignment_2_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationEntityAccess().getReverseRelationReverseRelationParserRuleCall_2_4_0()); }
		ruleReverseRelation
		{ after(grammarAccess.getRelationEntityAccess().getReverseRelationReverseRelationParserRuleCall_2_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__FunctionalAssignment_2_5_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationEntityAccess().getFunctionalFunctionalKeyword_2_5_0_0()); }
		(
			{ before(grammarAccess.getRelationEntityAccess().getFunctionalFunctionalKeyword_2_5_0_0()); }
			'functional'
			{ after(grammarAccess.getRelationEntityAccess().getFunctionalFunctionalKeyword_2_5_0_0()); }
		)
		{ after(grammarAccess.getRelationEntityAccess().getFunctionalFunctionalKeyword_2_5_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__InverseFunctionalAssignment_2_5_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationEntityAccess().getInverseFunctionalInverseKeyword_2_5_1_0_0()); }
		(
			{ before(grammarAccess.getRelationEntityAccess().getInverseFunctionalInverseKeyword_2_5_1_0_0()); }
			'inverse'
			{ after(grammarAccess.getRelationEntityAccess().getInverseFunctionalInverseKeyword_2_5_1_0_0()); }
		)
		{ after(grammarAccess.getRelationEntityAccess().getInverseFunctionalInverseKeyword_2_5_1_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__SymmetricAssignment_2_5_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationEntityAccess().getSymmetricSymmetricKeyword_2_5_2_0()); }
		(
			{ before(grammarAccess.getRelationEntityAccess().getSymmetricSymmetricKeyword_2_5_2_0()); }
			'symmetric'
			{ after(grammarAccess.getRelationEntityAccess().getSymmetricSymmetricKeyword_2_5_2_0()); }
		)
		{ after(grammarAccess.getRelationEntityAccess().getSymmetricSymmetricKeyword_2_5_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__AsymmetricAssignment_2_5_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationEntityAccess().getAsymmetricAsymmetricKeyword_2_5_3_0()); }
		(
			{ before(grammarAccess.getRelationEntityAccess().getAsymmetricAsymmetricKeyword_2_5_3_0()); }
			'asymmetric'
			{ after(grammarAccess.getRelationEntityAccess().getAsymmetricAsymmetricKeyword_2_5_3_0()); }
		)
		{ after(grammarAccess.getRelationEntityAccess().getAsymmetricAsymmetricKeyword_2_5_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__ReflexiveAssignment_2_5_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationEntityAccess().getReflexiveReflexiveKeyword_2_5_4_0()); }
		(
			{ before(grammarAccess.getRelationEntityAccess().getReflexiveReflexiveKeyword_2_5_4_0()); }
			'reflexive'
			{ after(grammarAccess.getRelationEntityAccess().getReflexiveReflexiveKeyword_2_5_4_0()); }
		)
		{ after(grammarAccess.getRelationEntityAccess().getReflexiveReflexiveKeyword_2_5_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__IrreflexiveAssignment_2_5_5
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationEntityAccess().getIrreflexiveIrreflexiveKeyword_2_5_5_0()); }
		(
			{ before(grammarAccess.getRelationEntityAccess().getIrreflexiveIrreflexiveKeyword_2_5_5_0()); }
			'irreflexive'
			{ after(grammarAccess.getRelationEntityAccess().getIrreflexiveIrreflexiveKeyword_2_5_5_0()); }
		)
		{ after(grammarAccess.getRelationEntityAccess().getIrreflexiveIrreflexiveKeyword_2_5_5_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__TransitiveAssignment_2_5_6
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationEntityAccess().getTransitiveTransitiveKeyword_2_5_6_0()); }
		(
			{ before(grammarAccess.getRelationEntityAccess().getTransitiveTransitiveKeyword_2_5_6_0()); }
			'transitive'
			{ after(grammarAccess.getRelationEntityAccess().getTransitiveTransitiveKeyword_2_5_6_0()); }
		)
		{ after(grammarAccess.getRelationEntityAccess().getTransitiveTransitiveKeyword_2_5_6_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntity__OwnedKeysAssignment_2_6
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationEntityAccess().getOwnedKeysKeyAxiomParserRuleCall_2_6_0()); }
		ruleKeyAxiom
		{ after(grammarAccess.getRelationEntityAccess().getOwnedKeysKeyAxiomParserRuleCall_2_6_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Structure__OwnedAnnotationsAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStructureAccess().getOwnedAnnotationsAnnotationParserRuleCall_0_0()); }
		ruleAnnotation
		{ after(grammarAccess.getStructureAccess().getOwnedAnnotationsAnnotationParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Structure__NameAssignment_1_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStructureAccess().getNameIDTerminalRuleCall_1_0_1_0()); }
		RULE_ID
		{ after(grammarAccess.getStructureAccess().getNameIDTerminalRuleCall_1_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Structure__RefAssignment_1_1_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStructureAccess().getRefStructureCrossReference_1_1_2_0()); }
		(
			{ before(grammarAccess.getStructureAccess().getRefStructureRefParserRuleCall_1_1_2_0_1()); }
			ruleRef
			{ after(grammarAccess.getStructureAccess().getRefStructureRefParserRuleCall_1_1_2_0_1()); }
		)
		{ after(grammarAccess.getStructureAccess().getRefStructureCrossReference_1_1_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierSpecialization__OwnedSpecializationsAssignment_1_0_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassifierSpecializationAccess().getOwnedSpecializationsSpecializationAxiomParserRuleCall_1_0_0_0()); }
		ruleSpecializationAxiom
		{ after(grammarAccess.getClassifierSpecializationAccess().getOwnedSpecializationsSpecializationAxiomParserRuleCall_1_0_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierSpecialization__OwnedSpecializationsAssignment_1_0_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassifierSpecializationAccess().getOwnedSpecializationsSpecializationAxiomParserRuleCall_1_0_1_1_0()); }
		ruleSpecializationAxiom
		{ after(grammarAccess.getClassifierSpecializationAccess().getOwnedSpecializationsSpecializationAxiomParserRuleCall_1_0_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierSpecialization__OwnedSpecializationsAssignment_1_1_0_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassifierSpecializationAccess().getOwnedSpecializationsSpecializationAxiomParserRuleCall_1_1_0_0_0()); }
		ruleSpecializationAxiom
		{ after(grammarAccess.getClassifierSpecializationAccess().getOwnedSpecializationsSpecializationAxiomParserRuleCall_1_1_0_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierSpecialization__OwnedSpecializationsAssignment_1_1_0_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassifierSpecializationAccess().getOwnedSpecializationsSpecializationAxiomParserRuleCall_1_1_0_1_1_0()); }
		ruleSpecializationAxiom
		{ after(grammarAccess.getClassifierSpecializationAccess().getOwnedSpecializationsSpecializationAxiomParserRuleCall_1_1_0_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierSpecialization__OwnedPropertyRestrictionsAssignment_1_1_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassifierSpecializationAccess().getOwnedPropertyRestrictionsPropertyRestrictionAxiomParserRuleCall_1_1_2_0()); }
		rulePropertyRestrictionAxiom
		{ after(grammarAccess.getClassifierSpecializationAccess().getOwnedPropertyRestrictionsPropertyRestrictionAxiomParserRuleCall_1_1_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierEquivalence__OwnedEquivalencesAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassifierEquivalenceAccess().getOwnedEquivalencesClassifierEquivalenceAxiomParserRuleCall_1_0()); }
		ruleClassifierEquivalenceAxiom
		{ after(grammarAccess.getClassifierEquivalenceAccess().getOwnedEquivalencesClassifierEquivalenceAxiomParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierEquivalence__OwnedEquivalencesAssignment_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassifierEquivalenceAccess().getOwnedEquivalencesClassifierEquivalenceAxiomParserRuleCall_2_1_0()); }
		ruleClassifierEquivalenceAxiom
		{ after(grammarAccess.getClassifierEquivalenceAccess().getOwnedEquivalencesClassifierEquivalenceAxiomParserRuleCall_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierEquivalenceAxiom__SuperClassifiersAssignment_0_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassifierEquivalenceAxiomAccess().getSuperClassifiersClassifierCrossReference_0_0_0()); }
		(
			{ before(grammarAccess.getClassifierEquivalenceAxiomAccess().getSuperClassifiersClassifierRefParserRuleCall_0_0_0_1()); }
			ruleRef
			{ after(grammarAccess.getClassifierEquivalenceAxiomAccess().getSuperClassifiersClassifierRefParserRuleCall_0_0_0_1()); }
		)
		{ after(grammarAccess.getClassifierEquivalenceAxiomAccess().getSuperClassifiersClassifierCrossReference_0_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierEquivalenceAxiom__SuperClassifiersAssignment_0_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassifierEquivalenceAxiomAccess().getSuperClassifiersClassifierCrossReference_0_1_1_0()); }
		(
			{ before(grammarAccess.getClassifierEquivalenceAxiomAccess().getSuperClassifiersClassifierRefParserRuleCall_0_1_1_0_1()); }
			ruleRef
			{ after(grammarAccess.getClassifierEquivalenceAxiomAccess().getSuperClassifiersClassifierRefParserRuleCall_0_1_1_0_1()); }
		)
		{ after(grammarAccess.getClassifierEquivalenceAxiomAccess().getSuperClassifiersClassifierCrossReference_0_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierEquivalenceAxiom__SuperClassifiersAssignment_1_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassifierEquivalenceAxiomAccess().getSuperClassifiersClassifierCrossReference_1_1_0_0()); }
		(
			{ before(grammarAccess.getClassifierEquivalenceAxiomAccess().getSuperClassifiersClassifierRefParserRuleCall_1_1_0_0_1()); }
			ruleRef
			{ after(grammarAccess.getClassifierEquivalenceAxiomAccess().getSuperClassifiersClassifierRefParserRuleCall_1_1_0_0_1()); }
		)
		{ after(grammarAccess.getClassifierEquivalenceAxiomAccess().getSuperClassifiersClassifierCrossReference_1_1_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierEquivalenceAxiom__SuperClassifiersAssignment_1_1_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassifierEquivalenceAxiomAccess().getSuperClassifiersClassifierCrossReference_1_1_1_1_0()); }
		(
			{ before(grammarAccess.getClassifierEquivalenceAxiomAccess().getSuperClassifiersClassifierRefParserRuleCall_1_1_1_1_0_1()); }
			ruleRef
			{ after(grammarAccess.getClassifierEquivalenceAxiomAccess().getSuperClassifiersClassifierRefParserRuleCall_1_1_1_1_0_1()); }
		)
		{ after(grammarAccess.getClassifierEquivalenceAxiomAccess().getSuperClassifiersClassifierCrossReference_1_1_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassifierEquivalenceAxiom__OwnedPropertyRestrictionsAssignment_1_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassifierEquivalenceAxiomAccess().getOwnedPropertyRestrictionsPropertyRestrictionAxiomParserRuleCall_1_3_0()); }
		rulePropertyRestrictionAxiom
		{ after(grammarAccess.getClassifierEquivalenceAxiomAccess().getOwnedPropertyRestrictionsPropertyRestrictionAxiomParserRuleCall_1_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Scalar__OwnedAnnotationsAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScalarAccess().getOwnedAnnotationsAnnotationParserRuleCall_0_0()); }
		ruleAnnotation
		{ after(grammarAccess.getScalarAccess().getOwnedAnnotationsAnnotationParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Scalar__NameAssignment_1_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScalarAccess().getNameIDTerminalRuleCall_1_0_1_0()); }
		RULE_ID
		{ after(grammarAccess.getScalarAccess().getNameIDTerminalRuleCall_1_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Scalar__RefAssignment_1_1_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScalarAccess().getRefScalarCrossReference_1_1_2_0()); }
		(
			{ before(grammarAccess.getScalarAccess().getRefScalarRefParserRuleCall_1_1_2_0_1()); }
			ruleRef
			{ after(grammarAccess.getScalarAccess().getRefScalarRefParserRuleCall_1_1_2_0_1()); }
		)
		{ after(grammarAccess.getScalarAccess().getRefScalarCrossReference_1_1_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Scalar__OwnedEnumerationAssignment_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScalarAccess().getOwnedEnumerationLiteralEnumerationAxiomParserRuleCall_2_1_0()); }
		ruleLiteralEnumerationAxiom
		{ after(grammarAccess.getScalarAccess().getOwnedEnumerationLiteralEnumerationAxiomParserRuleCall_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarSpecialization__OwnedSpecializationsAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScalarSpecializationAccess().getOwnedSpecializationsSpecializationAxiomParserRuleCall_1_0()); }
		ruleSpecializationAxiom
		{ after(grammarAccess.getScalarSpecializationAccess().getOwnedSpecializationsSpecializationAxiomParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarSpecialization__OwnedSpecializationsAssignment_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScalarSpecializationAccess().getOwnedSpecializationsSpecializationAxiomParserRuleCall_2_1_0()); }
		ruleSpecializationAxiom
		{ after(grammarAccess.getScalarSpecializationAccess().getOwnedSpecializationsSpecializationAxiomParserRuleCall_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalence__OwnedEquivalencesAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScalarEquivalenceAccess().getOwnedEquivalencesScalarEquivalenceAxiomParserRuleCall_1_0()); }
		ruleScalarEquivalenceAxiom
		{ after(grammarAccess.getScalarEquivalenceAccess().getOwnedEquivalencesScalarEquivalenceAxiomParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalence__OwnedEquivalencesAssignment_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScalarEquivalenceAccess().getOwnedEquivalencesScalarEquivalenceAxiomParserRuleCall_2_1_0()); }
		ruleScalarEquivalenceAxiom
		{ after(grammarAccess.getScalarEquivalenceAccess().getOwnedEquivalencesScalarEquivalenceAxiomParserRuleCall_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__SuperScalarAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getSuperScalarScalarCrossReference_0_0()); }
		(
			{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getSuperScalarScalarRefParserRuleCall_0_0_1()); }
			ruleRef
			{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getSuperScalarScalarRefParserRuleCall_0_0_1()); }
		)
		{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getSuperScalarScalarCrossReference_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__LengthAssignment_1_1_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getLengthUnsignedIntegerParserRuleCall_1_1_0_1_0()); }
		ruleUnsignedInteger
		{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getLengthUnsignedIntegerParserRuleCall_1_1_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__MinLengthAssignment_1_1_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getMinLengthUnsignedIntegerParserRuleCall_1_1_1_1_0()); }
		ruleUnsignedInteger
		{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getMinLengthUnsignedIntegerParserRuleCall_1_1_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__MaxLengthAssignment_1_1_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getMaxLengthUnsignedIntegerParserRuleCall_1_1_2_1_0()); }
		ruleUnsignedInteger
		{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getMaxLengthUnsignedIntegerParserRuleCall_1_1_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__PatternAssignment_1_1_3_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getPatternSTRINGTerminalRuleCall_1_1_3_1_0()); }
		RULE_STRING
		{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getPatternSTRINGTerminalRuleCall_1_1_3_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__LanguageAssignment_1_1_4_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getLanguageIDTerminalRuleCall_1_1_4_1_0()); }
		RULE_ID
		{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getLanguageIDTerminalRuleCall_1_1_4_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__MinInclusiveAssignment_1_1_5_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getMinInclusiveLiteralParserRuleCall_1_1_5_1_0()); }
		ruleLiteral
		{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getMinInclusiveLiteralParserRuleCall_1_1_5_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__MinExclusiveAssignment_1_1_6_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getMinExclusiveLiteralParserRuleCall_1_1_6_1_0()); }
		ruleLiteral
		{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getMinExclusiveLiteralParserRuleCall_1_1_6_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__MaxInclusiveAssignment_1_1_7_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getMaxInclusiveLiteralParserRuleCall_1_1_7_1_0()); }
		ruleLiteral
		{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getMaxInclusiveLiteralParserRuleCall_1_1_7_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarEquivalenceAxiom__MaxExclusiveAssignment_1_1_8_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScalarEquivalenceAxiomAccess().getMaxExclusiveLiteralParserRuleCall_1_1_8_1_0()); }
		ruleLiteral
		{ after(grammarAccess.getScalarEquivalenceAxiomAccess().getMaxExclusiveLiteralParserRuleCall_1_1_8_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__AnnotationProperty__OwnedAnnotationsAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAnnotationPropertyAccess().getOwnedAnnotationsAnnotationParserRuleCall_0_0()); }
		ruleAnnotation
		{ after(grammarAccess.getAnnotationPropertyAccess().getOwnedAnnotationsAnnotationParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__AnnotationProperty__NameAssignment_1_0_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAnnotationPropertyAccess().getNameIDTerminalRuleCall_1_0_2_0()); }
		RULE_ID
		{ after(grammarAccess.getAnnotationPropertyAccess().getNameIDTerminalRuleCall_1_0_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__AnnotationProperty__RefAssignment_1_1_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAnnotationPropertyAccess().getRefAnnotationPropertyCrossReference_1_1_3_0()); }
		(
			{ before(grammarAccess.getAnnotationPropertyAccess().getRefAnnotationPropertyRefParserRuleCall_1_1_3_0_1()); }
			ruleRef
			{ after(grammarAccess.getAnnotationPropertyAccess().getRefAnnotationPropertyRefParserRuleCall_1_1_3_0_1()); }
		)
		{ after(grammarAccess.getAnnotationPropertyAccess().getRefAnnotationPropertyCrossReference_1_1_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__OwnedAnnotationsAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScalarPropertyAccess().getOwnedAnnotationsAnnotationParserRuleCall_0_0()); }
		ruleAnnotation
		{ after(grammarAccess.getScalarPropertyAccess().getOwnedAnnotationsAnnotationParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__NameAssignment_1_0_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScalarPropertyAccess().getNameIDTerminalRuleCall_1_0_2_0()); }
		RULE_ID
		{ after(grammarAccess.getScalarPropertyAccess().getNameIDTerminalRuleCall_1_0_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__RefAssignment_1_1_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScalarPropertyAccess().getRefScalarPropertyCrossReference_1_1_3_0()); }
		(
			{ before(grammarAccess.getScalarPropertyAccess().getRefScalarPropertyRefParserRuleCall_1_1_3_0_1()); }
			ruleRef
			{ after(grammarAccess.getScalarPropertyAccess().getRefScalarPropertyRefParserRuleCall_1_1_3_0_1()); }
		)
		{ after(grammarAccess.getScalarPropertyAccess().getRefScalarPropertyCrossReference_1_1_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__DomainsAssignment_2_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScalarPropertyAccess().getDomainsClassifierCrossReference_2_1_1_0()); }
		(
			{ before(grammarAccess.getScalarPropertyAccess().getDomainsClassifierRefParserRuleCall_2_1_1_0_1()); }
			ruleRef
			{ after(grammarAccess.getScalarPropertyAccess().getDomainsClassifierRefParserRuleCall_2_1_1_0_1()); }
		)
		{ after(grammarAccess.getScalarPropertyAccess().getDomainsClassifierCrossReference_2_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__DomainsAssignment_2_1_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScalarPropertyAccess().getDomainsClassifierCrossReference_2_1_2_1_0()); }
		(
			{ before(grammarAccess.getScalarPropertyAccess().getDomainsClassifierRefParserRuleCall_2_1_2_1_0_1()); }
			ruleRef
			{ after(grammarAccess.getScalarPropertyAccess().getDomainsClassifierRefParserRuleCall_2_1_2_1_0_1()); }
		)
		{ after(grammarAccess.getScalarPropertyAccess().getDomainsClassifierCrossReference_2_1_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__RangesAssignment_2_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScalarPropertyAccess().getRangesScalarCrossReference_2_2_1_0()); }
		(
			{ before(grammarAccess.getScalarPropertyAccess().getRangesScalarRefParserRuleCall_2_2_1_0_1()); }
			ruleRef
			{ after(grammarAccess.getScalarPropertyAccess().getRangesScalarRefParserRuleCall_2_2_1_0_1()); }
		)
		{ after(grammarAccess.getScalarPropertyAccess().getRangesScalarCrossReference_2_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__RangesAssignment_2_2_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScalarPropertyAccess().getRangesScalarCrossReference_2_2_2_1_0()); }
		(
			{ before(grammarAccess.getScalarPropertyAccess().getRangesScalarRefParserRuleCall_2_2_2_1_0_1()); }
			ruleRef
			{ after(grammarAccess.getScalarPropertyAccess().getRangesScalarRefParserRuleCall_2_2_2_1_0_1()); }
		)
		{ after(grammarAccess.getScalarPropertyAccess().getRangesScalarCrossReference_2_2_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ScalarProperty__FunctionalAssignment_2_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getScalarPropertyAccess().getFunctionalFunctionalKeyword_2_3_0()); }
		(
			{ before(grammarAccess.getScalarPropertyAccess().getFunctionalFunctionalKeyword_2_3_0()); }
			'functional'
			{ after(grammarAccess.getScalarPropertyAccess().getFunctionalFunctionalKeyword_2_3_0()); }
		)
		{ after(grammarAccess.getScalarPropertyAccess().getFunctionalFunctionalKeyword_2_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__OwnedAnnotationsAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStructuredPropertyAccess().getOwnedAnnotationsAnnotationParserRuleCall_0_0()); }
		ruleAnnotation
		{ after(grammarAccess.getStructuredPropertyAccess().getOwnedAnnotationsAnnotationParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__NameAssignment_1_0_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStructuredPropertyAccess().getNameIDTerminalRuleCall_1_0_2_0()); }
		RULE_ID
		{ after(grammarAccess.getStructuredPropertyAccess().getNameIDTerminalRuleCall_1_0_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__RefAssignment_1_1_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStructuredPropertyAccess().getRefStructuredPropertyCrossReference_1_1_3_0()); }
		(
			{ before(grammarAccess.getStructuredPropertyAccess().getRefStructuredPropertyRefParserRuleCall_1_1_3_0_1()); }
			ruleRef
			{ after(grammarAccess.getStructuredPropertyAccess().getRefStructuredPropertyRefParserRuleCall_1_1_3_0_1()); }
		)
		{ after(grammarAccess.getStructuredPropertyAccess().getRefStructuredPropertyCrossReference_1_1_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__DomainsAssignment_2_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStructuredPropertyAccess().getDomainsClassifierCrossReference_2_1_1_0()); }
		(
			{ before(grammarAccess.getStructuredPropertyAccess().getDomainsClassifierRefParserRuleCall_2_1_1_0_1()); }
			ruleRef
			{ after(grammarAccess.getStructuredPropertyAccess().getDomainsClassifierRefParserRuleCall_2_1_1_0_1()); }
		)
		{ after(grammarAccess.getStructuredPropertyAccess().getDomainsClassifierCrossReference_2_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__DomainsAssignment_2_1_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStructuredPropertyAccess().getDomainsClassifierCrossReference_2_1_2_1_0()); }
		(
			{ before(grammarAccess.getStructuredPropertyAccess().getDomainsClassifierRefParserRuleCall_2_1_2_1_0_1()); }
			ruleRef
			{ after(grammarAccess.getStructuredPropertyAccess().getDomainsClassifierRefParserRuleCall_2_1_2_1_0_1()); }
		)
		{ after(grammarAccess.getStructuredPropertyAccess().getDomainsClassifierCrossReference_2_1_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__RangesAssignment_2_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStructuredPropertyAccess().getRangesStructureCrossReference_2_2_1_0()); }
		(
			{ before(grammarAccess.getStructuredPropertyAccess().getRangesStructureRefParserRuleCall_2_2_1_0_1()); }
			ruleRef
			{ after(grammarAccess.getStructuredPropertyAccess().getRangesStructureRefParserRuleCall_2_2_1_0_1()); }
		)
		{ after(grammarAccess.getStructuredPropertyAccess().getRangesStructureCrossReference_2_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__RangesAssignment_2_2_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStructuredPropertyAccess().getRangesStructureCrossReference_2_2_2_1_0()); }
		(
			{ before(grammarAccess.getStructuredPropertyAccess().getRangesStructureRefParserRuleCall_2_2_2_1_0_1()); }
			ruleRef
			{ after(grammarAccess.getStructuredPropertyAccess().getRangesStructureRefParserRuleCall_2_2_2_1_0_1()); }
		)
		{ after(grammarAccess.getStructuredPropertyAccess().getRangesStructureCrossReference_2_2_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__StructuredProperty__FunctionalAssignment_2_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStructuredPropertyAccess().getFunctionalFunctionalKeyword_2_3_0()); }
		(
			{ before(grammarAccess.getStructuredPropertyAccess().getFunctionalFunctionalKeyword_2_3_0()); }
			'functional'
			{ after(grammarAccess.getStructuredPropertyAccess().getFunctionalFunctionalKeyword_2_3_0()); }
		)
		{ after(grammarAccess.getStructuredPropertyAccess().getFunctionalFunctionalKeyword_2_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ForwardRelation__OwnedAnnotationsAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getForwardRelationAccess().getOwnedAnnotationsAnnotationParserRuleCall_0_0()); }
		ruleAnnotation
		{ after(grammarAccess.getForwardRelationAccess().getOwnedAnnotationsAnnotationParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ForwardRelation__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getForwardRelationAccess().getNameIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getForwardRelationAccess().getNameIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ReverseRelation__OwnedAnnotationsAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getReverseRelationAccess().getOwnedAnnotationsAnnotationParserRuleCall_0_0()); }
		ruleAnnotation
		{ after(grammarAccess.getReverseRelationAccess().getOwnedAnnotationsAnnotationParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ReverseRelation__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getReverseRelationAccess().getNameIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getReverseRelationAccess().getNameIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__OwnedAnnotationsAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getUnreifiedRelationAccess().getOwnedAnnotationsAnnotationParserRuleCall_0_0()); }
		ruleAnnotation
		{ after(grammarAccess.getUnreifiedRelationAccess().getOwnedAnnotationsAnnotationParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__NameAssignment_1_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getUnreifiedRelationAccess().getNameIDTerminalRuleCall_1_0_1_0()); }
		RULE_ID
		{ after(grammarAccess.getUnreifiedRelationAccess().getNameIDTerminalRuleCall_1_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__RefAssignment_1_1_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getUnreifiedRelationAccess().getRefRelationCrossReference_1_1_2_0()); }
		(
			{ before(grammarAccess.getUnreifiedRelationAccess().getRefRelationRefParserRuleCall_1_1_2_0_1()); }
			ruleRef
			{ after(grammarAccess.getUnreifiedRelationAccess().getRefRelationRefParserRuleCall_1_1_2_0_1()); }
		)
		{ after(grammarAccess.getUnreifiedRelationAccess().getRefRelationCrossReference_1_1_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__SourcesAssignment_2_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getUnreifiedRelationAccess().getSourcesEntityCrossReference_2_1_1_0()); }
		(
			{ before(grammarAccess.getUnreifiedRelationAccess().getSourcesEntityRefParserRuleCall_2_1_1_0_1()); }
			ruleRef
			{ after(grammarAccess.getUnreifiedRelationAccess().getSourcesEntityRefParserRuleCall_2_1_1_0_1()); }
		)
		{ after(grammarAccess.getUnreifiedRelationAccess().getSourcesEntityCrossReference_2_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__SourcesAssignment_2_1_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getUnreifiedRelationAccess().getSourcesEntityCrossReference_2_1_2_1_0()); }
		(
			{ before(grammarAccess.getUnreifiedRelationAccess().getSourcesEntityRefParserRuleCall_2_1_2_1_0_1()); }
			ruleRef
			{ after(grammarAccess.getUnreifiedRelationAccess().getSourcesEntityRefParserRuleCall_2_1_2_1_0_1()); }
		)
		{ after(grammarAccess.getUnreifiedRelationAccess().getSourcesEntityCrossReference_2_1_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__TargetsAssignment_2_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getUnreifiedRelationAccess().getTargetsEntityCrossReference_2_2_1_0()); }
		(
			{ before(grammarAccess.getUnreifiedRelationAccess().getTargetsEntityRefParserRuleCall_2_2_1_0_1()); }
			ruleRef
			{ after(grammarAccess.getUnreifiedRelationAccess().getTargetsEntityRefParserRuleCall_2_2_1_0_1()); }
		)
		{ after(grammarAccess.getUnreifiedRelationAccess().getTargetsEntityCrossReference_2_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__TargetsAssignment_2_2_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getUnreifiedRelationAccess().getTargetsEntityCrossReference_2_2_2_1_0()); }
		(
			{ before(grammarAccess.getUnreifiedRelationAccess().getTargetsEntityRefParserRuleCall_2_2_2_1_0_1()); }
			ruleRef
			{ after(grammarAccess.getUnreifiedRelationAccess().getTargetsEntityRefParserRuleCall_2_2_2_1_0_1()); }
		)
		{ after(grammarAccess.getUnreifiedRelationAccess().getTargetsEntityCrossReference_2_2_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__ReverseRelationAssignment_2_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getUnreifiedRelationAccess().getReverseRelationReverseRelationParserRuleCall_2_3_0()); }
		ruleReverseRelation
		{ after(grammarAccess.getUnreifiedRelationAccess().getReverseRelationReverseRelationParserRuleCall_2_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__FunctionalAssignment_2_4_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getUnreifiedRelationAccess().getFunctionalFunctionalKeyword_2_4_0_0()); }
		(
			{ before(grammarAccess.getUnreifiedRelationAccess().getFunctionalFunctionalKeyword_2_4_0_0()); }
			'functional'
			{ after(grammarAccess.getUnreifiedRelationAccess().getFunctionalFunctionalKeyword_2_4_0_0()); }
		)
		{ after(grammarAccess.getUnreifiedRelationAccess().getFunctionalFunctionalKeyword_2_4_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__InverseFunctionalAssignment_2_4_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getUnreifiedRelationAccess().getInverseFunctionalInverseKeyword_2_4_1_0_0()); }
		(
			{ before(grammarAccess.getUnreifiedRelationAccess().getInverseFunctionalInverseKeyword_2_4_1_0_0()); }
			'inverse'
			{ after(grammarAccess.getUnreifiedRelationAccess().getInverseFunctionalInverseKeyword_2_4_1_0_0()); }
		)
		{ after(grammarAccess.getUnreifiedRelationAccess().getInverseFunctionalInverseKeyword_2_4_1_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__SymmetricAssignment_2_4_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getUnreifiedRelationAccess().getSymmetricSymmetricKeyword_2_4_2_0()); }
		(
			{ before(grammarAccess.getUnreifiedRelationAccess().getSymmetricSymmetricKeyword_2_4_2_0()); }
			'symmetric'
			{ after(grammarAccess.getUnreifiedRelationAccess().getSymmetricSymmetricKeyword_2_4_2_0()); }
		)
		{ after(grammarAccess.getUnreifiedRelationAccess().getSymmetricSymmetricKeyword_2_4_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__AsymmetricAssignment_2_4_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getUnreifiedRelationAccess().getAsymmetricAsymmetricKeyword_2_4_3_0()); }
		(
			{ before(grammarAccess.getUnreifiedRelationAccess().getAsymmetricAsymmetricKeyword_2_4_3_0()); }
			'asymmetric'
			{ after(grammarAccess.getUnreifiedRelationAccess().getAsymmetricAsymmetricKeyword_2_4_3_0()); }
		)
		{ after(grammarAccess.getUnreifiedRelationAccess().getAsymmetricAsymmetricKeyword_2_4_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__ReflexiveAssignment_2_4_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getUnreifiedRelationAccess().getReflexiveReflexiveKeyword_2_4_4_0()); }
		(
			{ before(grammarAccess.getUnreifiedRelationAccess().getReflexiveReflexiveKeyword_2_4_4_0()); }
			'reflexive'
			{ after(grammarAccess.getUnreifiedRelationAccess().getReflexiveReflexiveKeyword_2_4_4_0()); }
		)
		{ after(grammarAccess.getUnreifiedRelationAccess().getReflexiveReflexiveKeyword_2_4_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__IrreflexiveAssignment_2_4_5
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getUnreifiedRelationAccess().getIrreflexiveIrreflexiveKeyword_2_4_5_0()); }
		(
			{ before(grammarAccess.getUnreifiedRelationAccess().getIrreflexiveIrreflexiveKeyword_2_4_5_0()); }
			'irreflexive'
			{ after(grammarAccess.getUnreifiedRelationAccess().getIrreflexiveIrreflexiveKeyword_2_4_5_0()); }
		)
		{ after(grammarAccess.getUnreifiedRelationAccess().getIrreflexiveIrreflexiveKeyword_2_4_5_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnreifiedRelation__TransitiveAssignment_2_4_6
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getUnreifiedRelationAccess().getTransitiveTransitiveKeyword_2_4_6_0()); }
		(
			{ before(grammarAccess.getUnreifiedRelationAccess().getTransitiveTransitiveKeyword_2_4_6_0()); }
			'transitive'
			{ after(grammarAccess.getUnreifiedRelationAccess().getTransitiveTransitiveKeyword_2_4_6_0()); }
		)
		{ after(grammarAccess.getUnreifiedRelationAccess().getTransitiveTransitiveKeyword_2_4_6_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertySpecialization__OwnedSpecializationsAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPropertySpecializationAccess().getOwnedSpecializationsSpecializationAxiomParserRuleCall_1_0()); }
		ruleSpecializationAxiom
		{ after(grammarAccess.getPropertySpecializationAccess().getOwnedSpecializationsSpecializationAxiomParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertySpecialization__OwnedSpecializationsAssignment_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPropertySpecializationAccess().getOwnedSpecializationsSpecializationAxiomParserRuleCall_2_1_0()); }
		ruleSpecializationAxiom
		{ after(grammarAccess.getPropertySpecializationAccess().getOwnedSpecializationsSpecializationAxiomParserRuleCall_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyEquivalence__OwnedEquivalencesAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPropertyEquivalenceAccess().getOwnedEquivalencesPropertyEquivalenceAxiomParserRuleCall_1_0()); }
		rulePropertyEquivalenceAxiom
		{ after(grammarAccess.getPropertyEquivalenceAccess().getOwnedEquivalencesPropertyEquivalenceAxiomParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyEquivalence__OwnedEquivalencesAssignment_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPropertyEquivalenceAccess().getOwnedEquivalencesPropertyEquivalenceAxiomParserRuleCall_2_1_0()); }
		rulePropertyEquivalenceAxiom
		{ after(grammarAccess.getPropertyEquivalenceAccess().getOwnedEquivalencesPropertyEquivalenceAxiomParserRuleCall_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyEquivalenceAxiom__SuperPropertyAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPropertyEquivalenceAxiomAccess().getSuperPropertyPropertyCrossReference_0()); }
		(
			{ before(grammarAccess.getPropertyEquivalenceAxiomAccess().getSuperPropertyPropertyRefParserRuleCall_0_1()); }
			ruleRef
			{ after(grammarAccess.getPropertyEquivalenceAxiomAccess().getSuperPropertyPropertyRefParserRuleCall_0_1()); }
		)
		{ after(grammarAccess.getPropertyEquivalenceAxiomAccess().getSuperPropertyPropertyCrossReference_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__OwnedAnnotationsAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRuleAccess().getOwnedAnnotationsAnnotationParserRuleCall_0_0()); }
		ruleAnnotation
		{ after(grammarAccess.getRuleAccess().getOwnedAnnotationsAnnotationParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__NameAssignment_1_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRuleAccess().getNameIDTerminalRuleCall_1_0_1_0()); }
		RULE_ID
		{ after(grammarAccess.getRuleAccess().getNameIDTerminalRuleCall_1_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__RefAssignment_1_1_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRuleAccess().getRefRuleCrossReference_1_1_2_0()); }
		(
			{ before(grammarAccess.getRuleAccess().getRefRuleRefParserRuleCall_1_1_2_0_1()); }
			ruleRef
			{ after(grammarAccess.getRuleAccess().getRefRuleRefParserRuleCall_1_1_2_0_1()); }
		)
		{ after(grammarAccess.getRuleAccess().getRefRuleCrossReference_1_1_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__AntecedentAssignment_2_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRuleAccess().getAntecedentPredicateParserRuleCall_2_1_0_0()); }
		rulePredicate
		{ after(grammarAccess.getRuleAccess().getAntecedentPredicateParserRuleCall_2_1_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__AntecedentAssignment_2_1_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRuleAccess().getAntecedentPredicateParserRuleCall_2_1_1_1_0()); }
		rulePredicate
		{ after(grammarAccess.getRuleAccess().getAntecedentPredicateParserRuleCall_2_1_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__ConsequentAssignment_2_1_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRuleAccess().getConsequentPredicateParserRuleCall_2_1_3_0()); }
		rulePredicate
		{ after(grammarAccess.getRuleAccess().getConsequentPredicateParserRuleCall_2_1_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Rule__ConsequentAssignment_2_1_4_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRuleAccess().getConsequentPredicateParserRuleCall_2_1_4_1_0()); }
		rulePredicate
		{ after(grammarAccess.getRuleAccess().getConsequentPredicateParserRuleCall_2_1_4_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__BuiltIn__OwnedAnnotationsAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getBuiltInAccess().getOwnedAnnotationsAnnotationParserRuleCall_0_0()); }
		ruleAnnotation
		{ after(grammarAccess.getBuiltInAccess().getOwnedAnnotationsAnnotationParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__BuiltIn__NameAssignment_1_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getBuiltInAccess().getNameIDTerminalRuleCall_1_0_1_0()); }
		RULE_ID
		{ after(grammarAccess.getBuiltInAccess().getNameIDTerminalRuleCall_1_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__BuiltIn__RefAssignment_1_1_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getBuiltInAccess().getRefBuiltInCrossReference_1_1_2_0()); }
		(
			{ before(grammarAccess.getBuiltInAccess().getRefBuiltInRefParserRuleCall_1_1_2_0_1()); }
			ruleRef
			{ after(grammarAccess.getBuiltInAccess().getRefBuiltInRefParserRuleCall_1_1_2_0_1()); }
		)
		{ after(grammarAccess.getBuiltInAccess().getRefBuiltInCrossReference_1_1_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__StructureInstance__TypeAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStructureInstanceAccess().getTypeStructureCrossReference_1_0()); }
		(
			{ before(grammarAccess.getStructureInstanceAccess().getTypeStructureRefParserRuleCall_1_0_1()); }
			ruleRef
			{ after(grammarAccess.getStructureInstanceAccess().getTypeStructureRefParserRuleCall_1_0_1()); }
		)
		{ after(grammarAccess.getStructureInstanceAccess().getTypeStructureCrossReference_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__StructureInstance__OwnedPropertyValuesAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStructureInstanceAccess().getOwnedPropertyValuesPropertyValueAssertionParserRuleCall_3_0()); }
		rulePropertyValueAssertion
		{ after(grammarAccess.getStructureInstanceAccess().getOwnedPropertyValuesPropertyValueAssertionParserRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__AnonymousRelationInstance__TargetAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAnonymousRelationInstanceAccess().getTargetNamedInstanceCrossReference_0_0()); }
		(
			{ before(grammarAccess.getAnonymousRelationInstanceAccess().getTargetNamedInstanceRefParserRuleCall_0_0_1()); }
			ruleRef
			{ after(grammarAccess.getAnonymousRelationInstanceAccess().getTargetNamedInstanceRefParserRuleCall_0_0_1()); }
		)
		{ after(grammarAccess.getAnonymousRelationInstanceAccess().getTargetNamedInstanceCrossReference_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__AnonymousRelationInstance__OwnedPropertyValuesAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAnonymousRelationInstanceAccess().getOwnedPropertyValuesPropertyValueAssertionParserRuleCall_2_0()); }
		rulePropertyValueAssertion
		{ after(grammarAccess.getAnonymousRelationInstanceAccess().getOwnedPropertyValuesPropertyValueAssertionParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ConceptInstance__OwnedAnnotationsAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getConceptInstanceAccess().getOwnedAnnotationsAnnotationParserRuleCall_0_0()); }
		ruleAnnotation
		{ after(grammarAccess.getConceptInstanceAccess().getOwnedAnnotationsAnnotationParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ConceptInstance__NameAssignment_1_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getConceptInstanceAccess().getNameIDTerminalRuleCall_1_0_1_0()); }
		RULE_ID
		{ after(grammarAccess.getConceptInstanceAccess().getNameIDTerminalRuleCall_1_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ConceptInstance__RefAssignment_1_1_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getConceptInstanceAccess().getRefConceptInstanceCrossReference_1_1_2_0()); }
		(
			{ before(grammarAccess.getConceptInstanceAccess().getRefConceptInstanceRefParserRuleCall_1_1_2_0_1()); }
			ruleRef
			{ after(grammarAccess.getConceptInstanceAccess().getRefConceptInstanceRefParserRuleCall_1_1_2_0_1()); }
		)
		{ after(grammarAccess.getConceptInstanceAccess().getRefConceptInstanceCrossReference_1_1_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ConceptInstance__OwnedTypesAssignment_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getConceptInstanceAccess().getOwnedTypesConceptTypeAssertionParserRuleCall_2_1_0()); }
		ruleConceptTypeAssertion
		{ after(grammarAccess.getConceptInstanceAccess().getOwnedTypesConceptTypeAssertionParserRuleCall_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ConceptInstance__OwnedTypesAssignment_2_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getConceptInstanceAccess().getOwnedTypesConceptTypeAssertionParserRuleCall_2_2_1_0()); }
		ruleConceptTypeAssertion
		{ after(grammarAccess.getConceptInstanceAccess().getOwnedTypesConceptTypeAssertionParserRuleCall_2_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ConceptInstance__OwnedPropertyValuesAssignment_3_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getConceptInstanceAccess().getOwnedPropertyValuesPropertyValueAssertionParserRuleCall_3_1_0()); }
		rulePropertyValueAssertion
		{ after(grammarAccess.getConceptInstanceAccess().getOwnedPropertyValuesPropertyValueAssertionParserRuleCall_3_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__OwnedAnnotationsAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationInstanceAccess().getOwnedAnnotationsAnnotationParserRuleCall_0_0()); }
		ruleAnnotation
		{ after(grammarAccess.getRelationInstanceAccess().getOwnedAnnotationsAnnotationParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__NameAssignment_1_0_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationInstanceAccess().getNameIDTerminalRuleCall_1_0_2_0()); }
		RULE_ID
		{ after(grammarAccess.getRelationInstanceAccess().getNameIDTerminalRuleCall_1_0_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__RefAssignment_1_1_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationInstanceAccess().getRefRelationInstanceCrossReference_1_1_3_0()); }
		(
			{ before(grammarAccess.getRelationInstanceAccess().getRefRelationInstanceRefParserRuleCall_1_1_3_0_1()); }
			ruleRef
			{ after(grammarAccess.getRelationInstanceAccess().getRefRelationInstanceRefParserRuleCall_1_1_3_0_1()); }
		)
		{ after(grammarAccess.getRelationInstanceAccess().getRefRelationInstanceCrossReference_1_1_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__OwnedTypesAssignment_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationInstanceAccess().getOwnedTypesRelationTypeAssertionParserRuleCall_2_1_0()); }
		ruleRelationTypeAssertion
		{ after(grammarAccess.getRelationInstanceAccess().getOwnedTypesRelationTypeAssertionParserRuleCall_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__OwnedTypesAssignment_2_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationInstanceAccess().getOwnedTypesRelationTypeAssertionParserRuleCall_2_2_1_0()); }
		ruleRelationTypeAssertion
		{ after(grammarAccess.getRelationInstanceAccess().getOwnedTypesRelationTypeAssertionParserRuleCall_2_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__SourcesAssignment_3_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationInstanceAccess().getSourcesNamedInstanceCrossReference_3_1_1_0()); }
		(
			{ before(grammarAccess.getRelationInstanceAccess().getSourcesNamedInstanceRefParserRuleCall_3_1_1_0_1()); }
			ruleRef
			{ after(grammarAccess.getRelationInstanceAccess().getSourcesNamedInstanceRefParserRuleCall_3_1_1_0_1()); }
		)
		{ after(grammarAccess.getRelationInstanceAccess().getSourcesNamedInstanceCrossReference_3_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__SourcesAssignment_3_1_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationInstanceAccess().getSourcesNamedInstanceCrossReference_3_1_2_1_0()); }
		(
			{ before(grammarAccess.getRelationInstanceAccess().getSourcesNamedInstanceRefParserRuleCall_3_1_2_1_0_1()); }
			ruleRef
			{ after(grammarAccess.getRelationInstanceAccess().getSourcesNamedInstanceRefParserRuleCall_3_1_2_1_0_1()); }
		)
		{ after(grammarAccess.getRelationInstanceAccess().getSourcesNamedInstanceCrossReference_3_1_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__TargetsAssignment_3_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationInstanceAccess().getTargetsNamedInstanceCrossReference_3_2_1_0()); }
		(
			{ before(grammarAccess.getRelationInstanceAccess().getTargetsNamedInstanceRefParserRuleCall_3_2_1_0_1()); }
			ruleRef
			{ after(grammarAccess.getRelationInstanceAccess().getTargetsNamedInstanceRefParserRuleCall_3_2_1_0_1()); }
		)
		{ after(grammarAccess.getRelationInstanceAccess().getTargetsNamedInstanceCrossReference_3_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__TargetsAssignment_3_2_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationInstanceAccess().getTargetsNamedInstanceCrossReference_3_2_2_1_0()); }
		(
			{ before(grammarAccess.getRelationInstanceAccess().getTargetsNamedInstanceRefParserRuleCall_3_2_2_1_0_1()); }
			ruleRef
			{ after(grammarAccess.getRelationInstanceAccess().getTargetsNamedInstanceRefParserRuleCall_3_2_2_1_0_1()); }
		)
		{ after(grammarAccess.getRelationInstanceAccess().getTargetsNamedInstanceCrossReference_3_2_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationInstance__OwnedPropertyValuesAssignment_3_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationInstanceAccess().getOwnedPropertyValuesPropertyValueAssertionParserRuleCall_3_3_0()); }
		rulePropertyValueAssertion
		{ after(grammarAccess.getRelationInstanceAccess().getOwnedPropertyValuesPropertyValueAssertionParserRuleCall_3_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Extension__KindAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getExtensionAccess().getKindExtendsEnumRuleCall_0_0()); }
		ruleExtends
		{ after(grammarAccess.getExtensionAccess().getKindExtendsEnumRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Extension__NamespaceAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getExtensionAccess().getNamespaceNAMESPACETerminalRuleCall_1_0()); }
		RULE_NAMESPACE
		{ after(grammarAccess.getExtensionAccess().getNamespaceNAMESPACETerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Extension__PrefixAssignment_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getExtensionAccess().getPrefixIDTerminalRuleCall_2_1_0()); }
		RULE_ID
		{ after(grammarAccess.getExtensionAccess().getPrefixIDTerminalRuleCall_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Usage__KindAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getUsageAccess().getKindUsesEnumRuleCall_0_0()); }
		ruleUses
		{ after(grammarAccess.getUsageAccess().getKindUsesEnumRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Usage__NamespaceAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getUsageAccess().getNamespaceNAMESPACETerminalRuleCall_1_0()); }
		RULE_NAMESPACE
		{ after(grammarAccess.getUsageAccess().getNamespaceNAMESPACETerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Usage__PrefixAssignment_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getUsageAccess().getPrefixIDTerminalRuleCall_2_1_0()); }
		RULE_ID
		{ after(grammarAccess.getUsageAccess().getPrefixIDTerminalRuleCall_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Inclusion__KindAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getInclusionAccess().getKindIncludesEnumRuleCall_0_0()); }
		ruleIncludes
		{ after(grammarAccess.getInclusionAccess().getKindIncludesEnumRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Inclusion__NamespaceAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getInclusionAccess().getNamespaceNAMESPACETerminalRuleCall_1_0()); }
		RULE_NAMESPACE
		{ after(grammarAccess.getInclusionAccess().getNamespaceNAMESPACETerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Inclusion__PrefixAssignment_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getInclusionAccess().getPrefixIDTerminalRuleCall_2_1_0()); }
		RULE_ID
		{ after(grammarAccess.getInclusionAccess().getPrefixIDTerminalRuleCall_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SpecializationAxiom__SuperTermAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSpecializationAxiomAccess().getSuperTermSpecializableTermCrossReference_0()); }
		(
			{ before(grammarAccess.getSpecializationAxiomAccess().getSuperTermSpecializableTermRefParserRuleCall_0_1()); }
			ruleRef
			{ after(grammarAccess.getSpecializationAxiomAccess().getSuperTermSpecializableTermRefParserRuleCall_0_1()); }
		)
		{ after(grammarAccess.getSpecializationAxiomAccess().getSuperTermSpecializableTermCrossReference_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyRangeRestrictionAxiom__KindAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPropertyRangeRestrictionAxiomAccess().getKindRangeRestrictionKindEnumRuleCall_1_0()); }
		ruleRangeRestrictionKind
		{ after(grammarAccess.getPropertyRangeRestrictionAxiomAccess().getKindRangeRestrictionKindEnumRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyRangeRestrictionAxiom__PropertyAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPropertyRangeRestrictionAxiomAccess().getPropertySemanticPropertyCrossReference_2_0()); }
		(
			{ before(grammarAccess.getPropertyRangeRestrictionAxiomAccess().getPropertySemanticPropertyRefParserRuleCall_2_0_1()); }
			ruleRef
			{ after(grammarAccess.getPropertyRangeRestrictionAxiomAccess().getPropertySemanticPropertyRefParserRuleCall_2_0_1()); }
		)
		{ after(grammarAccess.getPropertyRangeRestrictionAxiomAccess().getPropertySemanticPropertyCrossReference_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyRangeRestrictionAxiom__RangeAssignment_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPropertyRangeRestrictionAxiomAccess().getRangeTypeCrossReference_4_0()); }
		(
			{ before(grammarAccess.getPropertyRangeRestrictionAxiomAccess().getRangeTypeRefParserRuleCall_4_0_1()); }
			ruleRef
			{ after(grammarAccess.getPropertyRangeRestrictionAxiomAccess().getRangeTypeRefParserRuleCall_4_0_1()); }
		)
		{ after(grammarAccess.getPropertyRangeRestrictionAxiomAccess().getRangeTypeCrossReference_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyCardinalityRestrictionAxiom__PropertyAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPropertyCardinalityRestrictionAxiomAccess().getPropertySemanticPropertyCrossReference_1_0()); }
		(
			{ before(grammarAccess.getPropertyCardinalityRestrictionAxiomAccess().getPropertySemanticPropertyRefParserRuleCall_1_0_1()); }
			ruleRef
			{ after(grammarAccess.getPropertyCardinalityRestrictionAxiomAccess().getPropertySemanticPropertyRefParserRuleCall_1_0_1()); }
		)
		{ after(grammarAccess.getPropertyCardinalityRestrictionAxiomAccess().getPropertySemanticPropertyCrossReference_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyCardinalityRestrictionAxiom__KindAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPropertyCardinalityRestrictionAxiomAccess().getKindCardinalityRestrictionKindEnumRuleCall_3_0()); }
		ruleCardinalityRestrictionKind
		{ after(grammarAccess.getPropertyCardinalityRestrictionAxiomAccess().getKindCardinalityRestrictionKindEnumRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyCardinalityRestrictionAxiom__CardinalityAssignment_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPropertyCardinalityRestrictionAxiomAccess().getCardinalityUnsignedIntegerParserRuleCall_4_0()); }
		ruleUnsignedInteger
		{ after(grammarAccess.getPropertyCardinalityRestrictionAxiomAccess().getCardinalityUnsignedIntegerParserRuleCall_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyCardinalityRestrictionAxiom__RangeAssignment_5
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPropertyCardinalityRestrictionAxiomAccess().getRangeTypeCrossReference_5_0()); }
		(
			{ before(grammarAccess.getPropertyCardinalityRestrictionAxiomAccess().getRangeTypeRefParserRuleCall_5_0_1()); }
			ruleRef
			{ after(grammarAccess.getPropertyCardinalityRestrictionAxiomAccess().getRangeTypeRefParserRuleCall_5_0_1()); }
		)
		{ after(grammarAccess.getPropertyCardinalityRestrictionAxiomAccess().getRangeTypeCrossReference_5_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyValueRestrictionAxiom__PropertyAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPropertyValueRestrictionAxiomAccess().getPropertySemanticPropertyCrossReference_1_0()); }
		(
			{ before(grammarAccess.getPropertyValueRestrictionAxiomAccess().getPropertySemanticPropertyRefParserRuleCall_1_0_1()); }
			ruleRef
			{ after(grammarAccess.getPropertyValueRestrictionAxiomAccess().getPropertySemanticPropertyRefParserRuleCall_1_0_1()); }
		)
		{ after(grammarAccess.getPropertyValueRestrictionAxiomAccess().getPropertySemanticPropertyCrossReference_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyValueRestrictionAxiom__LiteralValueAssignment_3_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPropertyValueRestrictionAxiomAccess().getLiteralValueLiteralParserRuleCall_3_0_0()); }
		ruleLiteral
		{ after(grammarAccess.getPropertyValueRestrictionAxiomAccess().getLiteralValueLiteralParserRuleCall_3_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyValueRestrictionAxiom__ContainedValueAssignment_3_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPropertyValueRestrictionAxiomAccess().getContainedValueAnonymousInstanceParserRuleCall_3_1_0()); }
		ruleAnonymousInstance
		{ after(grammarAccess.getPropertyValueRestrictionAxiomAccess().getContainedValueAnonymousInstanceParserRuleCall_3_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyValueRestrictionAxiom__ReferencedValueAssignment_3_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPropertyValueRestrictionAxiomAccess().getReferencedValueNamedInstanceCrossReference_3_2_0()); }
		(
			{ before(grammarAccess.getPropertyValueRestrictionAxiomAccess().getReferencedValueNamedInstanceRefParserRuleCall_3_2_0_1()); }
			ruleRef
			{ after(grammarAccess.getPropertyValueRestrictionAxiomAccess().getReferencedValueNamedInstanceRefParserRuleCall_3_2_0_1()); }
		)
		{ after(grammarAccess.getPropertyValueRestrictionAxiomAccess().getReferencedValueNamedInstanceCrossReference_3_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertySelfRestrictionAxiom__PropertyAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPropertySelfRestrictionAxiomAccess().getPropertySemanticPropertyCrossReference_1_0()); }
		(
			{ before(grammarAccess.getPropertySelfRestrictionAxiomAccess().getPropertySemanticPropertyRefParserRuleCall_1_0_1()); }
			ruleRef
			{ after(grammarAccess.getPropertySelfRestrictionAxiomAccess().getPropertySemanticPropertyRefParserRuleCall_1_0_1()); }
		)
		{ after(grammarAccess.getPropertySelfRestrictionAxiomAccess().getPropertySemanticPropertyCrossReference_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__KeyAxiom__PropertiesAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getKeyAxiomAccess().getPropertiesPropertyCrossReference_1_0()); }
		(
			{ before(grammarAccess.getKeyAxiomAccess().getPropertiesPropertyRefParserRuleCall_1_0_1()); }
			ruleRef
			{ after(grammarAccess.getKeyAxiomAccess().getPropertiesPropertyRefParserRuleCall_1_0_1()); }
		)
		{ after(grammarAccess.getKeyAxiomAccess().getPropertiesPropertyCrossReference_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__KeyAxiom__PropertiesAssignment_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getKeyAxiomAccess().getPropertiesPropertyCrossReference_2_1_0()); }
		(
			{ before(grammarAccess.getKeyAxiomAccess().getPropertiesPropertyRefParserRuleCall_2_1_0_1()); }
			ruleRef
			{ after(grammarAccess.getKeyAxiomAccess().getPropertiesPropertyRefParserRuleCall_2_1_0_1()); }
		)
		{ after(grammarAccess.getKeyAxiomAccess().getPropertiesPropertyCrossReference_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__InstanceEnumerationAxiom__InstancesAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getInstanceEnumerationAxiomAccess().getInstancesConceptInstanceCrossReference_1_0()); }
		(
			{ before(grammarAccess.getInstanceEnumerationAxiomAccess().getInstancesConceptInstanceRefParserRuleCall_1_0_1()); }
			ruleRef
			{ after(grammarAccess.getInstanceEnumerationAxiomAccess().getInstancesConceptInstanceRefParserRuleCall_1_0_1()); }
		)
		{ after(grammarAccess.getInstanceEnumerationAxiomAccess().getInstancesConceptInstanceCrossReference_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__InstanceEnumerationAxiom__InstancesAssignment_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getInstanceEnumerationAxiomAccess().getInstancesConceptInstanceCrossReference_2_1_0()); }
		(
			{ before(grammarAccess.getInstanceEnumerationAxiomAccess().getInstancesConceptInstanceRefParserRuleCall_2_1_0_1()); }
			ruleRef
			{ after(grammarAccess.getInstanceEnumerationAxiomAccess().getInstancesConceptInstanceRefParserRuleCall_2_1_0_1()); }
		)
		{ after(grammarAccess.getInstanceEnumerationAxiomAccess().getInstancesConceptInstanceCrossReference_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__LiteralEnumerationAxiom__LiteralsAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLiteralEnumerationAxiomAccess().getLiteralsLiteralParserRuleCall_1_0()); }
		ruleLiteral
		{ after(grammarAccess.getLiteralEnumerationAxiomAccess().getLiteralsLiteralParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__LiteralEnumerationAxiom__LiteralsAssignment_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLiteralEnumerationAxiomAccess().getLiteralsLiteralParserRuleCall_2_1_0()); }
		ruleLiteral
		{ after(grammarAccess.getLiteralEnumerationAxiomAccess().getLiteralsLiteralParserRuleCall_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ConceptTypeAssertion__TypeAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getConceptTypeAssertionAccess().getTypeConceptCrossReference_0()); }
		(
			{ before(grammarAccess.getConceptTypeAssertionAccess().getTypeConceptRefParserRuleCall_0_1()); }
			ruleRef
			{ after(grammarAccess.getConceptTypeAssertionAccess().getTypeConceptRefParserRuleCall_0_1()); }
		)
		{ after(grammarAccess.getConceptTypeAssertionAccess().getTypeConceptCrossReference_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationTypeAssertion__TypeAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationTypeAssertionAccess().getTypeRelationEntityCrossReference_0()); }
		(
			{ before(grammarAccess.getRelationTypeAssertionAccess().getTypeRelationEntityRefParserRuleCall_0_1()); }
			ruleRef
			{ after(grammarAccess.getRelationTypeAssertionAccess().getTypeRelationEntityRefParserRuleCall_0_1()); }
		)
		{ after(grammarAccess.getRelationTypeAssertionAccess().getTypeRelationEntityCrossReference_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyValueAssertion__PropertyAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPropertyValueAssertionAccess().getPropertySemanticPropertyCrossReference_0_0()); }
		(
			{ before(grammarAccess.getPropertyValueAssertionAccess().getPropertySemanticPropertyRefParserRuleCall_0_0_1()); }
			ruleRef
			{ after(grammarAccess.getPropertyValueAssertionAccess().getPropertySemanticPropertyRefParserRuleCall_0_0_1()); }
		)
		{ after(grammarAccess.getPropertyValueAssertionAccess().getPropertySemanticPropertyCrossReference_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyValue__LiteralValueAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPropertyValueAccess().getLiteralValueLiteralParserRuleCall_0_0()); }
		ruleLiteral
		{ after(grammarAccess.getPropertyValueAccess().getLiteralValueLiteralParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyValue__ContainedValueAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPropertyValueAccess().getContainedValueAnonymousInstanceParserRuleCall_1_0()); }
		ruleAnonymousInstance
		{ after(grammarAccess.getPropertyValueAccess().getContainedValueAnonymousInstanceParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyValue__ReferencedValueAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPropertyValueAccess().getReferencedValueNamedInstanceCrossReference_2_0()); }
		(
			{ before(grammarAccess.getPropertyValueAccess().getReferencedValueNamedInstanceRefParserRuleCall_2_0_1()); }
			ruleRef
			{ after(grammarAccess.getPropertyValueAccess().getReferencedValueNamedInstanceRefParserRuleCall_2_0_1()); }
		)
		{ after(grammarAccess.getPropertyValueAccess().getReferencedValueNamedInstanceCrossReference_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__TypePredicate__TypeAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTypePredicateAccess().getTypeTypeCrossReference_0_0()); }
		(
			{ before(grammarAccess.getTypePredicateAccess().getTypeTypeRefParserRuleCall_0_0_1()); }
			ruleRef
			{ after(grammarAccess.getTypePredicateAccess().getTypeTypeRefParserRuleCall_0_0_1()); }
		)
		{ after(grammarAccess.getTypePredicateAccess().getTypeTypeCrossReference_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__TypePredicate__ArgumentAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTypePredicateAccess().getArgumentArgumentParserRuleCall_2_0()); }
		ruleArgument
		{ after(grammarAccess.getTypePredicateAccess().getArgumentArgumentParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntityPredicate__TypeAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationEntityPredicateAccess().getTypeRelationEntityCrossReference_0_0()); }
		(
			{ before(grammarAccess.getRelationEntityPredicateAccess().getTypeRelationEntityRefParserRuleCall_0_0_1()); }
			ruleRef
			{ after(grammarAccess.getRelationEntityPredicateAccess().getTypeRelationEntityRefParserRuleCall_0_0_1()); }
		)
		{ after(grammarAccess.getRelationEntityPredicateAccess().getTypeRelationEntityCrossReference_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntityPredicate__Argument1Assignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationEntityPredicateAccess().getArgument1ArgumentParserRuleCall_2_0()); }
		ruleArgument
		{ after(grammarAccess.getRelationEntityPredicateAccess().getArgument1ArgumentParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntityPredicate__ArgumentAssignment_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationEntityPredicateAccess().getArgumentArgumentParserRuleCall_4_0()); }
		ruleArgument
		{ after(grammarAccess.getRelationEntityPredicateAccess().getArgumentArgumentParserRuleCall_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationEntityPredicate__Argument2Assignment_6
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationEntityPredicateAccess().getArgument2ArgumentParserRuleCall_6_0()); }
		ruleArgument
		{ after(grammarAccess.getRelationEntityPredicateAccess().getArgument2ArgumentParserRuleCall_6_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyPredicate__PropertyAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPropertyPredicateAccess().getPropertyPropertyCrossReference_0_0()); }
		(
			{ before(grammarAccess.getPropertyPredicateAccess().getPropertyPropertyRefParserRuleCall_0_0_1()); }
			ruleRef
			{ after(grammarAccess.getPropertyPredicateAccess().getPropertyPropertyRefParserRuleCall_0_0_1()); }
		)
		{ after(grammarAccess.getPropertyPredicateAccess().getPropertyPropertyCrossReference_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyPredicate__Argument1Assignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPropertyPredicateAccess().getArgument1ArgumentParserRuleCall_2_0()); }
		ruleArgument
		{ after(grammarAccess.getPropertyPredicateAccess().getArgument1ArgumentParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyPredicate__Argument2Assignment_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPropertyPredicateAccess().getArgument2ArgumentParserRuleCall_4_0()); }
		ruleArgument
		{ after(grammarAccess.getPropertyPredicateAccess().getArgument2ArgumentParserRuleCall_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SameAsPredicate__Argument1Assignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSameAsPredicateAccess().getArgument1ArgumentParserRuleCall_2_0()); }
		ruleArgument
		{ after(grammarAccess.getSameAsPredicateAccess().getArgument1ArgumentParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SameAsPredicate__Argument2Assignment_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSameAsPredicateAccess().getArgument2ArgumentParserRuleCall_4_0()); }
		ruleArgument
		{ after(grammarAccess.getSameAsPredicateAccess().getArgument2ArgumentParserRuleCall_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__DifferentFromPredicate__Argument1Assignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDifferentFromPredicateAccess().getArgument1ArgumentParserRuleCall_2_0()); }
		ruleArgument
		{ after(grammarAccess.getDifferentFromPredicateAccess().getArgument1ArgumentParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__DifferentFromPredicate__Argument2Assignment_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDifferentFromPredicateAccess().getArgument2ArgumentParserRuleCall_4_0()); }
		ruleArgument
		{ after(grammarAccess.getDifferentFromPredicateAccess().getArgument2ArgumentParserRuleCall_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__BuiltInPredicate__BuiltInAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getBuiltInPredicateAccess().getBuiltInBuiltInCrossReference_2_0()); }
		(
			{ before(grammarAccess.getBuiltInPredicateAccess().getBuiltInBuiltInRefParserRuleCall_2_0_1()); }
			ruleRef
			{ after(grammarAccess.getBuiltInPredicateAccess().getBuiltInBuiltInRefParserRuleCall_2_0_1()); }
		)
		{ after(grammarAccess.getBuiltInPredicateAccess().getBuiltInBuiltInCrossReference_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__BuiltInPredicate__ArgumentsAssignment_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getBuiltInPredicateAccess().getArgumentsArgumentParserRuleCall_4_0()); }
		ruleArgument
		{ after(grammarAccess.getBuiltInPredicateAccess().getArgumentsArgumentParserRuleCall_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__BuiltInPredicate__ArgumentsAssignment_5_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getBuiltInPredicateAccess().getArgumentsArgumentParserRuleCall_5_1_0()); }
		ruleArgument
		{ after(grammarAccess.getBuiltInPredicateAccess().getArgumentsArgumentParserRuleCall_5_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Argument__VariableAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getArgumentAccess().getVariableIDTerminalRuleCall_0_0()); }
		RULE_ID
		{ after(grammarAccess.getArgumentAccess().getVariableIDTerminalRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Argument__LiteralAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getArgumentAccess().getLiteralLiteralParserRuleCall_1_0()); }
		ruleLiteral
		{ after(grammarAccess.getArgumentAccess().getLiteralLiteralParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Argument__InstanceAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getArgumentAccess().getInstanceNamedInstanceCrossReference_2_0()); }
		(
			{ before(grammarAccess.getArgumentAccess().getInstanceNamedInstanceCrossRefParserRuleCall_2_0_1()); }
			ruleCrossRef
			{ after(grammarAccess.getArgumentAccess().getInstanceNamedInstanceCrossRefParserRuleCall_2_0_1()); }
		)
		{ after(grammarAccess.getArgumentAccess().getInstanceNamedInstanceCrossReference_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__IntegerLiteral__ValueAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getIntegerLiteralAccess().getValueIntegerParserRuleCall_0()); }
		ruleInteger
		{ after(grammarAccess.getIntegerLiteralAccess().getValueIntegerParserRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__DecimalLiteral__ValueAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDecimalLiteralAccess().getValueDecimalParserRuleCall_0()); }
		ruleDecimal
		{ after(grammarAccess.getDecimalLiteralAccess().getValueDecimalParserRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__DoubleLiteral__ValueAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDoubleLiteralAccess().getValueDoubleParserRuleCall_0()); }
		ruleDouble
		{ after(grammarAccess.getDoubleLiteralAccess().getValueDoubleParserRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__BooleanLiteral__ValueAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getBooleanLiteralAccess().getValueBooleanParserRuleCall_0()); }
		ruleBoolean
		{ after(grammarAccess.getBooleanLiteralAccess().getValueBooleanParserRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__QuotedLiteral__ValueAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getQuotedLiteralAccess().getValueSTRINGTerminalRuleCall_0_0()); }
		RULE_STRING
		{ after(grammarAccess.getQuotedLiteralAccess().getValueSTRINGTerminalRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__QuotedLiteral__TypeAssignment_1_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getQuotedLiteralAccess().getTypeScalarCrossReference_1_0_1_0()); }
		(
			{ before(grammarAccess.getQuotedLiteralAccess().getTypeScalarRefParserRuleCall_1_0_1_0_1()); }
			ruleRef
			{ after(grammarAccess.getQuotedLiteralAccess().getTypeScalarRefParserRuleCall_1_0_1_0_1()); }
		)
		{ after(grammarAccess.getQuotedLiteralAccess().getTypeScalarCrossReference_1_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__QuotedLiteral__LangTagAssignment_1_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getQuotedLiteralAccess().getLangTagIDTerminalRuleCall_1_1_1_0()); }
		RULE_ID
		{ after(grammarAccess.getQuotedLiteralAccess().getLangTagIDTerminalRuleCall_1_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

RULE_BOOLEAN_STR : ('false'|'true');

RULE_UNSIGNED_INTEGER_STR : RULE_NUMERIC+;

RULE_INTEGER_STR : ('+'|'-')? RULE_NUMERIC+;

RULE_DECIMAL_STR : ('+'|'-')? (RULE_NUMERIC+ ('.' RULE_NUMERIC*)?|'.' RULE_NUMERIC+);

RULE_DOUBLE_STR : ('+'|'-')? (RULE_NUMERIC+ ('.' RULE_NUMERIC*)?|'.' RULE_NUMERIC+) ('e'|'E') ('+'|'-')? RULE_NUMERIC+;

RULE_STRING : ('"' (~(('"'|'\\'))|'\\' .)* '"'|'\'' (~(('\''|'\\'))|'\\' .)* '\''|'\'\'\'' ( options {greedy=false;} : . )*'\'\'\''|'"""' ( options {greedy=false;} : . )*'"""');

RULE_NAMESPACE : '<' ~(('>'|' '|'#'))* ('#'|'/') '>';

RULE_IRI : '<' ~(('>'|' '))* '>';

RULE_ID : RULE_IDFRAG;

RULE_QNAME : RULE_IDFRAG ':' RULE_IDFRAG;

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

fragment RULE_IDFRAG : '^'? (RULE_ALPHA|RULE_NUMERIC|RULE_SPECIAL) (RULE_ALPHA|RULE_NUMERIC|RULE_SPECIAL|'$')*;

fragment RULE_ALPHA : ('a'..'z'|'A'..'Z');

fragment RULE_NUMERIC : '0'..'9';

fragment RULE_SPECIAL : ('_'|'-'|'.'|'~'|'%');
