import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_ecommerce/constant.dart';
import 'package:ui_ecommerce/size_config.dart';
import '../../../components/my_default_button.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({super.key});

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String?> otp = List.filled(4, null); // List for storing OTP values

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              otp.length,
              (index) => OtpField(
                otp: otp,
                mContext: context,
                index: index,
                onChanged: (value) {
                  if (value.length == 1) {
                    if (index < otp.length - 1) {
                      FocusScope.of(context).nextFocus();
                    } else {
                      FocusScope.of(context).unfocus();
                    }
                  } else if (value.isEmpty) {
                    // Jika nilai kosong, kembali ke field sebelumnya
                    if (index > 0) {
                      FocusScope.of(context).previousFocus();
                    }
                  }
                },
              ),
            ),
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.15),
          MyDefaultButton(
            text: 'Continue',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                print("${otp.join()}");
              }
            },
            press: () {},
          ),
        ],
      ),
    );
  }
}

class OtpField extends StatefulWidget {
  final int index;
  final BuildContext mContext;
  final List<String?> otp;
  final Function(String) onChanged;

  const OtpField({
    super.key,
    required this.index,
    required this.mContext,
    required this.otp,
    required this.onChanged,
  });

  @override
  State<OtpField> createState() => _OtpFieldState();
}

class _OtpFieldState extends State<OtpField> {
  bool _hasFocus = false; // Track focus state

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      child: TextFormField(
        onSaved: (newValue) => setState(() => widget.otp[widget.index] = newValue),
        onChanged: (newValue) {
          widget.onChanged(newValue);
          if (newValue.length > 1) {
            
            setState(() {
              widget.otp[widget.index] = newValue[0]; 
            });
          }
        },
        validator: (value) {
          if (value == null || value.isEmpty) {
            return '';
          }
          return null;
        },
        keyboardType: TextInputType.number,
        maxLength: 1,
        obscureText: true,
        maxLengthEnforcement: MaxLengthEnforcement.enforced,
        buildCounter: (context, {required currentLength, required isFocused, required maxLength}) => null,
        style: const TextStyle(fontSize: 24),
        decoration: otpDecoration.copyWith(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: _hasFocus ? Colors.blue : Colors.grey),
          ),
        ),
        textAlign: TextAlign.center,
        onTap: () {
          setState(() {
            _hasFocus = true;
          });
        },
        onFieldSubmitted: (_) {
          setState(() {
            _hasFocus = false;
          });
        },
        
        onEditingComplete: () {
          if (widget.otp[widget.index] == null || widget.otp[widget.index]!.isEmpty) {
            setState(() {
              widget.otp[widget.index] = null; 
            });
          }
        },
      ),
    );
  }
}
