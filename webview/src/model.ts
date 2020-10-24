
import {injectable} from 'inversify';
import {
    boundsFeature,
    EdgePlacement,
    EditableLabel,
    editLabelFeature,
    Expandable,
    expandFeature,
    fadeFeature,
    hoverFeedbackFeature,
    layoutableChildFeature,
    layoutContainerFeature,
    ManhattanEdgeRouter,
    openFeature,
    popupFeature,
    RectangularNode,
    SChildElement,
    SCompartment,
    SEdge,
    selectFeature,
    SGraph,
    SGraphFactory,
    SLabel,
    SModelElementSchema,
    SParentElement,
    SShapeElement
} from 'sprotty';


@injectable()
export class OmlModelFactory extends SGraphFactory {

    protected initializeChild(child: SChildElement, schema: SModelElementSchema, parent?: SParentElement): SChildElement {
        super.initializeChild(child, schema, parent);
        if (child instanceof SEdge) {
            child.routerKind = ManhattanEdgeRouter.KIND;
            child.targetAnchorCorrection = Math.sqrt(5);
        } else if (child instanceof SLabel) {
            child.edgePlacement = <EdgePlacement>{
                rotate: true,
                position: 0.6
            };
        }
        return child;
    }
}

// export class StatesNode extends RectangularNode {
//     canConnect(routable: SRoutableElement, role: string) {
//         return true;
//     }
// }

// export class CreateTransitionPort extends RectangularPort implements CreatingOnDrag {
//     createAction(id: string): Action {
//         return new CreateElementAction(this.root.id, <SModelElementSchema> {
//             id, type: 'edge', sourceId: this.parent.id, targetId: this.id
//         });
//     }
// }

export class OmlDiagram extends SGraph {
    hasFeature(feature: symbol): boolean {
        return feature === hoverFeedbackFeature || feature === popupFeature || super.hasFeature(feature);
    }
}

export class OmlEdge extends SEdge {
    trace: String | undefined;

    hasFeature(feature: symbol) {
        return super.hasFeature(feature) || feature === selectFeature || (feature === openFeature && this.trace !== undefined);
    }
}

export class OmlNode extends RectangularNode {
    cssClass: string;
    trace: string | undefined;
    strokeWidth = 1;

    hasFeature(feature: symbol): boolean {
        return feature === selectFeature || feature === boundsFeature
            || feature === layoutContainerFeature || feature === fadeFeature || feature === hoverFeedbackFeature
            || feature === popupFeature || (feature === openFeature && this.trace !== undefined);
    }
}

export class ModuleNode extends OmlNode implements Expandable {
    title: string;
    expanded = false;

    hasFeature(feature: symbol): boolean {
        return feature === expandFeature || super.hasFeature(feature);
    }
}

export class OmlHeaderNode extends SCompartment {
}

export class OmlLabel extends SLabel {
    trace: string | undefined;

    hasFeature(feature: symbol): boolean {
        return super.hasFeature(feature) || feature === selectFeature || (feature === openFeature && this.trace !== undefined);
    }
}

export class OmlEditableLabel extends OmlLabel implements EditableLabel {
    hasFeature(feature: symbol): boolean {
        return feature === editLabelFeature || super.hasFeature(feature);
    }
}

// export class OmlSubtext extends SLabel {
//     edgePlacement: EdgePlacement = 0
// }

export class Tag extends SShapeElement {
    size = {
        width: 24,
        height: 24
    };

    hasFeature(feature: symbol): boolean {
        return feature === boundsFeature || feature === layoutContainerFeature
            || feature === layoutableChildFeature || feature === fadeFeature;
    }
}
