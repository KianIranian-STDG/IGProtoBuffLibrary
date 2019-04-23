// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: MplGetTopupToken.proto
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

public struct IGPMplGetTopupToken: SwiftProtobuf.RequestMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var igpRequest: IGPRequest {
    get {return _storage._igpRequest ?? IGPRequest()}
    set {_uniqueStorage()._igpRequest = newValue}
  }
  /// Returns true if `igpRequest` has been explicitly set.
  public var hasIgpRequest: Bool {return _storage._igpRequest != nil}
  /// Clears the value of `igpRequest`. Subsequent reads from it will return its default value.
  public mutating func clearIgpRequest() {_uniqueStorage()._igpRequest = nil}

  public var igpChargeMobileNumber: Int64 {
    get {return _storage._igpChargeMobileNumber}
    set {_uniqueStorage()._igpChargeMobileNumber = newValue}
  }

  public var igpAmount: Int64 {
    get {return _storage._igpAmount}
    set {_uniqueStorage()._igpAmount = newValue}
  }

  public var igpType: IGPMplGetTopupToken.IGPType {
    get {return _storage._igpType}
    set {_uniqueStorage()._igpType = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum IGPType: SwiftProtobuf.Enum {
    public typealias RawValue = Int
    case irancellPrepaid // = 0
    case irancellWow // = 1
    case irancellWimax // = 2
    case irancellPostpaid // = 3
    case mci // = 4
    case rightel // = 5
    case UNRECOGNIZED(Int)

    public init() {
      self = .irancellPrepaid
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .irancellPrepaid
      case 1: self = .irancellWow
      case 2: self = .irancellWimax
      case 3: self = .irancellPostpaid
      case 4: self = .mci
      case 5: self = .rightel
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .irancellPrepaid: return 0
      case .irancellWow: return 1
      case .irancellWimax: return 2
      case .irancellPostpaid: return 3
      case .mci: return 4
      case .rightel: return 5
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

#if swift(>=4.2)

extension IGPMplGetTopupToken.IGPType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [IGPMplGetTopupToken.IGPType] = [
    .irancellPrepaid,
    .irancellWow,
    .irancellWimax,
    .irancellPostpaid,
    .mci,
    .rightel,
  ]
}

#endif  // swift(>=4.2)

public struct IGPMplGetTopupTokenResponse: SwiftProtobuf.ResponseMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var igpResponse: IGPResponse {
    get {return _storage._igpResponse ?? IGPResponse()}
    set {_uniqueStorage()._igpResponse = newValue}
  }
  /// Returns true if `igpResponse` has been explicitly set.
  public var hasIgpResponse: Bool {return _storage._igpResponse != nil}
  /// Clears the value of `igpResponse`. Subsequent reads from it will return its default value.
  public mutating func clearIgpResponse() {_uniqueStorage()._igpResponse = nil}

  public var igpStatus: Int32 {
    get {return _storage._igpStatus}
    set {_uniqueStorage()._igpStatus = newValue}
  }

  public var igpToken: String {
    get {return _storage._igpToken}
    set {_uniqueStorage()._igpToken = newValue}
  }

  public var igpExpireTime: Int32 {
    get {return _storage._igpExpireTime}
    set {_uniqueStorage()._igpExpireTime = newValue}
  }

  public var igpMessage: String {
    get {return _storage._igpMessage}
    set {_uniqueStorage()._igpMessage = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension IGPMplGetTopupToken: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "IGPMplGetTopupToken"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_request"),
    2: .standard(proto: "IGP_charge_mobile_number"),
    3: .standard(proto: "IGP_amount"),
    4: .standard(proto: "IGP_type"),
  ]

  fileprivate class _StorageClass {
    var _igpRequest: IGPRequest? = nil
    var _igpChargeMobileNumber: Int64 = 0
    var _igpAmount: Int64 = 0
    var _igpType: IGPMplGetTopupToken.IGPType = .irancellPrepaid

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpRequest = source._igpRequest
      _igpChargeMobileNumber = source._igpChargeMobileNumber
      _igpAmount = source._igpAmount
      _igpType = source._igpType
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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._igpRequest)
        case 2: try decoder.decodeSingularInt64Field(value: &_storage._igpChargeMobileNumber)
        case 3: try decoder.decodeSingularInt64Field(value: &_storage._igpAmount)
        case 4: try decoder.decodeSingularEnumField(value: &_storage._igpType)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._igpRequest {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if _storage._igpChargeMobileNumber != 0 {
        try visitor.visitSingularInt64Field(value: _storage._igpChargeMobileNumber, fieldNumber: 2)
      }
      if _storage._igpAmount != 0 {
        try visitor.visitSingularInt64Field(value: _storage._igpAmount, fieldNumber: 3)
      }
      if _storage._igpType != .irancellPrepaid {
        try visitor.visitSingularEnumField(value: _storage._igpType, fieldNumber: 4)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: IGPMplGetTopupToken, rhs: IGPMplGetTopupToken) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._igpRequest != rhs_storage._igpRequest {return false}
        if _storage._igpChargeMobileNumber != rhs_storage._igpChargeMobileNumber {return false}
        if _storage._igpAmount != rhs_storage._igpAmount {return false}
        if _storage._igpType != rhs_storage._igpType {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension IGPMplGetTopupToken.IGPType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "IRANCELL_PREPAID"),
    1: .same(proto: "IRANCELL_WOW"),
    2: .same(proto: "IRANCELL_WIMAX"),
    3: .same(proto: "IRANCELL_POSTPAID"),
    4: .same(proto: "MCI"),
    5: .same(proto: "RIGHTEL"),
  ]
}

extension IGPMplGetTopupTokenResponse: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "IGPMplGetTopupTokenResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_response"),
    2: .standard(proto: "IGP_status"),
    3: .standard(proto: "IGP_token"),
    4: .standard(proto: "IGP_expire_time"),
    5: .standard(proto: "IGP_message"),
  ]

  fileprivate class _StorageClass {
    var _igpResponse: IGPResponse? = nil
    var _igpStatus: Int32 = 0
    var _igpToken: String = String()
    var _igpExpireTime: Int32 = 0
    var _igpMessage: String = String()

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpResponse = source._igpResponse
      _igpStatus = source._igpStatus
      _igpToken = source._igpToken
      _igpExpireTime = source._igpExpireTime
      _igpMessage = source._igpMessage
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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._igpResponse)
        case 2: try decoder.decodeSingularInt32Field(value: &_storage._igpStatus)
        case 3: try decoder.decodeSingularStringField(value: &_storage._igpToken)
        case 4: try decoder.decodeSingularInt32Field(value: &_storage._igpExpireTime)
        case 5: try decoder.decodeSingularStringField(value: &_storage._igpMessage)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._igpResponse {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if _storage._igpStatus != 0 {
        try visitor.visitSingularInt32Field(value: _storage._igpStatus, fieldNumber: 2)
      }
      if !_storage._igpToken.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpToken, fieldNumber: 3)
      }
      if _storage._igpExpireTime != 0 {
        try visitor.visitSingularInt32Field(value: _storage._igpExpireTime, fieldNumber: 4)
      }
      if !_storage._igpMessage.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpMessage, fieldNumber: 5)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: IGPMplGetTopupTokenResponse, rhs: IGPMplGetTopupTokenResponse) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._igpResponse != rhs_storage._igpResponse {return false}
        if _storage._igpStatus != rhs_storage._igpStatus {return false}
        if _storage._igpToken != rhs_storage._igpToken {return false}
        if _storage._igpExpireTime != rhs_storage._igpExpireTime {return false}
        if _storage._igpMessage != rhs_storage._igpMessage {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
