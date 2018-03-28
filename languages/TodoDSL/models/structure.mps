<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:57dfd69d-4f5f-494d-9897-8ab8c7335788(TodoDSL.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="3" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="4fqr" ref="r:fa713d69-08ea-4732-b1f2-cb07f9e103ef(jetbrains.mps.execution.util.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1082978164219" name="jetbrains.mps.lang.structure.structure.EnumerationDataTypeDeclaration" flags="ng" index="AxPO7">
        <reference id="1083171729157" name="memberDataType" index="M4eZT" />
        <child id="1083172003582" name="member" index="M5hS2" />
      </concept>
      <concept id="1083171877298" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ig" index="M4N5e">
        <property id="1083923523172" name="externalValue" index="1uS6qo" />
        <property id="1083923523171" name="internalValue" index="1uS6qv" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="L54_aDYRJH">
    <property role="EcuMT" value="884133048096619501" />
    <property role="TrG5h" value="TodoList" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="4mV8ZogW4uF" role="1TKVEl">
      <property role="IQ2nx" value="5024649349015029675" />
      <property role="TrG5h" value="date" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="4mV8ZogW4uH" role="1TKVEl">
      <property role="IQ2nx" value="5024649349015029677" />
      <property role="TrG5h" value="background" />
      <ref role="AX2Wp" node="4mV8Zoh6Ky3" resolve="Color" />
    </node>
    <node concept="1TJgyj" id="4mV8ZogW4uQ" role="1TKVEi">
      <property role="IQ2ns" value="5024649349015029686" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="stuffToDo" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="4mV8ZogW4uS" resolve="Todo" />
    </node>
    <node concept="PrWs8" id="4mV8ZogY7tC" role="PzmwI">
      <ref role="PrY4T" to="4fqr:431DWIovi3l" resolve="IMainClass" />
    </node>
  </node>
  <node concept="1TIwiD" id="4mV8ZogW4uS">
    <property role="EcuMT" value="5024649349015029688" />
    <property role="TrG5h" value="Todo" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="4mV8ZogW4uV" role="1TKVEl">
      <property role="IQ2nx" value="5024649349015029691" />
      <property role="TrG5h" value="description" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="4mV8ZogW4uX" role="1TKVEl">
      <property role="IQ2nx" value="5024649349015029693" />
      <property role="TrG5h" value="priority" />
      <ref role="AX2Wp" node="4mV8ZogW4v0" resolve="Priority" />
    </node>
    <node concept="PrWs8" id="4mV8ZogW4uT" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="AxPO7" id="4mV8ZogW4v0">
    <property role="TrG5h" value="Priority" />
    <ref role="M4eZT" to="tpck:fKAOsGN" resolve="string" />
    <node concept="M4N5e" id="4mV8ZogW4v1" role="M5hS2">
      <property role="1uS6qv" value="LOW" />
      <property role="1uS6qo" value="low" />
    </node>
    <node concept="M4N5e" id="4mV8ZogW4v2" role="M5hS2">
      <property role="1uS6qv" value="MEDIUM" />
      <property role="1uS6qo" value="medium" />
    </node>
    <node concept="M4N5e" id="4mV8ZogW4v5" role="M5hS2">
      <property role="1uS6qv" value="HIGH" />
      <property role="1uS6qo" value="high" />
    </node>
    <node concept="M4N5e" id="4mV8ZogW4v9" role="M5hS2">
      <property role="1uS6qv" value="EXTREME" />
      <property role="1uS6qo" value="EXTREME!" />
    </node>
  </node>
  <node concept="AxPO7" id="4mV8Zoh6Ky3">
    <property role="TrG5h" value="Color" />
    <ref role="M4eZT" to="tpck:fKAOsGN" resolve="string" />
    <node concept="M4N5e" id="4mV8Zoh6Ky4" role="M5hS2">
      <property role="1uS6qo" value="red" />
      <property role="1uS6qv" value="RED " />
    </node>
    <node concept="M4N5e" id="4mV8Zoh6Ky5" role="M5hS2">
      <property role="1uS6qv" value="BLUE" />
      <property role="1uS6qo" value="blue" />
    </node>
    <node concept="M4N5e" id="4mV8Zoh6Ky6" role="M5hS2">
      <property role="1uS6qv" value="YELLOW" />
      <property role="1uS6qo" value="yellow" />
    </node>
  </node>
</model>

