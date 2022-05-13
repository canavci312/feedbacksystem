import 'package:flutter/material.dart';

///
/// Filter entity
///
class Filter {
  ///
  /// Displayed label
  ///
  final String label;

  ///
  /// The displayed icon when selected
  ///
  final IconData icon;

  const Filter(this.label, this.icon);
}

// =============================================================================

///
/// The filter widget
///
class ChipsFilter extends StatefulWidget {
  ///
  /// The list of the filters
  ///
  final List<Filter> filters;

  ///
  /// The default selected index starting with 0
  ///
  final int selected;
  final Function onChanged;

  ChipsFilter(
    this.onChanged,
    this.filters,
    this.selected, {
    Key? key,
  }) : super(key: key);

  @override
  _ChipsFilterState createState() => _ChipsFilterState();
}

class _ChipsFilterState extends State<ChipsFilter> {
  ///
  /// Currently selected index
  ///
  int? selectedIndex;
  @override
  void initState() {
    // When [widget.selected] is defined, check the value and set it as
    // [selectedIndex]
    if (widget.selected != null &&
        widget.selected >= 0 &&
        widget.selected < widget.filters.length) {
      this.selectedIndex = widget.selected;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: this.chipBuilder,
        itemCount: widget.filters.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  ///
  /// Build a single chip
  ///
  Widget chipBuilder(context, currentIndex) {
    Filter filter = widget.filters[currentIndex];
    bool isActive = this.selectedIndex == currentIndex;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = currentIndex;
          widget.onChanged((currentIndex));
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: isActive ? Theme.of(context).primaryColor : Colors.white,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (isActive)
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Icon(
                  filter.icon,
                  color: Colors.white,
                ),
              ),
            Text(
              filter.label,
              style: TextStyle(
                color: isActive ? Colors.white : Colors.black,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
