import 'package:dio/dio.dart';
import 'package:misskey_client/models/auth/check_auth_response.dart';
import 'package:misskey_client/models/emoji/emoji.dart';
import 'package:misskey_client/models/meta/meta_response.dart';
import 'package:misskey_client/models/note/note.dart';
import 'package:misskey_client/models/timeline/timeline_request.dart';
import 'package:retrofit/http.dart';

part 'misskey_api.g.dart';

@RestApi()
abstract class MisskeyApi {
  factory MisskeyApi(Dio dio, {String baseUrl}) = _MisskeyApi;

  @POST("/api/miauth/{session}/check")
  Future<CheckAuthResponse> checkAuth(@Path() String session);

  @POST('/api/notes/hybrid-timeline')
  Future<List<Note>> getHybridTimeline(@Body() TimelineRequest request);

  @POST('/api/meta')
  Future<MetaResponse> getMeta();

  @POST('/api/emojis')
  Future<List<Emoji>> getEmojis();
}
