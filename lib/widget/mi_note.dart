import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:misskey_client/models/note/note.dart';
import 'package:misskey_client/state/misskey_api_state.dart';

class MiNote extends ConsumerWidget {
  MiNote({Key? key, required this.note}) : super(key: key);

  Note note;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<WidgetSpan> widgetSpans = [];
    final emojis = ref.watch(misskeyEmojisNotifierProvider);
    return emojis.when(
        loading: () => const CircularProgressIndicator(),
        error: (err, stack) => Text('Error: $err'),
        data: (emojiList) {
          emojiList.forEach((emoji) {});
          return RichText(
            text: TextSpan(
              children: widgetSpans,
            ),
          );
        });
  }
}
