import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:misskey_client/state/misskey_api_state.dart';
import 'package:misskey_client/widget/mi_note.dart';
import 'package:misskey_client/widget/mi_scafford.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timelines = ref.watch(misskeyTimelineNotifierProvider);
    // タイムラインの更新をスケジュールする
    _reloadTimeline(ref);
    return MiScaffold(
      title: 'Misskey App',
      body: timelines.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(
          child: Text('エラーが発生しました。$error'),
        ),
        data: (data) {
          return RefreshIndicator(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: ListView.separated(
                separatorBuilder: (context, index) => const Divider(),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  final note = data[index];

                  return MiNote(note: note);
                },
              ),
            ),
            onRefresh: () async {
              ref.read(misskeyTimelineNotifierProvider.notifier).reload();
            },
          );
        },
      ),
    );
  }

  // 30秒ごとにタイムラインを更新する
  void _reloadTimeline(WidgetRef ref) {
    ref.read(misskeyTimelineNotifierProvider.notifier).reloadScheduler();
  }
}
