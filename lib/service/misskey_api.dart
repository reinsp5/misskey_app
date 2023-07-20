import 'package:dio/dio.dart';
import 'package:misskey_client/models/account/update_response.dart';
import 'package:misskey_client/models/auth/check_auth_response.dart';
import 'package:misskey_client/models/emoji/emoji_response.dart';
import 'package:misskey_client/models/meta/meta_response.dart';
import 'package:misskey_client/models/note/note.dart';
import 'package:misskey_client/models/timeline/timeline_request.dart';
import 'package:misskey_client/models/user/my_profile_request.dart';
import 'package:misskey_client/models/user/user.dart';
import 'package:retrofit/http.dart';

part 'misskey_api.g.dart';

@RestApi()
abstract class MisskeyApi {
  factory MisskeyApi(Dio dio, {String baseUrl}) = _MisskeyApi;

  @POST("/api/miauth/{session}/check")
  Future<CheckAuthResponse> checkAuth(
    @Path() String session,
    @Body() Map<String, dynamic> body,
  );

  @POST('/api/meta')
  Future<MetaResponse> getMeta();

  @GET('/api/emojis')
  Future<EmojiResponse> getEmojis();

  /****************************************
   * ユーザー情報関連
   ****************************************/

  /// ユーザーのプロフィールを取得する
  @POST('/api/i')
  Future<User> getMyProfile(@Body() MyProfileRequest request);

  /// ユーザーのプロフィールを更新する
  @POST('/api/i/update')
  Future<User> updateMyProfile(@Body() AccountUpdateRequest request);

  /// ノートのお気に入り情報一覧を取得する
  @POST('/api/i/favorites')
  Future<List<Note>> getMyFavorites();

  /// ギャラリーの投稿につけたいいねを取得する
  @POST('/api/i/gallery/likes')
  Future<List<Note>> getMyGalleryLikes();

  /// ギャラリーへの投稿を取得する
  // @POST('/api/i/gallery/posts')
  // Future<List<dynamic>> getMyGalleryPosts();

  /// ワードミュートされたノートの数を取得する
  @POST('/api/i/get-word-muted-notes-count')
  Future<int> getMyWordMutedNotesCount();

  /// 通知一覧を取得する
  // TODO: ReturnはNoteではなくNotification
  @POST('/api/i/notifications')
  Future<List<Note>> getMyNotifications();

  /// ページへのいいね一覧を取得する
  @POST('/api/i/page-likes')
  Future<List<Note>> getMyPageLikes();

  /// ページの一覧を取得する
  @POST('/api/i/pages')
  Future<List<Note>> getMyPages();

  /// 指定したノートをピン留めに登録する
  @POST('/api/i/pin')
  Future<void> pinMyNote();

  /// ピン留めを解除する
  @POST('/api/i/unpin')
  Future<void> unpinMyNote();

  /// お知らせを既読にする
  @POST('/api/i/read-announcement')
  Future<void> readAnnouncement();

  /// ブロック中のユーザの一覧を取得する
  @POST('/api/blocking/list')
  Future<List<User>> getBlockingUsers();

  /// ユーザーをブロックする
  @POST('/api/blocking/create')
  Future<void> blockUser();

  /// ユーザーをブロック解除する
  @POST('/api/blocking/delete')
  Future<void> unblockUser();

  /// ミュート中のユーザの一覧を取得する
  @POST('/api/mutes/list')
  Future<List<User>> getMutedUsers();

  /// ユーザーをミュートする
  @POST('/api/mutes/create')
  Future<void> muteUser();

  /// ユーザーをミュート解除する
  @POST('/api/mutes/delete')
  Future<void> unmuteUser();

  /// クリップに含まれるノートの一覧を取得する
  @POST('/api/clips/notes')
  Future<List<Note>> getNotesFromClip();

  /// ノートをクリップに追加する
  @POST('api/clips/add-note')
  Future<void> addNoteToClip();

