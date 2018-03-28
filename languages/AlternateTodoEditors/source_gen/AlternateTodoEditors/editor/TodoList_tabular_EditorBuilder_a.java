package AlternateTodoEditors.editor;

/*Generated by MPS */

import jetbrains.mps.editor.runtime.descriptor.AbstractEditorBuilder;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Vertical;
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Indent;
import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.nodeEditor.cellProviders.CellProviderWithRole;
import jetbrains.mps.lang.editor.cellProviders.PropertyCellProvider;
import jetbrains.mps.nodeEditor.EditorManager;
import com.mbeddr.mpsutil.datepicker.runtime.model.DatePickerConfig;
import java.text.DateFormat;
import com.michaelbaranov.microba.calendar.DatePicker;
import com.mbeddr.mpsutil.datepicker.runtime.model.MpsDatePicker;
import javax.swing.JPanel;
import com.mbeddr.mpsutil.datepicker.runtime.model.EditorCell_DatePickerEntryField;
import com.mbeddr.mpsutil.datepicker.runtime.model.EditorCell_DatePickerComponent;
import com.mbeddr.mpsutil.datepicker.runtime.model.EditorCell_DatePickerEnd;
import com.mbeddr.mpsutil.datepicker.runtime.model.DatePickerFocusListener;
import com.mbeddr.mpsutil.datepicker.runtime.model.DatePickerActionListener;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Calendar;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.nodeEditor.cellProviders.AbstractCellListHandler;
import jetbrains.mps.lang.editor.cellProviders.RefNodeListHandler;
import jetbrains.mps.smodel.action.NodeFactoryManager;
import jetbrains.mps.openapi.editor.menus.transformation.SNodeLocation;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.nodeEditor.cellActions.CellAction_DeleteNode;
import jetbrains.mps.openapi.editor.cells.DefaultSubstituteInfo;
import jetbrains.mps.nodeEditor.cellMenu.SChildSubstituteInfo;

