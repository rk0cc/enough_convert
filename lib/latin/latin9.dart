import 'dart:convert' as cnvrt;

import 'latin.dart';

const String _latin9Symbols =
    '¡¢£¤¥¦§¨©ª«¬\u{00AD}®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏĞÑÒÓÔÕÖ×ØÙÚÛÜİŞßàáâãäåæçèéêëìíîïğñòóôõö÷øùúûüışÿ';
const Map<int, int> _latin9SymbolMap = {
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
  286: 208,
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
  304: 221,
  350: 222,
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
  287: 240,
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
  305: 253,
  351: 254,
  255: 255,
};

/// Provides a latin 9 / iso-8859-9 codec for easy encoding and decoding.
class Latin9Codec extends cnvrt.Encoding {
  final bool allowInvalid;

  /// Creates a new codec
  const Latin9Codec({
    /// set [allowInvalid] to `true` for ignoring invalid data.
    /// When invalid data is allowed it  will be encoded to ? and decoded to �
    this.allowInvalid = false,
  });

  @override
  Latin9Decoder get decoder => allowInvalid
      ? const Latin9Decoder(allowInvalid: true)
      : const Latin9Decoder(allowInvalid: false);

  @override
  Latin9Encoder get encoder => allowInvalid
      ? const Latin9Encoder(allowInvalid: true)
      : const Latin9Encoder(allowInvalid: false);

  @override
  String get name => 'iso-8859-9';
}

/// Encodes texts into latin 9 / iso-8859-9 data
class Latin9Encoder extends LatinEncoder {
  const Latin9Encoder({
    /// set [allowInvalid] to `true` for ignoring invalid data.
    /// When invalid data is allowed it  will be encoded to ?
    bool allowInvalid = false,
  }) : super(_latin9SymbolMap, allowInvalid: allowInvalid);
}

/// Decodes latin 9 /  iso-8859-9 data.
class Latin9Decoder extends LatinDecoder {
  const Latin9Decoder({
    /// set [allowInvalid] to `true` for ignoring invalid data.
    /// When invalid data is allowed it  will be decoded to �
    bool allowInvalid = false,
  }) : super(_latin9Symbols, allowInvalid: allowInvalid);
}
