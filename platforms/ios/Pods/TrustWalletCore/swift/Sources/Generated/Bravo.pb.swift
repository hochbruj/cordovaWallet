// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: Bravo.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// Input data necessary to create a signed transaction.
public struct TW_Bravo_Proto_SigningInput {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Chain id (256-bit number)
  public var chainID: Data = SwiftProtobuf.Internal.emptyData

  /// Sender's username
  public var sender: String = String()

  /// Recipient's username
  public var recipient: String = String()

  /// Amount in "BRAVO" or "TEST"
  public var amount: Double = 0

  /// Whether the transaction is for testnet
  public var testnet: Bool = false

  /// Memo to attach to the transaction
  public var memo: String = String()

  /// Reference Block Id (160-bits)
  public var referenceBlockID: Data = SwiftProtobuf.Internal.emptyData

  /// Timestamp on the reference block
  public var referenceBlockTime: Int32 = 0

  /// Sender's private key's raw bytes
  public var privateKey: Data = SwiftProtobuf.Internal.emptyData

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Transaction signing output.
public struct TW_Bravo_Proto_SigningOutput {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// JSON of the signed transaction.
  public var jsonEncoded: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "TW.Bravo.Proto"

extension TW_Bravo_Proto_SigningInput: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SigningInput"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "chain_id"),
    2: .same(proto: "sender"),
    3: .same(proto: "recipient"),
    4: .same(proto: "amount"),
    5: .same(proto: "testnet"),
    6: .same(proto: "memo"),
    7: .standard(proto: "reference_block_id"),
    8: .standard(proto: "reference_block_time"),
    9: .standard(proto: "private_key"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBytesField(value: &self.chainID)
      case 2: try decoder.decodeSingularStringField(value: &self.sender)
      case 3: try decoder.decodeSingularStringField(value: &self.recipient)
      case 4: try decoder.decodeSingularDoubleField(value: &self.amount)
      case 5: try decoder.decodeSingularBoolField(value: &self.testnet)
      case 6: try decoder.decodeSingularStringField(value: &self.memo)
      case 7: try decoder.decodeSingularBytesField(value: &self.referenceBlockID)
      case 8: try decoder.decodeSingularSFixed32Field(value: &self.referenceBlockTime)
      case 9: try decoder.decodeSingularBytesField(value: &self.privateKey)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.chainID.isEmpty {
      try visitor.visitSingularBytesField(value: self.chainID, fieldNumber: 1)
    }
    if !self.sender.isEmpty {
      try visitor.visitSingularStringField(value: self.sender, fieldNumber: 2)
    }
    if !self.recipient.isEmpty {
      try visitor.visitSingularStringField(value: self.recipient, fieldNumber: 3)
    }
    if self.amount != 0 {
      try visitor.visitSingularDoubleField(value: self.amount, fieldNumber: 4)
    }
    if self.testnet != false {
      try visitor.visitSingularBoolField(value: self.testnet, fieldNumber: 5)
    }
    if !self.memo.isEmpty {
      try visitor.visitSingularStringField(value: self.memo, fieldNumber: 6)
    }
    if !self.referenceBlockID.isEmpty {
      try visitor.visitSingularBytesField(value: self.referenceBlockID, fieldNumber: 7)
    }
    if self.referenceBlockTime != 0 {
      try visitor.visitSingularSFixed32Field(value: self.referenceBlockTime, fieldNumber: 8)
    }
    if !self.privateKey.isEmpty {
      try visitor.visitSingularBytesField(value: self.privateKey, fieldNumber: 9)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Bravo_Proto_SigningInput, rhs: TW_Bravo_Proto_SigningInput) -> Bool {
    if lhs.chainID != rhs.chainID {return false}
    if lhs.sender != rhs.sender {return false}
    if lhs.recipient != rhs.recipient {return false}
    if lhs.amount != rhs.amount {return false}
    if lhs.testnet != rhs.testnet {return false}
    if lhs.memo != rhs.memo {return false}
    if lhs.referenceBlockID != rhs.referenceBlockID {return false}
    if lhs.referenceBlockTime != rhs.referenceBlockTime {return false}
    if lhs.privateKey != rhs.privateKey {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Bravo_Proto_SigningOutput: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SigningOutput"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "json_encoded"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.jsonEncoded)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.jsonEncoded.isEmpty {
      try visitor.visitSingularStringField(value: self.jsonEncoded, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Bravo_Proto_SigningOutput, rhs: TW_Bravo_Proto_SigningOutput) -> Bool {
    if lhs.jsonEncoded != rhs.jsonEncoded {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
