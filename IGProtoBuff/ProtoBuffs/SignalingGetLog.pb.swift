// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: SignalingGetLog.proto
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

public struct IGPSignalingGetLog: SwiftProtobuf.RequestMessage {
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

  public var igpPagination: IGPPagination {
    get {return _storage._igpPagination ?? IGPPagination()}
    set {_uniqueStorage()._igpPagination = newValue}
  }
  /// Returns true if `igpPagination` has been explicitly set.
  public var hasIgpPagination: Bool {return _storage._igpPagination != nil}
  /// Clears the value of `igpPagination`. Subsequent reads from it will return its default value.
  public mutating func clearIgpPagination() {_uniqueStorage()._igpPagination = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct IGPSignalingGetLogResponse: SwiftProtobuf.ResponseMessage {
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

  public var igpSignalingLog: [IGPSignalingGetLogResponse.IGPSignalingLog] {
    get {return _storage._igpSignalingLog}
    set {_uniqueStorage()._igpSignalingLog = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public struct IGPSignalingLog: SwiftProtobuf.Message {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var igpID: Int64 {
      get {return _storage._igpID}
      set {_uniqueStorage()._igpID = newValue}
    }

    public var igpType: IGPSignalingOffer.IGPType {
      get {return _storage._igpType}
      set {_uniqueStorage()._igpType = newValue}
    }

    public var igpStatus: IGPSignalingGetLogResponse.IGPSignalingLog.IGPStatus {
      get {return _storage._igpStatus}
      set {_uniqueStorage()._igpStatus = newValue}
    }

    public var igpPeer: IGPRegisteredUser {
      get {return _storage._igpPeer ?? IGPRegisteredUser()}
      set {_uniqueStorage()._igpPeer = newValue}
    }
    /// Returns true if `igpPeer` has been explicitly set.
    public var hasIgpPeer: Bool {return _storage._igpPeer != nil}
    /// Clears the value of `igpPeer`. Subsequent reads from it will return its default value.
    public mutating func clearIgpPeer() {_uniqueStorage()._igpPeer = nil}

    public var igpOfferTime: Int32 {
      get {return _storage._igpOfferTime}
      set {_uniqueStorage()._igpOfferTime = newValue}
    }

    public var igpDuration: Int32 {
      get {return _storage._igpDuration}
      set {_uniqueStorage()._igpDuration = newValue}
    }

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public enum IGPStatus: SwiftProtobuf.Enum {
      public typealias RawValue = Int
      case missed // = 0
      case canceled // = 1
      case incoming // = 2
      case outgoing // = 3
      case UNRECOGNIZED(Int)

      public init() {
        self = .missed
      }

      public init?(rawValue: Int) {
        switch rawValue {
        case 0: self = .missed
        case 1: self = .canceled
        case 2: self = .incoming
        case 3: self = .outgoing
        default: self = .UNRECOGNIZED(rawValue)
        }
      }

      public var rawValue: Int {
        switch self {
        case .missed: return 0
        case .canceled: return 1
        case .incoming: return 2
        case .outgoing: return 3
        case .UNRECOGNIZED(let i): return i
        }
      }

    }

    public init() {}

    fileprivate var _storage = _StorageClass.defaultInstance
  }

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension IGPSignalingGetLog: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "IGPSignalingGetLog"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_request"),
    2: .standard(proto: "IGP_pagination"),
  ]

  fileprivate class _StorageClass {
    var _igpRequest: IGPRequest? = nil
    var _igpPagination: IGPPagination? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpRequest = source._igpRequest
      _igpPagination = source._igpPagination
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
        case 2: try decoder.decodeSingularMessageField(value: &_storage._igpPagination)
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
      if let v = _storage._igpPagination {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: IGPSignalingGetLog, rhs: IGPSignalingGetLog) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._igpRequest != rhs_storage._igpRequest {return false}
        if _storage._igpPagination != rhs_storage._igpPagination {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension IGPSignalingGetLogResponse: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "IGPSignalingGetLogResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_response"),
    2: .standard(proto: "IGP_signaling_log"),
  ]

  fileprivate class _StorageClass {
    var _igpResponse: IGPResponse? = nil
    var _igpSignalingLog: [IGPSignalingGetLogResponse.IGPSignalingLog] = []

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpResponse = source._igpResponse
      _igpSignalingLog = source._igpSignalingLog
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
        case 2: try decoder.decodeRepeatedMessageField(value: &_storage._igpSignalingLog)
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
      if !_storage._igpSignalingLog.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._igpSignalingLog, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: IGPSignalingGetLogResponse, rhs: IGPSignalingGetLogResponse) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._igpResponse != rhs_storage._igpResponse {return false}
        if _storage._igpSignalingLog != rhs_storage._igpSignalingLog {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension IGPSignalingGetLogResponse.IGPSignalingLog: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = IGPSignalingGetLogResponse.protoMessageName + ".IGPSignalingLog"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_id"),
    2: .standard(proto: "IGP_type"),
    3: .standard(proto: "IGP_status"),
    4: .standard(proto: "IGP_peer"),
    5: .standard(proto: "IGP_offer_time"),
    6: .standard(proto: "IGP_duration"),
  ]

  fileprivate class _StorageClass {
    var _igpID: Int64 = 0
    var _igpType: IGPSignalingOffer.IGPType = .voiceCalling
    var _igpStatus: IGPSignalingGetLogResponse.IGPSignalingLog.IGPStatus = .missed
    var _igpPeer: IGPRegisteredUser? = nil
    var _igpOfferTime: Int32 = 0
    var _igpDuration: Int32 = 0

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpID = source._igpID
      _igpType = source._igpType
      _igpStatus = source._igpStatus
      _igpPeer = source._igpPeer
      _igpOfferTime = source._igpOfferTime
      _igpDuration = source._igpDuration
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
        case 1: try decoder.decodeSingularInt64Field(value: &_storage._igpID)
        case 2: try decoder.decodeSingularEnumField(value: &_storage._igpType)
        case 3: try decoder.decodeSingularEnumField(value: &_storage._igpStatus)
        case 4: try decoder.decodeSingularMessageField(value: &_storage._igpPeer)
        case 5: try decoder.decodeSingularInt32Field(value: &_storage._igpOfferTime)
        case 6: try decoder.decodeSingularInt32Field(value: &_storage._igpDuration)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if _storage._igpID != 0 {
        try visitor.visitSingularInt64Field(value: _storage._igpID, fieldNumber: 1)
      }
      if _storage._igpType != .voiceCalling {
        try visitor.visitSingularEnumField(value: _storage._igpType, fieldNumber: 2)
      }
      if _storage._igpStatus != .missed {
        try visitor.visitSingularEnumField(value: _storage._igpStatus, fieldNumber: 3)
      }
      if let v = _storage._igpPeer {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
      if _storage._igpOfferTime != 0 {
        try visitor.visitSingularInt32Field(value: _storage._igpOfferTime, fieldNumber: 5)
      }
      if _storage._igpDuration != 0 {
        try visitor.visitSingularInt32Field(value: _storage._igpDuration, fieldNumber: 6)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: IGPSignalingGetLogResponse.IGPSignalingLog, rhs: IGPSignalingGetLogResponse.IGPSignalingLog) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._igpID != rhs_storage._igpID {return false}
        if _storage._igpType != rhs_storage._igpType {return false}
        if _storage._igpStatus != rhs_storage._igpStatus {return false}
        if _storage._igpPeer != rhs_storage._igpPeer {return false}
        if _storage._igpOfferTime != rhs_storage._igpOfferTime {return false}
        if _storage._igpDuration != rhs_storage._igpDuration {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension IGPSignalingGetLogResponse.IGPSignalingLog.IGPStatus: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "MISSED"),
    1: .same(proto: "CANCELED"),
    2: .same(proto: "INCOMING"),
    3: .same(proto: "OUTGOING"),
  ]
}
