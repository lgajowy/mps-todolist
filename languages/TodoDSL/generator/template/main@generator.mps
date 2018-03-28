<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d0a34136-43ba-4744-9f10-7d5c029db04d(main@generator)">
  <persistence version="9" />
  <languages>
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="m3ts" ref="r:57dfd69d-4f5f-494d-9897-8ab8c7335788(TodoDSL.structure)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="c8ee" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.table(JDK/)" />
    <import index="hyam" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.event(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1188220165133" name="jetbrains.mps.baseLanguage.structure.ArrayLiteral" flags="nn" index="2BsdOp">
        <child id="1188220173759" name="item" index="2BsfMF" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="nn" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
        <child id="1154542803372" name="initValue" index="3g7hyw" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="1163670490218" name="jetbrains.mps.baseLanguage.structure.SwitchStatement" flags="nn" index="3KaCP$">
        <child id="1163670592366" name="defaultBlock" index="3Kb1Dw" />
        <child id="1163670766145" name="expression" index="3KbGdf" />
        <child id="1163670772911" name="case" index="3KbHQx" />
      </concept>
      <concept id="1163670641947" name="jetbrains.mps.baseLanguage.structure.SwitchCase" flags="ng" index="3KbdKl">
        <child id="1163670677455" name="expression" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1202776937179" name="jetbrains.mps.lang.generator.structure.AbandonInput_RuleConsequence" flags="lg" index="b5Tf3" />
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1177093525992" name="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence" flags="lg" index="gft3U">
        <child id="1177093586806" name="templateNode" index="gfFT$" />
      </concept>
      <concept id="1112730859144" name="jetbrains.mps.lang.generator.structure.TemplateSwitch" flags="ig" index="jVnub">
        <child id="1168558750579" name="defaultConsequence" index="jxRDz" />
        <child id="1167340453568" name="reductionMappingRule" index="3aUrZf" />
      </concept>
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1722980698497626400" name="jetbrains.mps.lang.generator.structure.ITemplateCall" flags="ng" index="v9R3L">
        <reference id="1722980698497626483" name="template" index="v9R2y" />
      </concept>
      <concept id="1167168920554" name="jetbrains.mps.lang.generator.structure.BaseMappingRule_Condition" flags="in" index="30G5F_" />
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <property id="1167272244852" name="applyToConceptInheritors" index="36QftV" />
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
        <child id="1167169362365" name="conditionFunction" index="30HLyM" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="982871510068000147" name="jetbrains.mps.lang.generator.structure.TemplateSwitchMacro" flags="lg" index="1sPUBX" />
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167945743726" name="jetbrains.mps.lang.generator.structure.IfMacro_Condition" flags="in" index="3IZrLx" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
      <concept id="1118773211870" name="jetbrains.mps.lang.generator.structure.IfMacro" flags="ln" index="1W57fq">
        <child id="1167945861827" name="conditionFunction" index="3IZSJc" />
      </concept>
      <concept id="1118786554307" name="jetbrains.mps.lang.generator.structure.LoopMacro" flags="ln" index="1WS0z7">
        <child id="1167952069335" name="sourceNodesQuery" index="3Jn$fo" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138676077309" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="nn" index="uoxfO">
        <reference id="1138676095763" name="enumMember" index="uo_Cq" />
      </concept>
      <concept id="1146171026731" name="jetbrains.mps.lang.smodel.structure.Property_HasValue_Enum" flags="nn" index="3t7uKx">
        <child id="1146171026732" name="value" index="3t7uKA" />
      </concept>
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
  <node concept="bUwia" id="L54_aDYH_D">
    <property role="TrG5h" value="main" />
    <node concept="3lhOvk" id="L54_aDYRK$" role="3lj3bC">
      <ref role="30HIoZ" to="m3ts:L54_aDYRJH" resolve="TodoList" />
      <ref role="3lhOvi" node="4mV8ZogXk85" resolve="TodoList" />
    </node>
  </node>
  <node concept="312cEu" id="4mV8ZogXk85">
    <property role="TrG5h" value="TodoList" />
    <node concept="3Tm1VV" id="4mV8ZogXk86" role="1B3o_S" />
    <node concept="n94m4" id="4mV8ZogXk87" role="lGtFl">
      <ref role="n9lRv" to="m3ts:L54_aDYRJH" resolve="TodoList" />
    </node>
    <node concept="2tJIrI" id="4mV8ZohamkE" role="jymVt" />
    <node concept="2YIFZL" id="4mV8ZogXk89" role="jymVt">
      <property role="TrG5h" value="main" />
      <node concept="37vLTG" id="4mV8ZogXk8a" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="4mV8ZogXk8b" role="1tU5fm">
          <node concept="17QB3L" id="4mV8ZogXk8c" role="10Q1$1" />
        </node>
      </node>
      <node concept="3cqZAl" id="4mV8ZogXk8d" role="3clF45" />
      <node concept="3Tm1VV" id="4mV8ZogXk8e" role="1B3o_S" />
      <node concept="3clFbS" id="4mV8ZogXk8f" role="3clF47">
        <node concept="3clFbF" id="4mV8ZogYELS" role="3cqZAp">
          <node concept="2YIFZM" id="4mV8ZogYF11" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~SwingUtilities.invokeLater(java.lang.Runnable):void" resolve="invokeLater" />
            <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
            <node concept="2ShNRf" id="4mV8ZogYFfG" role="37wK5m">
              <node concept="YeOm9" id="4mV8ZogYFB2" role="2ShVmc">
                <node concept="1Y3b0j" id="4mV8ZogYFB5" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3Tm1VV" id="4mV8ZogYFB6" role="1B3o_S" />
                  <node concept="3clFb_" id="4mV8ZogYFB7" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="run" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <node concept="3Tm1VV" id="4mV8ZogYFB8" role="1B3o_S" />
                    <node concept="3cqZAl" id="4mV8ZogYFBa" role="3clF45" />
                    <node concept="3clFbS" id="4mV8ZogYFBb" role="3clF47">
                      <node concept="3clFbF" id="4mV8ZogYG6q" role="3cqZAp">
                        <node concept="1rXfSq" id="4mV8ZogYG6p" role="3clFbG">
                          <ref role="37wK5l" node="4mV8Zoh2jiH" resolve="createListGUI" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4mV8Zoh0DhL" role="jymVt" />
    <node concept="2YIFZL" id="4mV8Zoh2jiH" role="jymVt">
      <property role="TrG5h" value="createListGUI" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4mV8Zoh2jiJ" role="3clF47">
        <node concept="3cpWs8" id="4mV8Zoh2jiM" role="3cqZAp">
          <node concept="3cpWsn" id="4mV8Zoh2jiN" role="3cpWs9">
            <property role="TrG5h" value="frame" />
            <node concept="3uibUv" id="4mV8Zoh2jiO" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JFrame" resolve="JFrame" />
            </node>
            <node concept="2ShNRf" id="4mV8Zoh2jiP" role="33vP2m">
              <node concept="1pGfFk" id="4mV8Zoh2jiQ" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JFrame.&lt;init&gt;()" resolve="JFrame" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4mV8Zoh2n3Q" role="3cqZAp">
          <node concept="3cpWsn" id="4mV8Zoh2n3R" role="3cpWs9">
            <property role="TrG5h" value="table" />
            <node concept="3uibUv" id="4mV8Zoh2n3S" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JTable" resolve="JTable" />
            </node>
            <node concept="1rXfSq" id="4mV8Zoh2nG8" role="33vP2m">
              <ref role="37wK5l" node="4mV8ZogYYEA" resolve="createDataTable" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4mV8Zoha_Y$" role="3cqZAp">
          <node concept="1rXfSq" id="4mV8Zoha_Yy" role="3clFbG">
            <ref role="37wK5l" node="4mV8Zoh3Vt8" resolve="addClickingListener" />
            <node concept="37vLTw" id="4mV8ZohaB46" role="37wK5m">
              <ref role="3cqZAo" node="4mV8Zoh2n3R" resolve="table" />
            </node>
            <node concept="37vLTw" id="4mV8ZohaBfp" role="37wK5m">
              <ref role="3cqZAo" node="4mV8Zoh2jiN" resolve="frame" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4mV8Zoh5Hdb" role="3cqZAp">
          <node concept="3cpWsn" id="4mV8Zoh5Hdc" role="3cpWs9">
            <property role="TrG5h" value="labelPanel" />
            <node concept="3uibUv" id="4mV8Zoh5Hdd" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
            </node>
            <node concept="2ShNRf" id="4mV8Zoh5IaE" role="33vP2m">
              <node concept="1pGfFk" id="4mV8Zoh5IGi" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4mV8Zoh5Jfq" role="3cqZAp">
          <node concept="2OqwBi" id="4mV8Zoh5KbI" role="3clFbG">
            <node concept="37vLTw" id="4mV8Zoh5Jfo" role="2Oq$k0">
              <ref role="3cqZAo" node="4mV8Zoh5Hdc" resolve="labelPanel" />
            </node>
            <node concept="liA8E" id="4mV8Zoh5LJ2" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component):java.awt.Component" resolve="add" />
              <node concept="2ShNRf" id="4mV8Zoh5LPq" role="37wK5m">
                <node concept="1pGfFk" id="4mV8Zoh5NkX" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                  <node concept="Xl_RD" id="4mV8Zoh5Nq8" role="37wK5m">
                    <property role="Xl_RC" value="date" />
                    <node concept="17Uvod" id="4mV8Zoh5WjN" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="4mV8Zoh5WjO" role="3zH0cK">
                        <node concept="3clFbS" id="4mV8Zoh5WjP" role="2VODD2">
                          <node concept="3clFbF" id="4mV8Zoh5Yaf" role="3cqZAp">
                            <node concept="2OqwBi" id="4mV8Zoh5YnO" role="3clFbG">
                              <node concept="30H73N" id="4mV8Zoh5Yae" role="2Oq$k0" />
                              <node concept="3TrcHB" id="4mV8Zoh5YJ2" role="2OqNvi">
                                <ref role="3TsBF5" to="m3ts:4mV8ZogW4uF" resolve="date" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4mV8Zoh8VTE" role="3cqZAp">
          <node concept="3cpWsn" id="4mV8Zoh8VTF" role="3cpWs9">
            <property role="TrG5h" value="scrollPane" />
            <node concept="3uibUv" id="4mV8Zoh8VTG" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JScrollPane" resolve="JScrollPane" />
            </node>
            <node concept="2ShNRf" id="4mV8Zoh8XPo" role="33vP2m">
              <node concept="1pGfFk" id="4mV8Zoh8ZCi" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JScrollPane.&lt;init&gt;(java.awt.Component)" resolve="JScrollPane" />
                <node concept="37vLTw" id="4mV8Zoh8ZLR" role="37wK5m">
                  <ref role="3cqZAo" node="4mV8Zoh2n3R" resolve="table" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4mV8ZohaJS5" role="3cqZAp" />
        <node concept="3clFbF" id="4mV8Zoh9puB" role="3cqZAp">
          <node concept="2YIFZM" id="4mV8Zoh9puA" role="3clFbG">
            <ref role="1Pybhc" node="4mV8ZogXk85" resolve="TodoList" />
            <ref role="37wK5l" node="4mV8Zoh9pux" resolve="setBackgroundColor" />
            <node concept="37vLTw" id="4mV8Zoh9pu$" role="37wK5m">
              <ref role="3cqZAo" node="4mV8Zoh5Hdc" resolve="labelPanel" />
            </node>
            <node concept="37vLTw" id="4mV8Zoh9pu_" role="37wK5m">
              <ref role="3cqZAo" node="4mV8Zoh8VTF" resolve="scrollPane" />
            </node>
          </node>
          <node concept="1W57fq" id="4mV8Zoha9s5" role="lGtFl">
            <node concept="3IZrLx" id="4mV8Zoha9s7" role="3IZSJc">
              <node concept="3clFbS" id="4mV8Zoha9s9" role="2VODD2">
                <node concept="3clFbF" id="4mV8ZohaaMF" role="3cqZAp">
                  <node concept="3fqX7Q" id="4mV8ZohaaMG" role="3clFbG">
                    <node concept="2OqwBi" id="4mV8ZohaaMH" role="3fr31v">
                      <node concept="2OqwBi" id="4mV8ZohaaMI" role="2Oq$k0">
                        <node concept="30H73N" id="4mV8ZohaaMJ" role="2Oq$k0" />
                        <node concept="3TrcHB" id="4mV8ZohaaMK" role="2OqNvi">
                          <ref role="3TsBF5" to="m3ts:4mV8ZogW4uH" resolve="background" />
                        </node>
                      </node>
                      <node concept="3t7uKx" id="4mV8ZohaaML" role="2OqNvi">
                        <node concept="uoxfO" id="4mV8ZohaaMM" role="3t7uKA">
                          <ref role="uo_Cq" to="m3ts:4mV8Zoh9IKX" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4mV8ZohaIYC" role="3cqZAp" />
        <node concept="3cpWs8" id="4mV8Zoh9etl" role="3cqZAp">
          <node concept="3cpWsn" id="4mV8Zoh89uo" role="3cpWs9">
            <property role="TrG5h" value="splitPane" />
            <node concept="3uibUv" id="4mV8Zoh89up" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JSplitPane" resolve="JSplitPane" />
            </node>
            <node concept="2ShNRf" id="4mV8Zoh8ak5" role="33vP2m">
              <node concept="1pGfFk" id="4mV8Zoh8aPH" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JSplitPane.&lt;init&gt;(int,java.awt.Component,java.awt.Component)" resolve="JSplitPane" />
                <node concept="10M0yZ" id="4mV8Zoh8b63" role="37wK5m">
                  <ref role="3cqZAo" to="dxuu:~JSplitPane.VERTICAL_SPLIT" resolve="VERTICAL_SPLIT" />
                  <ref role="1PxDUh" to="dxuu:~JSplitPane" resolve="JSplitPane" />
                </node>
                <node concept="37vLTw" id="4mV8Zoh8bDN" role="37wK5m">
                  <ref role="3cqZAo" node="4mV8Zoh5Hdc" resolve="labelPanel" />
                </node>
                <node concept="37vLTw" id="4mV8Zoh9dM2" role="37wK5m">
                  <ref role="3cqZAo" node="4mV8Zoh8VTF" resolve="scrollPane" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4mV8Zoh8hG7" role="3cqZAp">
          <node concept="2OqwBi" id="4mV8Zoh8iWC" role="3clFbG">
            <node concept="37vLTw" id="4mV8Zoh8hG5" role="2Oq$k0">
              <ref role="3cqZAo" node="4mV8Zoh2jiN" resolve="frame" />
            </node>
            <node concept="liA8E" id="4mV8Zoh8kTk" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component):java.awt.Component" resolve="add" />
              <node concept="37vLTw" id="4mV8Zoh8l55" role="37wK5m">
                <ref role="3cqZAo" node="4mV8Zoh89uo" resolve="splitPane" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4mV8Zoh2jiS" role="3cqZAp">
          <node concept="2OqwBi" id="4mV8Zoh2jiT" role="3clFbG">
            <node concept="liA8E" id="4mV8Zoh2jiU" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JFrame.setDefaultCloseOperation(int):void" resolve="setDefaultCloseOperation" />
              <node concept="10M0yZ" id="4mV8Zoh2jiV" role="37wK5m">
                <ref role="1PxDUh" to="dxuu:~JFrame" resolve="JFrame" />
                <ref role="3cqZAo" to="dxuu:~JFrame.EXIT_ON_CLOSE" resolve="EXIT_ON_CLOSE" />
              </node>
            </node>
            <node concept="37vLTw" id="4mV8Zoh2jiW" role="2Oq$k0">
              <ref role="3cqZAo" node="4mV8Zoh2jiN" resolve="frame" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4mV8Zoh4TpX" role="3cqZAp">
          <node concept="2OqwBi" id="4mV8Zoh4UkO" role="3clFbG">
            <node concept="37vLTw" id="4mV8Zoh4TpV" role="2Oq$k0">
              <ref role="3cqZAo" node="4mV8Zoh2jiN" resolve="frame" />
            </node>
            <node concept="liA8E" id="4mV8Zoh4Vpf" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Frame.setTitle(java.lang.String):void" resolve="setTitle" />
              <node concept="2YIFZM" id="4mV8Zoh4HTN" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolve="format" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <node concept="Xl_RD" id="4mV8Zoh4HTO" role="37wK5m">
                  <property role="Xl_RC" value="%s tasks done, %s tasks total" />
                </node>
                <node concept="3cmrfG" id="4mV8Zoh4Z_z" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="4mV8Zoh4WJX" role="37wK5m">
                  <node concept="37vLTw" id="4mV8Zoh4VMv" role="2Oq$k0">
                    <ref role="3cqZAo" node="4mV8Zoh2n3R" resolve="table" />
                  </node>
                  <node concept="liA8E" id="4mV8Zoh4Z1w" role="2OqNvi">
                    <ref role="37wK5l" to="dxuu:~JTable.getRowCount():int" resolve="getRowCount" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4mV8Zoh2jjn" role="3cqZAp">
          <node concept="2OqwBi" id="4mV8Zoh2jjo" role="3clFbG">
            <node concept="37vLTw" id="4mV8Zoh2jjp" role="2Oq$k0">
              <ref role="3cqZAo" node="4mV8Zoh2jiN" resolve="frame" />
            </node>
            <node concept="liA8E" id="4mV8Zoh2jjq" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Window.pack():void" resolve="pack" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4mV8Zoh2jjr" role="3cqZAp">
          <node concept="2OqwBi" id="4mV8Zoh2jjs" role="3clFbG">
            <node concept="37vLTw" id="4mV8Zoh2jjt" role="2Oq$k0">
              <ref role="3cqZAo" node="4mV8Zoh2jiN" resolve="frame" />
            </node>
            <node concept="liA8E" id="4mV8Zoh2jju" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Window.setVisible(boolean):void" resolve="setVisible" />
              <node concept="3clFbT" id="4mV8Zoh2jjv" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="4mV8Zoh2jjw" role="3clF45" />
      <node concept="3Tm6S6" id="4mV8Zoh2jjx" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4mV8Zoh9wi7" role="jymVt" />
    <node concept="2YIFZL" id="4mV8Zoh9pux" role="jymVt">
      <property role="TrG5h" value="setBackgroundColor" />
      <node concept="3Tm6S6" id="4mV8Zoh9puy" role="1B3o_S" />
      <node concept="3cqZAl" id="4mV8Zoh9puz" role="3clF45" />
      <node concept="37vLTG" id="4mV8Zoh9pup" role="3clF46">
        <property role="TrG5h" value="labelPanel" />
        <node concept="3uibUv" id="4mV8Zoh9puq" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
        </node>
      </node>
      <node concept="37vLTG" id="4mV8Zoh9pur" role="3clF46">
        <property role="TrG5h" value="scrollPane" />
        <node concept="3uibUv" id="4mV8Zoh9pus" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JScrollPane" resolve="JScrollPane" />
        </node>
      </node>
      <node concept="3clFbS" id="4mV8Zoh9pu4" role="3clF47">
        <node concept="3clFbF" id="4mV8Zoh9pu5" role="3cqZAp">
          <node concept="2OqwBi" id="4mV8Zoh9pu6" role="3clFbG">
            <node concept="37vLTw" id="4mV8Zoh9put" role="2Oq$k0">
              <ref role="3cqZAo" node="4mV8Zoh9pup" resolve="labelPanel" />
            </node>
            <node concept="liA8E" id="4mV8Zoh9pu8" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setBackground(java.awt.Color):void" resolve="setBackground" />
              <node concept="2ShNRf" id="4mV8Zoh9pu9" role="37wK5m">
                <node concept="1pGfFk" id="4mV8Zoh9pua" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
                  <node concept="3cmrfG" id="4mV8Zoh9pub" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="3cmrfG" id="4mV8Zoh9puc" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="3cmrfG" id="4mV8Zoh9pud" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
                <node concept="1sPUBX" id="4mV8Zoh9pue" role="lGtFl">
                  <ref role="v9R2y" node="4mV8Zoh71_r" resolve="ColorSwitch" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4mV8Zoh9puf" role="3cqZAp">
          <node concept="2OqwBi" id="4mV8Zoh9pug" role="3clFbG">
            <node concept="37vLTw" id="4mV8Zoh9puu" role="2Oq$k0">
              <ref role="3cqZAo" node="4mV8Zoh9pur" resolve="scrollPane" />
            </node>
            <node concept="liA8E" id="4mV8Zoh9pui" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setBackground(java.awt.Color):void" resolve="setBackground" />
              <node concept="2ShNRf" id="4mV8Zoh9puj" role="37wK5m">
                <node concept="1pGfFk" id="4mV8Zoh9puk" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
                  <node concept="3cmrfG" id="4mV8Zoh9pul" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="3cmrfG" id="4mV8Zoh9pum" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="3cmrfG" id="4mV8Zoh9pun" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
                <node concept="1sPUBX" id="4mV8Zoh9puo" role="lGtFl">
                  <ref role="v9R2y" node="4mV8Zoh71_r" resolve="ColorSwitch" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1W57fq" id="4mV8Zoh9x$I" role="lGtFl">
        <node concept="3IZrLx" id="4mV8Zoh9x$K" role="3IZSJc">
          <node concept="3clFbS" id="4mV8Zoh9x$M" role="2VODD2">
            <node concept="3clFbF" id="4mV8Zoh9xRt" role="3cqZAp">
              <node concept="3fqX7Q" id="4mV8Zoh9WOP" role="3clFbG">
                <node concept="2OqwBi" id="4mV8Zoh9WOQ" role="3fr31v">
                  <node concept="2OqwBi" id="4mV8Zoh9WOR" role="2Oq$k0">
                    <node concept="30H73N" id="4mV8Zoh9WOS" role="2Oq$k0" />
                    <node concept="3TrcHB" id="4mV8Zoh9WOT" role="2OqNvi">
                      <ref role="3TsBF5" to="m3ts:4mV8ZogW4uH" resolve="background" />
                    </node>
                  </node>
                  <node concept="3t7uKx" id="4mV8Zoh9WOU" role="2OqNvi">
                    <node concept="uoxfO" id="4mV8Zoh9WOV" role="3t7uKA">
                      <ref role="uo_Cq" to="m3ts:4mV8Zoh9IKX" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4mV8ZogYXOb" role="jymVt" />
    <node concept="2YIFZL" id="4mV8ZogYYEA" role="jymVt">
      <property role="TrG5h" value="createDataTable" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4mV8ZogYYED" role="3clF47">
        <node concept="3cpWs8" id="4mV8ZogYZB3" role="3cqZAp">
          <node concept="3cpWsn" id="4mV8ZogYZB9" role="3cpWs9">
            <property role="TrG5h" value="columns" />
            <node concept="10Q1$e" id="4mV8ZogYZBb" role="1tU5fm">
              <node concept="3uibUv" id="4mV8ZogYZBd" role="10Q1$1">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2ShNRf" id="4mV8ZogYZIV" role="33vP2m">
              <node concept="3g6Rrh" id="4mV8ZogZ0jE" role="2ShVmc">
                <node concept="3uibUv" id="4mV8ZogYZTK" role="3g7fb8">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="Xl_RD" id="4mV8ZogZ0pD" role="3g7hyw">
                  <property role="Xl_RC" value="name" />
                </node>
                <node concept="Xl_RD" id="4mV8ZogZ0wN" role="3g7hyw">
                  <property role="Xl_RC" value="description" />
                </node>
                <node concept="Xl_RD" id="4mV8ZogZ0CY" role="3g7hyw">
                  <property role="Xl_RC" value="priority" />
                </node>
                <node concept="Xl_RD" id="4mV8ZogZ0N9" role="3g7hyw">
                  <property role="Xl_RC" value="is done yet?" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4mV8Zoh6sLN" role="3cqZAp" />
        <node concept="3cpWs8" id="4mV8ZogZ1vr" role="3cqZAp">
          <node concept="3cpWsn" id="4mV8ZogZ1vs" role="3cpWs9">
            <property role="TrG5h" value="data" />
            <node concept="10Q1$e" id="4mV8ZogZ1wb" role="1tU5fm">
              <node concept="10Q1$e" id="4mV8ZogZ1vt" role="10Q1$1">
                <node concept="3uibUv" id="4mV8ZogZ1vu" role="10Q1$1">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="4mV8ZogZ1Ak" role="33vP2m">
              <node concept="3g6Rrh" id="4mV8ZogZ2jo" role="2ShVmc">
                <node concept="2BsdOp" id="4mV8ZogZ2qM" role="3g7hyw">
                  <node concept="Xl_RD" id="4mV8ZogZ2y3" role="2BsfMF">
                    <property role="Xl_RC" value="name" />
                    <node concept="17Uvod" id="4mV8Zoh6bE3" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="4mV8Zoh6bE4" role="3zH0cK">
                        <node concept="3clFbS" id="4mV8Zoh6bE5" role="2VODD2">
                          <node concept="3clFbF" id="4mV8Zoh6cYA" role="3cqZAp">
                            <node concept="2OqwBi" id="4mV8Zoh6dcM" role="3clFbG">
                              <node concept="30H73N" id="4mV8Zoh6cY_" role="2Oq$k0" />
                              <node concept="3TrcHB" id="4mV8Zoh6eav" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="4mV8ZogZ2QX" role="2BsfMF">
                    <property role="Xl_RC" value="description" />
                    <node concept="17Uvod" id="4mV8Zoh6g0V" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="4mV8Zoh6g0W" role="3zH0cK">
                        <node concept="3clFbS" id="4mV8Zoh6g0X" role="2VODD2">
                          <node concept="3clFbF" id="4mV8Zoh6hpD" role="3cqZAp">
                            <node concept="2OqwBi" id="4mV8Zoh6hBP" role="3clFbG">
                              <node concept="30H73N" id="4mV8Zoh6hpC" role="2Oq$k0" />
                              <node concept="3TrcHB" id="4mV8Zoh6ibi" role="2OqNvi">
                                <ref role="3TsBF5" to="m3ts:4mV8ZogW4uV" resolve="description" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="4mV8ZogZ305" role="2BsfMF">
                    <property role="Xl_RC" value="priority" />
                    <node concept="17Uvod" id="4mV8Zoh6l93" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="4mV8Zoh6l94" role="3zH0cK">
                        <node concept="3clFbS" id="4mV8Zoh6l95" role="2VODD2">
                          <node concept="3clFbF" id="4mV8Zoh6myd" role="3cqZAp">
                            <node concept="2OqwBi" id="4mV8Zoh6mKp" role="3clFbG">
                              <node concept="30H73N" id="4mV8Zoh6myc" role="2Oq$k0" />
                              <node concept="3TrcHB" id="4mV8Zoh6njQ" role="2OqNvi">
                                <ref role="3TsBF5" to="m3ts:4mV8ZogW4uX" resolve="priority" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbT" id="4mV8ZogZL11" role="2BsfMF">
                    <property role="3clFbU" value="false" />
                  </node>
                  <node concept="1WS0z7" id="4mV8Zoh61B3" role="lGtFl">
                    <node concept="3JmXsc" id="4mV8Zoh61B6" role="3Jn$fo">
                      <node concept="3clFbS" id="4mV8Zoh61B7" role="2VODD2">
                        <node concept="3clFbF" id="4mV8Zoh61Bd" role="3cqZAp">
                          <node concept="2OqwBi" id="4mV8Zoh61B8" role="3clFbG">
                            <node concept="3Tsc0h" id="4mV8Zoh61Bb" role="2OqNvi">
                              <ref role="3TtcxE" to="m3ts:4mV8ZogW4uQ" resolve="stuffToDo" />
                            </node>
                            <node concept="30H73N" id="4mV8Zoh61Bc" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="10Q1$e" id="4mV8ZogZ1Ut" role="3g7fb8">
                  <node concept="3uibUv" id="4mV8ZogZ1K5" role="10Q1$1">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4mV8Zoh6t$b" role="3cqZAp" />
        <node concept="3cpWs6" id="4mV8Zoh6vc8" role="3cqZAp">
          <node concept="2YIFZM" id="4mV8Zoh6vc7" role="3cqZAk">
            <ref role="1Pybhc" node="4mV8ZogXk85" resolve="TodoList" />
            <ref role="37wK5l" node="4mV8Zoh6vc2" resolve="setupTable" />
            <node concept="37vLTw" id="4mV8Zoh6vc5" role="37wK5m">
              <ref role="3cqZAo" node="4mV8ZogZ1vs" resolve="data" />
            </node>
            <node concept="37vLTw" id="4mV8Zoh6vc6" role="37wK5m">
              <ref role="3cqZAo" node="4mV8ZogYZB9" resolve="columns" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4mV8ZogYYnn" role="1B3o_S" />
      <node concept="3uibUv" id="4mV8ZogZ6it" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JTable" resolve="JTable" />
      </node>
    </node>
    <node concept="2tJIrI" id="4mV8Zoh6wsh" role="jymVt" />
    <node concept="2YIFZL" id="4mV8Zoh6vc2" role="jymVt">
      <property role="TrG5h" value="setupTable" />
      <node concept="3Tm6S6" id="4mV8Zoh6vc3" role="1B3o_S" />
      <node concept="3uibUv" id="4mV8Zoh6vc4" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JTable" resolve="JTable" />
      </node>
      <node concept="37vLTG" id="4mV8Zoh6vbR" role="3clF46">
        <property role="TrG5h" value="data" />
        <node concept="10Q1$e" id="4mV8Zoh6vbS" role="1tU5fm">
          <node concept="10Q1$e" id="4mV8Zoh6vbT" role="10Q1$1">
            <node concept="3uibUv" id="4mV8Zoh6vbU" role="10Q1$1">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4mV8Zoh6vbV" role="3clF46">
        <property role="TrG5h" value="columns" />
        <node concept="10Q1$e" id="4mV8Zoh6vbW" role="1tU5fm">
          <node concept="3uibUv" id="4mV8Zoh6vbX" role="10Q1$1">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="4mV8Zoh6vb6" role="3clF47">
        <node concept="3cpWs8" id="4mV8Zoh6vb7" role="3cqZAp">
          <node concept="3cpWsn" id="4mV8Zoh6vb8" role="3cpWs9">
            <property role="TrG5h" value="model" />
            <node concept="3uibUv" id="4mV8Zoh6vb9" role="1tU5fm">
              <ref role="3uigEE" to="c8ee:~DefaultTableModel" resolve="DefaultTableModel" />
            </node>
            <node concept="2ShNRf" id="4mV8Zoh6vba" role="33vP2m">
              <node concept="1pGfFk" id="4mV8Zoh6vbb" role="2ShVmc">
                <ref role="37wK5l" to="c8ee:~DefaultTableModel.&lt;init&gt;(java.lang.Object[][],java.lang.Object[])" resolve="DefaultTableModel" />
                <node concept="37vLTw" id="4mV8Zoh6vbY" role="37wK5m">
                  <ref role="3cqZAo" node="4mV8Zoh6vbR" resolve="data" />
                </node>
                <node concept="37vLTw" id="4mV8Zoh6vbZ" role="37wK5m">
                  <ref role="3cqZAo" node="4mV8Zoh6vbV" resolve="columns" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4mV8Zoh6vbP" role="3cqZAp">
          <node concept="2ShNRf" id="4mV8Zoh6vbh" role="3cqZAk">
            <node concept="YeOm9" id="4mV8Zoh6vbi" role="2ShVmc">
              <node concept="1Y3b0j" id="4mV8Zoh6vbj" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" to="dxuu:~JTable" resolve="JTable" />
                <ref role="37wK5l" to="dxuu:~JTable.&lt;init&gt;(javax.swing.table.TableModel)" resolve="JTable" />
                <node concept="3clFb_" id="4mV8Zoh6vbk" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="getColumnClass" />
                  <property role="od$2w" value="false" />
                  <property role="DiZV1" value="false" />
                  <property role="2aFKle" value="false" />
                  <node concept="3clFbS" id="4mV8Zoh6vbl" role="3clF47">
                    <node concept="3KaCP$" id="4mV8Zoh6vbm" role="3cqZAp">
                      <node concept="37vLTw" id="4mV8Zoh6vbn" role="3KbGdf">
                        <ref role="3cqZAo" node="4mV8Zoh6vbL" resolve="column" />
                      </node>
                      <node concept="3KbdKl" id="4mV8Zoh6vbo" role="3KbHQx">
                        <node concept="3cmrfG" id="4mV8Zoh6vbp" role="3Kbmr1">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="3clFbS" id="4mV8Zoh6vbq" role="3Kbo56">
                          <node concept="3cpWs6" id="4mV8Zoh6vbr" role="3cqZAp">
                            <node concept="3VsKOn" id="4mV8Zoh6vbs" role="3cqZAk">
                              <ref role="3VsUkX" to="wyt6:~String" resolve="String" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3KbdKl" id="4mV8Zoh6vbt" role="3KbHQx">
                        <node concept="3cmrfG" id="4mV8Zoh6vbu" role="3Kbmr1">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="3clFbS" id="4mV8Zoh6vbv" role="3Kbo56">
                          <node concept="3cpWs6" id="4mV8Zoh6vbw" role="3cqZAp">
                            <node concept="3VsKOn" id="4mV8Zoh6vbx" role="3cqZAk">
                              <ref role="3VsUkX" to="wyt6:~String" resolve="String" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3KbdKl" id="4mV8Zoh6vby" role="3KbHQx">
                        <node concept="3cmrfG" id="4mV8Zoh6vbz" role="3Kbmr1">
                          <property role="3cmrfH" value="2" />
                        </node>
                        <node concept="3clFbS" id="4mV8Zoh6vb$" role="3Kbo56">
                          <node concept="3cpWs6" id="4mV8Zoh6vb_" role="3cqZAp">
                            <node concept="3VsKOn" id="4mV8Zoh6vbA" role="3cqZAk">
                              <ref role="3VsUkX" to="wyt6:~String" resolve="String" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3KbdKl" id="4mV8Zoh6vbB" role="3KbHQx">
                        <node concept="3cmrfG" id="4mV8Zoh6vbC" role="3Kbmr1">
                          <property role="3cmrfH" value="3" />
                        </node>
                        <node concept="3clFbS" id="4mV8Zoh6vbD" role="3Kbo56">
                          <node concept="3cpWs6" id="4mV8Zoh6vbE" role="3cqZAp">
                            <node concept="3VsKOn" id="4mV8Zoh6vbF" role="3cqZAk">
                              <ref role="3VsUkX" to="wyt6:~Boolean" resolve="Boolean" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="4mV8Zoh6vbG" role="3Kb1Dw">
                        <node concept="3cpWs6" id="4mV8Zoh6vbH" role="3cqZAp">
                          <node concept="3VsKOn" id="4mV8Zoh6vbI" role="3cqZAk">
                            <ref role="3VsUkX" to="wyt6:~String" resolve="String" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="4mV8Zoh6vbJ" role="1B3o_S" />
                  <node concept="3uibUv" id="4mV8Zoh6vbK" role="3clF45">
                    <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                  </node>
                  <node concept="37vLTG" id="4mV8Zoh6vbL" role="3clF46">
                    <property role="TrG5h" value="column" />
                    <node concept="10Oyi0" id="4mV8Zoh6vbM" role="1tU5fm" />
                  </node>
                </node>
                <node concept="2tJIrI" id="4mV8ZohavZ8" role="jymVt" />
                <node concept="3Tm1VV" id="4mV8Zoh6vbN" role="1B3o_S" />
                <node concept="37vLTw" id="4mV8Zoh6vbO" role="37wK5m">
                  <ref role="3cqZAo" node="4mV8Zoh6vb8" resolve="model" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4mV8ZohaOXy" role="jymVt" />
    <node concept="2YIFZL" id="4mV8Zoh3Vt8" role="jymVt">
      <property role="TrG5h" value="addClickingListener" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4mV8Zoh3Vta" role="3clF47">
        <node concept="3clFbF" id="4mV8Zoh3Vtb" role="3cqZAp">
          <node concept="2OqwBi" id="4mV8Zoh3Vtc" role="3clFbG">
            <node concept="37vLTw" id="4mV8Zoh5aGb" role="2Oq$k0">
              <ref role="3cqZAo" node="4mV8Zoh3Vu9" resolve="table" />
            </node>
            <node concept="liA8E" id="4mV8Zoh3Vte" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.addMouseListener(java.awt.event.MouseListener):void" resolve="addMouseListener" />
              <node concept="2ShNRf" id="4mV8Zoh3Vtf" role="37wK5m">
                <node concept="YeOm9" id="4mV8Zoh3Vtg" role="2ShVmc">
                  <node concept="1Y3b0j" id="4mV8Zoh3Vth" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="hyam:~MouseAdapter" resolve="MouseAdapter" />
                    <ref role="37wK5l" to="hyam:~MouseAdapter.&lt;init&gt;()" resolve="MouseAdapter" />
                    <node concept="3Tm1VV" id="4mV8Zoh3Vti" role="1B3o_S" />
                    <node concept="3clFb_" id="4mV8Zoh3Vtj" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="mouseClicked" />
                      <property role="od$2w" value="false" />
                      <property role="DiZV1" value="false" />
                      <property role="2aFKle" value="false" />
                      <node concept="3clFbS" id="4mV8Zoh3Vtk" role="3clF47">
                        <node concept="3cpWs8" id="4mV8Zoh3Vtl" role="3cqZAp">
                          <node concept="3cpWsn" id="4mV8Zoh3Vtm" role="3cpWs9">
                            <property role="TrG5h" value="taskCount" />
                            <node concept="3uibUv" id="4mV8Zoh3Vtn" role="1tU5fm">
                              <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                            </node>
                            <node concept="2OqwBi" id="4mV8Zoh3Vto" role="33vP2m">
                              <node concept="37vLTw" id="4mV8Zoh3Vtp" role="2Oq$k0">
                                <ref role="3cqZAo" node="4mV8Zoh3Vu9" resolve="table" />
                              </node>
                              <node concept="liA8E" id="4mV8Zoh3Vtq" role="2OqNvi">
                                <ref role="37wK5l" to="dxuu:~JTable.getRowCount():int" resolve="getRowCount" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="4mV8Zoh3Vtr" role="3cqZAp" />
                        <node concept="3cpWs8" id="4mV8Zoh3Vts" role="3cqZAp">
                          <node concept="3cpWsn" id="4mV8Zoh3Vtt" role="3cpWs9">
                            <property role="TrG5h" value="doneTasks" />
                            <node concept="3uibUv" id="4mV8Zoh3Vtu" role="1tU5fm">
                              <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                            </node>
                            <node concept="3cmrfG" id="4mV8Zoh3Vtv" role="33vP2m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="4mV8Zoh3Vtw" role="3cqZAp" />
                        <node concept="1Dw8fO" id="4mV8Zoh3Vtx" role="3cqZAp">
                          <node concept="3clFbS" id="4mV8Zoh3Vty" role="2LFqv$">
                            <node concept="3clFbJ" id="4mV8Zoh3Vtz" role="3cqZAp">
                              <node concept="3clFbS" id="4mV8Zoh3Vt$" role="3clFbx">
                                <node concept="3clFbF" id="4mV8Zoh3Vt_" role="3cqZAp">
                                  <node concept="3uNrnE" id="4mV8Zoh3VtA" role="3clFbG">
                                    <node concept="37vLTw" id="4mV8Zoh3VtB" role="2$L3a6">
                                      <ref role="3cqZAo" node="4mV8Zoh3Vtt" resolve="doneTasks" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2YIFZM" id="4mV8Zoh3VtC" role="3clFbw">
                                <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
                                <ref role="37wK5l" to="wyt6:~Boolean.parseBoolean(java.lang.String):boolean" resolve="parseBoolean" />
                                <node concept="2OqwBi" id="4mV8Zoh3VtD" role="37wK5m">
                                  <node concept="2OqwBi" id="4mV8Zoh3VtE" role="2Oq$k0">
                                    <node concept="37vLTw" id="4mV8Zoh3VtF" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4mV8Zoh3Vu9" resolve="table" />
                                    </node>
                                    <node concept="liA8E" id="4mV8Zoh3VtG" role="2OqNvi">
                                      <ref role="37wK5l" to="dxuu:~JTable.getValueAt(int,int):java.lang.Object" resolve="getValueAt" />
                                      <node concept="37vLTw" id="4mV8Zoh3VtH" role="37wK5m">
                                        <ref role="3cqZAo" node="4mV8Zoh3VtK" resolve="i" />
                                      </node>
                                      <node concept="3cmrfG" id="4mV8Zoh3VtI" role="37wK5m">
                                        <property role="3cmrfH" value="3" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4mV8Zoh3VtJ" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWsn" id="4mV8Zoh3VtK" role="1Duv9x">
                            <property role="TrG5h" value="i" />
                            <node concept="10Oyi0" id="4mV8Zoh3VtL" role="1tU5fm" />
                            <node concept="3cmrfG" id="4mV8Zoh3VtM" role="33vP2m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                          <node concept="3eOVzh" id="4mV8Zoh3VtN" role="1Dwp0S">
                            <node concept="37vLTw" id="4mV8Zoh3VtO" role="3uHU7w">
                              <ref role="3cqZAo" node="4mV8Zoh3Vtm" resolve="taskCount" />
                            </node>
                            <node concept="37vLTw" id="4mV8Zoh3VtP" role="3uHU7B">
                              <ref role="3cqZAo" node="4mV8Zoh3VtK" resolve="i" />
                            </node>
                          </node>
                          <node concept="3uNrnE" id="4mV8Zoh3VtQ" role="1Dwrff">
                            <node concept="37vLTw" id="4mV8Zoh3VtR" role="2$L3a6">
                              <ref role="3cqZAo" node="4mV8Zoh3VtK" resolve="i" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="4mV8Zoh4wdG" role="3cqZAp">
                          <node concept="2OqwBi" id="4mV8Zoh4x9L" role="3clFbG">
                            <node concept="37vLTw" id="4mV8Zoh4wdE" role="2Oq$k0">
                              <ref role="3cqZAo" node="4mV8Zoh4v3o" resolve="frame" />
                            </node>
                            <node concept="liA8E" id="4mV8Zoh4C4H" role="2OqNvi">
                              <ref role="37wK5l" to="z60i:~Frame.setTitle(java.lang.String):void" resolve="setTitle" />
                              <node concept="2YIFZM" id="4mV8Zoh42o8" role="37wK5m">
                                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolve="format" />
                                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                                <node concept="Xl_RD" id="4mV8Zoh42uU" role="37wK5m">
                                  <property role="Xl_RC" value="%s tasks done, %s tasks total" />
                                </node>
                                <node concept="37vLTw" id="4mV8Zoh4G4c" role="37wK5m">
                                  <ref role="3cqZAo" node="4mV8Zoh3Vtt" resolve="doneTasks" />
                                </node>
                                <node concept="37vLTw" id="4mV8Zoh4GNM" role="37wK5m">
                                  <ref role="3cqZAo" node="4mV8Zoh3Vtm" resolve="taskCount" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3Tm1VV" id="4mV8Zoh3Vu3" role="1B3o_S" />
                      <node concept="3cqZAl" id="4mV8Zoh3Vu4" role="3clF45" />
                      <node concept="37vLTG" id="4mV8Zoh3Vu5" role="3clF46">
                        <property role="TrG5h" value="evt" />
                        <node concept="3uibUv" id="4mV8Zoh3Vu6" role="1tU5fm">
                          <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="4mV8Zoh3Vu8" role="3clF45" />
      <node concept="37vLTG" id="4mV8Zoh3Vu9" role="3clF46">
        <property role="TrG5h" value="table" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4mV8Zoh3Vua" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JTable" resolve="JTable" />
        </node>
      </node>
      <node concept="37vLTG" id="4mV8Zoh4v3o" role="3clF46">
        <property role="TrG5h" value="frame" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4mV8Zoh4vod" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JFrame" resolve="JFrame" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4mV8Zoh3Vu7" role="1B3o_S" />
    </node>
  </node>
  <node concept="jVnub" id="4mV8Zoh71_r">
    <property role="TrG5h" value="ColorSwitch" />
    <node concept="3aamgX" id="4mV8Zoh71_R" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="m3ts:L54_aDYRJH" resolve="TodoList" />
      <node concept="gft3U" id="4mV8Zoh78Jx" role="1lVwrX">
        <node concept="2ShNRf" id="4mV8ZohaTsK" role="gfFT$">
          <node concept="1pGfFk" id="4mV8ZohaTKF" role="2ShVmc">
            <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
            <node concept="3cmrfG" id="4mV8ZohaTKO" role="37wK5m">
              <property role="3cmrfH" value="176" />
            </node>
            <node concept="3cmrfG" id="4mV8ZohaTMO" role="37wK5m">
              <property role="3cmrfH" value="216" />
            </node>
            <node concept="3cmrfG" id="4mV8ZohaUlG" role="37wK5m">
              <property role="3cmrfH" value="230" />
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="4mV8Zoh71_V" role="30HLyM">
        <node concept="3clFbS" id="4mV8Zoh71_W" role="2VODD2">
          <node concept="3clFbF" id="4mV8Zoh7nNd" role="3cqZAp">
            <node concept="2OqwBi" id="4mV8Zoh7qCz" role="3clFbG">
              <node concept="2OqwBi" id="4mV8Zoh7o0a" role="2Oq$k0">
                <node concept="30H73N" id="4mV8Zoh7nNb" role="2Oq$k0" />
                <node concept="3TrcHB" id="4mV8Zoh7om0" role="2OqNvi">
                  <ref role="3TsBF5" to="m3ts:4mV8ZogW4uH" resolve="background" />
                </node>
              </node>
              <node concept="3t7uKx" id="4mV8Zoh7rde" role="2OqNvi">
                <node concept="uoxfO" id="4mV8Zoh7rdg" role="3t7uKA">
                  <ref role="uo_Cq" to="m3ts:4mV8Zoh6Ky5" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4mV8Zoh7dTv" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="m3ts:L54_aDYRJH" resolve="TodoList" />
      <node concept="30G5F_" id="4mV8Zoh7eqT" role="30HLyM">
        <node concept="3clFbS" id="4mV8Zoh7eqU" role="2VODD2">
          <node concept="3clFbF" id="4mV8Zoh7ey3" role="3cqZAp">
            <node concept="2OqwBi" id="4mV8Zoh7s8_" role="3clFbG">
              <node concept="2OqwBi" id="4mV8Zoh7eJ0" role="2Oq$k0">
                <node concept="30H73N" id="4mV8Zoh7ey2" role="2Oq$k0" />
                <node concept="3TrcHB" id="4mV8Zoh7f1g" role="2OqNvi">
                  <ref role="3TsBF5" to="m3ts:4mV8ZogW4uH" resolve="background" />
                </node>
              </node>
              <node concept="3t7uKx" id="4mV8Zoh7sHg" role="2OqNvi">
                <node concept="uoxfO" id="4mV8Zoh7sHi" role="3t7uKA">
                  <ref role="uo_Cq" to="m3ts:4mV8Zoh6Ky4" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="gft3U" id="4mV8Zoh7jg4" role="1lVwrX">
        <node concept="10M0yZ" id="4mV8ZohaYgT" role="gfFT$">
          <ref role="3cqZAo" to="z60i:~Color.RED" resolve="RED" />
          <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4mV8Zoh7t3p" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="m3ts:L54_aDYRJH" resolve="TodoList" />
      <node concept="30G5F_" id="4mV8Zoh7tus" role="30HLyM">
        <node concept="3clFbS" id="4mV8Zoh7tut" role="2VODD2">
          <node concept="3clFbF" id="4mV8Zoh7tuu" role="3cqZAp">
            <node concept="2OqwBi" id="4mV8Zoh7tuv" role="3clFbG">
              <node concept="2OqwBi" id="4mV8Zoh7tuw" role="2Oq$k0">
                <node concept="30H73N" id="4mV8Zoh7tux" role="2Oq$k0" />
                <node concept="3TrcHB" id="4mV8Zoh7tuy" role="2OqNvi">
                  <ref role="3TsBF5" to="m3ts:4mV8ZogW4uH" resolve="background" />
                </node>
              </node>
              <node concept="3t7uKx" id="4mV8Zoh7tuz" role="2OqNvi">
                <node concept="uoxfO" id="4mV8Zoh7tu$" role="3t7uKA">
                  <ref role="uo_Cq" to="m3ts:4mV8Zoh6Ky6" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="gft3U" id="4mV8Zoh7tSc" role="1lVwrX">
        <node concept="2ShNRf" id="4mV8Zohb1FQ" role="gfFT$">
          <node concept="1pGfFk" id="4mV8Zohb1ZL" role="2ShVmc">
            <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
            <node concept="3cmrfG" id="4mV8Zohb1ZU" role="37wK5m">
              <property role="3cmrfH" value="255" />
            </node>
            <node concept="3cmrfG" id="4mV8Zohb2FL" role="37wK5m">
              <property role="3cmrfH" value="255" />
            </node>
            <node concept="3cmrfG" id="4mV8Zohb2Ov" role="37wK5m">
              <property role="3cmrfH" value="158" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="b5Tf3" id="4mV8Zoh9Pnh" role="jxRDz" />
  </node>
</model>

