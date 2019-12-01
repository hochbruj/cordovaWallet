cordova.define('cordova/plugin_list', function(require, exports, module) {
module.exports = [
    {
        "file": "plugins/trustwalletcore/www/trustwallet.js",
        "id": "trustwalletcore.Trustwallet",
        "pluginId": "trustwalletcore",
        "clobbers": [
            "Trustwallet"
        ]
    }
];
module.exports.metadata = 
// TOP OF METADATA
{
    "cordova-plugin-add-swift-support": "2.0.2",
    "cordova-plugin-cocoapod-support": "1.6.2",
    "cordova-plugin-whitelist": "1.3.4",
    "trustwalletcore": "0.2.3"
}
// BOTTOM OF METADATA
});