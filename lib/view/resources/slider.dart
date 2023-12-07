import 'package:flutter/material.dart';
import 'package:green_house/view/resources/color_manager.dart';
import 'package:green_house/view/resources/value_manager.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class Slider_View extends StatefulWidget {
  const Slider_View({super.key});

  @override
  State<Slider_View> createState() => _Slider_View_State();
}

class _Slider_View_State extends State<Slider_View> {
  SfRangeValues _values = SfRangeValues(0,100);

@override
void initState() {
  super.initState();
}
  @override
  Widget build(BuildContext context) {
    return  SfRangeSlider(

        values: _values,
         min: 0.0,
         max: 100.0,
       inactiveColor: ColorManager.lightGray3,
        minorTickShape: SfTickShape(),
        overlayShape: SfOverlayShape(),
        enableIntervalSelection: true,
         showDividers: true,
        thumbShape: SfThumbShape(),
        activeColor: ColorManager.deepGreen,
        showLabels: true,
        interval: 10,
        showTicks: true,
        enableTooltip: true,

        onChanged: (dynamic newValues) {
          setState(() {
            _values = newValues;
          });
        });
  }

}


class Slider_view extends StatefulWidget {
   Slider_view({super.key});

  @override
  State<Slider_view> createState() => _Slider_viewState();
}

class _Slider_viewState extends State<Slider_view> {
  RangeValues _values = RangeValues(AppSize.s0, AppSize.d100);

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
        data:SliderTheme.of(context).copyWith(
          activeTickMarkColor:ColorManager.lightGray3 ,
          activeTrackColor:ColorManager.deepGreen ,
          trackShape: RoundedRectSliderTrackShape(),
          trackHeight:3,
          thumbColor: ColorManager.white,
          thumbShape: RoundSliderThumbShape(),
          overlayShape: RoundSliderOverlayShape(),
          overlayColor: ColorManager.lightGray3,
          inactiveTickMarkColor: ColorManager.lightGray3,
          inactiveTrackColor: ColorManager.lightGray3,
          tickMarkShape:RoundSliderTickMarkShape() ,
          valueIndicatorColor: ColorManager.deepGreen,
          valueIndicatorShape: PaddleSliderValueIndicatorShape(),
          valueIndicatorTextStyle: TextStyle(
            color: ColorManager.white
          ),
        ) ,
        child:RangeSlider(
            values: _values,
            min: AppSize.s0,
            max: AppSize.d100,
            divisions: AppSize.s100,
            labels: RangeLabels(_values.start.round().toString(), _values.end.round().toString()),
            onChanged: (RangeValues values){
          setState(() {
            _values=values;
          });
        })
    );
  }
}
