import 'dart:convert' as dart_convert;

import 'windows.dart';

/// Provides a windows 1252 / cp1252 codec for easy encoding and decoding.
final class Windows1252Codec extends dart_convert.Encoding {
  /// Creates a new []
  ///
  /// Set [allowInvalid] to `true` for ignoring invalid data.
  /// When invalid data is allowed it  will be encoded to ? and decoded to �
  const Windows1252Codec({
    this.allowInvalid = false,
  });

  /// Should invalid character codes be ignored?
  ///
  /// When `false`, an invalid character code
  /// will throw [FormatException].
  final bool allowInvalid;

  @override
  Windows1252Decoder get decoder => allowInvalid
      ? const Windows1252Decoder(allowInvalid: true)
      : const Windows1252Decoder(allowInvalid: false);

  @override
  Windows1252Encoder get encoder => allowInvalid
      ? const Windows1252Encoder(allowInvalid: true)
      : const Windows1252Encoder(allowInvalid: false);

  @override
  String get name => 'windows-1252';
}

/// Decodes windows 1252 / cp1252 data.
final class Windows1252Decoder extends WindowsDecoder {
  /// Creates a new []
  ///
  /// Set [allowInvalid] to `true` for ignoring invalid data.
  /// When invalid data is allowed it  will be decoded to �
  const Windows1252Decoder({
    bool allowInvalid = false,
  }) : super(_cp1252Symbols, allowInvalid: allowInvalid);
}

/// Encodes texts into windows 1252 data
final class Windows1252Encoder extends WindowsEncoder {
  /// Creates a new []
  ///
  /// Set [allowInvalid] to `true` for ignoring invalid data.
  /// When invalid data is allowed it  will be encoded to ?
  const Windows1252Encoder({
    bool allowInvalid = false,
  }) : super(_cp1252Map, allowInvalid: allowInvalid);
}

// cSpell:disable
const String _cp1252Symbols =
// ignore: lines_longer_than_80_chars
    '€?‚ƒ„…†‡ˆ‰Š‹Œ?Ž??‘’“”•–—˜™š›œ?žŸ\u{00A0}¡¢£¤¥¦§¨©ª«¬\u{00AD}®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿ';
const Map<int, int> _cp1252Map = {
  8364: 128,
  8218: 130,
  402: 131,
  8222: 132,
  8230: 133,
  8224: 134,
  8225: 135,
  710: 136,
  8240: 137,
  352: 138,
  8249: 139,
  338: 140,
  381: 142,
  8216: 145,
  8217: 146,
  8220: 147,
  8221: 148,
  8226: 149,
  8211: 150,
  8212: 151,
  732: 152,
  8482: 153,
  353: 154,
  8250: 155,
  339: 156,
  382: 158,
  376: 159,
  160: 160,
  161: 161,
  162: 162,
  163: 163,
  164: 164,
  165: 165,
  166: 166,
  167: 167,
  168: 168,
  169: 169,
  170: 170,
  171: 171,
  172: 172,
  173: 173,
  174: 174,
  175: 175,
  176: 176,
  177: 177,
  178: 178,
  179: 179,
  180: 180,
  181: 181,
  182: 182,
  183: 183,
  184: 184,
  185: 185,
  186: 186,
  187: 187,
  188: 188,
  189: 189,
  190: 190,
  191: 191,
  192: 192,
  193: 193,
  194: 194,
  195: 195,
  196: 196,
  197: 197,
  198: 198,
  199: 199,
  200: 200,
  201: 201,
  202: 202,
  203: 203,
  204: 204,
  205: 205,
  206: 206,
  207: 207,
  208: 208,
  209: 209,
  210: 210,
  211: 211,
  212: 212,
  213: 213,
  214: 214,
  215: 215,
  216: 216,
  217: 217,
  218: 218,
  219: 219,
  220: 220,
  221: 221,
  222: 222,
  223: 223,
  224: 224,
  225: 225,
  226: 226,
  227: 227,
  228: 228,
  229: 229,
  230: 230,
  231: 231,
  232: 232,
  233: 233,
  234: 234,
  235: 235,
  236: 236,
  237: 237,
  238: 238,
  239: 239,
  240: 240,
  241: 241,
  242: 242,
  243: 243,
  244: 244,
  245: 245,
  246: 246,
  247: 247,
  248: 248,
  249: 249,
  250: 250,
  251: 251,
  252: 252,
  253: 253,
  254: 254,
  255: 255,
};
