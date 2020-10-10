// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: InfoConfig.proto
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

public struct IGPInfoConfig: SwiftProtobuf.RequestMessage {
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

public struct IGPInfoConfigResponse: SwiftProtobuf.ResponseMessage {
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

  public var igpDebugMode: Bool {
    get {return _storage._igpDebugMode}
    set {_uniqueStorage()._igpDebugMode = newValue}
  }

  public var igpDefaultTimeout: Int32 {
    get {return _storage._igpDefaultTimeout}
    set {_uniqueStorage()._igpDefaultTimeout = newValue}
  }

  public var igpOptimizeMode: Bool {
    get {return _storage._igpOptimizeMode}
    set {_uniqueStorage()._igpOptimizeMode = newValue}
  }

  public var igpMaxFileSize: Int64 {
    get {return _storage._igpMaxFileSize}
    set {_uniqueStorage()._igpMaxFileSize = newValue}
  }

  public var igpCaptionLengthMax: Int64 {
    get {return _storage._igpCaptionLengthMax}
    set {_uniqueStorage()._igpCaptionLengthMax = newValue}
  }

  public var igpMessageLengthMax: Int64 {
    get {return _storage._igpMessageLengthMax}
    set {_uniqueStorage()._igpMessageLengthMax = newValue}
  }

  public var igpGroupAddMemberLimit: Int32 {
    get {return _storage._igpGroupAddMemberLimit}
    set {_uniqueStorage()._igpGroupAddMemberLimit = newValue}
  }

  public var igpChannelAddMemberLimit: Int32 {
    get {return _storage._igpChannelAddMemberLimit}
    set {_uniqueStorage()._igpChannelAddMemberLimit = newValue}
  }

  public var igpMicroService: [IGPMicroService] {
    get {return _storage._igpMicroService}
    set {_uniqueStorage()._igpMicroService = newValue}
  }

  public var igpDebugger: IGPInfoConfigResponse.IGPDebugger {
    get {return _storage._igpDebugger}
    set {_uniqueStorage()._igpDebugger = newValue}
  }

  public var igpBaseURL: String {
    get {return _storage._igpBaseURL}
    set {_uniqueStorage()._igpBaseURL = newValue}
  }

  public var igpShowAdvertising: Bool {
    get {return _storage._igpShowAdvertising}
    set {_uniqueStorage()._igpShowAdvertising = newValue}
  }