  /// ノートをクリップから削除する
  @POST('api/clips/remove-note')
  Future<void> removeNoteFromClip();

  /****************************************
   * ノート関連
   ****************************************/

  /// ノートの一覧を取得する
  @POST('/api/notes')
  Future<List<Note>> getNotes();

  /// ノートを作成する
  @POST('/api/notes/create')
  Future<Note> createNote();

  /// ノートを削除する
  @POST('/api/notes/delete')
  Future<void> deleteNote();

  /// ノートへのリプライや引用を取得する
  @POST('/api/notes/children')
  Future<List<Note>> getNoteChildren();

  /// 関連するノートを取得する
  @POST('/api/notes/conversation')
  Future<List<Note>> getNoteConversation();

  /// ノートをお気に入りに追加する
  @POST('/api/notes/favorites/create')
  Future<void> favoriteNote();

  /// ノートのお気に入りを解除する
  @POST('/api/notes/favorites/delete')
  Future<void> unfavoriteNote();

  /// ハイライトされたノートを取得する
  @POST('/api/notes/featured')
  Future<List<Note>> getFeaturedNotes();

  /// グローバルタイムラインを取得する
  @POST('/api/notes/global-timeline')
  Future<List<Note>> getGlobalTimeline();

  /// ソーシャルタイムラインを取得する
  @POST('/api/notes/hybrid-timeline')
  Future<List<Note>> getHybridTimeline(@Body() TimelineRequest request);

  /// ローカルタイムラインを取得する
  @POST('/api/notes/local-timeline')
  Future<List<Note>> getLocalTimeline();

  /// ホームタイムラインを取得する
  @POST('/api/notes/timeline')
  Future<List<Note>> getHomeTimeline();

  /// ログイン中のユーザに言及しているノートの一覧を取得する
  @POST('/api/notes/mentions')
  Future<List<Note>> getMentions();

  /// アンケート付きのおすすめのノートの一覧を取得する
  @POST('/api/notes/polls/recommendation')
  Future<List<Note>> getRecommendedPolls();

  /// ノートのアンケートに投票する
  @POST('/api/notes/polls/vote')
  Future<void> votePoll();

  /// ノートのリアクションを取得する
  // @POST('/api/notes/reactions')
  // Future<List<dynamic>> getReactions();

  /// ノートに対するRenote一覧を取得する
  @POST('/api/notes/renotes')
  Future<List<Note>> getRenotes();

  /// ノートへの返信を取得する
  @POST('/api/notes/replies')
  Future<List<Note>> getReplies();

  /// 指定されたタグが付けられたノートの一覧を取得する
  @POST('/api/notes/search-by-tag')
  Future<List<Note>> searchNotesByTag();

  /// ノートを検索する
  @POST('/api/notes/search')
  Future<List<Note>> searchNotes();

  /// ノートを取得する
  @POST('/api/notes/show')
  Future<Note> getNoteById();

  /// ノートに対するログイン中のユーザによるアクションを取得する
  // @POST('/api/notes/state')
  // Future<dynamic> getNoteState();

  /// スレッドをミュートにする
  @POST('/api/notes/thread-muting/create')
  Future<void> muteThread();

  /// スレッドのミュートを解除する
  @POST('/api/notes/thread-muting/delete')
  Future<void> unmuteThread();

  /// ノートを翻訳する
  @POST('/api/notes/translate')
  Future<Note> translateNote();

  /// 指定したノートのRenoteを解除する
  @POST('/api/notes/unrenote')
  Future<void> unrenote();

  /// 指定したユーザーリストのタイムラインを取得する
  @POST('/api/notes/user-list-timeline')
  Future<List<Note>> getUserListTimeline();

  /// ノートをウォッチする
  @POST('/api/notes/watching/create')
  Future<void> watchNote();

  /// ノートのウォッチを解除する
  @POST('/api/notes/watching/delete')
  Future<void> unwatchNote();
}
