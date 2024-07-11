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
package io.opencaesar.oml.dsl.ide.contentassist.antlr;

import com.google.common.collect.ImmutableMap;
import com.google.inject.Inject;
import com.google.inject.Singleton;
import io.opencaesar.oml.dsl.ide.contentassist.antlr.internal.InternalOmlParser;
import io.opencaesar.oml.dsl.services.OmlGrammarAccess;
import java.util.Map;
import org.eclipse.xtext.AbstractElement;
import org.eclipse.xtext.ide.editor.contentassist.antlr.AbstractContentAssistParser;

public class OmlParser extends AbstractContentAssistParser {

	@Singleton
	public static final class NameMappings {
		
		private final Map<AbstractElement, String> mappings;
		
		@Inject
		public NameMappings(OmlGrammarAccess grammarAccess) {
			ImmutableMap.Builder<AbstractElement, String> builder = ImmutableMap.builder();
			init(builder, grammarAccess);
			this.mappings = builder.build();
		}
		
		public String getRuleName(AbstractElement element) {
			return mappings.get(element);
		}
		
		private static void init(ImmutableMap.Builder<AbstractElement, String> builder, OmlGrammarAccess grammarAccess) {
			builder.put(grammarAccess.getOntologyAccess().getAlternatives(), "rule__Ontology__Alternatives");
			builder.put(grammarAccess.getAnnotationValueAccess().getAlternatives(), "rule__AnnotationValue__Alternatives");
			builder.put(grammarAccess.getVocabularyBoxAccess().getAlternatives(), "rule__VocabularyBox__Alternatives");
			builder.put(grammarAccess.getVocabularyAccess().getOwnedImportsAlternatives_6_0(), "rule__Vocabulary__OwnedImportsAlternatives_6_0");
			builder.put(grammarAccess.getVocabularyBundleAccess().getOwnedImportsAlternatives_7_0(), "rule__VocabularyBundle__OwnedImportsAlternatives_7_0");
			builder.put(grammarAccess.getDescriptionBoxAccess().getAlternatives(), "rule__DescriptionBox__Alternatives");
			builder.put(grammarAccess.getDescriptionAccess().getOwnedImportsAlternatives_6_0(), "rule__Description__OwnedImportsAlternatives_6_0");
			builder.put(grammarAccess.getDescriptionBundleAccess().getOwnedImportsAlternatives_7_0(), "rule__DescriptionBundle__OwnedImportsAlternatives_7_0");
			builder.put(grammarAccess.getSpecializableTermAccess().getAlternatives(), "rule__SpecializableTerm__Alternatives");
			builder.put(grammarAccess.getTypeAccess().getAlternatives(), "rule__Type__Alternatives");
			builder.put(grammarAccess.getClassifierAccess().getAlternatives(), "rule__Classifier__Alternatives");
			builder.put(grammarAccess.getEntityAccess().getAlternatives(), "rule__Entity__Alternatives");
			builder.put(grammarAccess.getAspectAccess().getAlternatives_1(), "rule__Aspect__Alternatives_1");
			builder.put(grammarAccess.getConceptAccess().getAlternatives_1(), "rule__Concept__Alternatives_1");
			builder.put(grammarAccess.getRelationEntityAccess().getAlternatives_1(), "rule__RelationEntity__Alternatives_1");
			builder.put(grammarAccess.getStructureAccess().getAlternatives_1(), "rule__Structure__Alternatives_1");
			builder.put(grammarAccess.getClassifierSpecializationAccess().getAlternatives_1(), "rule__ClassifierSpecialization__Alternatives_1");
			builder.put(grammarAccess.getClassifierEquivalenceAxiomAccess().getAlternatives(), "rule__ClassifierEquivalenceAxiom__Alternatives");
			builder.put(grammarAccess.getScalarAccess().getAlternatives_1(), "rule__Scalar__Alternatives_1");
			builder.put(grammarAccess.getPropertyAccess().getAlternatives(), "rule__Property__Alternatives");
			builder.put(grammarAccess.getAnnotationPropertyAccess().getAlternatives_1(), "rule__AnnotationProperty__Alternatives_1");
			builder.put(grammarAccess.getSemanticPropertyAccess().getAlternatives(), "rule__SemanticProperty__Alternatives");
			builder.put(grammarAccess.getScalarPropertyAccess().getAlternatives_1(), "rule__ScalarProperty__Alternatives_1");
			builder.put(grammarAccess.getStructuredPropertyAccess().getAlternatives_1(), "rule__StructuredProperty__Alternatives_1");
			builder.put(grammarAccess.getRelationAccess().getAlternatives(), "rule__Relation__Alternatives");
			builder.put(grammarAccess.getUnreifiedRelationAccess().getAlternatives_1(), "rule__UnreifiedRelation__Alternatives_1");
			builder.put(grammarAccess.getRuleAccess().getAlternatives_1(), "rule__Rule__Alternatives_1");
			builder.put(grammarAccess.getBuiltInAccess().getAlternatives_1(), "rule__BuiltIn__Alternatives_1");
			builder.put(grammarAccess.getAnonymousInstanceAccess().getAlternatives(), "rule__AnonymousInstance__Alternatives");
			builder.put(grammarAccess.getNamedInstanceAccess().getAlternatives(), "rule__NamedInstance__Alternatives");
			builder.put(grammarAccess.getConceptInstanceAccess().getAlternatives_1(), "rule__ConceptInstance__Alternatives_1");
			builder.put(grammarAccess.getRelationInstanceAccess().getAlternatives_1(), "rule__RelationInstance__Alternatives_1");
			builder.put(grammarAccess.getVocabularyStatementAccess().getAlternatives(), "rule__VocabularyStatement__Alternatives");
			builder.put(grammarAccess.getImportAccess().getAlternatives(), "rule__Import__Alternatives");
			builder.put(grammarAccess.getPropertyRestrictionAxiomAccess().getAlternatives(), "rule__PropertyRestrictionAxiom__Alternatives");
			builder.put(grammarAccess.getPropertyValueRestrictionAxiomAccess().getAlternatives_3(), "rule__PropertyValueRestrictionAxiom__Alternatives_3");
			builder.put(grammarAccess.getPropertyValueAccess().getAlternatives(), "rule__PropertyValue__Alternatives");
			builder.put(grammarAccess.getPredicateAccess().getAlternatives(), "rule__Predicate__Alternatives");
			builder.put(grammarAccess.getUnaryPredicateAccess().getAlternatives(), "rule__UnaryPredicate__Alternatives");
			builder.put(grammarAccess.getBinaryPredicateAccess().getAlternatives(), "rule__BinaryPredicate__Alternatives");
			builder.put(grammarAccess.getArgumentAccess().getAlternatives(), "rule__Argument__Alternatives");
			builder.put(grammarAccess.getLiteralAccess().getAlternatives(), "rule__Literal__Alternatives");
			builder.put(grammarAccess.getQuotedLiteralAccess().getAlternatives_1(), "rule__QuotedLiteral__Alternatives_1");
			builder.put(grammarAccess.getRefAccess().getAlternatives(), "rule__Ref__Alternatives");
			builder.put(grammarAccess.getCrossRefAccess().getAlternatives(), "rule__CrossRef__Alternatives");
			builder.put(grammarAccess.getIntegerAccess().getAlternatives(), "rule__Integer__Alternatives");
			builder.put(grammarAccess.getRangeRestrictionKindAccess().getAlternatives(), "rule__RangeRestrictionKind__Alternatives");
			builder.put(grammarAccess.getCardinalityRestrictionKindAccess().getAlternatives(), "rule__CardinalityRestrictionKind__Alternatives");
			builder.put(grammarAccess.getAnnotationAccess().getGroup(), "rule__Annotation__Group__0");
			builder.put(grammarAccess.getAnnotationAccess().getGroup_3(), "rule__Annotation__Group_3__0");
			builder.put(grammarAccess.getAnnotationAccess().getGroup_3_1(), "rule__Annotation__Group_3_1__0");
			builder.put(grammarAccess.getVocabularyAccess().getGroup(), "rule__Vocabulary__Group__0");
			builder.put(grammarAccess.getVocabularyBundleAccess().getGroup(), "rule__VocabularyBundle__Group__0");
			builder.put(grammarAccess.getDescriptionAccess().getGroup(), "rule__Description__Group__0");
			builder.put(grammarAccess.getDescriptionBundleAccess().getGroup(), "rule__DescriptionBundle__Group__0");
			builder.put(grammarAccess.getAspectAccess().getGroup(), "rule__Aspect__Group__0");
			builder.put(grammarAccess.getAspectAccess().getGroup_1_0(), "rule__Aspect__Group_1_0__0");
			builder.put(grammarAccess.getAspectAccess().getGroup_1_1(), "rule__Aspect__Group_1_1__0");
			builder.put(grammarAccess.getAspectAccess().getGroup_2(), "rule__Aspect__Group_2__0");
			builder.put(grammarAccess.getConceptAccess().getGroup(), "rule__Concept__Group__0");
			builder.put(grammarAccess.getConceptAccess().getGroup_1_0(), "rule__Concept__Group_1_0__0");
			builder.put(grammarAccess.getConceptAccess().getGroup_1_1(), "rule__Concept__Group_1_1__0");
			builder.put(grammarAccess.getConceptAccess().getGroup_2(), "rule__Concept__Group_2__0");
			builder.put(grammarAccess.getRelationEntityAccess().getGroup(), "rule__RelationEntity__Group__0");
			builder.put(grammarAccess.getRelationEntityAccess().getGroup_1_0(), "rule__RelationEntity__Group_1_0__0");
			builder.put(grammarAccess.getRelationEntityAccess().getGroup_1_1(), "rule__RelationEntity__Group_1_1__0");
			builder.put(grammarAccess.getRelationEntityAccess().getGroup_2(), "rule__RelationEntity__Group_2__0");
			builder.put(grammarAccess.getRelationEntityAccess().getGroup_2_1(), "rule__RelationEntity__Group_2_1__0");
			builder.put(grammarAccess.getRelationEntityAccess().getGroup_2_1_2(), "rule__RelationEntity__Group_2_1_2__0");
			builder.put(grammarAccess.getRelationEntityAccess().getGroup_2_2(), "rule__RelationEntity__Group_2_2__0");
			builder.put(grammarAccess.getRelationEntityAccess().getGroup_2_2_2(), "rule__RelationEntity__Group_2_2_2__0");
			builder.put(grammarAccess.getRelationEntityAccess().getGroup_2_5_1(), "rule__RelationEntity__Group_2_5_1__0");
			builder.put(grammarAccess.getStructureAccess().getGroup(), "rule__Structure__Group__0");
			builder.put(grammarAccess.getStructureAccess().getGroup_1_0(), "rule__Structure__Group_1_0__0");
			builder.put(grammarAccess.getStructureAccess().getGroup_1_1(), "rule__Structure__Group_1_1__0");
			builder.put(grammarAccess.getClassifierSpecializationAccess().getGroup(), "rule__ClassifierSpecialization__Group__0");
			builder.put(grammarAccess.getClassifierSpecializationAccess().getGroup_1_0(), "rule__ClassifierSpecialization__Group_1_0__0");
			builder.put(grammarAccess.getClassifierSpecializationAccess().getGroup_1_0_1(), "rule__ClassifierSpecialization__Group_1_0_1__0");
			builder.put(grammarAccess.getClassifierSpecializationAccess().getGroup_1_1(), "rule__ClassifierSpecialization__Group_1_1__0");
			builder.put(grammarAccess.getClassifierSpecializationAccess().getGroup_1_1_0(), "rule__ClassifierSpecialization__Group_1_1_0__0");
			builder.put(grammarAccess.getClassifierSpecializationAccess().getGroup_1_1_0_1(), "rule__ClassifierSpecialization__Group_1_1_0_1__0");
			builder.put(grammarAccess.getClassifierEquivalenceAccess().getGroup(), "rule__ClassifierEquivalence__Group__0");
			builder.put(grammarAccess.getClassifierEquivalenceAccess().getGroup_2(), "rule__ClassifierEquivalence__Group_2__0");
			builder.put(grammarAccess.getClassifierEquivalenceAxiomAccess().getGroup_0(), "rule__ClassifierEquivalenceAxiom__Group_0__0");
			builder.put(grammarAccess.getClassifierEquivalenceAxiomAccess().getGroup_0_1(), "rule__ClassifierEquivalenceAxiom__Group_0_1__0");
			builder.put(grammarAccess.getClassifierEquivalenceAxiomAccess().getGroup_1(), "rule__ClassifierEquivalenceAxiom__Group_1__0");
			builder.put(grammarAccess.getClassifierEquivalenceAxiomAccess().getGroup_1_1(), "rule__ClassifierEquivalenceAxiom__Group_1_1__0");
			builder.put(grammarAccess.getClassifierEquivalenceAxiomAccess().getGroup_1_1_1(), "rule__ClassifierEquivalenceAxiom__Group_1_1_1__0");
			builder.put(grammarAccess.getScalarAccess().getGroup(), "rule__Scalar__Group__0");
			builder.put(grammarAccess.getScalarAccess().getGroup_1_0(), "rule__Scalar__Group_1_0__0");
			builder.put(grammarAccess.getScalarAccess().getGroup_1_1(), "rule__Scalar__Group_1_1__0");
			builder.put(grammarAccess.getScalarAccess().getGroup_2(), "rule__Scalar__Group_2__0");
			builder.put(grammarAccess.getScalarSpecializationAccess().getGroup(), "rule__ScalarSpecialization__Group__0");
			builder.put(grammarAccess.getScalarSpecializationAccess().getGroup_2(), "rule__ScalarSpecialization__Group_2__0");
			builder.put(grammarAccess.getScalarEquivalenceAccess().getGroup(), "rule__ScalarEquivalence__Group__0");
			builder.put(grammarAccess.getScalarEquivalenceAccess().getGroup_2(), "rule__ScalarEquivalence__Group_2__0");
			builder.put(grammarAccess.getScalarEquivalenceAxiomAccess().getGroup(), "rule__ScalarEquivalenceAxiom__Group__0");
			builder.put(grammarAccess.getScalarEquivalenceAxiomAccess().getGroup_1(), "rule__ScalarEquivalenceAxiom__Group_1__0");
			builder.put(grammarAccess.getScalarEquivalenceAxiomAccess().getGroup_1_1_0(), "rule__ScalarEquivalenceAxiom__Group_1_1_0__0");
			builder.put(grammarAccess.getScalarEquivalenceAxiomAccess().getGroup_1_1_1(), "rule__ScalarEquivalenceAxiom__Group_1_1_1__0");
			builder.put(grammarAccess.getScalarEquivalenceAxiomAccess().getGroup_1_1_2(), "rule__ScalarEquivalenceAxiom__Group_1_1_2__0");
			builder.put(grammarAccess.getScalarEquivalenceAxiomAccess().getGroup_1_1_3(), "rule__ScalarEquivalenceAxiom__Group_1_1_3__0");
			builder.put(grammarAccess.getScalarEquivalenceAxiomAccess().getGroup_1_1_4(), "rule__ScalarEquivalenceAxiom__Group_1_1_4__0");
			builder.put(grammarAccess.getScalarEquivalenceAxiomAccess().getGroup_1_1_5(), "rule__ScalarEquivalenceAxiom__Group_1_1_5__0");
			builder.put(grammarAccess.getScalarEquivalenceAxiomAccess().getGroup_1_1_6(), "rule__ScalarEquivalenceAxiom__Group_1_1_6__0");
			builder.put(grammarAccess.getScalarEquivalenceAxiomAccess().getGroup_1_1_7(), "rule__ScalarEquivalenceAxiom__Group_1_1_7__0");
			builder.put(grammarAccess.getScalarEquivalenceAxiomAccess().getGroup_1_1_8(), "rule__ScalarEquivalenceAxiom__Group_1_1_8__0");
			builder.put(grammarAccess.getAnnotationPropertyAccess().getGroup(), "rule__AnnotationProperty__Group__0");
			builder.put(grammarAccess.getAnnotationPropertyAccess().getGroup_1_0(), "rule__AnnotationProperty__Group_1_0__0");
			builder.put(grammarAccess.getAnnotationPropertyAccess().getGroup_1_1(), "rule__AnnotationProperty__Group_1_1__0");
			builder.put(grammarAccess.getScalarPropertyAccess().getGroup(), "rule__ScalarProperty__Group__0");
			builder.put(grammarAccess.getScalarPropertyAccess().getGroup_1_0(), "rule__ScalarProperty__Group_1_0__0");
			builder.put(grammarAccess.getScalarPropertyAccess().getGroup_1_1(), "rule__ScalarProperty__Group_1_1__0");
			builder.put(grammarAccess.getScalarPropertyAccess().getGroup_2(), "rule__ScalarProperty__Group_2__0");
			builder.put(grammarAccess.getScalarPropertyAccess().getGroup_2_1(), "rule__ScalarProperty__Group_2_1__0");
			builder.put(grammarAccess.getScalarPropertyAccess().getGroup_2_1_2(), "rule__ScalarProperty__Group_2_1_2__0");
			builder.put(grammarAccess.getScalarPropertyAccess().getGroup_2_2(), "rule__ScalarProperty__Group_2_2__0");
			builder.put(grammarAccess.getScalarPropertyAccess().getGroup_2_2_2(), "rule__ScalarProperty__Group_2_2_2__0");
			builder.put(grammarAccess.getStructuredPropertyAccess().getGroup(), "rule__StructuredProperty__Group__0");
			builder.put(grammarAccess.getStructuredPropertyAccess().getGroup_1_0(), "rule__StructuredProperty__Group_1_0__0");
			builder.put(grammarAccess.getStructuredPropertyAccess().getGroup_1_1(), "rule__StructuredProperty__Group_1_1__0");
			builder.put(grammarAccess.getStructuredPropertyAccess().getGroup_2(), "rule__StructuredProperty__Group_2__0");
			builder.put(grammarAccess.getStructuredPropertyAccess().getGroup_2_1(), "rule__StructuredProperty__Group_2_1__0");
			builder.put(grammarAccess.getStructuredPropertyAccess().getGroup_2_1_2(), "rule__StructuredProperty__Group_2_1_2__0");
			builder.put(grammarAccess.getStructuredPropertyAccess().getGroup_2_2(), "rule__StructuredProperty__Group_2_2__0");
			builder.put(grammarAccess.getStructuredPropertyAccess().getGroup_2_2_2(), "rule__StructuredProperty__Group_2_2_2__0");
			builder.put(grammarAccess.getForwardRelationAccess().getGroup(), "rule__ForwardRelation__Group__0");
			builder.put(grammarAccess.getReverseRelationAccess().getGroup(), "rule__ReverseRelation__Group__0");
			builder.put(grammarAccess.getUnreifiedRelationAccess().getGroup(), "rule__UnreifiedRelation__Group__0");
			builder.put(grammarAccess.getUnreifiedRelationAccess().getGroup_1_0(), "rule__UnreifiedRelation__Group_1_0__0");
			builder.put(grammarAccess.getUnreifiedRelationAccess().getGroup_1_1(), "rule__UnreifiedRelation__Group_1_1__0");
			builder.put(grammarAccess.getUnreifiedRelationAccess().getGroup_2(), "rule__UnreifiedRelation__Group_2__0");
			builder.put(grammarAccess.getUnreifiedRelationAccess().getGroup_2_1(), "rule__UnreifiedRelation__Group_2_1__0");
			builder.put(grammarAccess.getUnreifiedRelationAccess().getGroup_2_1_2(), "rule__UnreifiedRelation__Group_2_1_2__0");
			builder.put(grammarAccess.getUnreifiedRelationAccess().getGroup_2_2(), "rule__UnreifiedRelation__Group_2_2__0");
			builder.put(grammarAccess.getUnreifiedRelationAccess().getGroup_2_2_2(), "rule__UnreifiedRelation__Group_2_2_2__0");
			builder.put(grammarAccess.getUnreifiedRelationAccess().getGroup_2_4_1(), "rule__UnreifiedRelation__Group_2_4_1__0");
			builder.put(grammarAccess.getPropertySpecializationAccess().getGroup(), "rule__PropertySpecialization__Group__0");
			builder.put(grammarAccess.getPropertySpecializationAccess().getGroup_2(), "rule__PropertySpecialization__Group_2__0");
			builder.put(grammarAccess.getPropertyEquivalenceAccess().getGroup(), "rule__PropertyEquivalence__Group__0");
			builder.put(grammarAccess.getPropertyEquivalenceAccess().getGroup_2(), "rule__PropertyEquivalence__Group_2__0");
			builder.put(grammarAccess.getRuleAccess().getGroup(), "rule__Rule__Group__0");
			builder.put(grammarAccess.getRuleAccess().getGroup_1_0(), "rule__Rule__Group_1_0__0");
			builder.put(grammarAccess.getRuleAccess().getGroup_1_1(), "rule__Rule__Group_1_1__0");
			builder.put(grammarAccess.getRuleAccess().getGroup_2(), "rule__Rule__Group_2__0");
			builder.put(grammarAccess.getRuleAccess().getGroup_2_1(), "rule__Rule__Group_2_1__0");
			builder.put(grammarAccess.getRuleAccess().getGroup_2_1_1(), "rule__Rule__Group_2_1_1__0");
			builder.put(grammarAccess.getRuleAccess().getGroup_2_1_4(), "rule__Rule__Group_2_1_4__0");
			builder.put(grammarAccess.getBuiltInAccess().getGroup(), "rule__BuiltIn__Group__0");
			builder.put(grammarAccess.getBuiltInAccess().getGroup_1_0(), "rule__BuiltIn__Group_1_0__0");
			builder.put(grammarAccess.getBuiltInAccess().getGroup_1_1(), "rule__BuiltIn__Group_1_1__0");
			builder.put(grammarAccess.getStructureInstanceAccess().getGroup(), "rule__StructureInstance__Group__0");
			builder.put(grammarAccess.getAnonymousRelationInstanceAccess().getGroup(), "rule__AnonymousRelationInstance__Group__0");
			builder.put(grammarAccess.getConceptInstanceAccess().getGroup(), "rule__ConceptInstance__Group__0");
			builder.put(grammarAccess.getConceptInstanceAccess().getGroup_1_0(), "rule__ConceptInstance__Group_1_0__0");
			builder.put(grammarAccess.getConceptInstanceAccess().getGroup_1_1(), "rule__ConceptInstance__Group_1_1__0");
			builder.put(grammarAccess.getConceptInstanceAccess().getGroup_2(), "rule__ConceptInstance__Group_2__0");
			builder.put(grammarAccess.getConceptInstanceAccess().getGroup_2_2(), "rule__ConceptInstance__Group_2_2__0");
			builder.put(grammarAccess.getConceptInstanceAccess().getGroup_3(), "rule__ConceptInstance__Group_3__0");
			builder.put(grammarAccess.getRelationInstanceAccess().getGroup(), "rule__RelationInstance__Group__0");
			builder.put(grammarAccess.getRelationInstanceAccess().getGroup_1_0(), "rule__RelationInstance__Group_1_0__0");
			builder.put(grammarAccess.getRelationInstanceAccess().getGroup_1_1(), "rule__RelationInstance__Group_1_1__0");
			builder.put(grammarAccess.getRelationInstanceAccess().getGroup_2(), "rule__RelationInstance__Group_2__0");
			builder.put(grammarAccess.getRelationInstanceAccess().getGroup_2_2(), "rule__RelationInstance__Group_2_2__0");
			builder.put(grammarAccess.getRelationInstanceAccess().getGroup_3(), "rule__RelationInstance__Group_3__0");
			builder.put(grammarAccess.getRelationInstanceAccess().getGroup_3_1(), "rule__RelationInstance__Group_3_1__0");
			builder.put(grammarAccess.getRelationInstanceAccess().getGroup_3_1_2(), "rule__RelationInstance__Group_3_1_2__0");
			builder.put(grammarAccess.getRelationInstanceAccess().getGroup_3_2(), "rule__RelationInstance__Group_3_2__0");
			builder.put(grammarAccess.getRelationInstanceAccess().getGroup_3_2_2(), "rule__RelationInstance__Group_3_2_2__0");
			builder.put(grammarAccess.getExtensionAccess().getGroup(), "rule__Extension__Group__0");
			builder.put(grammarAccess.getExtensionAccess().getGroup_2(), "rule__Extension__Group_2__0");
			builder.put(grammarAccess.getUsageAccess().getGroup(), "rule__Usage__Group__0");
			builder.put(grammarAccess.getUsageAccess().getGroup_2(), "rule__Usage__Group_2__0");
			builder.put(grammarAccess.getInclusionAccess().getGroup(), "rule__Inclusion__Group__0");
			builder.put(grammarAccess.getInclusionAccess().getGroup_2(), "rule__Inclusion__Group_2__0");
			builder.put(grammarAccess.getPropertyRangeRestrictionAxiomAccess().getGroup(), "rule__PropertyRangeRestrictionAxiom__Group__0");
			builder.put(grammarAccess.getPropertyCardinalityRestrictionAxiomAccess().getGroup(), "rule__PropertyCardinalityRestrictionAxiom__Group__0");
			builder.put(grammarAccess.getPropertyValueRestrictionAxiomAccess().getGroup(), "rule__PropertyValueRestrictionAxiom__Group__0");
			builder.put(grammarAccess.getPropertySelfRestrictionAxiomAccess().getGroup(), "rule__PropertySelfRestrictionAxiom__Group__0");
			builder.put(grammarAccess.getKeyAxiomAccess().getGroup(), "rule__KeyAxiom__Group__0");
			builder.put(grammarAccess.getKeyAxiomAccess().getGroup_2(), "rule__KeyAxiom__Group_2__0");
			builder.put(grammarAccess.getInstanceEnumerationAxiomAccess().getGroup(), "rule__InstanceEnumerationAxiom__Group__0");
			builder.put(grammarAccess.getInstanceEnumerationAxiomAccess().getGroup_2(), "rule__InstanceEnumerationAxiom__Group_2__0");
			builder.put(grammarAccess.getLiteralEnumerationAxiomAccess().getGroup(), "rule__LiteralEnumerationAxiom__Group__0");
			builder.put(grammarAccess.getLiteralEnumerationAxiomAccess().getGroup_2(), "rule__LiteralEnumerationAxiom__Group_2__0");
			builder.put(grammarAccess.getPropertyValueAssertionAccess().getGroup(), "rule__PropertyValueAssertion__Group__0");
			builder.put(grammarAccess.getPropertyValueAssertionAccess().getGroup_2(), "rule__PropertyValueAssertion__Group_2__0");
			builder.put(grammarAccess.getTypePredicateAccess().getGroup(), "rule__TypePredicate__Group__0");
			builder.put(grammarAccess.getRelationEntityPredicateAccess().getGroup(), "rule__RelationEntityPredicate__Group__0");
			builder.put(grammarAccess.getPropertyPredicateAccess().getGroup(), "rule__PropertyPredicate__Group__0");
			builder.put(grammarAccess.getSameAsPredicateAccess().getGroup(), "rule__SameAsPredicate__Group__0");
			builder.put(grammarAccess.getDifferentFromPredicateAccess().getGroup(), "rule__DifferentFromPredicate__Group__0");
			builder.put(grammarAccess.getBuiltInPredicateAccess().getGroup(), "rule__BuiltInPredicate__Group__0");
			builder.put(grammarAccess.getBuiltInPredicateAccess().getGroup_5(), "rule__BuiltInPredicate__Group_5__0");
			builder.put(grammarAccess.getQuotedLiteralAccess().getGroup(), "rule__QuotedLiteral__Group__0");
			builder.put(grammarAccess.getQuotedLiteralAccess().getGroup_1_0(), "rule__QuotedLiteral__Group_1_0__0");
			builder.put(grammarAccess.getQuotedLiteralAccess().getGroup_1_1(), "rule__QuotedLiteral__Group_1_1__0");
			builder.put(grammarAccess.getAnnotationAccess().getPropertyAssignment_2(), "rule__Annotation__PropertyAssignment_2");
			builder.put(grammarAccess.getAnnotationValueAccess().getLiteralValueAssignment_0(), "rule__AnnotationValue__LiteralValueAssignment_0");
			builder.put(grammarAccess.getAnnotationValueAccess().getReferencedValueAssignment_1(), "rule__AnnotationValue__ReferencedValueAssignment_1");
			builder.put(grammarAccess.getVocabularyAccess().getOwnedAnnotationsAssignment_0(), "rule__Vocabulary__OwnedAnnotationsAssignment_0");
			builder.put(grammarAccess.getVocabularyAccess().getNamespaceAssignment_2(), "rule__Vocabulary__NamespaceAssignment_2");
			builder.put(grammarAccess.getVocabularyAccess().getPrefixAssignment_4(), "rule__Vocabulary__PrefixAssignment_4");
			builder.put(grammarAccess.getVocabularyAccess().getOwnedImportsAssignment_6(), "rule__Vocabulary__OwnedImportsAssignment_6");
			builder.put(grammarAccess.getVocabularyAccess().getOwnedStatementsAssignment_7(), "rule__Vocabulary__OwnedStatementsAssignment_7");
			builder.put(grammarAccess.getVocabularyBundleAccess().getOwnedAnnotationsAssignment_0(), "rule__VocabularyBundle__OwnedAnnotationsAssignment_0");
			builder.put(grammarAccess.getVocabularyBundleAccess().getNamespaceAssignment_3(), "rule__VocabularyBundle__NamespaceAssignment_3");
			builder.put(grammarAccess.getVocabularyBundleAccess().getPrefixAssignment_5(), "rule__VocabularyBundle__PrefixAssignment_5");
			builder.put(grammarAccess.getVocabularyBundleAccess().getOwnedImportsAssignment_7(), "rule__VocabularyBundle__OwnedImportsAssignment_7");
			builder.put(grammarAccess.getDescriptionAccess().getOwnedAnnotationsAssignment_0(), "rule__Description__OwnedAnnotationsAssignment_0");
			builder.put(grammarAccess.getDescriptionAccess().getNamespaceAssignment_2(), "rule__Description__NamespaceAssignment_2");
			builder.put(grammarAccess.getDescriptionAccess().getPrefixAssignment_4(), "rule__Description__PrefixAssignment_4");
			builder.put(grammarAccess.getDescriptionAccess().getOwnedImportsAssignment_6(), "rule__Description__OwnedImportsAssignment_6");
			builder.put(grammarAccess.getDescriptionAccess().getOwnedStatementsAssignment_7(), "rule__Description__OwnedStatementsAssignment_7");
			builder.put(grammarAccess.getDescriptionBundleAccess().getOwnedAnnotationsAssignment_0(), "rule__DescriptionBundle__OwnedAnnotationsAssignment_0");
			builder.put(grammarAccess.getDescriptionBundleAccess().getNamespaceAssignment_3(), "rule__DescriptionBundle__NamespaceAssignment_3");
			builder.put(grammarAccess.getDescriptionBundleAccess().getPrefixAssignment_5(), "rule__DescriptionBundle__PrefixAssignment_5");
			builder.put(grammarAccess.getDescriptionBundleAccess().getOwnedImportsAssignment_7(), "rule__DescriptionBundle__OwnedImportsAssignment_7");
			builder.put(grammarAccess.getAspectAccess().getOwnedAnnotationsAssignment_0(), "rule__Aspect__OwnedAnnotationsAssignment_0");
			builder.put(grammarAccess.getAspectAccess().getNameAssignment_1_0_1(), "rule__Aspect__NameAssignment_1_0_1");
			builder.put(grammarAccess.getAspectAccess().getRefAssignment_1_1_2(), "rule__Aspect__RefAssignment_1_1_2");
			builder.put(grammarAccess.getAspectAccess().getOwnedKeysAssignment_2_1(), "rule__Aspect__OwnedKeysAssignment_2_1");
			builder.put(grammarAccess.getConceptAccess().getOwnedAnnotationsAssignment_0(), "rule__Concept__OwnedAnnotationsAssignment_0");
			builder.put(grammarAccess.getConceptAccess().getNameAssignment_1_0_1(), "rule__Concept__NameAssignment_1_0_1");
			builder.put(grammarAccess.getConceptAccess().getRefAssignment_1_1_2(), "rule__Concept__RefAssignment_1_1_2");
			builder.put(grammarAccess.getConceptAccess().getOwnedEnumerationAssignment_2_1(), "rule__Concept__OwnedEnumerationAssignment_2_1");
			builder.put(grammarAccess.getConceptAccess().getOwnedKeysAssignment_2_2(), "rule__Concept__OwnedKeysAssignment_2_2");
			builder.put(grammarAccess.getRelationEntityAccess().getOwnedAnnotationsAssignment_0(), "rule__RelationEntity__OwnedAnnotationsAssignment_0");
			builder.put(grammarAccess.getRelationEntityAccess().getNameAssignment_1_0_2(), "rule__RelationEntity__NameAssignment_1_0_2");
			builder.put(grammarAccess.getRelationEntityAccess().getRefAssignment_1_1_3(), "rule__RelationEntity__RefAssignment_1_1_3");
			builder.put(grammarAccess.getRelationEntityAccess().getSourcesAssignment_2_1_1(), "rule__RelationEntity__SourcesAssignment_2_1_1");
			builder.put(grammarAccess.getRelationEntityAccess().getSourcesAssignment_2_1_2_1(), "rule__RelationEntity__SourcesAssignment_2_1_2_1");
			builder.put(grammarAccess.getRelationEntityAccess().getTargetsAssignment_2_2_1(), "rule__RelationEntity__TargetsAssignment_2_2_1");
			builder.put(grammarAccess.getRelationEntityAccess().getTargetsAssignment_2_2_2_1(), "rule__RelationEntity__TargetsAssignment_2_2_2_1");
			builder.put(grammarAccess.getRelationEntityAccess().getForwardRelationAssignment_2_3(), "rule__RelationEntity__ForwardRelationAssignment_2_3");
			builder.put(grammarAccess.getRelationEntityAccess().getReverseRelationAssignment_2_4(), "rule__RelationEntity__ReverseRelationAssignment_2_4");
			builder.put(grammarAccess.getRelationEntityAccess().getFunctionalAssignment_2_5_0(), "rule__RelationEntity__FunctionalAssignment_2_5_0");
			builder.put(grammarAccess.getRelationEntityAccess().getInverseFunctionalAssignment_2_5_1_0(), "rule__RelationEntity__InverseFunctionalAssignment_2_5_1_0");
			builder.put(grammarAccess.getRelationEntityAccess().getSymmetricAssignment_2_5_2(), "rule__RelationEntity__SymmetricAssignment_2_5_2");
			builder.put(grammarAccess.getRelationEntityAccess().getAsymmetricAssignment_2_5_3(), "rule__RelationEntity__AsymmetricAssignment_2_5_3");
			builder.put(grammarAccess.getRelationEntityAccess().getReflexiveAssignment_2_5_4(), "rule__RelationEntity__ReflexiveAssignment_2_5_4");
			builder.put(grammarAccess.getRelationEntityAccess().getIrreflexiveAssignment_2_5_5(), "rule__RelationEntity__IrreflexiveAssignment_2_5_5");
			builder.put(grammarAccess.getRelationEntityAccess().getTransitiveAssignment_2_5_6(), "rule__RelationEntity__TransitiveAssignment_2_5_6");
			builder.put(grammarAccess.getRelationEntityAccess().getOwnedKeysAssignment_2_6(), "rule__RelationEntity__OwnedKeysAssignment_2_6");
			builder.put(grammarAccess.getStructureAccess().getOwnedAnnotationsAssignment_0(), "rule__Structure__OwnedAnnotationsAssignment_0");
			builder.put(grammarAccess.getStructureAccess().getNameAssignment_1_0_1(), "rule__Structure__NameAssignment_1_0_1");
			builder.put(grammarAccess.getStructureAccess().getRefAssignment_1_1_2(), "rule__Structure__RefAssignment_1_1_2");
			builder.put(grammarAccess.getClassifierSpecializationAccess().getOwnedSpecializationsAssignment_1_0_0(), "rule__ClassifierSpecialization__OwnedSpecializationsAssignment_1_0_0");
			builder.put(grammarAccess.getClassifierSpecializationAccess().getOwnedSpecializationsAssignment_1_0_1_1(), "rule__ClassifierSpecialization__OwnedSpecializationsAssignment_1_0_1_1");
			builder.put(grammarAccess.getClassifierSpecializationAccess().getOwnedSpecializationsAssignment_1_1_0_0(), "rule__ClassifierSpecialization__OwnedSpecializationsAssignment_1_1_0_0");
			builder.put(grammarAccess.getClassifierSpecializationAccess().getOwnedSpecializationsAssignment_1_1_0_1_1(), "rule__ClassifierSpecialization__OwnedSpecializationsAssignment_1_1_0_1_1");
			builder.put(grammarAccess.getClassifierSpecializationAccess().getOwnedPropertyRestrictionsAssignment_1_1_2(), "rule__ClassifierSpecialization__OwnedPropertyRestrictionsAssignment_1_1_2");
			builder.put(grammarAccess.getClassifierEquivalenceAccess().getOwnedEquivalencesAssignment_1(), "rule__ClassifierEquivalence__OwnedEquivalencesAssignment_1");
			builder.put(grammarAccess.getClassifierEquivalenceAccess().getOwnedEquivalencesAssignment_2_1(), "rule__ClassifierEquivalence__OwnedEquivalencesAssignment_2_1");
			builder.put(grammarAccess.getClassifierEquivalenceAxiomAccess().getSuperClassifiersAssignment_0_0(), "rule__ClassifierEquivalenceAxiom__SuperClassifiersAssignment_0_0");
			builder.put(grammarAccess.getClassifierEquivalenceAxiomAccess().getSuperClassifiersAssignment_0_1_1(), "rule__ClassifierEquivalenceAxiom__SuperClassifiersAssignment_0_1_1");
			builder.put(grammarAccess.getClassifierEquivalenceAxiomAccess().getSuperClassifiersAssignment_1_1_0(), "rule__ClassifierEquivalenceAxiom__SuperClassifiersAssignment_1_1_0");
			builder.put(grammarAccess.getClassifierEquivalenceAxiomAccess().getSuperClassifiersAssignment_1_1_1_1(), "rule__ClassifierEquivalenceAxiom__SuperClassifiersAssignment_1_1_1_1");
			builder.put(grammarAccess.getClassifierEquivalenceAxiomAccess().getOwnedPropertyRestrictionsAssignment_1_3(), "rule__ClassifierEquivalenceAxiom__OwnedPropertyRestrictionsAssignment_1_3");
			builder.put(grammarAccess.getScalarAccess().getOwnedAnnotationsAssignment_0(), "rule__Scalar__OwnedAnnotationsAssignment_0");
			builder.put(grammarAccess.getScalarAccess().getNameAssignment_1_0_1(), "rule__Scalar__NameAssignment_1_0_1");
			builder.put(grammarAccess.getScalarAccess().getRefAssignment_1_1_2(), "rule__Scalar__RefAssignment_1_1_2");
			builder.put(grammarAccess.getScalarAccess().getOwnedEnumerationAssignment_2_1(), "rule__Scalar__OwnedEnumerationAssignment_2_1");
			builder.put(grammarAccess.getScalarSpecializationAccess().getOwnedSpecializationsAssignment_1(), "rule__ScalarSpecialization__OwnedSpecializationsAssignment_1");
			builder.put(grammarAccess.getScalarSpecializationAccess().getOwnedSpecializationsAssignment_2_1(), "rule__ScalarSpecialization__OwnedSpecializationsAssignment_2_1");
			builder.put(grammarAccess.getScalarEquivalenceAccess().getOwnedEquivalencesAssignment_1(), "rule__ScalarEquivalence__OwnedEquivalencesAssignment_1");
			builder.put(grammarAccess.getScalarEquivalenceAccess().getOwnedEquivalencesAssignment_2_1(), "rule__ScalarEquivalence__OwnedEquivalencesAssignment_2_1");
			builder.put(grammarAccess.getScalarEquivalenceAxiomAccess().getSuperScalarAssignment_0(), "rule__ScalarEquivalenceAxiom__SuperScalarAssignment_0");
			builder.put(grammarAccess.getScalarEquivalenceAxiomAccess().getLengthAssignment_1_1_0_1(), "rule__ScalarEquivalenceAxiom__LengthAssignment_1_1_0_1");
			builder.put(grammarAccess.getScalarEquivalenceAxiomAccess().getMinLengthAssignment_1_1_1_1(), "rule__ScalarEquivalenceAxiom__MinLengthAssignment_1_1_1_1");
			builder.put(grammarAccess.getScalarEquivalenceAxiomAccess().getMaxLengthAssignment_1_1_2_1(), "rule__ScalarEquivalenceAxiom__MaxLengthAssignment_1_1_2_1");
			builder.put(grammarAccess.getScalarEquivalenceAxiomAccess().getPatternAssignment_1_1_3_1(), "rule__ScalarEquivalenceAxiom__PatternAssignment_1_1_3_1");
			builder.put(grammarAccess.getScalarEquivalenceAxiomAccess().getLanguageAssignment_1_1_4_1(), "rule__ScalarEquivalenceAxiom__LanguageAssignment_1_1_4_1");
			builder.put(grammarAccess.getScalarEquivalenceAxiomAccess().getMinInclusiveAssignment_1_1_5_1(), "rule__ScalarEquivalenceAxiom__MinInclusiveAssignment_1_1_5_1");
			builder.put(grammarAccess.getScalarEquivalenceAxiomAccess().getMinExclusiveAssignment_1_1_6_1(), "rule__ScalarEquivalenceAxiom__MinExclusiveAssignment_1_1_6_1");
			builder.put(grammarAccess.getScalarEquivalenceAxiomAccess().getMaxInclusiveAssignment_1_1_7_1(), "rule__ScalarEquivalenceAxiom__MaxInclusiveAssignment_1_1_7_1");
			builder.put(grammarAccess.getScalarEquivalenceAxiomAccess().getMaxExclusiveAssignment_1_1_8_1(), "rule__ScalarEquivalenceAxiom__MaxExclusiveAssignment_1_1_8_1");
			builder.put(grammarAccess.getAnnotationPropertyAccess().getOwnedAnnotationsAssignment_0(), "rule__AnnotationProperty__OwnedAnnotationsAssignment_0");
			builder.put(grammarAccess.getAnnotationPropertyAccess().getNameAssignment_1_0_2(), "rule__AnnotationProperty__NameAssignment_1_0_2");
			builder.put(grammarAccess.getAnnotationPropertyAccess().getRefAssignment_1_1_3(), "rule__AnnotationProperty__RefAssignment_1_1_3");
			builder.put(grammarAccess.getScalarPropertyAccess().getOwnedAnnotationsAssignment_0(), "rule__ScalarProperty__OwnedAnnotationsAssignment_0");
			builder.put(grammarAccess.getScalarPropertyAccess().getNameAssignment_1_0_2(), "rule__ScalarProperty__NameAssignment_1_0_2");
			builder.put(grammarAccess.getScalarPropertyAccess().getRefAssignment_1_1_3(), "rule__ScalarProperty__RefAssignment_1_1_3");
			builder.put(grammarAccess.getScalarPropertyAccess().getDomainsAssignment_2_1_1(), "rule__ScalarProperty__DomainsAssignment_2_1_1");
			builder.put(grammarAccess.getScalarPropertyAccess().getDomainsAssignment_2_1_2_1(), "rule__ScalarProperty__DomainsAssignment_2_1_2_1");
			builder.put(grammarAccess.getScalarPropertyAccess().getRangesAssignment_2_2_1(), "rule__ScalarProperty__RangesAssignment_2_2_1");
			builder.put(grammarAccess.getScalarPropertyAccess().getRangesAssignment_2_2_2_1(), "rule__ScalarProperty__RangesAssignment_2_2_2_1");
			builder.put(grammarAccess.getScalarPropertyAccess().getFunctionalAssignment_2_3(), "rule__ScalarProperty__FunctionalAssignment_2_3");
			builder.put(grammarAccess.getStructuredPropertyAccess().getOwnedAnnotationsAssignment_0(), "rule__StructuredProperty__OwnedAnnotationsAssignment_0");
			builder.put(grammarAccess.getStructuredPropertyAccess().getNameAssignment_1_0_2(), "rule__StructuredProperty__NameAssignment_1_0_2");
			builder.put(grammarAccess.getStructuredPropertyAccess().getRefAssignment_1_1_3(), "rule__StructuredProperty__RefAssignment_1_1_3");
			builder.put(grammarAccess.getStructuredPropertyAccess().getDomainsAssignment_2_1_1(), "rule__StructuredProperty__DomainsAssignment_2_1_1");
			builder.put(grammarAccess.getStructuredPropertyAccess().getDomainsAssignment_2_1_2_1(), "rule__StructuredProperty__DomainsAssignment_2_1_2_1");
			builder.put(grammarAccess.getStructuredPropertyAccess().getRangesAssignment_2_2_1(), "rule__StructuredProperty__RangesAssignment_2_2_1");
			builder.put(grammarAccess.getStructuredPropertyAccess().getRangesAssignment_2_2_2_1(), "rule__StructuredProperty__RangesAssignment_2_2_2_1");
			builder.put(grammarAccess.getStructuredPropertyAccess().getFunctionalAssignment_2_3(), "rule__StructuredProperty__FunctionalAssignment_2_3");
			builder.put(grammarAccess.getForwardRelationAccess().getOwnedAnnotationsAssignment_0(), "rule__ForwardRelation__OwnedAnnotationsAssignment_0");
			builder.put(grammarAccess.getForwardRelationAccess().getNameAssignment_2(), "rule__ForwardRelation__NameAssignment_2");
			builder.put(grammarAccess.getReverseRelationAccess().getOwnedAnnotationsAssignment_0(), "rule__ReverseRelation__OwnedAnnotationsAssignment_0");
			builder.put(grammarAccess.getReverseRelationAccess().getNameAssignment_2(), "rule__ReverseRelation__NameAssignment_2");
			builder.put(grammarAccess.getUnreifiedRelationAccess().getOwnedAnnotationsAssignment_0(), "rule__UnreifiedRelation__OwnedAnnotationsAssignment_0");
			builder.put(grammarAccess.getUnreifiedRelationAccess().getNameAssignment_1_0_1(), "rule__UnreifiedRelation__NameAssignment_1_0_1");
			builder.put(grammarAccess.getUnreifiedRelationAccess().getRefAssignment_1_1_2(), "rule__UnreifiedRelation__RefAssignment_1_1_2");
			builder.put(grammarAccess.getUnreifiedRelationAccess().getSourcesAssignment_2_1_1(), "rule__UnreifiedRelation__SourcesAssignment_2_1_1");
			builder.put(grammarAccess.getUnreifiedRelationAccess().getSourcesAssignment_2_1_2_1(), "rule__UnreifiedRelation__SourcesAssignment_2_1_2_1");
			builder.put(grammarAccess.getUnreifiedRelationAccess().getTargetsAssignment_2_2_1(), "rule__UnreifiedRelation__TargetsAssignment_2_2_1");
			builder.put(grammarAccess.getUnreifiedRelationAccess().getTargetsAssignment_2_2_2_1(), "rule__UnreifiedRelation__TargetsAssignment_2_2_2_1");
			builder.put(grammarAccess.getUnreifiedRelationAccess().getReverseRelationAssignment_2_3(), "rule__UnreifiedRelation__ReverseRelationAssignment_2_3");
			builder.put(grammarAccess.getUnreifiedRelationAccess().getFunctionalAssignment_2_4_0(), "rule__UnreifiedRelation__FunctionalAssignment_2_4_0");
			builder.put(grammarAccess.getUnreifiedRelationAccess().getInverseFunctionalAssignment_2_4_1_0(), "rule__UnreifiedRelation__InverseFunctionalAssignment_2_4_1_0");
			builder.put(grammarAccess.getUnreifiedRelationAccess().getSymmetricAssignment_2_4_2(), "rule__UnreifiedRelation__SymmetricAssignment_2_4_2");
			builder.put(grammarAccess.getUnreifiedRelationAccess().getAsymmetricAssignment_2_4_3(), "rule__UnreifiedRelation__AsymmetricAssignment_2_4_3");
			builder.put(grammarAccess.getUnreifiedRelationAccess().getReflexiveAssignment_2_4_4(), "rule__UnreifiedRelation__ReflexiveAssignment_2_4_4");
			builder.put(grammarAccess.getUnreifiedRelationAccess().getIrreflexiveAssignment_2_4_5(), "rule__UnreifiedRelation__IrreflexiveAssignment_2_4_5");
			builder.put(grammarAccess.getUnreifiedRelationAccess().getTransitiveAssignment_2_4_6(), "rule__UnreifiedRelation__TransitiveAssignment_2_4_6");
			builder.put(grammarAccess.getPropertySpecializationAccess().getOwnedSpecializationsAssignment_1(), "rule__PropertySpecialization__OwnedSpecializationsAssignment_1");
			builder.put(grammarAccess.getPropertySpecializationAccess().getOwnedSpecializationsAssignment_2_1(), "rule__PropertySpecialization__OwnedSpecializationsAssignment_2_1");
			builder.put(grammarAccess.getPropertyEquivalenceAccess().getOwnedEquivalencesAssignment_1(), "rule__PropertyEquivalence__OwnedEquivalencesAssignment_1");
			builder.put(grammarAccess.getPropertyEquivalenceAccess().getOwnedEquivalencesAssignment_2_1(), "rule__PropertyEquivalence__OwnedEquivalencesAssignment_2_1");
			builder.put(grammarAccess.getPropertyEquivalenceAxiomAccess().getSuperPropertyAssignment(), "rule__PropertyEquivalenceAxiom__SuperPropertyAssignment");
			builder.put(grammarAccess.getRuleAccess().getOwnedAnnotationsAssignment_0(), "rule__Rule__OwnedAnnotationsAssignment_0");
			builder.put(grammarAccess.getRuleAccess().getNameAssignment_1_0_1(), "rule__Rule__NameAssignment_1_0_1");
			builder.put(grammarAccess.getRuleAccess().getRefAssignment_1_1_2(), "rule__Rule__RefAssignment_1_1_2");
			builder.put(grammarAccess.getRuleAccess().getAntecedentAssignment_2_1_0(), "rule__Rule__AntecedentAssignment_2_1_0");
			builder.put(grammarAccess.getRuleAccess().getAntecedentAssignment_2_1_1_1(), "rule__Rule__AntecedentAssignment_2_1_1_1");
			builder.put(grammarAccess.getRuleAccess().getConsequentAssignment_2_1_3(), "rule__Rule__ConsequentAssignment_2_1_3");
			builder.put(grammarAccess.getRuleAccess().getConsequentAssignment_2_1_4_1(), "rule__Rule__ConsequentAssignment_2_1_4_1");
			builder.put(grammarAccess.getBuiltInAccess().getOwnedAnnotationsAssignment_0(), "rule__BuiltIn__OwnedAnnotationsAssignment_0");
			builder.put(grammarAccess.getBuiltInAccess().getNameAssignment_1_0_1(), "rule__BuiltIn__NameAssignment_1_0_1");
			builder.put(grammarAccess.getBuiltInAccess().getRefAssignment_1_1_2(), "rule__BuiltIn__RefAssignment_1_1_2");
			builder.put(grammarAccess.getStructureInstanceAccess().getTypeAssignment_0(), "rule__StructureInstance__TypeAssignment_0");
			builder.put(grammarAccess.getStructureInstanceAccess().getOwnedPropertyValuesAssignment_2(), "rule__StructureInstance__OwnedPropertyValuesAssignment_2");
			builder.put(grammarAccess.getAnonymousRelationInstanceAccess().getTargetAssignment_0(), "rule__AnonymousRelationInstance__TargetAssignment_0");
			builder.put(grammarAccess.getAnonymousRelationInstanceAccess().getOwnedPropertyValuesAssignment_3(), "rule__AnonymousRelationInstance__OwnedPropertyValuesAssignment_3");
			builder.put(grammarAccess.getConceptInstanceAccess().getOwnedAnnotationsAssignment_0(), "rule__ConceptInstance__OwnedAnnotationsAssignment_0");
			builder.put(grammarAccess.getConceptInstanceAccess().getNameAssignment_1_0_1(), "rule__ConceptInstance__NameAssignment_1_0_1");
			builder.put(grammarAccess.getConceptInstanceAccess().getRefAssignment_1_1_2(), "rule__ConceptInstance__RefAssignment_1_1_2");
			builder.put(grammarAccess.getConceptInstanceAccess().getOwnedTypesAssignment_2_1(), "rule__ConceptInstance__OwnedTypesAssignment_2_1");
			builder.put(grammarAccess.getConceptInstanceAccess().getOwnedTypesAssignment_2_2_1(), "rule__ConceptInstance__OwnedTypesAssignment_2_2_1");
			builder.put(grammarAccess.getConceptInstanceAccess().getOwnedPropertyValuesAssignment_3_1(), "rule__ConceptInstance__OwnedPropertyValuesAssignment_3_1");
			builder.put(grammarAccess.getRelationInstanceAccess().getOwnedAnnotationsAssignment_0(), "rule__RelationInstance__OwnedAnnotationsAssignment_0");
			builder.put(grammarAccess.getRelationInstanceAccess().getNameAssignment_1_0_2(), "rule__RelationInstance__NameAssignment_1_0_2");
			builder.put(grammarAccess.getRelationInstanceAccess().getRefAssignment_1_1_3(), "rule__RelationInstance__RefAssignment_1_1_3");
			builder.put(grammarAccess.getRelationInstanceAccess().getOwnedTypesAssignment_2_1(), "rule__RelationInstance__OwnedTypesAssignment_2_1");
			builder.put(grammarAccess.getRelationInstanceAccess().getOwnedTypesAssignment_2_2_1(), "rule__RelationInstance__OwnedTypesAssignment_2_2_1");
			builder.put(grammarAccess.getRelationInstanceAccess().getSourcesAssignment_3_1_1(), "rule__RelationInstance__SourcesAssignment_3_1_1");
			builder.put(grammarAccess.getRelationInstanceAccess().getSourcesAssignment_3_1_2_1(), "rule__RelationInstance__SourcesAssignment_3_1_2_1");
			builder.put(grammarAccess.getRelationInstanceAccess().getTargetsAssignment_3_2_1(), "rule__RelationInstance__TargetsAssignment_3_2_1");
			builder.put(grammarAccess.getRelationInstanceAccess().getTargetsAssignment_3_2_2_1(), "rule__RelationInstance__TargetsAssignment_3_2_2_1");
			builder.put(grammarAccess.getRelationInstanceAccess().getOwnedPropertyValuesAssignment_3_3(), "rule__RelationInstance__OwnedPropertyValuesAssignment_3_3");
			builder.put(grammarAccess.getExtensionAccess().getKindAssignment_0(), "rule__Extension__KindAssignment_0");
			builder.put(grammarAccess.getExtensionAccess().getNamespaceAssignment_1(), "rule__Extension__NamespaceAssignment_1");
			builder.put(grammarAccess.getExtensionAccess().getPrefixAssignment_2_1(), "rule__Extension__PrefixAssignment_2_1");
			builder.put(grammarAccess.getUsageAccess().getKindAssignment_0(), "rule__Usage__KindAssignment_0");
			builder.put(grammarAccess.getUsageAccess().getNamespaceAssignment_1(), "rule__Usage__NamespaceAssignment_1");
			builder.put(grammarAccess.getUsageAccess().getPrefixAssignment_2_1(), "rule__Usage__PrefixAssignment_2_1");
			builder.put(grammarAccess.getInclusionAccess().getKindAssignment_0(), "rule__Inclusion__KindAssignment_0");
			builder.put(grammarAccess.getInclusionAccess().getNamespaceAssignment_1(), "rule__Inclusion__NamespaceAssignment_1");
			builder.put(grammarAccess.getInclusionAccess().getPrefixAssignment_2_1(), "rule__Inclusion__PrefixAssignment_2_1");
			builder.put(grammarAccess.getSpecializationAxiomAccess().getSuperTermAssignment(), "rule__SpecializationAxiom__SuperTermAssignment");
			builder.put(grammarAccess.getPropertyRangeRestrictionAxiomAccess().getKindAssignment_1(), "rule__PropertyRangeRestrictionAxiom__KindAssignment_1");
			builder.put(grammarAccess.getPropertyRangeRestrictionAxiomAccess().getPropertyAssignment_2(), "rule__PropertyRangeRestrictionAxiom__PropertyAssignment_2");
			builder.put(grammarAccess.getPropertyRangeRestrictionAxiomAccess().getRangeAssignment_4(), "rule__PropertyRangeRestrictionAxiom__RangeAssignment_4");
			builder.put(grammarAccess.getPropertyCardinalityRestrictionAxiomAccess().getPropertyAssignment_1(), "rule__PropertyCardinalityRestrictionAxiom__PropertyAssignment_1");
			builder.put(grammarAccess.getPropertyCardinalityRestrictionAxiomAccess().getKindAssignment_3(), "rule__PropertyCardinalityRestrictionAxiom__KindAssignment_3");
			builder.put(grammarAccess.getPropertyCardinalityRestrictionAxiomAccess().getCardinalityAssignment_4(), "rule__PropertyCardinalityRestrictionAxiom__CardinalityAssignment_4");
			builder.put(grammarAccess.getPropertyCardinalityRestrictionAxiomAccess().getRangeAssignment_5(), "rule__PropertyCardinalityRestrictionAxiom__RangeAssignment_5");
			builder.put(grammarAccess.getPropertyValueRestrictionAxiomAccess().getPropertyAssignment_1(), "rule__PropertyValueRestrictionAxiom__PropertyAssignment_1");
			builder.put(grammarAccess.getPropertyValueRestrictionAxiomAccess().getLiteralValueAssignment_3_0(), "rule__PropertyValueRestrictionAxiom__LiteralValueAssignment_3_0");
			builder.put(grammarAccess.getPropertyValueRestrictionAxiomAccess().getContainedValueAssignment_3_1(), "rule__PropertyValueRestrictionAxiom__ContainedValueAssignment_3_1");
			builder.put(grammarAccess.getPropertyValueRestrictionAxiomAccess().getReferencedValueAssignment_3_2(), "rule__PropertyValueRestrictionAxiom__ReferencedValueAssignment_3_2");
			builder.put(grammarAccess.getPropertySelfRestrictionAxiomAccess().getPropertyAssignment_1(), "rule__PropertySelfRestrictionAxiom__PropertyAssignment_1");
			builder.put(grammarAccess.getKeyAxiomAccess().getPropertiesAssignment_1(), "rule__KeyAxiom__PropertiesAssignment_1");
			builder.put(grammarAccess.getKeyAxiomAccess().getPropertiesAssignment_2_1(), "rule__KeyAxiom__PropertiesAssignment_2_1");
			builder.put(grammarAccess.getInstanceEnumerationAxiomAccess().getInstancesAssignment_1(), "rule__InstanceEnumerationAxiom__InstancesAssignment_1");
			builder.put(grammarAccess.getInstanceEnumerationAxiomAccess().getInstancesAssignment_2_1(), "rule__InstanceEnumerationAxiom__InstancesAssignment_2_1");
			builder.put(grammarAccess.getLiteralEnumerationAxiomAccess().getLiteralsAssignment_1(), "rule__LiteralEnumerationAxiom__LiteralsAssignment_1");
			builder.put(grammarAccess.getLiteralEnumerationAxiomAccess().getLiteralsAssignment_2_1(), "rule__LiteralEnumerationAxiom__LiteralsAssignment_2_1");
			builder.put(grammarAccess.getConceptTypeAssertionAccess().getTypeAssignment(), "rule__ConceptTypeAssertion__TypeAssignment");
			builder.put(grammarAccess.getRelationTypeAssertionAccess().getTypeAssignment(), "rule__RelationTypeAssertion__TypeAssignment");
			builder.put(grammarAccess.getPropertyValueAssertionAccess().getPropertyAssignment_0(), "rule__PropertyValueAssertion__PropertyAssignment_0");
			builder.put(grammarAccess.getPropertyValueAccess().getLiteralValueAssignment_0(), "rule__PropertyValue__LiteralValueAssignment_0");
			builder.put(grammarAccess.getPropertyValueAccess().getContainedValueAssignment_1(), "rule__PropertyValue__ContainedValueAssignment_1");
			builder.put(grammarAccess.getPropertyValueAccess().getReferencedValueAssignment_2(), "rule__PropertyValue__ReferencedValueAssignment_2");
			builder.put(grammarAccess.getTypePredicateAccess().getTypeAssignment_0(), "rule__TypePredicate__TypeAssignment_0");
			builder.put(grammarAccess.getTypePredicateAccess().getArgumentAssignment_2(), "rule__TypePredicate__ArgumentAssignment_2");
			builder.put(grammarAccess.getRelationEntityPredicateAccess().getTypeAssignment_0(), "rule__RelationEntityPredicate__TypeAssignment_0");
			builder.put(grammarAccess.getRelationEntityPredicateAccess().getArgument1Assignment_2(), "rule__RelationEntityPredicate__Argument1Assignment_2");
			builder.put(grammarAccess.getRelationEntityPredicateAccess().getArgumentAssignment_4(), "rule__RelationEntityPredicate__ArgumentAssignment_4");
			builder.put(grammarAccess.getRelationEntityPredicateAccess().getArgument2Assignment_6(), "rule__RelationEntityPredicate__Argument2Assignment_6");
			builder.put(grammarAccess.getPropertyPredicateAccess().getPropertyAssignment_0(), "rule__PropertyPredicate__PropertyAssignment_0");
			builder.put(grammarAccess.getPropertyPredicateAccess().getArgument1Assignment_2(), "rule__PropertyPredicate__Argument1Assignment_2");
			builder.put(grammarAccess.getPropertyPredicateAccess().getArgument2Assignment_4(), "rule__PropertyPredicate__Argument2Assignment_4");
			builder.put(grammarAccess.getSameAsPredicateAccess().getArgument1Assignment_2(), "rule__SameAsPredicate__Argument1Assignment_2");
			builder.put(grammarAccess.getSameAsPredicateAccess().getArgument2Assignment_4(), "rule__SameAsPredicate__Argument2Assignment_4");
			builder.put(grammarAccess.getDifferentFromPredicateAccess().getArgument1Assignment_2(), "rule__DifferentFromPredicate__Argument1Assignment_2");
			builder.put(grammarAccess.getDifferentFromPredicateAccess().getArgument2Assignment_4(), "rule__DifferentFromPredicate__Argument2Assignment_4");
			builder.put(grammarAccess.getBuiltInPredicateAccess().getBuiltInAssignment_2(), "rule__BuiltInPredicate__BuiltInAssignment_2");
			builder.put(grammarAccess.getBuiltInPredicateAccess().getArgumentsAssignment_4(), "rule__BuiltInPredicate__ArgumentsAssignment_4");
			builder.put(grammarAccess.getBuiltInPredicateAccess().getArgumentsAssignment_5_1(), "rule__BuiltInPredicate__ArgumentsAssignment_5_1");
			builder.put(grammarAccess.getArgumentAccess().getVariableAssignment_0(), "rule__Argument__VariableAssignment_0");
			builder.put(grammarAccess.getArgumentAccess().getLiteralAssignment_1(), "rule__Argument__LiteralAssignment_1");
			builder.put(grammarAccess.getArgumentAccess().getInstanceAssignment_2(), "rule__Argument__InstanceAssignment_2");
			builder.put(grammarAccess.getIntegerLiteralAccess().getValueAssignment(), "rule__IntegerLiteral__ValueAssignment");
			builder.put(grammarAccess.getDecimalLiteralAccess().getValueAssignment(), "rule__DecimalLiteral__ValueAssignment");
			builder.put(grammarAccess.getDoubleLiteralAccess().getValueAssignment(), "rule__DoubleLiteral__ValueAssignment");
			builder.put(grammarAccess.getBooleanLiteralAccess().getValueAssignment(), "rule__BooleanLiteral__ValueAssignment");
			builder.put(grammarAccess.getQuotedLiteralAccess().getValueAssignment_0(), "rule__QuotedLiteral__ValueAssignment_0");
			builder.put(grammarAccess.getQuotedLiteralAccess().getTypeAssignment_1_0_1(), "rule__QuotedLiteral__TypeAssignment_1_0_1");
			builder.put(grammarAccess.getQuotedLiteralAccess().getLangTagAssignment_1_1_1(), "rule__QuotedLiteral__LangTagAssignment_1_1_1");
			builder.put(grammarAccess.getRelationEntityAccess().getUnorderedGroup_2_5(), "rule__RelationEntity__UnorderedGroup_2_5");
			builder.put(grammarAccess.getScalarEquivalenceAxiomAccess().getUnorderedGroup_1_1(), "rule__ScalarEquivalenceAxiom__UnorderedGroup_1_1");
			builder.put(grammarAccess.getUnreifiedRelationAccess().getUnorderedGroup_2_4(), "rule__UnreifiedRelation__UnorderedGroup_2_4");
		}
	}
	
	@Inject
	private NameMappings nameMappings;

	@Inject
	private OmlGrammarAccess grammarAccess;

	@Override
	protected InternalOmlParser createParser() {
		InternalOmlParser result = new InternalOmlParser(null);
		result.setGrammarAccess(grammarAccess);
		return result;
	}

	@Override
	protected String getRuleName(AbstractElement element) {
		return nameMappings.getRuleName(element);
	}

	@Override
	protected String[] getInitialHiddenTokens() {
		return new String[] { "RULE_WS", "RULE_ML_COMMENT", "RULE_SL_COMMENT" };
	}

	public OmlGrammarAccess getGrammarAccess() {
		return this.grammarAccess;
	}

	public void setGrammarAccess(OmlGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}
	
	public NameMappings getNameMappings() {
		return nameMappings;
	}
	
	public void setNameMappings(NameMappings nameMappings) {
		this.nameMappings = nameMappings;
	}
}
