package TodoDSL.structure;

/*Generated by MPS */

import java.util.List;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.LinkedList;

public enum Priority {
  low("low", "LOW"),
  medium("medium", "MEDIUM"),
  high("high", "HIGH"),
  EXTREME_("EXTREME!", "EXTREME");

  private final String myName;
  public String getName() {
    return myName;
  }
  private final String myValue;
  private Priority(String name, String value) {
    myName = name;
    myValue = value;
  }
  public String getValue() {
    return myValue;
  }
  public String getValueAsString() {
    return myValue;
  }
  public static List<Priority> getConstants() {
    List<Priority> list = ListSequence.fromList(new LinkedList<Priority>());
    ListSequence.fromList(list).addElement(Priority.low);
    ListSequence.fromList(list).addElement(Priority.medium);
    ListSequence.fromList(list).addElement(Priority.high);
    ListSequence.fromList(list).addElement(Priority.EXTREME_);
    return list;
  }
  public static Priority getDefault() {
    return Priority.low;
  }
  public static Priority parseValue(String value) {
    if (value == null) {
      return Priority.getDefault();
    }
    if (value.equals(Priority.low.getValueAsString())) {
      return Priority.low;
    }
    if (value.equals(Priority.medium.getValueAsString())) {
      return Priority.medium;
    }
    if (value.equals(Priority.high.getValueAsString())) {
      return Priority.high;
    }
    if (value.equals(Priority.EXTREME_.getValueAsString())) {
      return Priority.EXTREME_;
    }
    return Priority.getDefault();
  }
}
