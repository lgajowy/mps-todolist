package AlternateTodoEditors.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.EditorAspectDescriptorBase;
import jetbrains.mps.openapi.editor.descriptor.EditorHintsProvider;
import java.util.Collection;
import jetbrains.mps.openapi.editor.descriptor.ConceptEditorHint;
import java.util.Arrays;
import jetbrains.mps.editor.runtime.descriptor.ConceptEditorHintImpl;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.openapi.editor.descriptor.ConceptEditor;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import java.util.Collections;
import jetbrains.mps.lang.smodel.ConceptSwitchIndex;
import jetbrains.mps.lang.smodel.ConceptSwitchIndexBuilder;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;

public class EditorAspectDescriptorImpl extends EditorAspectDescriptorBase implements EditorHintsProvider {
  private Collection<ConceptEditorHint> myHints = Arrays.<ConceptEditorHint>asList(new ConceptEditorHintImpl("tabular", "tabular", true, "AlternateTodoEditors.editor.AlternateTodoEditors.tabular"));
  @NotNull
  public Collection<ConceptEditor> getDeclaredEditors(SAbstractConcept concept) {
    SAbstractConcept cncpt_a0b = ((SAbstractConcept) concept);
    switch (index_xbvbvu_a0b.index(cncpt_a0b)) {
      case 0:
        return Collections.<ConceptEditor>singletonList(new Todo_tabular_Editor());
      case 1:
        return Collections.<ConceptEditor>singletonList(new TodoList_tabular_Editor());
      default:
    }
    return Collections.<ConceptEditor>emptyList();
  }

  public Collection<ConceptEditorHint> getHints() {
    return myHints;
  }


  private static final ConceptSwitchIndex index_xbvbvu_a0b = new ConceptSwitchIndexBuilder().put(MetaIdFactory.conceptId(0x297ec2396c484eeaL, 0xbc6bbc22570d94c6L, 0x45bb23f610f047b8L), MetaIdFactory.conceptId(0x297ec2396c484eeaL, 0xbc6bbc22570d94c6L, 0xc451252a9fb7bedL)).seal();
}
