import 'package:client/global_exports.dart';

enum CustomTextFormFieldType {
  text,
  amount;

  Widget? get getLeading {
    return switch (this) {
      CustomTextFormFieldType.amount => Container(
          height: 12,
          width: 12,
          margin: EdgeInsets.symmetric(horizontal: 5.w),
          child: const Text('\$')),
      CustomTextFormFieldType.text => null,
    };
  }
}

class CustomTextFormField extends StatefulWidget {
  final CustomTextFormFieldType type;
  final String? labelText;
  final String? hintText;
  final TextStyle? style;
  final TextStyle Function(TextStyle style)? labelStyle;
  final bool obscureText, obscureTextWithToggle, readOnly;
  final GestureTapCallback? onTap;
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final Widget? leading;
  final Widget? leadingIcon;
  final TextInputType? keyboardType;
  final int? minLines;
  final int? maxLines;
  final bool filled;
  final BorderRadius? borderRadius;
  final Widget? trailling;
  final double? verticalPadding;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final bool border;
  final Function(String)? onSubmitted;
  final bool enabled;
  final bool prefixIconConstrained;
  final bool isRequired;
  final Color? hintColor;
  final Color? focusedBorderColor;
  final Color? fillColor;
  final Color? textColor;
  final bool smallLabel;
  final double? height;
  final Widget? headerContainer;
  final bool isLoading;

  const CustomTextFormField({
    super.key,
    this.labelText,
    this.type = CustomTextFormFieldType.text,
    this.isRequired = false,
    this.hintText,
    this.style,
    this.obscureText = false,
    this.obscureTextWithToggle = false,
    this.readOnly = false,
    this.onTap,
    this.leading,
    this.leadingIcon,
    this.controller,
    this.fillColor,
    this.inputFormatters,
    this.validator,
    this.onChanged,
    this.keyboardType,
    this.minLines,
    this.maxLines,
    this.filled = true,
    this.borderRadius,
    this.trailling,
    this.verticalPadding,
    this.focusNode,
    this.textInputAction,
    this.onSubmitted,
    this.border = true,
    this.enabled = true,
    this.prefixIconConstrained = true,
    this.hintColor,
    this.focusedBorderColor,
    this.textColor,
    // this.leadingWidget,
    this.labelStyle,
    this.smallLabel = false,
    this.isLoading = false,
    this.height,
    this.headerContainer,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  void initState() {
    super.initState();
    obscureText = widget.obscureTextWithToggle || obscureText;
  }

  bool obscureText = false;
  bool wasValidated = false;
  bool hasError = false;

  TextStyle get _baseLabelStyle =>
      TextStyles.base().copyWith(color: AppColors.color.textLight);

  @override
  Widget build(BuildContext context) {
    const defaultBorderRadius = AppConstatnts.defBorderRadius;
    final defaultBorderColor = AppColors.color.primary.withOpacity(0.6);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.headerContainer != null || widget.labelText != null) ...[
          Row(
            children: [
              if (widget.labelText != null)
                Expanded(
                  child: Text(widget.labelText ?? "",
                      overflow: TextOverflow.ellipsis,
                      style: widget.labelStyle?.call(_baseLabelStyle) ??
                          _baseLabelStyle),
                ),
              if (widget.headerContainer != null) ...[
                spacew(20),
                widget.headerContainer!
              ]
            ],
          ),
          spaceh(3),
        ],
        ClipRRect(
          child: TextFormField(
            maxLines: obscureText ? 1 : widget.maxLines,
            onFieldSubmitted: (e) => widget.onSubmitted!(e),
            textInputAction: widget.textInputAction,
            focusNode: widget.focusNode,
            cursorColor: AppColors.color.primary,
            keyboardType: widget.keyboardType,
            style: widget.style ?? TextStyles.base(),
            controller: widget.controller,
            validator: (value) {
              if (widget.validator == null) return null;
              if (!wasValidated) {
                setState(() {
                  wasValidated = true;
                });
              }
              final val = widget.validator!(value);
              // if (!hasError) {
              //   if (val != null) {
              //     setState(() {
              //       hasError = true;
              //     });
              //   }
              // }

              return val;
            },
            autovalidateMode: wasValidated
                ? AutovalidateMode.onUserInteraction
                : AutovalidateMode.disabled,
            inputFormatters: widget.inputFormatters,
            obscureText: obscureText,
            readOnly: widget.readOnly,
            onTap: widget.onTap,
            onChanged: widget.onChanged,
            decoration: InputDecoration(
              prefix: widget.leadingIcon ?? widget.type.getLeading,
              prefixIcon: widget.leadingIcon != null ? null : widget.leading,
              prefixIconConstraints: widget.prefixIconConstrained
                  ? Theme.of(context).visualDensity.effectiveConstraints(
                        const BoxConstraints(
                          minWidth: kMinInteractiveDimension,
                          minHeight: kMinInteractiveDimension,
                        ),
                      )
                  : const BoxConstraints(minWidth: 0, minHeight: 0),
              hintText: widget.hintText,
              filled: widget.filled,
              fillColor: widget.fillColor ?? AppColors.color.grey400,
              enabled: widget.enabled,
              hintStyle: TextStyles.base().copyWith(
                color: widget.hintColor ?? AppColors.color.grey100,
              ),
              enabledBorder: !widget.border
                  ? InputBorder.none
                  : OutlineInputBorder(
                      borderRadius: widget.borderRadius ??
                          BorderRadius.circular(defaultBorderRadius),
                      borderSide: const BorderSide(color: Colors.transparent),
                    ),
              errorBorder: !widget.border
                  ? InputBorder.none
                  : OutlineInputBorder(
                      borderRadius: widget.borderRadius ??
                          BorderRadius.circular(defaultBorderRadius),
                      borderSide: BorderSide(color: AppColors.color.error),
                    ),
              border: !widget.border
                  ? InputBorder.none
                  : OutlineInputBorder(
                      borderRadius: widget.borderRadius ??
                          BorderRadius.circular(defaultBorderRadius),
                      borderSide: BorderSide(color: defaultBorderColor),
                    ),
              focusedBorder: !widget.border
                  ? InputBorder.none
                  : OutlineInputBorder(
                      borderRadius: widget.borderRadius ??
                          BorderRadius.circular(defaultBorderRadius),
                      borderSide: BorderSide(
                          color:
                              widget.focusedBorderColor ?? defaultBorderColor),
                    ),
              suffixIcon: widget.isLoading
                  ? const CupertinoActivityIndicator()
                  : (widget.obscureTextWithToggle
                      ? IconButton(
                          onPressed: () => setState(() {
                            obscureText = !obscureText;
                          }),
                          icon: Icon(
                            obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: AppColors.color.primary,
                          ),
                        )
                      : widget.trailling),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: widget.verticalPadding ?? 13.h,
              ),
            ),
          ),
        )
      ],
    );
  }
}
