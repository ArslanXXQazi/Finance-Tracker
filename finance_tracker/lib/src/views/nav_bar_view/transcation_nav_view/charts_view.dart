import 'package:finance_tracker/src/controller/components/settle_row.dart';
import 'package:finance_tracker/src/controller/constant/linker.dart';

class ChartsView extends StatelessWidget {
  const ChartsView({super.key});

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height;
    final width=MediaQuery.sizeOf(context).width;
    return SingleChildScrollView(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: width*.03),
        child: Column(children: [
          SettleRow(
              month: "Feb",
              date: 11,
              name: 'Dining',
              card: "Card",
              amount: '1002387'
          ),
          SettleRow(
              month: "Feb",
              date: 11,
              name: 'Movies',
              card: "Card",
              amount: '1087'
          ),
          SettleRow(
              month: "Feb",
              date: 11,
              name: 'Fuel',
              card: "Cash",
              amount: '1387'
          ),
        ],),
      ),
    );
  }
}
