import 'package:flutter/material.dart';
import 'package:flutter_dismissible_tile/flutter_dismissible_tile.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calender1(),
    );
  }
}

class Calender1 extends StatelessWidget {
  const Calender1 ({key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 20),
        children: List.generate(
          10,
          (index) => DismissibleTile(
            // for better performance you can use (for example)
            // ValueKey(element.id), but don't forget to remove the current
            // element from the list of elements after the swipe and
            // before rebuild.
            key: UniqueKey(),
            padding: const EdgeInsets.symmetric(vertical: 8),
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            delayBeforeResize: const Duration(milliseconds: 500),
            ltrBackground: const ColoredBox(color: Colors.yellowAccent),
            rtlBackground: const ColoredBox(color: Colors.greenAccent),
            ltrDismissedColor: Colors.lightBlueAccent,
            rtlDismissedColor: Colors.redAccent,
            rtlOverlayIndent: 28,
            // This is where you can call your async function which will update
            // your data.
            confirmDismiss: (direction) => Future.delayed(
              const Duration(seconds: 1),
              () => true,
            ),
            ltrOverlay: const _SlidableOverlay(
              title: 'Add',
              iconData: Icons.add_circle_outline,
            ),
            ltrOverlayDismissed: const _DismissedOverlay(title: 'Added'),
            rtlOverlay: const _SlidableOverlay(
              title: 'Delete',
              iconData: Icons.delete_forever,
            ),
            rtlOverlayDismissed: const _DismissedOverlay(title: 'Deleted'),
            child: Container(
              height: 175,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              child: Text(
                'Dismissible Tile ${index + 1}',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _SlidableOverlay extends StatelessWidget {
  const _SlidableOverlay({
    required this.title,
    required this.iconData,
  });

  final String title;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          color: Colors.white,
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class _DismissedOverlay extends StatelessWidget {
  const _DismissedOverlay({
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 22,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}



