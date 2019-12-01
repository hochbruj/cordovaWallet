import Foundation
import TrustWalletCore

@objc(TrustWallet)
public class TrustWallet : CDVPlugin {
  @objc
  func createWallet(_ command: CDVInvokedUrlCommand) {
    let echo = command.argument(at: 0) as! String?
    let echo2 = command.argument(at: 1) as! String?
    print(echo2!)
    let pluginResult:CDVPluginResult

    
    if echo != nil && echo!.count > 0 {
        pluginResult = CDVPluginResult.init(status: CDVCommandStatus_OK, messageAs: echo!)
    } else {
        pluginResult = CDVPluginResult.init(status: CDVCommandStatus_ERROR)
    }

    self.commandDelegate.send(pluginResult, callbackId: command.callbackId)
  }

  @objc
  func exportMnemonic(_ command: CDVInvokedUrlCommand) {
    let echo = command.argument(at: 0) as! String?
    let echo2 = command.argument(at: 1) as! String?
    print(echo2!)
    let pluginResult:CDVPluginResult

    
    if echo != nil && echo!.count > 0 {
        pluginResult = CDVPluginResult.init(status: CDVCommandStatus_OK, messageAs: echo!)
    } else {
        pluginResult = CDVPluginResult.init(status: CDVCommandStatus_ERROR)
    }

    self.commandDelegate.send(pluginResult, callbackId: command.callbackId)
  }
}
