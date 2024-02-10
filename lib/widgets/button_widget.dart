import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ButtonWidget extends StatefulWidget {
  final VoidCallback? onPressed;
  final String? text;
  final Color? textColor;
  final double? textFont;
  final FontWeight? textWeight;
  final Color? btnColor;
  final double? btnWidth;
  final double? btnHeight;
  final double? btnBorderCorner;
  final Color? btnBorderColor;
  final double? btnPadding;
  final Widget? icon;
  final double? elevation;

  const ButtonWidget({
    Key? key,
    required this.onPressed,
    required this.text,
    this.textColor,
    this.textFont,
    this.textWeight,
    this.btnColor,
    this.btnWidth,
    this.btnHeight,
    this.btnBorderCorner,
    this.btnBorderColor,
    this.btnPadding,
    this.icon,
    this.elevation,
  }) : super(key: key);

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: widget.btnWidth ?? size.width,
      height: widget.btnHeight ?? 50,
      child: widget.icon == null
          ? ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(widget.btnPadding ?? 10.0),
                elevation: widget.elevation ?? 1.0,
                backgroundColor: widget.btnColor ?? Colors.transparent,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(widget.btnBorderCorner ?? 10.0)),
                side: BorderSide(width: 2.0, color: widget.btnBorderColor ?? Colors.transparent),
              ),
              onPressed: widget.onPressed,
              child: Text(
                widget.text.toString(),
                style: TextStyle(
                  fontWeight: widget.textWeight ?? FontWeight.normal,
                  color: widget.textColor ?? Colors.black,
                  fontSize: widget.textFont ?? 14.sp,
                ),
              ),
            )
          : widget.icon != null && widget.text!.isNotEmpty
              ? ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(widget.btnPadding ?? 10.0),
                    elevation: widget.elevation ?? 1.0,
                    backgroundColor: widget.btnColor ?? Colors.transparent,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(widget.btnBorderCorner ?? 10.0)),
                    side: BorderSide(width: 2.0, color: widget.btnBorderColor ?? Colors.transparent),
                  ),
                  onPressed: widget.onPressed,
                  icon: widget.icon ?? const Icon(Icons.add),
                  label: Text(
                    widget.text.toString(),
                    style: TextStyle(
                      fontWeight: widget.textWeight ?? FontWeight.normal,
                      color: widget.textColor ?? Colors.black,
                      fontSize: widget.textFont ?? 14.sp,
                    ),
                  ),
                )
              : Container(
                  padding: const EdgeInsets.all(0.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: widget.btnBorderColor ?? Colors.transparent, width: 2.0),
                    color: widget.btnColor ?? Colors.transparent,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(widget.btnBorderCorner ?? 10.0)),
                  ),
                  child: IconButton(
                    onPressed: widget.onPressed,
                    icon: widget.icon ?? const Icon(Icons.add),
                  ),
                ),
    );
  }
}
