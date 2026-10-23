import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for LegalPagesAllAppsApi
void main() {
  final instance = Openapi().getLegalPagesAllAppsApi();

  group(LegalPagesAllAppsApi, () {
    // All legal pages (terms, privacy, policies)
    //
    // Returns every admin **Pages** document in one call. Keys: `terms_and_conditions`, `privacy_policy`, `about_us`, `refund_policy`, `shipping_policy`, `cancellation_policy`. Each has `title`, `content` (HTML), `active` (policy pages use `*_policy_status` in DB). Header **X-localization** for translations.
    //
    //Future<LegalPagesBundleResponse> pagesLegalGet({ String xLocalization }) async
    test('test pagesLegalGet', () async {
      // TODO
    });

    // Single legal page by slug
    //
    // Slugs: `terms-and-conditions`, `privacy-policy`, `about-us`, `refund-policy`, `shipping-policy`, `cancellation-policy` (same as PHP web routes). Default JSON: `{ status, data: { key, title, content, active } }`. **PHP parity:** `?format=legacy` → body is JSON string of HTML only.
    //
    //Future<PagesSlugGet200Response> pagesSlugGet(String slug, { String format, String xLocalization }) async
    test('test pagesSlugGet', () async {
      // TODO
    });

  });
}
