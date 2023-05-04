/**
 * Copyright 2019 California Institute of Technology ("Caltech").
 * U.S. Government sponsorship acknowledged.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *      http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package io.opencaesar.oml.dsl.ide.server.symbols;

import static io.opencaesar.oml.OmlPackage.Literals.PROPERTY;
import static io.opencaesar.oml.OmlPackage.Literals.ASPECT;
import static io.opencaesar.oml.OmlPackage.Literals.CONCEPT;
import static io.opencaesar.oml.OmlPackage.Literals.NAMED_INSTANCE;
import static io.opencaesar.oml.OmlPackage.Literals.SCALAR;
import static io.opencaesar.oml.OmlPackage.Literals.FORWARD_RELATION;
import static io.opencaesar.oml.OmlPackage.Literals.ONTOLOGY;
import static io.opencaesar.oml.OmlPackage.Literals.RELATION_ENTITY;
import static io.opencaesar.oml.OmlPackage.Literals.RELATION_INSTANCE;
import static io.opencaesar.oml.OmlPackage.Literals.REVERSE_RELATION;
import static io.opencaesar.oml.OmlPackage.Literals.RULE;
import static io.opencaesar.oml.OmlPackage.Literals.SCALAR_PROPERTY;
import static io.opencaesar.oml.OmlPackage.Literals.STRUCTURE;
import static io.opencaesar.oml.OmlPackage.Literals.STRUCTURED_PROPERTY;
import static org.eclipse.lsp4j.SymbolKind.Class;
import static org.eclipse.lsp4j.SymbolKind.Enum;
import static org.eclipse.lsp4j.SymbolKind.Interface;
import static org.eclipse.lsp4j.SymbolKind.Object;
import static org.eclipse.lsp4j.SymbolKind.Package;
import static org.eclipse.lsp4j.SymbolKind.Field;
import static org.eclipse.lsp4j.SymbolKind.String;
import static org.eclipse.lsp4j.SymbolKind.Struct;
import static org.eclipse.lsp4j.SymbolKind.Function;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.lsp4j.SymbolKind;
import org.eclipse.xtext.ide.server.symbol.DocumentSymbolMapper;

@SuppressWarnings("all")
public class OmlDocumentSymbolKindProvider extends DocumentSymbolMapper.DocumentSymbolKindProvider {

	@Override
	protected SymbolKind getSymbolKind(EClass clazz) {
		if (ONTOLOGY.isSuperTypeOf(clazz))
			return Package;
		
		if (ASPECT.isSuperTypeOf(clazz))
			return Interface;
		
		if (CONCEPT.isSuperTypeOf(clazz))
			return Class;
		if (RELATION_ENTITY.isSuperTypeOf(clazz))
			return Class;
		
		if (STRUCTURE.isSuperTypeOf(clazz))
			return Struct;
		
		if (SCALAR.isSuperTypeOf(clazz))
			return String;
		
		if (PROPERTY.isSuperTypeOf(clazz))
			return Field;

		if (RULE.isSuperTypeOf(clazz))
			return Function;

		if (NAMED_INSTANCE.isSuperTypeOf(clazz))
			return Object;
				
		return Object;
	}

}
