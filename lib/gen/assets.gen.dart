/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/backbutton.svg
  SvgGenImage get backbutton =>
      const SvgGenImage('assets/icons/backbutton.svg');

  /// File path: assets/icons/calendar.svg
  SvgGenImage get calendar => const SvgGenImage('assets/icons/calendar.svg');

  /// File path: assets/icons/calls.svg
  SvgGenImage get calls => const SvgGenImage('assets/icons/calls.svg');

  /// File path: assets/icons/campaign.svg
  SvgGenImage get campaign => const SvgGenImage('assets/icons/campaign.svg');

  /// File path: assets/icons/category.svg
  SvgGenImage get category => const SvgGenImage('assets/icons/category.svg');

  /// File path: assets/icons/contact.svg
  SvgGenImage get contact => const SvgGenImage('assets/icons/contact.svg');

  /// File path: assets/icons/customer.svg
  SvgGenImage get customer => const SvgGenImage('assets/icons/customer.svg');

  /// File path: assets/icons/ic_logo.svg
  SvgGenImage get icLogo => const SvgGenImage('assets/icons/ic_logo.svg');

  /// File path: assets/icons/leads.svg
  SvgGenImage get leads => const SvgGenImage('assets/icons/leads.svg');

  /// File path: assets/icons/notes.svg
  SvgGenImage get notes => const SvgGenImage('assets/icons/notes.svg');

  /// File path: assets/icons/notes.svg
  SvgGenImage get icEditProfile =>
      const SvgGenImage('assets/icons/ic_edit_profile.svg');

  /// File path: assets/icons/opportunities.svg
  SvgGenImage get opportunities =>
      const SvgGenImage('assets/icons/opportunities.svg');

  /// File path: assets/icons/tasks.svg
  SvgGenImage get tasks => const SvgGenImage('assets/icons/tasks.svg');

  /// File path: assets/icons/template.svg
  SvgGenImage get template => const SvgGenImage('assets/icons/template.svg');

  /// File path: assets/icons/ic_settings.svg
  SvgGenImage get icSettings =>
      const SvgGenImage('assets/icons/ic_settings.svg');

  /// File path: assets/icons/ic_import.svg
  SvgGenImage get icImport => const SvgGenImage('assets/icons/ic_import.svg');

  /// File path: assets/icons/ic_export.svg
  SvgGenImage get icExport => const SvgGenImage('assets/icons/ic_export.svg');

  /// File path: assets/icons/ic_logout.svg
  SvgGenImage get icLogout => const SvgGenImage('assets/icons/ic_logout.svg');

  /// File path: assets/icons/ic_chat_support.svg
  SvgGenImage get icChatSupport =>
      const SvgGenImage('assets/icons/ic_chat_support.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        icChatSupport,
        icExport,
        icImport,
        icSettings,
        icEditProfile,
        backbutton,
        calendar,
        calls,
        campaign,
        category,
        contact,
        customer,
        icLogo,
        leads,
        notes,
        opportunities,
        tasks,
        template
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/crm.png
  AssetGenImage get crm => const AssetGenImage('assets/images/crm.png');

  /// File path: assets/images/full_logo.png
  AssetGenImage get fullLogo =>
      const AssetGenImage('assets/images/full_logo.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/successful.png
  AssetGenImage get successful =>
      const AssetGenImage('assets/images/successful.png');

  /// List of all assets
  List<AssetGenImage> get values => [crm, fullLogo, logo, successful];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
