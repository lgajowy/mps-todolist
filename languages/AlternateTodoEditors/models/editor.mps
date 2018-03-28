<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c17ca4b0-5df5-471c-9403-baeeb76bc3a2(AlternateTodoEditors.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="11" />
    <use id="7e450f4e-1ac3-41ef-a851-4598161bdb94" name="de.slisson.mps.tables" version="0" />
    <use id="fb1561dd-216d-4cd5-9cd8-5d1dc9d20bcf" name="com.mbeddr.mpsutil.datepicker" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="m3ts" ref="r:57dfd69d-4f5f-494d-9897-8ab8c7335788(TodoDSL.structure)" implicit="true" />
    <import index="yzu" ref="98a7bbe2-0ea1-4503-9fc1-9efb7b48c6ea/java:com.michaelbaranov.microba.calendar(com.mbeddr.mpsutil.datepicker.runtime/)" implicit="true" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="2597348684684069742" name="contextHints" index="CpUAK" />
      </concept>
      <concept id="6822301196700715228" name="jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclarationReference" flags="ig" index="2aJ2om">
        <reference id="5944657839026714445" name="hint" index="2$4xQ3" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="5944657839000868711" name="jetbrains.mps.lang.editor.structure.ConceptEditorContextHints" flags="ig" index="2ABfQD">
        <child id="5944657839000877563" name="hints" index="2ABdcP" />
      </concept>
      <concept id="5944657839003601246" name="jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclaration" flags="ig" index="2BsEeg">
        <property id="168363875802087287" name="showInUI" index="2gpH_U" />
        <property id="5944657839012629576" name="presentation" index="2BUmq6" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
    </language>
    <language id="fb1561dd-216d-4cd5-9cd8-5d1dc9d20bcf" name="com.mbeddr.mpsutil.datepicker">
      <concept id="2733170341479306405" name="com.mbeddr.mpsutil.datepicker.structure.Function_DatePickerSetup" flags="ig" index="3RrZXk" />
      <concept id="2733170341479306404" name="com.mbeddr.mpsutil.datepicker.structure.Function_DatePickerAction" flags="ig" index="3RrZXl" />
      <concept id="2733170341479306408" name="com.mbeddr.mpsutil.datepicker.structure.Parameter_DatePicker" flags="ng" index="3RrZXp" />
      <concept id="2733170341479306398" name="com.mbeddr.mpsutil.datepicker.structure.DatePickerCell" flags="ng" index="3RrZXJ">
        <property id="2733170341479306402" name="keepTime" index="3RrZXj" />
        <child id="2733170341479306401" name="action" index="3RrZXg" />
        <child id="2733170341479306399" name="setup" index="3RrZXI" />
      </concept>
    </language>
    <language id="7e450f4e-1ac3-41ef-a851-4598161bdb94" name="de.slisson.mps.tables">
      <concept id="1397920687865593407" name="de.slisson.mps.tables.structure.PartialTable" flags="ng" index="2r0Tta">
        <child id="1397920687865593523" name="cells" index="2r0Tv6" />
      </concept>
      <concept id="1397920687864997143" name="de.slisson.mps.tables.structure.TableCell" flags="ng" index="2reCLy">
        <child id="1397920687865064647" name="editorCell" index="2reSmM" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2ABfQD" id="1WGow4rYYb_">
    <property role="TrG5h" value="AlternateTodoEditors" />
    <node concept="2BsEeg" id="1WGow4rYYcU" role="2ABdcP">
      <property role="2gpH_U" value="true" />
      <property role="TrG5h" value="tabular" />
      <property role="2BUmq6" value="tabular" />
    </node>
  </node>
  <node concept="24kQdi" id="1WGow4rYYLQ">
    <ref role="1XX52x" to="m3ts:L54_aDYRJH" resolve="TodoList" />
    <node concept="2aJ2om" id="1WGow4rYYMm" role="CpUAK">
      <ref role="2$4xQ3" node="1WGow4rYYcU" resolve="tabular" />
    </node>
    <node concept="3EZMnI" id="1WGow4rYZOE" role="2wV5jI">
      <node concept="3EZMnI" id="1WGow4rZvPB" role="3EZMnx">
        <node concept="VPM3Z" id="1WGow4rZvPD" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="1WGow4rZvPF" role="3EZMnx">
          <property role="3F0ifm" value="Todo list for" />
        </node>
        <node concept="3F0A7n" id="1WGow4rZkfz" role="3EZMnx">
          <ref role="1NtTu8" to="m3ts:4mV8ZogW4uF" resolve="date" />
        </node>
        <node concept="3RrZXJ" id="1WGow4rZkfF" role="3EZMnx">
          <property role="3RrZXj" value="true" />
          <node concept="3RrZXk" id="1WGow4rZkfH" role="3RrZXI">
            <node concept="3clFbS" id="1WGow4rZkfJ" role="2VODD2" />
          </node>
          <node concept="3RrZXl" id="1WGow4rZkfL" role="3RrZXg">
            <node concept="3clFbS" id="1WGow4rZkfN" role="2VODD2">
              <node concept="3clFbF" id="1WGow4rZkgd" role="3cqZAp">
                <node concept="37vLTI" id="1WGow4rZlod" role="3clFbG">
                  <node concept="2OqwBi" id="1WGow4rZuCj" role="37vLTx">
                    <node concept="2OqwBi" id="1WGow4rZsoS" role="2Oq$k0">
                      <node concept="3RrZXp" id="1WGow4rZlqA" role="2Oq$k0" />
                      <node concept="liA8E" id="1WGow4rZuf6" role="2OqNvi">
                        <ref role="37wK5l" to="yzu:~CalendarPane.getDate():java.util.Date" resolve="getDate" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1WGow4rZv9B" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Date.toString():java.lang.String" resolve="toString" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1WGow4rZknN" role="37vLTJ">
                    <node concept="pncrf" id="1WGow4rZkgc" role="2Oq$k0" />
                    <node concept="3TrcHB" id="1WGow4rZkLB" role="2OqNvi">
                      <ref role="3TsBF5" to="m3ts:4mV8ZogW4uF" resolve="date" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="l2Vlx" id="1WGow4rZvPG" role="2iSdaV" />
        <node concept="3F0ifn" id="1WGow4rZxld" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
      </node>
      <node concept="3F2HdR" id="1WGow4rZCT7" role="3EZMnx">
        <ref role="1NtTu8" to="m3ts:4mV8ZogW4uQ" resolve="stuffToDo" />
        <node concept="2iRkQZ" id="1WGow4rZDTg" role="2czzBx" />
      </node>
      <node concept="2iRkQZ" id="1WGow4rZvIr" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1WGow4rZCXq">
    <ref role="1XX52x" to="m3ts:4mV8ZogW4uS" resolve="Todo" />
    <node concept="2aJ2om" id="1WGow4rZCXR" role="CpUAK">
      <ref role="2$4xQ3" node="1WGow4rYYcU" resolve="tabular" />
    </node>
    <node concept="3EZMnI" id="1WGow4rZJwx" role="2wV5jI">
      <node concept="l2Vlx" id="1WGow4rZJw$" role="2iSdaV" />
      <node concept="2r0Tta" id="1WGow4rZKKU" role="3EZMnx">
        <node concept="2reCLy" id="1WGow4rZKKW" role="2r0Tv6">
          <node concept="3F0A7n" id="1WGow4rZKL0" role="2reSmM">
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

