import 'package:meta/meta.dart';

import '../base.dart';

// Contains base classes for KOI8 codecs

/// Provides a KOI8 decoder.
@internal
base class KoiDecoder extends BaseDecoder {
  /// Creates a new [KoiDecoder].
  ///
  /// The [symbols] need to be exactly `128` characters long.
  ///
  /// Set [allowInvalid] to true in case invalid characters sequences
  /// should be at least readable.
  const KoiDecoder(String symbols, {bool allowInvalid = false})
      : super(symbols, 0x7F, allowInvalid: allowInvalid);
}

/// Provides a simple KOI8 encoder.
@internal
base class KoiEncoder extends BaseEncoder {
  /// Creates a new [KoiEncoder].
  ///
  /// Set [allowInvalid] to true in case invalid characters
  /// should be translated to question marks.
  const KoiEncoder(Map<int, int> encodingMap, {bool allowInvalid = false})
      : super(encodingMap, 0x7f, allowInvalid: allowInvalid);
}
