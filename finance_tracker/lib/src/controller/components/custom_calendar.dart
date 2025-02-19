import 'package:flutter/material.dart';

class CustomMonthPicker extends StatefulWidget {
  final Function(String, int) onMonthSelected;

  const CustomMonthPicker({super.key, required this.onMonthSelected});

  @override
  _CustomMonthPickerState createState() => _CustomMonthPickerState();
}

class _CustomMonthPickerState extends State<CustomMonthPicker> {
  int selectedYear = DateTime.now().year;
  int selectedMonth = DateTime.now().month;

  List<String> months = [
    "January", "February", "March", "April", "May", "June", "July",
    "August", "September", "October", "November", "December"
  ];

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Select Month & Year", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_left),
                  onPressed: () {
                    setState(() {
                      if (selectedYear > 2000) selectedYear--;
                    });
                  },
                ),
                Text("$selectedYear", style: TextStyle(fontSize: 18)),
                IconButton(
                  icon: Icon(Icons.arrow_right),
                  onPressed: () {
                    setState(() {
                      selectedYear++;
                    });
                  },
                ),
              ],
            ),

            Wrap(
              spacing: 10,
              children: List.generate(months.length, (index) {
                return InkWell(
                  onTap: () {
                    widget.onMonthSelected(months[index], selectedYear);
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    decoration: BoxDecoration(
                      color: selectedMonth == index + 1 ? Colors.blue : Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      months[index],
                      style: TextStyle(
                        color: selectedMonth == index + 1 ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