  public var igpDefaultTab: IGPInfoConfigResponse.IGPTab {
    get {return _storage._igpDefaultTab}
    set {_uniqueStorage()._igpDefaultTab = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum IGPDebugger: SwiftProtobuf.Enum {
    public typealias RawValue = Int
    case crashlytics // = 0
    case sentry // = 1
    case UNRECOGNIZED(Int)

    public init() {
      self = .crashlytics
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .crashlytics
      case 1: self = .sentry
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .crashlytics: return 0
      case .sentry: return 1
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public enum IGPTab: SwiftProtobuf.Enum {
    public typealias RawValue = Int
    case contact // = 0
    case call // = 1
    case chat // = 2
    case iland // = 3
    case setting // = 4
    case UNRECOGNIZED(Int)

    public init() {
      self = .contact
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .contact
      case 1: self = .call
      case 2: self = .chat
      case 3: self = .iland
      case 4: self = .setting
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .contact: return 0
      case .call: return 1
      case .chat: return 2
      case .iland: return 3
      case .setting: return 4
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

#if swift(>=4.2)

extension IGPInfoConfigResponse.IGPDebugger: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [IGPInfoConfigResponse.IGPDebugger] = [
    .crashlytics,
    .sentry,
  ]
}

extension IGPInfoConfigResponse.IGPTab: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [IGPInfoConfigResponse.IGPTab] = [
    .contact,
    .call,
    .chat,
    .iland,
    .setting,
  ]
}

#endif  // swift(>=4.2)

public struct IGPMicroService: SwiftProtobuf.Message {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var igpName: String = String()

  public var igpType: IGPMicroService.IGPConnectionType = .https

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum IGPConnectionType: SwiftProtobuf.Enum {
    public typealias RawValue = Int
    case https // = 0
    case socket // = 1
    case UNRECOGNIZED(Int)

    public init() {
      self = .https
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .https
      case 1: self = .socket
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .https: return 0
      case .socket: return 1
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}
}

#if swift(>=4.2)

extension IGPMicroService.IGPConnectionType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [IGPMicroService.IGPConnectionType] = [
    .https,
    .socket,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension IGPInfoConfig: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "IGPInfoConfig"
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

  public static func ==(lhs: IGPInfoConfig, rhs: IGPInfoConfig) -> Bool {
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

extension IGPInfoConfigResponse: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "IGPInfoConfigResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_response"),
    2: .standard(proto: "IGP_debug_mode"),
    3: .standard(proto: "IGP_default_timeout"),
    4: .standard(proto: "IGP_optimize_mode"),
    5: .standard(proto: "IGP_max_file_size"),
    6: .standard(proto: "IGP_caption_length_max"),
    7: .standard(proto: "IGP_message_length_max"),
    8: .standard(proto: "IGP_group_add_member_limit"),
    9: .standard(proto: "IGP_channel_add_member_limit"),
    10: .standard(proto: "IGP_micro_service"),
    11: .standard(proto: "IGP_debugger"),
    12: .standard(proto: "IGP_base_url"),
    13: .standard(proto: "IGP_show_advertising"),
    14: .standard(proto: "IGP_defaultTab"),
  ]

  fileprivate class _StorageClass {
    var _igpResponse: IGPResponse? = nil
    var _igpDebugMode: Bool = false
    var _igpDefaultTimeout: Int32 = 0
    var _igpOptimizeMode: Bool = false
    var _igpMaxFileSize: Int64 = 0
    var _igpCaptionLengthMax: Int64 = 0
    var _igpMessageLengthMax: Int64 = 0
    var _igpGroupAddMemberLimit: Int32 = 0
    var _igpChannelAddMemberLimit: Int32 = 0
    var _igpMicroService: [IGPMicroService] = []
    var _igpDebugger: IGPInfoConfigResponse.IGPDebugger = .crashlytics
    var _igpBaseURL: String = String()
    var _igpShowAdvertising: Bool = false
    var _igpDefaultTab: IGPInfoConfigResponse.IGPTab = .contact

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpResponse = source._igpResponse
      _igpDebugMode = source._igpDebugMode
      _igpDefaultTimeout = source._igpDefaultTimeout
      _igpOptimizeMode = source._igpOptimizeMode
      _igpMaxFileSize = source._igpMaxFileSize
      _igpCaptionLengthMax = source._igpCaptionLengthMax
      _igpMessageLengthMax = source._igpMessageLengthMax
      _igpGroupAddMemberLimit = source._igpGroupAddMemberLimit
      _igpChannelAddMemberLimit = source._igpChannelAddMemberLimit
      _igpMicroService = source._igpMicroService
      _igpDebugger = source._igpDebugger
      _igpBaseURL = source._igpBaseURL
      _igpShowAdvertising = source._igpShowAdvertising
      _igpDefaultTab = source._igpDefaultTab
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
        case 2: try decoder.decodeSingularBoolField(value: &_storage._igpDebugMode)
        case 3: try decoder.decodeSingularInt32Field(value: &_storage._igpDefaultTimeout)
        case 4: try decoder.decodeSingularBoolField(value: &_storage._igpOptimizeMode)
        case 5: try decoder.decodeSingularInt64Field(value: &_storage._igpMaxFileSize)
        case 6: try decoder.decodeSingularInt64Field(value: &_storage._igpCaptionLengthMax)
        case 7: try decoder.decodeSingularInt64Field(value: &_storage._igpMessageLengthMax)
        case 8: try decoder.decodeSingularInt32Field(value: &_storage._igpGroupAddMemberLimit)
        case 9: try decoder.decodeSingularInt32Field(value: &_storage._igpChannelAddMemberLimit)
        case 10: try decoder.decodeRepeatedMessageField(value: &_storage._igpMicroService)
        case 11: try decoder.decodeSingularEnumField(value: &_storage._igpDebugger)
        case 12: try decoder.decodeSingularStringField(value: &_storage._igpBaseURL)
        case 13: try decoder.decodeSingularBoolField(value: &_storage._igpShowAdvertising)
        case 14: try decoder.decodeSingularEnumField(value: &_storage._igpDefaultTab)
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
      if _storage._igpDebugMode != false {
        try visitor.visitSingularBoolField(value: _storage._igpDebugMode, fieldNumber: 2)
      }
      if _storage._igpDefaultTimeout != 0 {
        try visitor.visitSingularInt32Field(value: _storage._igpDefaultTimeout, fieldNumber: 3)
      }
      if _storage._igpOptimizeMode != false {
        try visitor.visitSingularBoolField(value: _storage._igpOptimizeMode, fieldNumber: 4)
      }
      if _storage._igpMaxFileSize != 0 {
        try visitor.visitSingularInt64Field(value: _storage._igpMaxFileSize, fieldNumber: 5)
      }
      if _storage._igpCaptionLengthMax != 0 {
        try visitor.visitSingularInt64Field(value: _storage._igpCaptionLengthMax, fieldNumber: 6)
      }
      if _storage._igpMessageLengthMax != 0 {
        try visitor.visitSingularInt64Field(value: _storage._igpMessageLengthMax, fieldNumber: 7)
      }
      if _storage._igpGroupAddMemberLimit != 0 {
        try visitor.visitSingularInt32Field(value: _storage._igpGroupAddMemberLimit, fieldNumber: 8)
      }
      if _storage._igpChannelAddMemberLimit != 0 {
        try visitor.visitSingularInt32Field(value: _storage._igpChannelAddMemberLimit, fieldNumber: 9)
      }
      if !_storage._igpMicroService.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._igpMicroService, fieldNumber: 10)
      }
      if _storage._igpDebugger != .crashlytics {
        try visitor.visitSingularEnumField(value: _storage._igpDebugger, fieldNumber: 11)
      }
      if !_storage._igpBaseURL.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpBaseURL, fieldNumber: 12)
      }
      if _storage._igpShowAdvertising != false {
        try visitor.visitSingularBoolField(value: _storage._igpShowAdvertising, fieldNumber: 13)
      }
      if _storage._igpDefaultTab != .contact {
        try visitor.visitSingularEnumField(value: _storage._igpDefaultTab, fieldNumber: 14)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: IGPInfoConfigResponse, rhs: IGPInfoConfigResponse) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._igpResponse != rhs_storage._igpResponse {return false}
        if _storage._igpDebugMode != rhs_storage._igpDebugMode {return false}
        if _storage._igpDefaultTimeout != rhs_storage._igpDefaultTimeout {return false}
        if _storage._igpOptimizeMode != rhs_storage._igpOptimizeMode {return false}
        if _storage._igpMaxFileSize != rhs_storage._igpMaxFileSize {return false}
        if _storage._igpCaptionLengthMax != rhs_storage._igpCaptionLengthMax {return false}
        if _storage._igpMessageLengthMax != rhs_storage._igpMessageLengthMax {return false}
        if _storage._igpGroupAddMemberLimit != rhs_storage._igpGroupAddMemberLimit {return false}
        if _storage._igpChannelAddMemberLimit != rhs_storage._igpChannelAddMemberLimit {return false}
        if _storage._igpMicroService != rhs_storage._igpMicroService {return false}
        if _storage._igpDebugger != rhs_storage._igpDebugger {return false}
        if _storage._igpBaseURL != rhs_storage._igpBaseURL {return false}
        if _storage._igpShowAdvertising != rhs_storage._igpShowAdvertising {return false}
        if _storage._igpDefaultTab != rhs_storage._igpDefaultTab {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension IGPInfoConfigResponse.IGPDebugger: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "CRASHLYTICS"),
    1: .same(proto: "SENTRY"),
  ]
}

extension IGPInfoConfigResponse.IGPTab: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "CONTACT"),
    1: .same(proto: "CALL"),
    2: .same(proto: "CHAT"),
    3: .same(proto: "ILAND"),
    4: .same(proto: "SETTING"),
  ]
}

extension IGPMicroService: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "IGPMicroService"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_name"),
    2: .standard(proto: "IGP_type"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.igpName)
      case 2: try decoder.decodeSingularEnumField(value: &self.igpType)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.igpName.isEmpty {
      try visitor.visitSingularStringField(value: self.igpName, fieldNumber: 1)
    }
    if self.igpType != .https {
      try visitor.visitSingularEnumField(value: self.igpType, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: IGPMicroService, rhs: IGPMicroService) -> Bool {
    if lhs.igpName != rhs.igpName {return false}
    if lhs.igpType != rhs.igpType {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension IGPMicroService.IGPConnectionType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "HTTPS"),
    1: .same(proto: "SOCKET"),
  ]
}
