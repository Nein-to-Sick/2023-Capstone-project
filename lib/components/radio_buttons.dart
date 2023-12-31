import 'package:cap_stone_project/pages/self_diagnosis/self_diagnosis_model.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RadioButtons extends StatelessWidget {
  const RadioButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomRadioButton(
          elevation: 0,
          absoluteZeroSpacing: false,
          unSelectedColor: Theme.of(context).canvasColor,
          margin: const EdgeInsets.only(left: 8, right: 8),
          padding: 0,
          height: 50,
          width: 50,
          enableShape: true,
          shapeRadius: 360,
          radius: 360,
          buttonLables: const [
            '0',
            '1',
            '2',
            '3',
            '4',
          ],
          buttonValues: const [
            "0",
            "1",
            "2",
            "3",
            "4",
          ],
          buttonTextStyle: const ButtonTextStyle(
            selectedColor: Colors.white,
            unSelectedColor: Colors.black,
            textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          radioButtonValue: (value) {
            print(value);
            Provider.of<DiagnosisModel>(context, listen: false)
                .selectRadiobutton();
          },
          selectedColor: Theme.of(context).colorScheme.primary,
          unSelectedBorderColor: Colors.black,
        ),
        const SizedBox(
          height: 8,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 32, right: 32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '그렇지 않다',
                textAlign: TextAlign.center,
              ),
              Text(
                '매우 그렇다',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        )
      ],
    );
  }
}