/*package*/ class TodoList_tabular_EditorBuilder_a extends AbstractEditorBuilder {
  @NotNull
  private SNode myNode;

  public TodoList_tabular_EditorBuilder_a(@NotNull EditorContext context, @NotNull SNode node) {
    super(context);
    myNode = node;
  }

  @NotNull
  @Override
  public SNode getNode() {
    return myNode;
  }

  /*package*/ EditorCell createCell() {
    return createCollection_tam27p_a();
  }

  private EditorCell createCollection_tam27p_a() {
    EditorCell_Collection editorCell = new EditorCell_Collection(getEditorContext(), myNode, new CellLayout_Vertical());
    editorCell.setCellId("Collection_tam27p_a");
    editorCell.setBig(true);
    editorCell.setCellContext(getCellFactory().getCellContext());
    editorCell.addEditorCell(createCollection_tam27p_a0());
    editorCell.addEditorCell(createRefNodeList_tam27p_b0());
    return editorCell;
  }
  private EditorCell createCollection_tam27p_a0() {
    EditorCell_Collection editorCell = new EditorCell_Collection(getEditorContext(), myNode, new CellLayout_Indent());
    editorCell.setCellId("Collection_tam27p_a0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.SELECTABLE, false);
    editorCell.getStyle().putAll(style);
    editorCell.addEditorCell(createConstant_tam27p_a0a());
    editorCell.addEditorCell(createProperty_tam27p_b0a());
    editorCell.addEditorCell(createDatePickerCell_tam27p_c0a_0());
    editorCell.addEditorCell(createConstant_tam27p_d0a());
    return editorCell;
  }
  private EditorCell createConstant_tam27p_a0a() {
    EditorCell_Constant editorCell = new EditorCell_Constant(getEditorContext(), myNode, "Todo list for");
    editorCell.setCellId("Constant_tam27p_a0a");
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createProperty_tam27p_b0a() {
    CellProviderWithRole provider = new PropertyCellProvider(myNode, getEditorContext());
    provider.setRole("date");
    provider.setNoTargetText("<no date>");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(getEditorContext());
    editorCell.setCellId("property_date");
    editorCell.setSubstituteInfo(provider.createDefaultSubstituteInfo());
    SNode attributeConcept = provider.getRoleAttribute();
    if (attributeConcept != null) {
      EditorManager manager = EditorManager.getInstanceFromContext(getEditorContext());
      return manager.createNodeRoleAttributeCell(attributeConcept, provider.getRoleAttributeKind(), editorCell);
    } else
    return editorCell;
  }
  private EditorCell createDatePickerCell_tam27p_c0a(final EditorContext editorContext, final SNode node) {
    boolean keepTime = true;
    DatePickerConfig config = new DatePickerConfig();

    if (keepTime) {
      config.setDateFormat(DateFormat.getDateTimeInstance());
    } else {
      config.setDateFormat(DateFormat.getDateInstance());
    }

    new Object() {
      public void loadData(DatePickerConfig config, SNode node, EditorContext editorContext) {
      }
    }.loadData(config, node, editorContext);


    final DatePicker datePicker = new MpsDatePicker(config);
    datePicker.setKeepTime(keepTime);
    datePicker.setStripTime(!(keepTime));
    datePicker.setEnabled(true);
    datePicker.setShowNumberOfWeek(true);
    datePicker.setShowTodayButton(true);



    JPanel panel = new JPanel();
    panel.add(datePicker);
    panel.setBackground(MpsDatePicker.TRANSPARENT);

    jetbrains.mps.openapi.editor.cells.EditorCell_Collection editorCell = EditorCell_Collection.createHorizontal(editorContext, node);

    EditorCell_DatePickerEntryField input = null;



    final EditorCell_DatePickerComponent datePickerCell = new EditorCell_DatePickerComponent(editorContext, node, panel);
    datePickerCell.setCellId("DatePickerCell_tam27p_c0a");

    editorCell.addEditorCell(datePickerCell);

    EditorCell_DatePickerEnd endCell = new EditorCell_DatePickerEnd(editorContext, node);
    endCell.setCellId("DatePickerCell_tam27p_c0a_0");
    editorCell.addEditorCell(endCell);

    datePicker.addFocusListener(new DatePickerFocusListener(datePickerCell));

    datePicker.addActionListener(new DatePickerActionListener(editorContext.getRepository(), new Runnable() {
      public void run() {
        Date date = datePicker.getDate();
        action(datePicker, new GregorianCalendar(date.getYear() + 1900, date.getMonth(), date.getDate(), date.getHours(), date.getMinutes(), date.getSeconds()), node, editorContext);
      }

      protected void action(final DatePicker datePicker, final Calendar calendar, final SNode node, final EditorContext editorContext) {
        SPropertyOperations.set(myNode, MetaAdapterFactory.getProperty(0x297ec2396c484eeaL, 0xbc6bbc22570d94c6L, 0xc451252a9fb7bedL, 0x45bb23f610f047abL, "date"), datePicker.getDate().toString());
      }
    }, input));

    editorCell.setCellId("DatePickerCell_tam27p_c0a_1");

    return editorCell;

  }
  private EditorCell createDatePickerCell_tam27p_c0a_0() {
    return createDatePickerCell_tam27p_c0a(getEditorContext(), myNode);
  }
  private EditorCell createConstant_tam27p_d0a() {
    EditorCell_Constant editorCell = new EditorCell_Constant(getEditorContext(), myNode, ":");
    editorCell.setCellId("Constant_tam27p_d0a");
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNodeList_tam27p_b0() {
    AbstractCellListHandler handler = new TodoList_tabular_EditorBuilder_a.stuffToDoListHandler_tam27p_b0(myNode, "stuffToDo", getEditorContext());
    EditorCell_Collection editorCell = handler.createCells(new CellLayout_Vertical(), false);
    editorCell.setCellId("refNodeList_stuffToDo");
    editorCell.setRole(handler.getElementRole());
    return editorCell;
  }
  private static class stuffToDoListHandler_tam27p_b0 extends RefNodeListHandler {
    @NotNull
    private SNode myNode;

    public stuffToDoListHandler_tam27p_b0(SNode ownerNode, String childRole, EditorContext context) {
      super(ownerNode, childRole, context, false);
      myNode = ownerNode;
    }

    @Override
    @NotNull
    public SNode getNode() {
      return myNode;
    }

    public SNode createNodeToInsert(EditorContext editorContext) {
      return NodeFactoryManager.createNode(MetaAdapterFactory.getConcept(0x297ec2396c484eeaL, 0xbc6bbc22570d94c6L, 0x45bb23f610f047b8L, "TodoDSL.structure.Todo"), null, getNode(), getNode().getModel());
    }
    public EditorCell createNodeCell(SNode elementNode) {
      EditorCell elementCell = getUpdateSession().updateChildNodeCell(elementNode);
      installElementCellActions(elementNode, elementCell);
      return elementCell;
    }
    public EditorCell createEmptyCell() {
      getCellFactory().pushCellContext();
      getCellFactory().setNodeLocation(new SNodeLocation.FromParentAndLink(stuffToDoListHandler_tam27p_b0.this.getNode(), MetaAdapterFactory.getContainmentLink(0x297ec2396c484eeaL, 0xbc6bbc22570d94c6L, 0xc451252a9fb7bedL, 0x45bb23f610f047b6L, "stuffToDo")));
      try {
        EditorCell emptyCell = null;
        emptyCell = super.createEmptyCell();
        installElementCellActions(null, emptyCell);
        setCellContext(emptyCell);
        return emptyCell;
      } finally {
        getCellFactory().popCellContext();
      }
    }
    public void installElementCellActions(SNode elementNode, EditorCell elementCell) {
      if (elementCell.getUserObject(AbstractCellListHandler.ELEMENT_CELL_ACTIONS_SET) == null) {
        elementCell.putUserObject(AbstractCellListHandler.ELEMENT_CELL_ACTIONS_SET, AbstractCellListHandler.ELEMENT_CELL_ACTIONS_SET);
        if (elementNode != null) {
          elementCell.setAction(CellActionType.DELETE, new CellAction_DeleteNode(elementNode, CellAction_DeleteNode.DeleteDirection.FORWARD));
          elementCell.setAction(CellActionType.BACKSPACE, new CellAction_DeleteNode(elementNode, CellAction_DeleteNode.DeleteDirection.BACKWARD));
        }
        if (elementCell.getSubstituteInfo() == null || elementCell.getSubstituteInfo() instanceof DefaultSubstituteInfo) {
          elementCell.setSubstituteInfo(new SChildSubstituteInfo(elementCell, getNode(), MetaAdapterFactory.getContainmentLink(0x297ec2396c484eeaL, 0xbc6bbc22570d94c6L, 0xc451252a9fb7bedL, 0x45bb23f610f047b6L, "stuffToDo"), elementNode));
        }
      }
    }
  }
}