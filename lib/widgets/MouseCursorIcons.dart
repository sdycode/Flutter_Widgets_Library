import 'package:flutter/material.dart';
import 'package:flutter_widget_library/function/showCodeDialog.dart';
import 'package:flutter_widget_library/global.dart';

class MouseCursorIcons extends StatelessWidget {
  MouseCursorIcons({Key? key}) : super(key: key);
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    List<MouseCursor> cursors = [
      SystemMouseCursors.alias,
      SystemMouseCursors.allScroll,
      SystemMouseCursors.basic,
      SystemMouseCursors.cell,
      SystemMouseCursors.click,
      SystemMouseCursors.contextMenu,
      SystemMouseCursors.copy,
      SystemMouseCursors.disappearing,
      SystemMouseCursors.forbidden,
      SystemMouseCursors.move,
      SystemMouseCursors.none,
      SystemMouseCursors.noDrop,
      SystemMouseCursors.precise,
      SystemMouseCursors.progress,
      SystemMouseCursors.resizeColumn,
      SystemMouseCursors.resizeDown,
      SystemMouseCursors.resizeDownLeft,
      SystemMouseCursors.resizeDownRight,
      SystemMouseCursors.resizeLeft,
      SystemMouseCursors.resizeLeftRight,
      SystemMouseCursors.resizeRight,
      SystemMouseCursors.resizeRow,
      SystemMouseCursors.resizeUp,
      SystemMouseCursors.resizeUpDown,
      SystemMouseCursors.resizeUpLeft,
      SystemMouseCursors.resizeUpLeftDownRight,
      SystemMouseCursors.resizeUpRight,
      SystemMouseCursors.resizeUpRightDownLeft,
      SystemMouseCursors.text,
      SystemMouseCursors.verticalText,
      SystemMouseCursors.wait,
      SystemMouseCursors.zoomIn,
      SystemMouseCursors.zoomOut,
    ];
    return Container(
      width: mainScreenW,
      height: 50 * 3 + 20,
      color: Colors.black54,
      child: Scrollbar(
        // scrollbarOrientation: ScrollbarOrientation.bottom,
        controller: scrollController,
        child: GridView.builder(
            controller: scrollController,
            scrollDirection: Axis.horizontal,
            itemCount: cursors.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, childAspectRatio: 0.4),
            itemBuilder: (c, i) {
              return GestureDetector(
                onTap: () {
                  showCodeDialog(
                    
                  '''MouseRegion(
                    cursor: ${cursors[i]},
                    )''', context);
                },
                child: Card(
                  child: MouseRegion(
                    cursor: cursors[i],
                    child: Container(
                      width: 50,
                      height: 50,
                      child: Center(
                          child: Text(
                        cursors[i]
                            .toString()
                            .replaceAll("SystemMouseCursor", ""),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
