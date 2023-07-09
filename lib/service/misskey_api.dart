import 'package:dio/dio.dart';
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
      @Path() String session, @Body() Map<String, dynamic> body);

  @POST('/api/notes/hybrid-timeline')
  Future<List<Note>> getHybridTimeline(@Body() TimelineRequest request);

  @POST('/api/meta')
  Future<MetaResponse> getMeta();

  @GET('/api/emojis')
  Future<EmojiResponse> getEmojis();

  @POST('/api/i')
  Future<User> getMyProfile(@Body() MyProfileRequest request);
}
