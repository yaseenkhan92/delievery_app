import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for AppConfigAllAppsApi
void main() {
  final instance = Openapi().getAppConfigAllAppsApi();

  group(AppConfigAllAppsApi, () {
    // App configuration (all apps)
    //
    // Legacy PHP **GET /api/v1/config** — flat JSON (no `status`/`data` wrapper). Customer, vendor, and driver apps call this on launch for **terms_and_conditions**, **privacy_policy**, **about_us**, refund/cancellation/shipping policies (+ `*_status` flags), **cookies_text**, payment/wallet/loyalty toggles, map keys, and **app_minimum_version_*** / store URLs per app.  Optional header **`X-localization`** (e.g. `en`, `he`) returns translated legal HTML from `data_settings` + `translations`.  Same body as **GET /consumer/config**.
    //
    //Future<AppConfigurationResponse> configGet({ String xLocalization }) async
    test('test configGet', () async {
      // TODO
    });

    // App configuration (all apps)
    //
    // Legacy PHP **GET /api/v1/config** — flat JSON (no `status`/`data` wrapper). Customer, vendor, and driver apps call this on launch for **terms_and_conditions**, **privacy_policy**, **about_us**, refund/cancellation/shipping policies (+ `*_status` flags), **cookies_text**, payment/wallet/loyalty toggles, map keys, and **app_minimum_version_*** / store URLs per app.  Optional header **`X-localization`** (e.g. `en`, `he`) returns translated legal HTML from `data_settings` + `translations`.  Same body as **GET /consumer/config**.
    //
    //Future<AppConfigurationResponse> configGet_0({ String xLocalization }) async
    test('test configGet_0', () async {
      // TODO
    });

    // App configuration (consumer path alias)
    //
    // Identical to **GET /config**. Use **GET /consumer/config/zone-id** for lat/lng zone resolve.
    //
    //Future<AppConfigurationResponse> consumerConfigGet({ String xLocalization }) async
    test('test consumerConfigGet', () async {
      // TODO
    });

    // App configuration (consumer path alias)
    //
    // Identical to **GET /config**. Use **GET /consumer/config/zone-id** for lat/lng zone resolve.
    //
    //Future<AppConfigurationResponse> consumerConfigGet_0({ String xLocalization }) async
    test('test consumerConfigGet_0', () async {
      // TODO
    });

  });
}
