// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: ClientCondition.proto
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

public struct IGPClientCondition: SwiftProtobuf.RequestMessage {
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

  public var igpRooms: [IGPClientCondition.IGPRoom] {
    get {return _storage._igpRooms}
    set {_uniqueStorage()._igpRooms = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public struct IGPRoom: SwiftProtobuf.Message {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var igpRoomID: Int64 = 0

    public var igpMessageVersion: Int64 = 0

    public var igpStatusVersion: Int64 = 0

    public var igpDeleteVersion: Int64 = 0

    ///DEPRECATED
    public var igpOfflineDeletedDeprecated: [Int64] = []

    public var igpOfflineEdited: [IGPClientCondition.IGPRoom.IGPOfflineEdited] = []

    public var igpOfflineSeen: [Int64] = []

    public var igpClearID: Int64 = 0

    public var igpCacheStartID: Int64 = 0

    public var igpCacheEndID: Int64 = 0

    public var igpOfflineMute: IGPClientCondition.IGPRoom.IGPOfflineMute = .unchanged

    public var igpOfflineListened: [Int64] = []

    public var igpOfflineDeleted: [IGPClientCondition.IGPRoom.IGPOfflineDeleted] = []

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public enum IGPOfflineMute: SwiftProtobuf.Enum {
      public typealias RawValue = Int
      case unchanged // = 0
      case muted // = 1
      case unmuted // = 2
      case UNRECOGNIZED(Int)

      public init() {
        self = .unchanged
      }

      public init?(rawValue: Int) {
        switch rawValue {
        case 0: self = .unchanged
        case 1: self = .muted
        case 2: self = .unmuted
        default: self = .UNRECOGNIZED(rawValue)
        }
      }

      public var rawValue: Int {
        switch self {
        case .unchanged: return 0
        case .muted: return 1
        case .unmuted: return 2
        case .UNRECOGNIZED(let i): return i
        }
      }

    }

    public struct IGPOfflineEdited: SwiftProtobuf.Message {
      // SwiftProtobuf.Message conformance is added in an extension below. See the
      // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
      // methods supported on all messages.

      public var igpMessageID: Int64 = 0

      public var igpMessage: String = String()

      public var unknownFields = SwiftProtobuf.UnknownStorage()

      public init() {}
    }

    public struct IGPOfflineDeleted: SwiftProtobuf.Message {
      // SwiftProtobuf.Message conformance is added in an extension below. See the
      // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
      // methods supported on all messages.

      public var igpMessageID: Int64 = 0

      public var igpBoth: Bool = false

      public var unknownFields = SwiftProtobuf.UnknownStorage()

      public init() {}
    }

    public init() {}
  }

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct IGPClientConditionResponse: SwiftProtobuf.ResponseMessage {
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

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension IGPClientCondition: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "IGPClientCondition"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_request"),
    2: .standard(proto: "IGP_rooms"),
  ]

  fileprivate class _StorageClass {
    var _igpRequest: IGPRequest? = nil
    var _igpRooms: [IGPClientCondition.IGPRoom] = []

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpRequest = source._igpRequest
      _igpRooms = source._igpRooms
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
        case 2: try decoder.decodeRepeatedMessageField(value: &_storage._igpRooms)
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
      if !_storage._igpRooms.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._igpRooms, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: IGPClientCondition, rhs: IGPClientCondition) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._igpRequest != rhs_storage._igpRequest {return false}
        if _storage._igpRooms != rhs_storage._igpRooms {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension IGPClientCondition.IGPRoom: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = IGPClientCondition.protoMessageName + ".IGPRoom"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    2: .standard(proto: "IGP_room_id"),
    3: .standard(proto: "IGP_message_version"),
    4: .standard(proto: "IGP_status_version"),
    5: .standard(proto: "IGP_delete_version"),
    6: .standard(proto: "IGP_offline_deleted_deprecated"),
    7: .standard(proto: "IGP_offline_edited"),
    8: .standard(proto: "IGP_offline_seen"),
    9: .standard(proto: "IGP_clear_id"),
    10: .standard(proto: "IGP_cache_start_id"),
    11: .standard(proto: "IGP_cache_end_id"),
    12: .standard(proto: "IGP_offline_mute"),
    13: .standard(proto: "IGP_offline_listened"),
    14: .standard(proto: "IGP_offline_deleted"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 2: try decoder.decodeSingularInt64Field(value: &self.igpRoomID)
      case 3: try decoder.decodeSingularInt64Field(value: &self.igpMessageVersion)
      case 4: try decoder.decodeSingularInt64Field(value: &self.igpStatusVersion)
      case 5: try decoder.decodeSingularInt64Field(value: &self.igpDeleteVersion)
      case 6: try decoder.decodeRepeatedInt64Field(value: &self.igpOfflineDeletedDeprecated)
      case 7: try decoder.decodeRepeatedMessageField(value: &self.igpOfflineEdited)
      case 8: try decoder.decodeRepeatedInt64Field(value: &self.igpOfflineSeen)
      case 9: try decoder.decodeSingularInt64Field(value: &self.igpClearID)
      case 10: try decoder.decodeSingularInt64Field(value: &self.igpCacheStartID)
      case 11: try decoder.decodeSingularInt64Field(value: &self.igpCacheEndID)
      case 12: try decoder.decodeSingularEnumField(value: &self.igpOfflineMute)
      case 13: try decoder.decodeRepeatedInt64Field(value: &self.igpOfflineListened)
      case 14: try decoder.decodeRepeatedMessageField(value: &self.igpOfflineDeleted)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.igpRoomID != 0 {
      try visitor.visitSingularInt64Field(value: self.igpRoomID, fieldNumber: 2)
    }
    if self.igpMessageVersion != 0 {
      try visitor.visitSingularInt64Field(value: self.igpMessageVersion, fieldNumber: 3)
    }
    if self.igpStatusVersion != 0 {
      try visitor.visitSingularInt64Field(value: self.igpStatusVersion, fieldNumber: 4)
    }
    if self.igpDeleteVersion != 0 {
      try visitor.visitSingularInt64Field(value: self.igpDeleteVersion, fieldNumber: 5)
    }
    if !self.igpOfflineDeletedDeprecated.isEmpty {
      try visitor.visitPackedInt64Field(value: self.igpOfflineDeletedDeprecated, fieldNumber: 6)
    }
    if !self.igpOfflineEdited.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.igpOfflineEdited, fieldNumber: 7)
    }
    if !self.igpOfflineSeen.isEmpty {
      try visitor.visitPackedInt64Field(value: self.igpOfflineSeen, fieldNumber: 8)
    }
    if self.igpClearID != 0 {
      try visitor.visitSingularInt64Field(value: self.igpClearID, fieldNumber: 9)
    }
    if self.igpCacheStartID != 0 {
      try visitor.visitSingularInt64Field(value: self.igpCacheStartID, fieldNumber: 10)
    }
    if self.igpCacheEndID != 0 {
      try visitor.visitSingularInt64Field(value: self.igpCacheEndID, fieldNumber: 11)
    }
    if self.igpOfflineMute != .unchanged {
      try visitor.visitSingularEnumField(value: self.igpOfflineMute, fieldNumber: 12)
    }
    if !self.igpOfflineListened.isEmpty {
      try visitor.visitPackedInt64Field(value: self.igpOfflineListened, fieldNumber: 13)
    }
    if !self.igpOfflineDeleted.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.igpOfflineDeleted, fieldNumber: 14)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: IGPClientCondition.IGPRoom, rhs: IGPClientCondition.IGPRoom) -> Bool {
    if lhs.igpRoomID != rhs.igpRoomID {return false}
    if lhs.igpMessageVersion != rhs.igpMessageVersion {return false}
    if lhs.igpStatusVersion != rhs.igpStatusVersion {return false}
    if lhs.igpDeleteVersion != rhs.igpDeleteVersion {return false}
    if lhs.igpOfflineDeletedDeprecated != rhs.igpOfflineDeletedDeprecated {return false}
    if lhs.igpOfflineEdited != rhs.igpOfflineEdited {return false}
    if lhs.igpOfflineSeen != rhs.igpOfflineSeen {return false}
    if lhs.igpClearID != rhs.igpClearID {return false}
    if lhs.igpCacheStartID != rhs.igpCacheStartID {return false}
    if lhs.igpCacheEndID != rhs.igpCacheEndID {return false}
    if lhs.igpOfflineMute != rhs.igpOfflineMute {return false}
    if lhs.igpOfflineListened != rhs.igpOfflineListened {return false}
    if lhs.igpOfflineDeleted != rhs.igpOfflineDeleted {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension IGPClientCondition.IGPRoom.IGPOfflineMute: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNCHANGED"),
    1: .same(proto: "MUTED"),
    2: .same(proto: "UNMUTED"),
  ]
}

extension IGPClientCondition.IGPRoom.IGPOfflineEdited: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = IGPClientCondition.IGPRoom.protoMessageName + ".IGPOfflineEdited"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_message_id"),
    2: .standard(proto: "IGP_message"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt64Field(value: &self.igpMessageID)
      case 2: try decoder.decodeSingularStringField(value: &self.igpMessage)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.igpMessageID != 0 {
      try visitor.visitSingularInt64Field(value: self.igpMessageID, fieldNumber: 1)
    }
    if !self.igpMessage.isEmpty {
      try visitor.visitSingularStringField(value: self.igpMessage, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: IGPClientCondition.IGPRoom.IGPOfflineEdited, rhs: IGPClientCondition.IGPRoom.IGPOfflineEdited) -> Bool {
    if lhs.igpMessageID != rhs.igpMessageID {return false}
    if lhs.igpMessage != rhs.igpMessage {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension IGPClientCondition.IGPRoom.IGPOfflineDeleted: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = IGPClientCondition.IGPRoom.protoMessageName + ".IGPOfflineDeleted"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_message_id"),
    4: .standard(proto: "IGP_both"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt64Field(value: &self.igpMessageID)
      case 4: try decoder.decodeSingularBoolField(value: &self.igpBoth)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.igpMessageID != 0 {
      try visitor.visitSingularInt64Field(value: self.igpMessageID, fieldNumber: 1)
    }
    if self.igpBoth != false {
      try visitor.visitSingularBoolField(value: self.igpBoth, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: IGPClientCondition.IGPRoom.IGPOfflineDeleted, rhs: IGPClientCondition.IGPRoom.IGPOfflineDeleted) -> Bool {
    if lhs.igpMessageID != rhs.igpMessageID {return false}
    if lhs.igpBoth != rhs.igpBoth {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension IGPClientConditionResponse: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "IGPClientConditionResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_response"),
  ]

  fileprivate class _StorageClass {
    var _igpResponse: IGPResponse? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpResponse = source._igpResponse
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
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: IGPClientConditionResponse, rhs: IGPClientConditionResponse) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._igpResponse != rhs_storage._igpResponse {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
