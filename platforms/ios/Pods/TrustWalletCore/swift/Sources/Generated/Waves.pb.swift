// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: Waves.proto
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

///Transfer transaction
public struct TW_Waves_Proto_TransferMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var amount: Int64 = 0

  public var asset: String = String()

  /// minimum 0.001 Waves (100000 Wavelets) for now
  public var fee: Int64 = 0

  public var feeAsset: String = String()

  public var to: String = String()

  /// any 140 bytes payload, will be displayed to the client as utf-8 string
  public var attachment: Data = SwiftProtobuf.Internal.emptyData

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

///Lease transaction
public struct TW_Waves_Proto_LeaseMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var amount: Int64 = 0

  public var to: String = String()

  /// minimum 0.001 Waves (100000 Wavelets) for now
  public var fee: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

///Lease transaction
public struct TW_Waves_Proto_CancelLeaseMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var leaseID: String = String()

  public var fee: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Input data necessary to create a signed transaction.
public struct TW_Waves_Proto_SigningInput {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// in millis
  public var timestamp: Int64 {
    get {return _storage._timestamp}
    set {_uniqueStorage()._timestamp = newValue}
  }

  public var privateKey: Data {
    get {return _storage._privateKey}
    set {_uniqueStorage()._privateKey = newValue}
  }

  public var messageOneof: OneOf_MessageOneof? {
    get {return _storage._messageOneof}
    set {_uniqueStorage()._messageOneof = newValue}
  }

  public var transferMessage: TW_Waves_Proto_TransferMessage {
    get {
      if case .transferMessage(let v)? = _storage._messageOneof {return v}
      return TW_Waves_Proto_TransferMessage()
    }
    set {_uniqueStorage()._messageOneof = .transferMessage(newValue)}
  }

  public var leaseMessage: TW_Waves_Proto_LeaseMessage {
    get {
      if case .leaseMessage(let v)? = _storage._messageOneof {return v}
      return TW_Waves_Proto_LeaseMessage()
    }
    set {_uniqueStorage()._messageOneof = .leaseMessage(newValue)}
  }

