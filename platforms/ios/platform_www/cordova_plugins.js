cordova.define('cordova/plugin_list', function(require, exports, module) {
  module.exports = [
    {
      "id": "trustwalletcore.Trustwallet",
      "file": "plugins/trustwalletcore/www/trustwallet.js",
      "pluginId": "trustwalletcore",
      "clobbers": [
        "Trustwallet"
      ]
    }
  ];
  module.exports.metadata = {
    "cordova-plugin-whitelist": "1.3.4",
    "cordova-plugin-cocoapod-support": "1.6.2",
    "cordova-plugin-add-swift-support": "2.0.2",
    "trustwalletcore": "0.2.3"
  };
});