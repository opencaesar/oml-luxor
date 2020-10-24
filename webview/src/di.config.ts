
import '../css/diagram.css'
import 'sprotty/css/sprotty.css'

import {Container, ContainerModule} from 'inversify'
import {
    configureCommand,
    configureModelElement,
    ConsoleLogger,
    CreateElementCommand,
    editLabelFeature,
    hoverFeedbackFeature,
    HtmlRoot,
    HtmlRootView,
    loadDefaultModules,
    LogLevel,
    ManhattanEdgeRouter,
    overrideViewerOptions,
    PolylineEdgeView,
    popupFeature,
    PreRenderedElement,
    PreRenderedView,
    SCompartment,
    SCompartmentView,
    SGraphView,
    SLabel,
    SLabelView,
    SModelRoot,
    SRoutingHandle,
    SRoutingHandleView,
    TYPES
} from 'sprotty'
import {CustomRouter} from './custom-edge-router'
import {ModuleNode, OmlDiagram, OmlEdge, OmlEditableLabel, OmlModelFactory, OmlNode, Tag} from './model'
import {
    CardinalLabelView,
    CaseNodeView,
    ChoiceNodeView,
    ClassNodeView,
    CompositionEdgeView,
    HeaderCompartmentView,
    ImportEdgeView,
    ModuleNodeView,
    NoteView,
    RelationshipArrowEdgeView,
    RelationshipLabelView,
    RestrictsArrowEdgeView,
    RestrictsLabelView,
    SpecializationArrowEdgeView,
    SpecializationEdgeView,
    TagView,
    UsesNodeView
} from './views'

const omlDiagramModule = new ContainerModule((bind, unbind, isBound, rebind) => {
    rebind(TYPES.ILogger).to(ConsoleLogger).inSingletonScope()
    rebind(TYPES.LogLevel).toConstantValue(LogLevel.warn)
    rebind(TYPES.IModelFactory).to(OmlModelFactory)
    unbind(ManhattanEdgeRouter)
    bind(ManhattanEdgeRouter).to(CustomRouter).inSingletonScope()

    const context = {bind, unbind, isBound, rebind}
    configureModelElement(context, 'graph', OmlDiagram, SGraphView, {
        enable: [hoverFeedbackFeature, popupFeature]
    })

    configureModelElement(context, 'node:class', OmlNode, ClassNodeView)
    configureModelElement(context, 'node:module', ModuleNode, ModuleNodeView)
    configureModelElement(context, 'node:choice', OmlNode, ChoiceNodeView)
    configureModelElement(context, 'node:case', OmlNode, CaseNodeView)
    configureModelElement(context, 'node:pill', OmlNode, UsesNodeView)
    configureModelElement(context, 'node:note', OmlNode, NoteView)
    configureModelElement(context, 'label:heading', SLabel, SLabelView)
    configureModelElement(context, 'label:text', SLabel, SLabelView)
    configureModelElement(context, 'label:subtext', SLabel, CardinalLabelView)
    configureModelElement(context, 'label:restricts', SLabel, RestrictsLabelView)
    configureModelElement(context, 'label:relationship', SLabel, RelationshipLabelView)
    configureModelElement(context, 'label:editable', OmlEditableLabel, SLabelView, {
        enable: [editLabelFeature]
    })

    configureModelElement(context, 'label:classHeader', SLabel, SLabelView)
    configureModelElement(context, 'tag', Tag, TagView)
    configureModelElement(context, 'label:tag', SLabel, SLabelView)
    configureModelElement(context, 'comp:comp', SCompartment, SCompartmentView)
    configureModelElement(context, 'comp:classHeader', SCompartment, HeaderCompartmentView)
    configureModelElement(context, 'edge:straight', OmlEdge, PolylineEdgeView)
    configureModelElement(context, 'edge:composition', OmlEdge, CompositionEdgeView)
    configureModelElement(context, 'edge:dashed', OmlEdge, SpecializationEdgeView)
    configureModelElement(context, 'edge:import', OmlEdge, ImportEdgeView)
    configureModelElement(context, 'edge:uses', OmlEdge, SpecializationArrowEdgeView)
    configureModelElement(context, 'edge:augments', OmlEdge, RelationshipArrowEdgeView)
    configureModelElement(context, 'edge:restricts', OmlEdge, RestrictsArrowEdgeView)
    configureModelElement(context, 'edge:relationship', OmlEdge, RelationshipLabelView)

    configureModelElement(context, 'html', HtmlRoot, HtmlRootView)
    configureModelElement(context, 'pre-rendered', PreRenderedElement, PreRenderedView)
    configureModelElement(context, 'palette', SModelRoot, HtmlRootView)
    configureModelElement(context, 'routing-point', SRoutingHandle, SRoutingHandleView)
    configureModelElement(context, 'volatile-routing-point', SRoutingHandle, SRoutingHandleView)

    // configureModelElement(context, 'port', CreateTransitionPort, TriangleButtonView, {
    //     enable: [popupFeature, creatingOnDragFeature]
    // })

    configureCommand(context, CreateElementCommand)
})

export function createOmlDiagramContainer(widgetId: string): Container {
    const container = new Container()
    loadDefaultModules(container)
    container.load(omlDiagramModule)
    overrideViewerOptions(container, {
        needsClientLayout: true,
        needsServerLayout: true,
        baseDiv: widgetId,
        hiddenDiv: widgetId + '_hidden'
    })
    return container
}
