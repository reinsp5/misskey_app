import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:misskey_client/models/emoji/emoji.dart';
import 'package:misskey_client/state/misskey_api_state.dart';

class UserNameWidget extends ConsumerWidget {
  const UserNameWidget({Key? key, required this.userName}) : super(key: key);

  final String userName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<WidgetSpan> widgetSpans = [];
    final emojis = ref.watch(misskeyEmojisNotifierProvider);
    return emojis.when(
        loading: () => const CircularProgressIndicator(),
        error: (err, stack) {
          debugPrint('$err: $stack');

          return Text('Error: $err');
        },
        data: (emojiList) {
          RegExp exp = RegExp(r':([^:\s]*):');
          Iterable<RegExpMatch> matches = exp.allMatches(userName);
          int previousEnd = 0;

          for (var match in matches) {
            if (match.start > previousEnd) {
              widgetSpans.add(
                WidgetSpan(
                  child: Text(userName!.substring(previousEnd, match.start)),
                ),
              );
            }

            String? emojiName = match.group(1);
            Emoji emoji = emojiList.emojis!
                .firstWhere((emoji) => emoji.name == emojiName);

            if (emoji != null) {
              widgetSpans.add(
                WidgetSpan(
                  child: Image.network(emoji.url!, width: 20, height: 20),
                ),
              );
            } else {
              widgetSpans.add(
                WidgetSpan(
                  child: Text(':${emojiName!}:'),
                ),
              );
            }

            previousEnd = match.end;
          }

          if (previousEnd < userName!.length) {
            widgetSpans.add(
              WidgetSpan(
                child: Text(userName!.substring(previousEnd)),
              ),
            );
          }

          return RichText(
            text: TextSpan(
              children: widgetSpans,
            ),
          );
        });
  }
}
