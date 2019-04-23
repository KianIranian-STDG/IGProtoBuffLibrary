// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: UserSessionGetActiveList.proto
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

public struct IGPUserSessionGetActiveList: SwiftProtobuf.RequestMessage {
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

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct IGPUserSessionGetActiveListResponse: SwiftProtobuf.ResponseMessage {
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

  public var igpSession: [IGPUserSessionGetActiveListResponse.IGPSession] {
    get {return _storage._igpSession}
    set {_uniqueStorage()._igpSession = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public struct IGPSession: SwiftProtobuf.Message {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var igpSessionID: Int64 = 0

    public var igpAppName: String = String()

    public var igpAppID: Int32 = 0

    public var igpAppBuildVersion: Int32 = 0

    public var igpAppVersion: String = String()

    public var igpPlatform: IGPPlatform = .unknownPlatform

    public var igpPlatformVersion: String = String()

    public var igpDevice: IGPDevice = .unknownDevice

    public var igpDeviceName: String = String()

    public var igpLanguage: IGPLanguage = .enUs

    public var igpCountry: String = String()

    public var igpCurrent: Bool = false

    public var igpCreateTime: Int32 = 0

    public var igpActiveTime: Int32 = 0

    public var igpIp: String = String()

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension IGPUserSessionGetActiveList: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "IGPUserSessionGetActiveList"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_request"),
  ]

  fileprivate class _StorageClass {
    var _igpRequest: IGPRequest? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpRequest = source._igpRequest
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
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: IGPUserSessionGetActiveList, rhs: IGPUserSessionGetActiveList) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._igpRequest != rhs_storage._igpRequest {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension IGPUserSessionGetActiveListResponse: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "IGPUserSessionGetActiveListResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_response"),
    2: .standard(proto: "IGP_session"),
  ]

  fileprivate class _StorageClass {
    var _igpResponse: IGPResponse? = nil
    var _igpSession: [IGPUserSessionGetActiveListResponse.IGPSession] = []

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpResponse = source._igpResponse
      _igpSession = source._igpSession
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
        case 2: try decoder.decodeRepeatedMessageField(value: &_storage._igpSession)
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
      if !_storage._igpSession.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._igpSession, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: IGPUserSessionGetActiveListResponse, rhs: IGPUserSessionGetActiveListResponse) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._igpResponse != rhs_storage._igpResponse {return false}
        if _storage._igpSession != rhs_storage._igpSession {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension IGPUserSessionGetActiveListResponse.IGPSession: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = IGPUserSessionGetActiveListResponse.protoMessageName + ".IGPSession"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_session_id"),
    2: .standard(proto: "IGP_app_name"),
    3: .standard(proto: "IGP_app_id"),
    4: .standard(proto: "IGP_app_build_version"),
    5: .standard(proto: "IGP_app_version"),
    6: .standard(proto: "IGP_platform"),
    7: .standard(proto: "IGP_platform_version"),
    8: .standard(proto: "IGP_device"),
    9: .standard(proto: "IGP_device_name"),
    10: .standard(proto: "IGP_language"),
    11: .standard(proto: "IGP_country"),
    12: .standard(proto: "IGP_current"),
    13: .standard(proto: "IGP_create_time"),
    14: .standard(proto: "IGP_active_time"),
    15: .standard(proto: "IGP_ip"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt64Field(value: &self.igpSessionID)
      case 2: try decoder.decodeSingularStringField(value: &self.igpAppName)
      case 3: try decoder.decodeSingularInt32Field(value: &self.igpAppID)
      case 4: try decoder.decodeSingularInt32Field(value: &self.igpAppBuildVersion)
      case 5: try decoder.decodeSingularStringField(value: &self.igpAppVersion)
      case 6: try decoder.decodeSingularEnumField(value: &self.igpPlatform)
      case 7: try decoder.decodeSingularStringField(value: &self.igpPlatformVersion)
      case 8: try decoder.decodeSingularEnumField(value: &self.igpDevice)
      case 9: try decoder.decodeSingularStringField(value: &self.igpDeviceName)
      case 10: try decoder.decodeSingularEnumField(value: &self.igpLanguage)
      case 11: try decoder.decodeSingularStringField(value: &self.igpCountry)
      case 12: try decoder.decodeSingularBoolField(value: &self.igpCurrent)
      case 13: try decoder.decodeSingularInt32Field(value: &self.igpCreateTime)
      case 14: try decoder.decodeSingularInt32Field(value: &self.igpActiveTime)
      case 15: try decoder.decodeSingularStringField(value: &self.igpIp)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.igpSessionID != 0 {
      try visitor.visitSingularInt64Field(value: self.igpSessionID, fieldNumber: 1)
    }
    if !self.igpAppName.isEmpty {
      try visitor.visitSingularStringField(value: self.igpAppName, fieldNumber: 2)
    }
    if self.igpAppID != 0 {
      try visitor.visitSingularInt32Field(value: self.igpAppID, fieldNumber: 3)
    }
    if self.igpAppBuildVersion != 0 {
      try visitor.visitSingularInt32Field(value: self.igpAppBuildVersion, fieldNumber: 4)
    }
    if !self.igpAppVersion.isEmpty {
      try visitor.visitSingularStringField(value: self.igpAppVersion, fieldNumber: 5)
    }
    if self.igpPlatform != .unknownPlatform {
      try visitor.visitSingularEnumField(value: self.igpPlatform, fieldNumber: 6)
    }
    if !self.igpPlatformVersion.isEmpty {
      try visitor.visitSingularStringField(value: self.igpPlatformVersion, fieldNumber: 7)
    }
    if self.igpDevice != .unknownDevice {
      try visitor.visitSingularEnumField(value: self.igpDevice, fieldNumber: 8)
    }
    if !self.igpDeviceName.isEmpty {
      try visitor.visitSingularStringField(value: self.igpDeviceName, fieldNumber: 9)
    }
    if self.igpLanguage != .enUs {
      try visitor.visitSingularEnumField(value: self.igpLanguage, fieldNumber: 10)
    }
    if !self.igpCountry.isEmpty {
      try visitor.visitSingularStringField(value: self.igpCountry, fieldNumber: 11)
    }
    if self.igpCurrent != false {
      try visitor.visitSingularBoolField(value: self.igpCurrent, fieldNumber: 12)
    }
    if self.igpCreateTime != 0 {
      try visitor.visitSingularInt32Field(value: self.igpCreateTime, fieldNumber: 13)
    }
    if self.igpActiveTime != 0 {
      try visitor.visitSingularInt32Field(value: self.igpActiveTime, fieldNumber: 14)
    }
    if !self.igpIp.isEmpty {
      try visitor.visitSingularStringField(value: self.igpIp, fieldNumber: 15)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: IGPUserSessionGetActiveListResponse.IGPSession, rhs: IGPUserSessionGetActiveListResponse.IGPSession) -> Bool {
    if lhs.igpSessionID != rhs.igpSessionID {return false}
    if lhs.igpAppName != rhs.igpAppName {return false}
    if lhs.igpAppID != rhs.igpAppID {return false}
    if lhs.igpAppBuildVersion != rhs.igpAppBuildVersion {return false}
    if lhs.igpAppVersion != rhs.igpAppVersion {return false}
    if lhs.igpPlatform != rhs.igpPlatform {return false}
    if lhs.igpPlatformVersion != rhs.igpPlatformVersion {return false}
    if lhs.igpDevice != rhs.igpDevice {return false}
    if lhs.igpDeviceName != rhs.igpDeviceName {return false}
    if lhs.igpLanguage != rhs.igpLanguage {return false}
    if lhs.igpCountry != rhs.igpCountry {return false}
    if lhs.igpCurrent != rhs.igpCurrent {return false}
    if lhs.igpCreateTime != rhs.igpCreateTime {return false}
    if lhs.igpActiveTime != rhs.igpActiveTime {return false}
    if lhs.igpIp != rhs.igpIp {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
