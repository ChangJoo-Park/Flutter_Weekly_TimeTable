import 'package:flutter/material.dart';

class Cell extends StatefulWidget {
  final int day;
  final int timeRange;
  final bool isSelected;
  final Function(int, int, bool) onCellTapped;
  final Color cellColor;
  final Color cellSelectedColor;
  final Color boarderColor;

  Cell({
    @required this.day,
    @required this.timeRange,
    @required this.isSelected,
    @required this.onCellTapped,
    this.cellColor = Colors.white,
    this.cellSelectedColor = Colors.black,
    this.boarderColor = Colors.grey,
  });

  @override
  _CellState createState() => _CellState();
}

class _CellState extends State<Cell> {
  Key key;

  @override
  void initState() {
    key = Key("timecell-${widget.day}-${widget.timeRange}");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      key: key,
      child: Center(
        child: GestureDetector(
          onTap: () {
            widget.onCellTapped(
                widget.day, widget.timeRange, widget.isSelected);
          },
          child: AnimatedContainer(
            decoration: BoxDecoration(
              color: currentColor,
              border: Border(
                top: BorderSide(width: 1.0, color: widget.boarderColor),
                left: BorderSide(width: 0.0, color: widget.boarderColor),
                right: BorderSide(width: 0.0, color: widget.boarderColor),
              ),
            ),
            height: 58.0,
            duration: Duration(milliseconds: 500),
            curve: Curves.fastOutSlowIn,
          ),
        ),
      ),
    );
  }

  get currentColor {
    return widget.isSelected ? widget.cellSelectedColor : widget.cellColor;
  }
}
