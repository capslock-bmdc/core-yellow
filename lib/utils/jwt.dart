import 'package:jwt_decoder/jwt_decoder.dart';

class JwtUtil {
  Map<String, dynamic> decode(String token) => JwtDecoder.decode(token);
}

final JwtUtil jwtUtil = JwtUtil();
