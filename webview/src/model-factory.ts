import {
  ManhattanEdgeRouter,
  SGraphFactory,
  SModelElementSchema,
  SParentElement,
  SChildElement,
  getSubType,
  SEdge,
  SLabel,
  EdgePlacement,
} from "sprotty";
import { injectable } from "inversify";

@injectable()
export class OmlModelFactory extends SGraphFactory {
  readonly SQRT_5 = Math.sqrt(5);

  readonly SQRT_7_5 = Math.sqrt(1 * 1 + 2.5 * 2.5);

  createElement(
    schema: SModelElementSchema,
    parent?: SParentElement
  ): SChildElement {
    const element = super.createElement(schema, parent);
    if (element instanceof SEdge) {
      switch (getSubType(schema)) {
        case "composition":
          element.sourceAnchorCorrection = this.SQRT_5;
          break;
        case "import":
          element.sourceAnchorCorrection = this.SQRT_7_5;
          break;
        case "uses":
        case "augments":
          element.targetAnchorCorrection = this.SQRT_7_5;
          break;
      }
    }
    return element;
  }

  protected initializeChild(
    child: SChildElement,
    schema: SModelElementSchema,
    parent?: SParentElement
  ): SChildElement {
    super.initializeChild(child, schema, parent);
    if (child instanceof SEdge) {
      child.routerKind = ManhattanEdgeRouter.KIND;
      child.targetAnchorCorrection = Math.sqrt(5);
    } else if (child instanceof SLabel) {
      child.edgePlacement = <EdgePlacement>{
        rotate: false,
        position: 0.5,
      };
    }
    return child;
  }
}
