import 'package:flutter/material.dart';

class CustomMonthPicker extends StatefulWidget {
  final Function(int, int) onMonthSelected; // مہینہ اور سال واپس دینے کے لیے

  CustomMonthPicker({required this.onMonthSelected});

  @override
  _CustomMonthPickerState createState() => _CustomMonthPickerState();
}

class _CustomMonthPickerState extends State<CustomMonthPicker> {
  int selectedYear = DateTime.now().year;
  int selectedMonth = DateTime.now().month;

  void _selectMonth(int month) {
    setState(() {
      selectedMonth = month;
    });
    widget.onMonthSelected(selectedMonth, selectedYear);
    Navigator.pop(context);
  }

  String _getMonthName(int month) {
    List<String> months = [
      "January", "February", "March", "April", "May", "June",
      "July", "August", "September", "October", "November", "December"
    ];
    return months[month - 1];
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Select Month & Year"),
      content: SizedBox(
        height: 250,
        child: Column(
          children: [
            // سال تبدیل کرنے کے لیے
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    setState(() {
                      selectedYear--;
                    });
                  },
                ),
                Text(
                  "$selectedYear",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    setState(() {
                      selectedYear++;
                    });
                  },
                ),
              ],
            ),
            Divider(),
            // مہینے منتخب کرنے کے لیے
            Expanded(
              child: GridView.builder(
                itemCount: 12,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 2,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () => _selectMonth(index + 1),
                    child: Card(
                      color: selectedMonth == index + 1
                          ? Colors.blue
                          : Colors.white,
                      child: Center(
                        child: Text(
                          _getMonthName(index + 1),
                          style: TextStyle(
                            color: selectedMonth == index + 1
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
