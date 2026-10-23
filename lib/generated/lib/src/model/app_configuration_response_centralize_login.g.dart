// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_configuration_response_centralize_login.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AppConfigurationResponseCentralizeLogin
    extends AppConfigurationResponseCentralizeLogin {
  @override
  final int? manualLoginStatus;
  @override
  final int? otpLoginStatus;
  @override
  final int? socialLoginStatus;

  factory _$AppConfigurationResponseCentralizeLogin(
          [void Function(AppConfigurationResponseCentralizeLoginBuilder)?
              updates]) =>
      (AppConfigurationResponseCentralizeLoginBuilder()..update(updates))
          ._build();

  _$AppConfigurationResponseCentralizeLogin._(
      {this.manualLoginStatus, this.otpLoginStatus, this.socialLoginStatus})
      : super._();
  @override
  AppConfigurationResponseCentralizeLogin rebuild(
          void Function(AppConfigurationResponseCentralizeLoginBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppConfigurationResponseCentralizeLoginBuilder toBuilder() =>
      AppConfigurationResponseCentralizeLoginBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppConfigurationResponseCentralizeLogin &&
        manualLoginStatus == other.manualLoginStatus &&
        otpLoginStatus == other.otpLoginStatus &&
        socialLoginStatus == other.socialLoginStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, manualLoginStatus.hashCode);
    _$hash = $jc(_$hash, otpLoginStatus.hashCode);
    _$hash = $jc(_$hash, socialLoginStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'AppConfigurationResponseCentralizeLogin')
          ..add('manualLoginStatus', manualLoginStatus)
          ..add('otpLoginStatus', otpLoginStatus)
          ..add('socialLoginStatus', socialLoginStatus))
        .toString();
  }
}

class AppConfigurationResponseCentralizeLoginBuilder
    implements
        Builder<AppConfigurationResponseCentralizeLogin,
            AppConfigurationResponseCentralizeLoginBuilder> {
  _$AppConfigurationResponseCentralizeLogin? _$v;

  int? _manualLoginStatus;
  int? get manualLoginStatus => _$this._manualLoginStatus;
  set manualLoginStatus(int? manualLoginStatus) =>
      _$this._manualLoginStatus = manualLoginStatus;

  int? _otpLoginStatus;
  int? get otpLoginStatus => _$this._otpLoginStatus;
  set otpLoginStatus(int? otpLoginStatus) =>
      _$this._otpLoginStatus = otpLoginStatus;

  int? _socialLoginStatus;
  int? get socialLoginStatus => _$this._socialLoginStatus;
  set socialLoginStatus(int? socialLoginStatus) =>
      _$this._socialLoginStatus = socialLoginStatus;

  AppConfigurationResponseCentralizeLoginBuilder() {
    AppConfigurationResponseCentralizeLogin._defaults(this);
  }

  AppConfigurationResponseCentralizeLoginBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _manualLoginStatus = $v.manualLoginStatus;
      _otpLoginStatus = $v.otpLoginStatus;
      _socialLoginStatus = $v.socialLoginStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppConfigurationResponseCentralizeLogin other) {
    _$v = other as _$AppConfigurationResponseCentralizeLogin;
  }

  @override
  void update(
      void Function(AppConfigurationResponseCentralizeLoginBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppConfigurationResponseCentralizeLogin build() => _build();

  _$AppConfigurationResponseCentralizeLogin _build() {
    final _$result = _$v ??
        _$AppConfigurationResponseCentralizeLogin._(
          manualLoginStatus: manualLoginStatus,
          otpLoginStatus: otpLoginStatus,
          socialLoginStatus: socialLoginStatus,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
