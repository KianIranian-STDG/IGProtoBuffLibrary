// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: ChannelEditMessage.proto
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

public struct IGPChannelEditMessage: SwiftProtobuf.RequestMessage {
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
  public mutating func clearIgpRequest() {_storage._igpRequest = nil}

  public var igpRoomID: Int64 {
    get {return _storage._igpRoomID}
    set {_uniqueStorage()._igpRoomID = newValue}
  }

  public var igpMessageID: Int64 {
    get {return _storage._igpMessageID}
    set {_uniqueStorage()._igpMessageID = newValue}
  }

  public var igpMessage: String {
    get {return _storage._igpMessage}
    set {_uniqueStorage()._igpMessage = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct IGPChannelEditMessageResponse: SwiftProtobuf.ResponseMessage {
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
  public mutating func clearIgpResponse() {_storage._igpResponse = nil}

  public var igpRoomID: Int64 {
    get {return _storage._igpRoomID}
    set {_uniqueStorage()._igpRoomID = newValue}
  }

  public var igpMessageID: Int64 {
    get {return _storage._igpMessageID}
    set {_uniqueStorage()._igpMessageID = newValue}
  }

  public var igpMessageVersion: Int64 {
    get {return _storage._igpMessageVersion}
    set {_uniqueStorage()._igpMessageVersion = newValue}
  }

  public var igpMessage: String {
    get {return _storage._igpMessage}
    set {_uniqueStorage()._igpMessage = newValue}
  }

  public var igpMessageType: IGPRoomMessageType {
    get {return _storage._igpMessageType}
    set {_uniqueStorage()._igpMessageType = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension IGPChannelEditMessage: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "IGPChannelEditMessage"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_request"),
    2: .standard(proto: "IGP_room_id"),
    3: .standard(proto: "IGP_message_id"),
    4: .standard(proto: "IGP_message"),
  ]

  fileprivate class _StorageClass {
    var _igpRequest: IGPRequest? = nil
    var _igpRoomID: Int64 = 0
    var _igpMessageID: Int64 = 0
    var _igpMessage: String = String()

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpRequest = source._igpRequest
      _igpRoomID = source._igpRoomID
      _igpMessageID = source._igpMessageID
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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._igpRequest)
        case 2: try decoder.decodeSingularInt64Field(value: &_storage._igpRoomID)
        case 3: try decoder.decodeSingularInt64Field(value: &_storage._igpMessageID)
        case 4: try decoder.decodeSingularStringField(value: &_storage._igpMessage)
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
      if _storage._igpRoomID != 0 {
        try visitor.visitSingularInt64Field(value: _storage._igpRoomID, fieldNumber: 2)
      }
      if _storage._igpMessageID != 0 {
        try visitor.visitSingularInt64Field(value: _storage._igpMessageID, fieldNumber: 3)
      }
      if !_storage._igpMessage.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpMessage, fieldNumber: 4)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public func _protobuf_generated_isEqualTo(other: IGPChannelEditMessage) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._igpRequest != other_storage._igpRequest {return false}
        if _storage._igpRoomID != other_storage._igpRoomID {return false}
        if _storage._igpMessageID != other_storage._igpMessageID {return false}
        if _storage._igpMessage != other_storage._igpMessage {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension IGPChannelEditMessageResponse: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "IGPChannelEditMessageResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_response"),
    2: .standard(proto: "IGP_room_id"),
    3: .standard(proto: "IGP_message_id"),
    4: .standard(proto: "IGP_message_version"),
    5: .standard(proto: "IGP_message"),
    6: .standard(proto: "IGP_message_type"),
  ]

  fileprivate class _StorageClass {
    var _igpResponse: IGPResponse? = nil
    var _igpRoomID: Int64 = 0
    var _igpMessageID: Int64 = 0
    var _igpMessageVersion: Int64 = 0
    var _igpMessage: String = String()
    var _igpMessageType: IGPRoomMessageType = .text

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpResponse = source._igpResponse
      _igpRoomID = source._igpRoomID
      _igpMessageID = source._igpMessageID
      _igpMessageVersion = source._igpMessageVersion
      _igpMessage = source._igpMessage
      _igpMessageType = source._igpMessageType
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
        case 2: try decoder.decodeSingularInt64Field(value: &_storage._igpRoomID)
        case 3: try decoder.decodeSingularInt64Field(value: &_storage._igpMessageID)
        case 4: try decoder.decodeSingularInt64Field(value: &_storage._igpMessageVersion)
        case 5: try decoder.decodeSingularStringField(value: &_storage._igpMessage)
        case 6: try decoder.decodeSingularEnumField(value: &_storage._igpMessageType)
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
      if _storage._igpRoomID != 0 {
        try visitor.visitSingularInt64Field(value: _storage._igpRoomID, fieldNumber: 2)
      }
      if _storage._igpMessageID != 0 {
        try visitor.visitSingularInt64Field(value: _storage._igpMessageID, fieldNumber: 3)
      }
      if _storage._igpMessageVersion != 0 {
        try visitor.visitSingularInt64Field(value: _storage._igpMessageVersion, fieldNumber: 4)
      }
      if !_storage._igpMessage.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpMessage, fieldNumber: 5)
      }
      if _storage._igpMessageType != .text {
        try visitor.visitSingularEnumField(value: _storage._igpMessageType, fieldNumber: 6)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public func _protobuf_generated_isEqualTo(other: IGPChannelEditMessageResponse) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._igpResponse != other_storage._igpResponse {return false}
        if _storage._igpRoomID != other_storage._igpRoomID {return false}
        if _storage._igpMessageID != other_storage._igpMessageID {return false}
        if _storage._igpMessageVersion != other_storage._igpMessageVersion {return false}
        if _storage._igpMessage != other_storage._igpMessage {return false}
        if _storage._igpMessageType != other_storage._igpMessageType {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
