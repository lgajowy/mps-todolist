package TodoDSL.sandbox;

/*Generated by MPS */

import javax.swing.SwingUtilities;
import javax.swing.JFrame;
import javax.swing.JTable;
import javax.swing.JPanel;
import javax.swing.JLabel;
import javax.swing.JScrollPane;
import javax.swing.JSplitPane;
import java.awt.Color;
import javax.swing.table.DefaultTableModel;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

public class TodoList {

  public static void main(String[] args) {
    SwingUtilities.invokeLater(new Runnable() {
      public void run() {
        createListGUI();
      }
    });
  }

  private static void createListGUI() {
    JFrame frame = new JFrame();
    JTable table = createDataTable();
    addClickingListener(table, frame);
    JPanel labelPanel = new JPanel();
    labelPanel.add(new JLabel("today"));
    JScrollPane scrollPane = new JScrollPane(table);

    TodoList.setBackgroundColor(labelPanel, scrollPane);

    JSplitPane splitPane = new JSplitPane(JSplitPane.VERTICAL_SPLIT, labelPanel, scrollPane);
    frame.add(splitPane);
    frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    frame.setTitle(String.format("%s tasks done, %s tasks total", 0, table.getRowCount()));
    frame.pack();
    frame.setVisible(true);
  }

  private static void setBackgroundColor(JPanel labelPanel, JScrollPane scrollPane) {
    labelPanel.setBackground(new Color(255, 255, 158));
    scrollPane.setBackground(new Color(255, 255, 158));
  }

  private static JTable createDataTable() {
    String[] columns = new String[]{"name", "description", "priority", "is done yet?"};

    Object[][] data = new Object[][]{{"name", "asda", "LOW", false}, {"xyz", "asdasdasdasdasdasdasd", "LOW", false}, {"asd", "dsa", "LOW", false}};

    return TodoList.setupTable(data, columns);
  }

  private static JTable setupTable(Object[][] data, String[] columns) {
    DefaultTableModel model = new DefaultTableModel(data, columns);
    return new JTable(model) {
      public Class getColumnClass(int column) {
        switch (column) {
          case 0:
            return String.class;
          case 1:
            return String.class;
          case 2:
            return String.class;
          case 3:
            return Boolean.class;
          default:
            return String.class;
        }
      }

    };
  }

  public static void addClickingListener(final JTable table, final JFrame frame) {
    table.addMouseListener(new MouseAdapter() {
      public void mouseClicked(MouseEvent evt) {
        Integer taskCount = table.getRowCount();

        Integer doneTasks = 0;

        for (int i = 0; i < taskCount; i++) {
          if (Boolean.parseBoolean(table.getValueAt(i, 3).toString())) {
            doneTasks++;
          }
        }
        frame.setTitle(String.format("%s tasks done, %s tasks total", doneTasks, taskCount));
      }
    });
  }
}
