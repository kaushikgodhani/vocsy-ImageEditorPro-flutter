import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFiledMaterial extends StatelessWidget {
  final String name;
  final double fontSize;
  final TextEditingController controller;
  final Color color;
  final double lableSize;
  final Color textColor;
  final bool obscureText;
  final bool showLabel;
  final TextInputType keyboardType;
  final List<TextInputFormatter> inputFormatters;
  final String initialValue;
  final bool autofocus;
  final bool readOnly;
  final ToolbarOptions toolbarOptions;
  final bool showCursor;
  final String obscuringCharacter;
  final bool autocorrect;
  final SmartDashesType smartDashesType;
  final SmartQuotesType smartQuotesType;
  final bool enableSuggestions;
  final FocusNode focusNodel;
  final bool maxLengthEnforced;
  final MaxLengthEnforcement maxLengthEnforcement;
  final int maxLines;
  final int minLines;
  final bool expands;
  final int maxLength;
  final ValueChanged<String> onChanged;
  final GestureTapCallback onTap;
  final VoidCallback onEditingComplete;
  final ValueChanged<String> onFieldSubmitted;
  final FormFieldSetter<String> onSaved;
  final bool enabled;
  final double cursorWidth;
  final double cursorHeight;
  final Radius cursorRadius;
  final Color cursorColor;
  final Brightness keyboardAppearance;
  final EdgeInsets scrollPadding;
  final bool enableInteractiveSelection;

  final InputCounterWidgetBuilder buildCounter;
  final ScrollPhysics scrollPhysics;
  final Iterable<String> autofillHints;
  final TextInputAction textInputAction;
  final AutovalidateMode autovalidateMode;
  final TextDirection textDirection;
  final StrutStyle strutStyle;
  final TextSelectionControls selectionControls;
  final TextAlign textAlign;
  final TextAlignVertical textAlignVertical;
  final TextCapitalization textCapitalization;
  final String Function(String) validator;

  const TextFiledMaterial(
      {Key key,
      this.scrollPadding = const EdgeInsets.all(20.0),
      this.enableInteractiveSelection = true,
      this.name,
      this.controller,
      this.color,
      this.textColor,
      this.fontSize,
      this.lableSize,
      this.obscureText,
      this.showLabel = false,
      this.keyboardType,
      this.inputFormatters,
      this.initialValue,
      this.toolbarOptions,
      this.showCursor,
      this.smartDashesType,
      this.smartQuotesType,
      this.autofocus = false,
      this.readOnly = false,
      this.obscuringCharacter = '•',
      this.autocorrect = true,
      this.enableSuggestions = true,
      this.focusNodel,
      this.maxLengthEnforced = true,
      this.maxLengthEnforcement,
      this.maxLines = 1,
      this.minLines,
      this.expands = false,
      this.cursorWidth = 2.0,
      this.cursorHeight,
      this.cursorColor,
      this.keyboardAppearance,
      this.maxLength,
      this.onChanged,
      this.onTap,
      this.onEditingComplete,
      this.onFieldSubmitted,
      this.onSaved,
      this.enabled,
      this.cursorRadius,
      this.buildCounter,
      this.scrollPhysics,
      this.autofillHints,
      this.autovalidateMode,
      this.textInputAction,
      this.textAlign = TextAlign.start,
      this.textCapitalization = TextCapitalization.none,
      this.textDirection,
      this.strutStyle,
      this.selectionControls,
      this.textAlignVertical,
      this.validator})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        showLabel
            ? Padding(
                padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 5.0),
                child: Text(
                  'Enter Your ' + name,
                  style: TextStyle(
                    fontSize: lableSize ?? 15.0,
                  ),
                ),
              )
            : Container(),
        Container(
          margin: EdgeInsets.all(10.0),
          color: color ?? Colors.grey[100],
          child: TextFormField(
            textAlign: textAlign,
            textAlignVertical: textAlignVertical,
            textCapitalization: textCapitalization,
            selectionControls: selectionControls,
            scrollPhysics: scrollPhysics,
            strutStyle: strutStyle,
            textDirection: textDirection,
            autofillHints: autofillHints,
            autovalidateMode: autovalidateMode,
            buildCounter: buildCounter,
            enableInteractiveSelection: enableInteractiveSelection,
            maxLengthEnforcement: maxLengthEnforcement,
            scrollPadding: scrollPadding,
            textInputAction: textInputAction,
            keyboardAppearance: keyboardAppearance,
            cursorColor: cursorColor,
            cursorHeight: cursorHeight,
            cursorRadius: cursorRadius,
            cursorWidth: cursorWidth,
            enabled: enabled,
            onSaved: onSaved,
            onFieldSubmitted: onFieldSubmitted,
            onEditingComplete: onEditingComplete,
            onTap: onTap,
            onChanged: onChanged,
            expands: expands,
            maxLines: maxLines,
            minLines: minLines,
            maxLength: maxLength,
            smartDashesType: smartDashesType,
            smartQuotesType: smartQuotesType,
            showCursor: showCursor,
            focusNode: focusNodel,
            toolbarOptions: toolbarOptions,
            enableSuggestions: enableSuggestions,
            autofocus: autocorrect,
            readOnly: readOnly,
            obscuringCharacter: obscuringCharacter,
            key: key,
            autocorrect: autocorrect,
            initialValue: initialValue,
            keyboardType: keyboardType,
            style: TextStyle(
              fontSize: fontSize,
              color: textColor ?? Colors.black,
            ),
            inputFormatters: inputFormatters,
            validator: validator ??
                (value) {
                  if (value.isEmpty) {
                    return 'error :' + name;
                  }
                  return null;
                },
            controller: controller,
            obscureText: obscureText ?? false,
            decoration: InputDecoration(
                hintStyle: TextStyle(
                    fontSize: fontSize, color: textColor ?? Colors.black),
                contentPadding:
                    EdgeInsets.only(left: 10.0, right: 5.0, bottom: 5.0),
                hintText: ' ' + name,
                border: InputBorder.none),
          ),
        ),
      ],
    );
  }
}

class TextFiledMaterialRounded extends StatelessWidget {
  final Color enableColor;
  final String name;
  final double fontSize;
  final TextEditingController controller;
  final Color color;
  final double lableSize;
  final Color textColor;
  final Color focusColor;
  const TextFiledMaterialRounded(
      {Key key,
      this.name,
      this.controller,
      this.color,
      this.textColor,
      this.fontSize,
      this.lableSize,
      this.enableColor,
      this.focusColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 5.0),
          child: Text(
            'Enter Your ' + name,
            style: TextStyle(
              fontSize: lableSize ?? 15.0,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          color: color ?? Colors.grey[100],
          child: TextFormField(
            style: TextStyle(
              fontSize: fontSize,
              color: textColor ?? Colors.black,
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter ' + name;
              }
              return null;
            },
            controller: controller,
            decoration: InputDecoration(
                hintStyle: TextStyle(
                    fontSize: fontSize, color: textColor ?? Colors.black),
                contentPadding:
                    EdgeInsets.only(left: 10.0, right: 5.0, bottom: 5.0),
                hintText: ' ' + name,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: enableColor ?? Colors.black)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: focusColor ?? Colors.white)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white))),
          ),
        ),
      ],
    );
  }
}
