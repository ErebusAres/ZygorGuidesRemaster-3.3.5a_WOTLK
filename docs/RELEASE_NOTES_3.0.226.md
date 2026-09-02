# Zygor Guides Viewer Remaster 3.0.226

This compatibility release changes how the addon loads its bundled libraries.

- Bundled Ace3 and supporting libraries are now loaded directly from the addon TOC in their existing order.
- This avoids a startup failure where some 3.3.5a clients did not register `AceAddon-3.0` through the additional `embeds.xml` layer.
- No separate Ace3 installation is required.
- The later Gold UI, `C_Container`, and `RegisterGuide` errors from the report were cascading symptoms of the failed core startup rather than independent failures.

Please fully restart the client after replacing the addon folder because the TOC load list changed.
