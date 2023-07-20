import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:misskey_client/state/misskey_api_state.dart';
import 'package:misskey_client/widget/drawer_widget.dart';

class MyProfilePage extends ConsumerWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(misskeyMyProfileNotifierProvider);
    final dateFormat = DateFormat('yyyy.MM.dd');
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 160,
            flexibleSpace: FlexibleSpaceBar(
              title: Padding(
                padding: const EdgeInsets.only(left: 75.0),
                child: Text(
                  user.when(
                    data: (data) => data.name ?? '',
                    error: (e, s) => '',
                    loading: () => '',
                  ),
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              titlePadding: const EdgeInsets.only(
                top: 50,
              ),
              background: user.when(
                data: (data) => Stack(
                  children: [
                    SizedBox(
                      height: 200,
                      width: MediaQuery.of(context)
                          .size
                          .width, // sizeをMediaQuery.of(context).sizeなどで定義しておく
                    ),
                    Positioned(
                      top: 0,
                      child: SizedBox(
                        height: 150.0,
                        width: MediaQuery.of(context).size.width,
                        child: Image(
                          image: NetworkImage(data.bannerUrl ?? ''),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 105,
                      left: 20,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).colorScheme.surface,
                            width: 5,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(data.avatarUrl ?? ''),
                        ),
                      ),
                    ),
                  ],
                ),
                error: (e, s) => Image.network(
                  '',
                  fit: BoxFit.cover,
                ),
                loading: () => Image.network(
                  '',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12.0,
                    horizontal: 8.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            user.when(
                              loading: () => '0',
                              error: (e, s) => '0',
                              data: (data) => data.notesCount.toString(),
                            ),
                            style: const TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          const Text(
                            'ノート',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 35,
                        child: VerticalDivider(
                          color: Colors.white,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            user.when(
                              loading: () => '0',
                              error: (e, s) => '0',
                              data: (data) => data.followingCount.toString(),
                            ),
                            style: const TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          const Text(
                            'フォロー',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 35,
                        child: VerticalDivider(
                          color: Colors.white,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            user.when(
                              loading: () => '0',
                              error: (e, s) => '0',
                              data: (data) => data.followersCount.toString(),
                            ),
                            style: const TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          const Text(
                            'フォロワー',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 8.0,
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(Icons.cake),
                          Text(
                            '誕生日：${user.when(
                              loading: () => '0',
                              error: (e, s) => '0',
                              data: (data) => data.birthday != null
                                  ? dateFormat.format(data.birthday!)
                                  : '',
                            )}',
                            style: const TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(Icons.start),
                          Text(
                            '開始日：${user.when(
                              loading: () => '0',
                              error: (e, s) => '0',
                              data: (data) => data.createdAt != null
                                  ? dateFormat.format(data.createdAt!)
                                  : '',
                            )}',
                            style: const TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: const Text(
                          'プロフィール',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(
                            top: 8.0,
                          ),
                          child: Text(
                            user.when(
                              data: (data) => data.description ?? '',
                              error: (e, s) => '',
                              loading: () => '',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: const AppDrawer(),
    );
  }
}
