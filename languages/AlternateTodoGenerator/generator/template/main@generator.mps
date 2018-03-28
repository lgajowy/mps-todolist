<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ebe86077-6575-4002-8f97-b2f36c717f43(main@generator)">
  <persistence version="9" />
  <languages>
    <use id="479c7a8c-02f9-43b5-9139-d910cb22f298" name="jetbrains.mps.core.xml" version="0" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="yv99" ref="r:3b4c9134-774c-496a-b8b0-b7f53993da16(TodoDSL.xmlGenerator.structure)" />
    <import index="7a2w" ref="r:10bf3684-5fb2-4fa0-9dd9-1d05589df2e9(jetbrains.mps.util.xml)" />
    <import index="m3ts" ref="r:57dfd69d-4f5f-494d-9897-8ab8c7335788(TodoDSL.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
    </language>
    <language id="479c7a8c-02f9-43b5-9139-d910cb22f298" name="jetbrains.mps.core.xml">
      <concept id="6666499814681515200" name="jetbrains.mps.core.xml.structure.XmlFile" flags="ng" index="2pMbU2">
        <child id="6666499814681515201" name="document" index="2pMbU3" />
      </concept>
      <concept id="6666499814681415858" name="jetbrains.mps.core.xml.structure.XmlElement" flags="ng" index="2pNNFK">
        <property id="6666499814681415862" name="tagName" index="2pNNFO" />
        <child id="1622293396948928802" name="content" index="3o6s8t" />
      </concept>
      <concept id="1622293396948952339" name="jetbrains.mps.core.xml.structure.XmlText" flags="nn" index="3o6iSG">
        <property id="1622293396948953704" name="value" index="3o6i5n" />
      </concept>
      <concept id="6786756355279841993" name="jetbrains.mps.core.xml.structure.XmlDocument" flags="ng" index="3rIKKV">
        <child id="6666499814681299055" name="rootElement" index="2pNm8H" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
      <concept id="1118786554307" name="jetbrains.mps.lang.generator.structure.LoopMacro" flags="ln" index="1WS0z7">
        <child id="1167952069335" name="sourceNodesQuery" index="3Jn$fo" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="propertyName" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="bUwia" id="4wGnFOJZGfZ">
    <property role="TrG5h" value="main" />
    <node concept="3lhOvk" id="4wGnFOJZJ$a" role="3lj3bC">
      <ref role="30HIoZ" to="m3ts:L54_aDYRJH" resolve="TodoList" />
      <ref role="3lhOvi" node="4wGnFOJZJQ7" resolve="map_TodoList" />
    </node>
  </node>
  <node concept="2pMbU2" id="4wGnFOJZJQ7">
    <property role="TrG5h" value="map_TodoList" />
    <node concept="3rIKKV" id="4wGnFOJZJQ8" role="2pMbU3">
      <node concept="2pNNFK" id="4wGnFOJZJQc" role="2pNm8H">
        <property role="2pNNFO" value="todolist" />
        <node concept="2pNNFK" id="4wGnFOJZJQs" role="3o6s8t">
          <property role="2pNNFO" value="background" />
          <node concept="3o6iSG" id="4wGnFOJZJQO" role="3o6s8t">
            <property role="3o6i5n" value="red" />
            <node concept="17Uvod" id="4wGnFOJZJQQ" role="lGtFl">
              <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
              <property role="2qtEX9" value="value" />
              <node concept="3zFVjK" id="4wGnFOJZJQR" role="3zH0cK">
                <node concept="3clFbS" id="4wGnFOJZJQS" role="2VODD2">
                  <node concept="3clFbF" id="4wGnFOJZKMJ" role="3cqZAp">
                    <node concept="2OqwBi" id="4wGnFOJZL0k" role="3clFbG">
                      <node concept="30H73N" id="4wGnFOJZKMI" role="2Oq$k0" />
                      <node concept="3TrcHB" id="4wGnFOJZLge" role="2OqNvi">
                        <ref role="3TsBF5" to="m3ts:4mV8ZogW4uH" resolve="background" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2pNNFK" id="4wGnFOJZJQB" role="3o6s8t">
          <property role="2pNNFO" value="date" />
          <node concept="3o6iSG" id="4wGnFOJZLqH" role="3o6s8t">
            <property role="3o6i5n" value="date" />
            <node concept="17Uvod" id="4wGnFOJZLqJ" role="lGtFl">
              <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
              <property role="2qtEX9" value="value" />
              <node concept="3zFVjK" id="4wGnFOJZLqK" role="3zH0cK">
                <node concept="3clFbS" id="4wGnFOJZLqL" role="2VODD2">
                  <node concept="3clFbF" id="4wGnFOJZLze" role="3cqZAp">
                    <node concept="2OqwBi" id="4wGnFOJZLKN" role="3clFbG">
                      <node concept="30H73N" id="4wGnFOJZLzd" role="2Oq$k0" />
                      <node concept="3TrcHB" id="4wGnFOJZMea" role="2OqNvi">
                        <ref role="3TsBF5" to="m3ts:4mV8ZogW4uF" resolve="date" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2pNNFK" id="4wGnFOK1hmv" role="3o6s8t">
          <property role="2pNNFO" value="todos" />
          <node concept="2pNNFK" id="4wGnFOK1hLf" role="3o6s8t">
            <property role="2pNNFO" value="todo" />
            <node concept="2pNNFK" id="4wGnFOK1hLu" role="3o6s8t">
              <property role="2pNNFO" value="name" />
              <node concept="3o6iSG" id="4wGnFOK1hL$" role="3o6s8t">
                <property role="3o6i5n" value="name" />
                <node concept="17Uvod" id="4wGnFOK1i0Z" role="lGtFl">
                  <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
                  <property role="2qtEX9" value="value" />
                  <node concept="3zFVjK" id="4wGnFOK1i10" role="3zH0cK">
                    <node concept="3clFbS" id="4wGnFOK1i11" role="2VODD2">
                      <node concept="3clFbF" id="4wGnFOK1i9u" role="3cqZAp">
                        <node concept="2OqwBi" id="4wGnFOK1inC" role="3clFbG">
                          <node concept="30H73N" id="4wGnFOK1i9t" role="2Oq$k0" />
                          <node concept="3TrcHB" id="4wGnFOK1iUV" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2pNNFK" id="4wGnFOK1hLB" role="3o6s8t">
              <property role="2pNNFO" value="description" />
              <node concept="3o6iSG" id="4wGnFOK1hLH" role="3o6s8t">
                <property role="3o6i5n" value="description" />
                <node concept="17Uvod" id="4wGnFOK1jkp" role="lGtFl">
                  <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
                  <property role="2qtEX9" value="value" />
                  <node concept="3zFVjK" id="4wGnFOK1jkq" role="3zH0cK">
                    <node concept="3clFbS" id="4wGnFOK1jkr" role="2VODD2">
                      <node concept="3clFbF" id="4wGnFOK1jsS" role="3cqZAp">
                        <node concept="2OqwBi" id="4wGnFOK1jF2" role="3clFbG">
                          <node concept="30H73N" id="4wGnFOK1jsR" role="2Oq$k0" />
                          <node concept="3TrcHB" id="4wGnFOK1kel" role="2OqNvi">
                            <ref role="3TsBF5" to="m3ts:4mV8ZogW4uV" resolve="description" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2pNNFK" id="4wGnFOK1hLR" role="3o6s8t">
              <property role="2pNNFO" value="priority" />
              <node concept="3o6iSG" id="4wGnFOK1hLZ" role="3o6s8t">
                <property role="3o6i5n" value="priority" />
                <node concept="17Uvod" id="4wGnFOK1kw_" role="lGtFl">
                  <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
                  <property role="2qtEX9" value="value" />
                  <node concept="3zFVjK" id="4wGnFOK1kwA" role="3zH0cK">
                    <node concept="3clFbS" id="4wGnFOK1kwB" role="2VODD2">
                      <node concept="3clFbF" id="4wGnFOK1kD4" role="3cqZAp">
                        <node concept="2OqwBi" id="4wGnFOK1kRe" role="3clFbG">
                          <node concept="30H73N" id="4wGnFOK1kD3" role="2Oq$k0" />
                          <node concept="3TrcHB" id="4wGnFOK1lqx" role="2OqNvi">
                            <ref role="3TsBF5" to="m3ts:4mV8ZogW4uX" resolve="priority" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1WS0z7" id="4wGnFOK1hM3" role="lGtFl">
              <node concept="3JmXsc" id="4wGnFOK1hM6" role="3Jn$fo">
                <node concept="3clFbS" id="4wGnFOK1hM7" role="2VODD2">
                  <node concept="3clFbF" id="4wGnFOK1hMd" role="3cqZAp">
                    <node concept="2OqwBi" id="4wGnFOK1hM8" role="3clFbG">
                      <node concept="3Tsc0h" id="4wGnFOK1hMb" role="2OqNvi">
                        <ref role="3TtcxE" to="m3ts:4mV8ZogW4uQ" resolve="stuffToDo" />
                      </node>
                      <node concept="30H73N" id="4wGnFOK1hMc" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3o6iSG" id="4wGnFOK1hxK" role="3o6s8t" />
        </node>
      </node>
    </node>
    <node concept="n94m4" id="4wGnFOJZJQa" role="lGtFl">
      <ref role="n9lRv" to="m3ts:L54_aDYRJH" resolve="TodoList" />
    </node>
  </node>
</model>

