// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: GroupChangeMemberRights.proto
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

public struct IGPGroupChangeMemberRights: SwiftProtobuf.RequestMessage {
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

  public var igpRoomID: Int64 {
    get {return _storage._igpRoomID}
    set {_uniqueStorage()._igpRoomID = newValue}
  }

  public var igpUserID: Int64 {
    get {return _storage._igpUserID}
    set {_uniqueStorage()._igpUserID = newValue}
  }

  public var igpPermission: IGPGroupChangeMemberRights.IGPMemberRights {
    get {return _storage._igpPermission ?? IGPGroupChangeMemberRights.IGPMemberRights()}
    set {_uniqueStorage()._igpPermission = newValue}
  }
  /// Returns true if `igpPermission` has been explicitly set.
  public var hasIgpPermission: Bool {return _storage._igpPermission != nil}
  /// Clears the value of `igpPermission`. Subsequent reads from it will return its default value.
  public mutating func clearIgpPermission() {_uniqueStorage()._igpPermission = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public struct IGPMemberRights: SwiftProtobuf.Message {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var igpSendText: Bool = false

    public var igpSendMedia: Bool = false

    public var igpSendGif: Bool = false

    public var igpSendSticker: Bool = false

    public var igpSendLink: Bool = false

    public var igpPinMessage: Bool = false

    public var igpAddMember: Bool = false

    public var igpGetMember: Bool = false

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct IGPGroupChangeMemberRoleResponse: SwiftProtobuf.ResponseMessage {
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

  public var igpRoomID: Int64 {
    get {return _storage._igpRoomID}
    set {_uniqueStorage()._igpRoomID = newValue}
  }

  public var igpUserID: Int64 {
    get {return _storage._igpUserID}
    set {_uniqueStorage()._igpUserID = newValue}
  }

  public var igpPermission: IGPGroupChangeMemberRights.IGPMemberRights {
    get {return _storage._igpPermission ?? IGPGroupChangeMemberRights.IGPMemberRights()}
    set {_uniqueStorage()._igpPermission = newValue}
  }
  /// Returns true if `igpPermission` has been explicitly set.
  public var hasIgpPermission: Bool {return _storage._igpPermission != nil}
  /// Clears the value of `igpPermission`. Subsequent reads from it will return its default value.
  public mutating func clearIgpPermission() {_uniqueStorage()._igpPermission = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension IGPGroupChangeMemberRights: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "IGPGroupChangeMemberRights"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_request"),
    2: .standard(proto: "IGP_room_id"),
    3: .standard(proto: "IGP_user_id"),
    4: .standard(proto: "IGP_permission"),
  ]

  fileprivate class _StorageClass {
    var _igpRequest: IGPRequest? = nil
    var _igpRoomID: Int64 = 0
    var _igpUserID: Int64 = 0
    var _igpPermission: IGPGroupChangeMemberRights.IGPMemberRights? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpRequest = source._igpRequest
      _igpRoomID = source._igpRoomID
      _igpUserID = source._igpUserID
      _igpPermission = source._igpPermission
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
        case 3: try decoder.decodeSingularInt64Field(value: &_storage._igpUserID)
        case 4: try decoder.decodeSingularMessageField(value: &_storage._igpPermission)
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
      if _storage._igpUserID != 0 {
        try visitor.visitSingularInt64Field(value: _storage._igpUserID, fieldNumber: 3)
      }
      if let v = _storage._igpPermission {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: IGPGroupChangeMemberRights, rhs: IGPGroupChangeMemberRights) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._igpRequest != rhs_storage._igpRequest {return false}
        if _storage._igpRoomID != rhs_storage._igpRoomID {return false}
        if _storage._igpUserID != rhs_storage._igpUserID {return false}
        if _storage._igpPermission != rhs_storage._igpPermission {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension IGPGroupChangeMemberRights.IGPMemberRights: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = IGPGroupChangeMemberRights.protoMessageName + ".IGPMemberRights"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_send_text"),
    3: .standard(proto: "IGP_send_media"),
    4: .standard(proto: "IGP_send_gif"),
    5: .standard(proto: "IGP_send_sticker"),
    6: .standard(proto: "IGP_send_link"),
    7: .standard(proto: "IGP_pin_message"),
    8: .standard(proto: "IGP_add_member"),
    9: .standard(proto: "IGP_get_member"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBoolField(value: &self.igpSendText)
      case 3: try decoder.decodeSingularBoolField(value: &self.igpSendMedia)
      case 4: try decoder.decodeSingularBoolField(value: &self.igpSendGif)
      case 5: try decoder.decodeSingularBoolField(value: &self.igpSendSticker)
      case 6: try decoder.decodeSingularBoolField(value: &self.igpSendLink)
      case 7: try decoder.decodeSingularBoolField(value: &self.igpPinMessage)
      case 8: try decoder.decodeSingularBoolField(value: &self.igpAddMember)
      case 9: try decoder.decodeSingularBoolField(value: &self.igpGetMember)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.igpSendText != false {
      try visitor.visitSingularBoolField(value: self.igpSendText, fieldNumber: 1)
    }
    if self.igpSendMedia != false {
      try visitor.visitSingularBoolField(value: self.igpSendMedia, fieldNumber: 3)
    }
    if self.igpSendGif != false {
      try visitor.visitSingularBoolField(value: self.igpSendGif, fieldNumber: 4)
    }
    if self.igpSendSticker != false {
      try visitor.visitSingularBoolField(value: self.igpSendSticker, fieldNumber: 5)
    }
    if self.igpSendLink != false {
      try visitor.visitSingularBoolField(value: self.igpSendLink, fieldNumber: 6)
    }
    if self.igpPinMessage != false {
      try visitor.visitSingularBoolField(value: self.igpPinMessage, fieldNumber: 7)
    }
    if self.igpAddMember != false {
      try visitor.visitSingularBoolField(value: self.igpAddMember, fieldNumber: 8)
    }
    if self.igpGetMember != false {
      try visitor.visitSingularBoolField(value: self.igpGetMember, fieldNumber: 9)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: IGPGroupChangeMemberRights.IGPMemberRights, rhs: IGPGroupChangeMemberRights.IGPMemberRights) -> Bool {
    if lhs.igpSendText != rhs.igpSendText {return false}
    if lhs.igpSendMedia != rhs.igpSendMedia {return false}
    if lhs.igpSendGif != rhs.igpSendGif {return false}
    if lhs.igpSendSticker != rhs.igpSendSticker {return false}
    if lhs.igpSendLink != rhs.igpSendLink {return false}
    if lhs.igpPinMessage != rhs.igpPinMessage {return false}
    if lhs.igpAddMember != rhs.igpAddMember {return false}
    if lhs.igpGetMember != rhs.igpGetMember {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension IGPGroupChangeMemberRoleResponse: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "IGPGroupChangeMemberRoleResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_response"),
    2: .standard(proto: "IGP_room_id"),
    3: .standard(proto: "IGP_user_id"),
    4: .standard(proto: "IGP_permission"),
  ]

  fileprivate class _StorageClass {
    var _igpResponse: IGPResponse? = nil
    var _igpRoomID: Int64 = 0
    var _igpUserID: Int64 = 0
    var _igpPermission: IGPGroupChangeMemberRights.IGPMemberRights? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpResponse = source._igpResponse
      _igpRoomID = source._igpRoomID
      _igpUserID = source._igpUserID
      _igpPermission = source._igpPermission
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
        case 3: try decoder.decodeSingularInt64Field(value: &_storage._igpUserID)
        case 4: try decoder.decodeSingularMessageField(value: &_storage._igpPermission)
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
      if _storage._igpUserID != 0 {
        try visitor.visitSingularInt64Field(value: _storage._igpUserID, fieldNumber: 3)
      }
      if let v = _storage._igpPermission {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: IGPGroupChangeMemberRoleResponse, rhs: IGPGroupChangeMemberRoleResponse) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._igpResponse != rhs_storage._igpResponse {return false}
        if _storage._igpRoomID != rhs_storage._igpRoomID {return false}
        if _storage._igpUserID != rhs_storage._igpUserID {return false}
        if _storage._igpPermission != rhs_storage._igpPermission {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
