import 'package:firexcode/firexcode.dart';
import 'package:flutter/material.dart';

class XDropdownLab extends StatefulWidget {
  final Widget name;
  final String labelName;
  final double width;
  final double fontSize;
  final Color color;
  final double lableSize;
  final Color textColor;
  final List list;
  final void Function(String) onChanged;
  final String dropdownValue;
  final TextStyle style;
  final bool showLable;
  final Color dropdownColor;
  final bool autofocus;
  final Widget disabledHint;
  final Color focusColor;
  final Color iconDisabledColor;
  final FocusNode focusNode;
  final Color iconEnabledColor;
  final bool isDense;
  final bool isExpanded;
  final double itemHeight;
  final void Function() onTap;
  final List<Widget> Function(BuildContext) selectedItemBuilder;
  final void Function() dropDownMenuOnTap;
  const XDropdownLab({
    Key key,
    this.name,
    this.color,
    this.textColor,
    this.fontSize,
    this.lableSize,
    this.list,
    this.onChanged,
    this.dropdownValue,
    this.style,
    this.width,
    this.labelName,
    this.showLable = false,
    this.dropdownColor,
    this.focusNode,
    this.isDense = false,
    this.autofocus = false,
    this.disabledHint,
    this.focusColor,
    this.iconDisabledColor,
    this.iconEnabledColor,
    this.isExpanded = false,
    this.itemHeight = kMinInteractiveDimension,
    this.onTap,
    this.selectedItemBuilder,
    this.dropDownMenuOnTap,
  }) : super(key: key);

  @override
  _XDropdownLabState createState() => _XDropdownLabState();
}

class _XDropdownLabState extends State<XDropdownLab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        widget.showLable
            ? Padding(
                padding: EdgeInsets.only(left: 10.0, top: 10.0, bottom: 5.0),
                child: Text(
                  widget.labelName,
                  style: TextStyle(
                    fontSize: widget.lableSize ?? 15.0,
                  ),
                ),
              )
            : Container(),
        Container(
            width: widget.width,
            padding: EdgeInsets.only(left: 10),
            margin: EdgeInsets.all(10.0),
            color: widget.color ?? Colors.grey[100],
            child: DropdownButton<String>(
              hint: widget.name,
              value: widget.dropdownValue,
              icon: Container(),
              iconSize: 24,
              elevation: 16,
              autofocus: widget.autofocus,
              disabledHint: widget.disabledHint,
              focusColor: widget.focusColor,
              iconDisabledColor: widget.iconDisabledColor,
              focusNode: widget.focusNode,
              style: widget.style,
              dropdownColor: widget.dropdownColor,
              underline: Container(
                height: 2,
                // color: Colors.deepPurpleAccent,
              ),
              onChanged: widget.onChanged,
              iconEnabledColor: widget.iconDisabledColor,
              isDense: widget.isDense,
              isExpanded: widget.isExpanded,
              itemHeight: widget.itemHeight,
              key: widget.key,
              onTap: widget.onTap,
              selectedItemBuilder: widget.selectedItemBuilder,
              items: widget.list.map<DropdownMenuItem<String>>((value) {
                return DropdownMenuItem(
                  onTap: widget.dropDownMenuOnTap,
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            )),
      ],
    );
  }
}

extension Dropdowns on List<String> {
  Widget xDropdownLabel(
      {@required final Widget name,
      final double fontSize,
      final Color color,
      final double lableSize,
      final Color textColor,
      final Key key,
      final TextStyle style,
      final String lableName,
      final double width,
      @required final void Function(String) onChanged,
      @required final String dropdownValue,
      bool showLable = false,
      bool isDense = false,
      bool autofocus = false,
      bool isExpanded = false,
      double itemHeight = kMinInteractiveDimension,
      void Function() onTap,
      List<Widget> Function(BuildContext) selectedItemBuilder,
      void Function() dropDownMenuOnTap,
      Widget disabledHint,
      Color focusColor,
      Color iconDisabledColor,
      Color dropdownColor,
      Color iconEnabledColor,
      FocusNode focusNode}) {
    return XDropdownLab(
      focusNode: focusNode,
      iconEnabledColor: iconEnabledColor,
      dropdownColor: dropdownColor,
      disabledHint: disabledHint,
      focusColor: focusColor,
      iconDisabledColor: iconDisabledColor,
      onTap: onTap,
      selectedItemBuilder: selectedItemBuilder,
      dropDownMenuOnTap: dropDownMenuOnTap,
      isExpanded: isExpanded,
      itemHeight: itemHeight,
      autofocus: autofocus,
      isDense: isDense,
      showLable: showLable,
      width: width,
      labelName: lableName,
      color: color,
      fontSize: fontSize,
      key: key,
      lableSize: lableSize,
      name: name,
      textColor: textColor,
      onChanged: onChanged,
      list: this,
      dropdownValue: dropdownValue,
      style: style,
    );
  }
}
