<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:887a66f0-c532-4aa3-8c6d-408f58bf2e73(TodoDSL.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="7" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="m3ts" ref="r:57dfd69d-4f5f-494d-9897-8ab8c7335788(TodoDSL.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1239814640496" name="jetbrains.mps.lang.editor.structure.CellLayout_VerticalGrid" flags="nn" index="2EHx9g" />
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1186414999511" name="jetbrains.mps.lang.editor.structure.UnderlinedStyleClassItem" flags="ln" index="VQ3r3">
        <property id="1214316229833" name="underlined" index="2USNnj" />
      </concept>
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
  </registry>
  <node concept="24kQdi" id="4mV8Zohb9N7">
    <ref role="1XX52x" to="m3ts:L54_aDYRJH" resolve="TodoList" />
    <node concept="3EZMnI" id="4mV8ZohbiA5" role="2wV5jI">
      <node concept="l2Vlx" id="4mV8ZohbiA6" role="2iSdaV" />
      <node concept="3F0ifn" id="4mV8ZohbiA9" role="3EZMnx">
        <property role="3F0ifm" value="Todo list for" />
      </node>
      <node concept="3F0A7n" id="4mV8Zohbn$t" role="3EZMnx">
        <ref role="1NtTu8" to="m3ts:4mV8ZogW4uF" resolve="date" />
      </node>
      <node concept="3F0ifn" id="4mV8Zohbn$P" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0ifn" id="4mV8ZohbiAg" role="3EZMnx">
        <node concept="pVoyu" id="4mV8ZohbiAl" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="4mV8ZohbiAs" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="4mV8ZohbiAO" role="3EZMnx">
        <ref role="1NtTu8" to="m3ts:4mV8ZogW4uQ" resolve="stuffToDo" />
        <node concept="2iRkQZ" id="4mV8ZohbnfS" role="2czzBx" />
        <node concept="pVoyu" id="4mV8ZohbiB0" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="4mV8ZohbiB2" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="4mV8Zohbwab" role="3EZMnx">
        <node concept="VPM3Z" id="4mV8Zohbwad" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="4mV8Zohbwa$" role="3EZMnx">
          <property role="3F0ifm" value="Background:" />
          <node concept="VQ3r3" id="4mV8ZohbwBv" role="3F10Kt">
            <property role="2USNnj" value="2" />
          </node>
          <node concept="VechU" id="4mV8Zohbx36" role="3F10Kt">
            <property role="Vb096" value="gray" />
          </node>
        </node>
        <node concept="3F0A7n" id="4mV8ZohbwaE" role="3EZMnx">
          <ref role="1NtTu8" to="m3ts:4mV8ZogW4uH" resolve="background" />
          <node concept="VechU" id="4mV8Zohbxur" role="3F10Kt">
            <property role="Vb096" value="gray" />
          </node>
        </node>
        <node concept="l2Vlx" id="4mV8Zohbwag" role="2iSdaV" />
        <node concept="pVoyu" id="4mV8ZohbwaI" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="4mV8ZohbwaL" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4mV8ZohbjcW">
    <ref role="1XX52x" to="m3ts:4mV8ZogW4uS" resolve="Todo" />
    <node concept="3EZMnI" id="4mV8Zohbnfv" role="2wV5jI">
      <node concept="3EZMnI" id="4mV8ZohbuWV" role="3EZMnx">
        <node concept="VPM3Z" id="4mV8ZohbuWX" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="4mV8ZohbuWZ" role="3EZMnx">
          <property role="3F0ifm" value="Title:" />
        </node>
        <node concept="3F0A7n" id="4mV8ZohbuXb" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="l2Vlx" id="4mV8ZohbuX0" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="4mV8ZohbuXt" role="3EZMnx">
        <node concept="VPM3Z" id="4mV8ZohbuXv" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="4mV8ZohbuXx" role="3EZMnx">
          <property role="3F0ifm" value="Description:" />
        </node>
        <node concept="3F0A7n" id="4mV8ZohbuXP" role="3EZMnx">
          <ref role="1NtTu8" to="m3ts:4mV8ZogW4uV" resolve="description" />
        </node>
        <node concept="l2Vlx" id="4mV8ZohbuXy" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="4mV8ZohbuYf" role="3EZMnx">
        <node concept="VPM3Z" id="4mV8ZohbuYh" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="4mV8ZohbuYj" role="3EZMnx">
          <property role="3F0ifm" value="Priority:" />
        </node>
        <node concept="3F0A7n" id="4mV8ZohbuYB" role="3EZMnx">
          <ref role="1NtTu8" to="m3ts:4mV8ZogW4uX" resolve="priority" />
        </node>
        <node concept="l2Vlx" id="4mV8ZohbuYk" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="4mV8Zohbvmh" role="3EZMnx" />
      <node concept="2EHx9g" id="4mV8ZohbuCI" role="2iSdaV" />
    </node>
  </node>
</model>