  public var cancelLeaseMessage: TW_Waves_Proto_CancelLeaseMessage {
    get {
      if case .cancelLeaseMessage(let v)? = _storage._messageOneof {return v}
      return TW_Waves_Proto_CancelLeaseMessage()
    }
    set {_uniqueStorage()._messageOneof = .cancelLeaseMessage(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_MessageOneof: Equatable {
    case transferMessage(TW_Waves_Proto_TransferMessage)
    case leaseMessage(TW_Waves_Proto_LeaseMessage)
    case cancelLeaseMessage(TW_Waves_Proto_CancelLeaseMessage)

  #if !swift(>=4.1)
    public static func ==(lhs: TW_Waves_Proto_SigningInput.OneOf_MessageOneof, rhs: TW_Waves_Proto_SigningInput.OneOf_MessageOneof) -> Bool {
      switch (lhs, rhs) {
      case (.transferMessage(let l), .transferMessage(let r)): return l == r
      case (.leaseMessage(let l), .leaseMessage(let r)): return l == r
      case (.cancelLeaseMessage(let l), .cancelLeaseMessage(let r)): return l == r
      default: return false
      }
    }
  #endif
  }

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Transaction signing output.
public struct TW_Waves_Proto_SigningOutput {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var signature: Data = SwiftProtobuf.Internal.emptyData

  public var json: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "TW.Waves.Proto"

extension TW_Waves_Proto_TransferMessage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TransferMessage"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "amount"),
    2: .same(proto: "asset"),
    3: .same(proto: "fee"),
    4: .standard(proto: "fee_asset"),
    5: .same(proto: "to"),
    6: .same(proto: "attachment"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt64Field(value: &self.amount)
      case 2: try decoder.decodeSingularStringField(value: &self.asset)
      case 3: try decoder.decodeSingularInt64Field(value: &self.fee)
      case 4: try decoder.decodeSingularStringField(value: &self.feeAsset)
      case 5: try decoder.decodeSingularStringField(value: &self.to)
      case 6: try decoder.decodeSingularBytesField(value: &self.attachment)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.amount != 0 {
      try visitor.visitSingularInt64Field(value: self.amount, fieldNumber: 1)
    }
    if !self.asset.isEmpty {
      try visitor.visitSingularStringField(value: self.asset, fieldNumber: 2)
    }
    if self.fee != 0 {
      try visitor.visitSingularInt64Field(value: self.fee, fieldNumber: 3)
    }
    if !self.feeAsset.isEmpty {
      try visitor.visitSingularStringField(value: self.feeAsset, fieldNumber: 4)
    }
    if !self.to.isEmpty {
      try visitor.visitSingularStringField(value: self.to, fieldNumber: 5)
    }
    if !self.attachment.isEmpty {
      try visitor.visitSingularBytesField(value: self.attachment, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Waves_Proto_TransferMessage, rhs: TW_Waves_Proto_TransferMessage) -> Bool {
    if lhs.amount != rhs.amount {return false}
    if lhs.asset != rhs.asset {return false}
    if lhs.fee != rhs.fee {return false}
    if lhs.feeAsset != rhs.feeAsset {return false}
    if lhs.to != rhs.to {return false}
    if lhs.attachment != rhs.attachment {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Waves_Proto_LeaseMessage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".LeaseMessage"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "amount"),
    2: .same(proto: "to"),
    3: .same(proto: "fee"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt64Field(value: &self.amount)
      case 2: try decoder.decodeSingularStringField(value: &self.to)
      case 3: try decoder.decodeSingularInt64Field(value: &self.fee)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.amount != 0 {
      try visitor.visitSingularInt64Field(value: self.amount, fieldNumber: 1)
    }
    if !self.to.isEmpty {
      try visitor.visitSingularStringField(value: self.to, fieldNumber: 2)
    }
    if self.fee != 0 {
      try visitor.visitSingularInt64Field(value: self.fee, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Waves_Proto_LeaseMessage, rhs: TW_Waves_Proto_LeaseMessage) -> Bool {
    if lhs.amount != rhs.amount {return false}
    if lhs.to != rhs.to {return false}
    if lhs.fee != rhs.fee {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Waves_Proto_CancelLeaseMessage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CancelLeaseMessage"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "lease_id"),
    2: .same(proto: "fee"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.leaseID)
      case 2: try decoder.decodeSingularInt64Field(value: &self.fee)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.leaseID.isEmpty {
      try visitor.visitSingularStringField(value: self.leaseID, fieldNumber: 1)
    }
    if self.fee != 0 {
      try visitor.visitSingularInt64Field(value: self.fee, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Waves_Proto_CancelLeaseMessage, rhs: TW_Waves_Proto_CancelLeaseMessage) -> Bool {
    if lhs.leaseID != rhs.leaseID {return false}
    if lhs.fee != rhs.fee {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Waves_Proto_SigningInput: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SigningInput"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "timestamp"),
    2: .standard(proto: "private_key"),
    3: .standard(proto: "transfer_message"),
    4: .standard(proto: "lease_message"),
    5: .standard(proto: "cancel_lease_message"),
  ]

  fileprivate class _StorageClass {
    var _timestamp: Int64 = 0
    var _privateKey: Data = SwiftProtobuf.Internal.emptyData
    var _messageOneof: TW_Waves_Proto_SigningInput.OneOf_MessageOneof?

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _timestamp = source._timestamp
      _privateKey = source._privateKey
      _messageOneof = source._messageOneof
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularInt64Field(value: &_storage._timestamp)
        case 2: try decoder.decodeSingularBytesField(value: &_storage._privateKey)
        case 3:
          var v: TW_Waves_Proto_TransferMessage?
          if let current = _storage._messageOneof {
            try decoder.handleConflictingOneOf()
            if case .transferMessage(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._messageOneof = .transferMessage(v)}
        case 4:
          var v: TW_Waves_Proto_LeaseMessage?
          if let current = _storage._messageOneof {
            try decoder.handleConflictingOneOf()
            if case .leaseMessage(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._messageOneof = .leaseMessage(v)}
        case 5:
          var v: TW_Waves_Proto_CancelLeaseMessage?
          if let current = _storage._messageOneof {
            try decoder.handleConflictingOneOf()
            if case .cancelLeaseMessage(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._messageOneof = .cancelLeaseMessage(v)}
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if _storage._timestamp != 0 {
        try visitor.visitSingularInt64Field(value: _storage._timestamp, fieldNumber: 1)
      }
      if !_storage._privateKey.isEmpty {
        try visitor.visitSingularBytesField(value: _storage._privateKey, fieldNumber: 2)
      }
      switch _storage._messageOneof {
      case .transferMessage(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      case .leaseMessage(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      case .cancelLeaseMessage(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      case nil: break
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Waves_Proto_SigningInput, rhs: TW_Waves_Proto_SigningInput) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._timestamp != rhs_storage._timestamp {return false}
        if _storage._privateKey != rhs_storage._privateKey {return false}
        if _storage._messageOneof != rhs_storage._messageOneof {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Waves_Proto_SigningOutput: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SigningOutput"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "signature"),
    2: .same(proto: "json"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBytesField(value: &self.signature)
      case 2: try decoder.decodeSingularStringField(value: &self.json)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.signature.isEmpty {
      try visitor.visitSingularBytesField(value: self.signature, fieldNumber: 1)
    }
    if !self.json.isEmpty {
      try visitor.visitSingularStringField(value: self.json, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Waves_Proto_SigningOutput, rhs: TW_Waves_Proto_SigningOutput) -> Bool {
    if lhs.signature != rhs.signature {return false}
    if lhs.json != rhs.json {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
