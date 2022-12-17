import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_widget_library/global.dart';

Future showCodeDialog(String code, BuildContext context) async {
  showDialog(
    context: context,
    builder: (context) {
      return Container(
        width: mainScreenW*0.6,
        
        child: Dialog(
          insetPadding: EdgeInsets.symmetric(horizontal: w*0.2),
          backgroundColor: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(children: [
                Spacer(),
                 Align(
                alignment: Alignment.centerRight,
                child: IconButton(onPressed: ()async{
                   await Clipboard.setData(ClipboardData(text:code));
                }, icon: Icon(Icons.copy)),
              ),],),
              Divider(),
             
              SelectableText(
                code,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
      );
    },
  );
}
