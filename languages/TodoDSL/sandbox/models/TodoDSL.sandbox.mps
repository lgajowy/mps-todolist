<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f2d7ef47-282e-4280-8a37-8ad637e9eced(TodoDSL.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="297ec239-6c48-4eea-bc6b-bc22570d94c6" name="TodoDSL" version="-1" />
  </languages>
  <imports />
  <registry>
    <language id="297ec239-6c48-4eea-bc6b-bc22570d94c6" name="TodoDSL">
      <concept id="884133048096619501" name="TodoDSL.structure.TodoList" flags="ng" index="2_JAAZ">
        <property id="5024649349015029677" name="background" index="1liQhr" />
        <property id="5024649349015029675" name="date" index="1liQht" />
        <child id="5024649349015029686" name="stuffToDo" index="1liQh0" />
      </concept>
      <concept id="5024649349015029688" name="TodoDSL.structure.Todo" flags="ng" index="1liQhe">
        <property id="5024649349015029691" name="description" index="1liQhd" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2_JAAZ" id="4mV8ZogVYJb">
    <property role="1liQht" value="today" />
    <property role="1liQhr" value="YELLOW" />
    <node concept="1liQhe" id="4mV8Zoh5xnj" role="1liQh0">
      <property role="TrG5h" value="name" />
      <property role="1liQhd" value="asda" />
    </node>
    <node concept="1liQhe" id="4mV8Zoh7K19" role="1liQh0">
      <property role="TrG5h" value="xyz" />
      <property role="1liQhd" value="asdasdasdasdasdasdasd" />
    </node>
    <node concept="1liQhe" id="4mV8Zoh7K1c" role="1liQh0">
      <property role="TrG5h" value="asd" />
      <property role="1liQhd" value="dsa" />
    </node>
  </node>
</model>

