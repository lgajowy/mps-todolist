package TodoDSL.structure;

/*Generated by MPS */

import java.util.List;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.LinkedList;

public enum Color {
  red("red", "RED "),
  blue("blue", "BLUE"),
  yellow("yellow", "YELLOW");

  private final String myName;
  public String getName() {
    return myName;
  }
  private final String myValue;
  private Color(String name, String value) {
    myName = name;
    myValue = value;
  }
  public String getValue() {
    return myValue;
  }
  public String getValueAsString() {
    return myValue;
  }
  public static List<Color> getConstants() {
    List<Color> list = ListSequence.fromList(new LinkedList<Color>());
    ListSequence.fromList(list).addElement(Color.red);
    ListSequence.fromList(list).addElement(Color.blue);
    ListSequence.fromList(list).addElement(Color.yellow);
    return list;
  }
  public static Color getDefault() {
    return Color.red;
  }
  public static Color parseValue(String value) {
    if (value == null) {
      return Color.getDefault();
    }
    if (value.equals(Color.red.getValueAsString())) {
      return Color.red;
    }
    if (value.equals(Color.blue.getValueAsString())) {
      return Color.blue;
    }
    if (value.equals(Color.yellow.getValueAsString())) {
      return Color.yellow;
    }
    return Color.getDefault();
  }
}
