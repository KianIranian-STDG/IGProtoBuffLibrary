/// Generated by the Protocol Buffers 3.2.0 compiler.  DO NOT EDIT!
/// Protobuf-swift version: 3.0.13
/// Source file "GroupCheckUsername.proto"
/// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct GroupCheckUsernameRoot {
    public static let `default` = GroupCheckUsernameRoot()
    public var extensionRegistry:ExtensionRegistry

    init() {
        extensionRegistry = ExtensionRegistry()
        registerAllExtensions(registry: extensionRegistry)
        RequestRoot.default.registerAllExtensions(registry: extensionRegistry)
        ResponseRoot.default.registerAllExtensions(registry: extensionRegistry)
    }
    public func registerAllExtensions(registry: ExtensionRegistry) {
    }
}

final public class IGPGroupCheckUsername : GeneratedMessage {

    public static func == (lhs: IGPGroupCheckUsername, rhs: IGPGroupCheckUsername) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasIgpRequest == rhs.hasIgpRequest) && (!lhs.hasIgpRequest || lhs.igpRequest == rhs.igpRequest)
        fieldCheck = fieldCheck && (lhs.hasIgpUsername == rhs.hasIgpUsername) && (!lhs.hasIgpUsername || lhs.igpUsername == rhs.igpUsername)
        fieldCheck = fieldCheck && (lhs.hasIgpRoomId == rhs.hasIgpRoomId) && (!lhs.hasIgpRoomId || lhs.igpRoomId == rhs.igpRoomId)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }



    //iGap Properties declaration start



    //iGap Properties declaration end

    public fileprivate(set) var igpRequest:IGPRequest!
    public fileprivate(set) var hasIgpRequest:Bool = false
    public fileprivate(set) var igpUsername:String = ""
    public fileprivate(set) var hasIgpUsername:Bool = false

    public fileprivate(set) var igpRoomId:Int64 = Int64(0)
    public fileprivate(set) var hasIgpRoomId:Bool = false

    required public init() {
        super.init()
    }
    override public func isInitialized() -> Bool {
        return true
    }
    override public func writeTo(codedOutputStream: CodedOutputStream) throws {
        if hasIgpRequest {
            try codedOutputStream.writeMessage(fieldNumber: 1, value:igpRequest)
        }
        if hasIgpUsername {
            try codedOutputStream.writeString(fieldNumber: 2, value:igpUsername)
        }
        if hasIgpRoomId {
            try codedOutputStream.writeInt64(fieldNumber: 3, value:igpRoomId)
        }
        try unknownFields.writeTo(codedOutputStream: codedOutputStream)
    }
    override public func serializedSize() -> Int32 {
        var serialize_size:Int32 = memoizedSerializedSize
        if serialize_size != -1 {
         return serialize_size
        }

        serialize_size = 0
        if hasIgpRequest {
            if let varSizeigpRequest = igpRequest?.computeMessageSize(fieldNumber: 1) {
                serialize_size += varSizeigpRequest
            }
        }
        if hasIgpUsername {
            serialize_size += igpUsername.computeStringSize(fieldNumber: 2)
        }
        if hasIgpRoomId {
            serialize_size += igpRoomId.computeInt64Size(fieldNumber: 3)
        }
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> IGPGroupCheckUsername.Builder {
        return IGPGroupCheckUsername.classBuilder() as! IGPGroupCheckUsername.Builder
    }
    public func getBuilder() -> IGPGroupCheckUsername.Builder {
        return classBuilder() as! IGPGroupCheckUsername.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPGroupCheckUsername.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPGroupCheckUsername.Builder()
    }
    public func toBuilder() throws -> IGPGroupCheckUsername.Builder {
        return try IGPGroupCheckUsername.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPGroupCheckUsername) throws -> IGPGroupCheckUsername.Builder {
        return try IGPGroupCheckUsername.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        guard isInitialized() else {
            throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
        }

        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasIgpRequest {
            jsonMap["IGPRequest"] = try igpRequest.encode()
        }
        if hasIgpUsername {
            jsonMap["IGPUsername"] = igpUsername
        }
        if hasIgpRoomId {
            jsonMap["IGPRoomId"] = "\(igpRoomId)"
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPGroupCheckUsername {
        return try IGPGroupCheckUsername.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPGroupCheckUsername {
        return try IGPGroupCheckUsername.Builder.fromJSONToBuilder(data:data).build()
    }
    override public func getDescription(indent:String) throws -> String {
        var output = ""
        if hasIgpRequest {
            output += "\(indent) igpRequest {\n"
            if let outDescIgpRequest = igpRequest {
                output += try outDescIgpRequest.getDescription(indent: "\(indent)  ")
            }
            output += "\(indent) }\n"
        }
        if hasIgpUsername {
            output += "\(indent) igpUsername: \(igpUsername) \n"
        }
        if hasIgpRoomId {
            output += "\(indent) igpRoomId: \(igpRoomId) \n"
        }
        output += unknownFields.getDescription(indent: indent)
        return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasIgpRequest {
                if let hashValueigpRequest = igpRequest?.hashValue {
                    hashCode = (hashCode &* 31) &+ hashValueigpRequest
                }
            }
            if hasIgpUsername {
                hashCode = (hashCode &* 31) &+ igpUsername.hashValue
            }
            if hasIgpRoomId {
                hashCode = (hashCode &* 31) &+ igpRoomId.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "IGPGroupCheckUsername"
    }
    override public func className() -> String {
        return "IGPGroupCheckUsername"
    }
    //Meta information declaration end

    final public class Builder : GeneratedRequestMessageBuilder {
        fileprivate var builderResult:IGPGroupCheckUsername = IGPGroupCheckUsername()
        public func getMessage() -> IGPGroupCheckUsername {
            return builderResult
        }

        required override public init () {
            super.init()
        }
        public var igpRequest:IGPRequest! {
            get {
                if igpRequestBuilder_ != nil {
                    builderResult.igpRequest = igpRequestBuilder_.getMessage()
                }
                return builderResult.igpRequest
            }
            set (value) {
                builderResult.hasIgpRequest = true
                builderResult.igpRequest = value
            }
        }
        public var hasIgpRequest:Bool {
            get {
                return builderResult.hasIgpRequest
            }
        }
        fileprivate var igpRequestBuilder_:IGPRequest.Builder! {
            didSet {
                builderResult.hasIgpRequest = true
            }
        }
        public func getIgpRequestBuilder() -> IGPRequest.Builder {
            if igpRequestBuilder_ == nil {
                igpRequestBuilder_ = IGPRequest.Builder()
                builderResult.igpRequest = igpRequestBuilder_.getMessage()
                if igpRequest != nil {
                    try! igpRequestBuilder_.mergeFrom(other: igpRequest)
                }
            }
            return igpRequestBuilder_
        }
        @discardableResult
        public override func setIgpRequest(_ value:IGPRequest!) -> IGPGroupCheckUsername.Builder {
            self.igpRequest = value
            return self
        }
        @discardableResult
        public func mergeIgpRequest(value:IGPRequest) throws -> IGPGroupCheckUsername.Builder {
            if builderResult.hasIgpRequest {
                builderResult.igpRequest = try IGPRequest.builderWithPrototype(prototype:builderResult.igpRequest).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpRequest = value
            }
            builderResult.hasIgpRequest = true
            return self
        }
        @discardableResult
        public func clearIgpRequest() -> IGPGroupCheckUsername.Builder {
            igpRequestBuilder_ = nil
            builderResult.hasIgpRequest = false
            builderResult.igpRequest = nil
            return self
        }
        public var igpUsername:String {
            get {
                return builderResult.igpUsername
            }
            set (value) {
                builderResult.hasIgpUsername = true
                builderResult.igpUsername = value
            }
        }
        public var hasIgpUsername:Bool {
            get {
                return builderResult.hasIgpUsername
            }
        }
        @discardableResult
        public func setIgpUsername(_ value:String) -> IGPGroupCheckUsername.Builder {
            self.igpUsername = value
            return self
        }
        @discardableResult
        public func clearIgpUsername() -> IGPGroupCheckUsername.Builder{
            builderResult.hasIgpUsername = false
            builderResult.igpUsername = ""
            return self
        }
        public var igpRoomId:Int64 {
            get {
                return builderResult.igpRoomId
            }
            set (value) {
                builderResult.hasIgpRoomId = true
                builderResult.igpRoomId = value
            }
        }
        public var hasIgpRoomId:Bool {
            get {
                return builderResult.hasIgpRoomId
            }
        }
        @discardableResult
        public func setIgpRoomId(_ value:Int64) -> IGPGroupCheckUsername.Builder {
            self.igpRoomId = value
            return self
        }
        @discardableResult
        public func clearIgpRoomId() -> IGPGroupCheckUsername.Builder{
            builderResult.hasIgpRoomId = false
            builderResult.igpRoomId = Int64(0)
            return self
        }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> IGPGroupCheckUsername.Builder {
            builderResult = IGPGroupCheckUsername()
            return self
        }
        override public func clone() throws -> IGPGroupCheckUsername.Builder {
            return try IGPGroupCheckUsername.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPGroupCheckUsername {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPGroupCheckUsername {
            let returnMe:IGPGroupCheckUsername = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPGroupCheckUsername) throws -> IGPGroupCheckUsername.Builder {
            if other == IGPGroupCheckUsername() {
                return self
            }
            if (other.hasIgpRequest) {
                try mergeIgpRequest(value: other.igpRequest)
            }
            if other.hasIgpUsername {
                igpUsername = other.igpUsername
            }
            if other.hasIgpRoomId {
                igpRoomId = other.igpRoomId
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPGroupCheckUsername.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPGroupCheckUsername.Builder {
            let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(copyFrom:self.unknownFields)
            while (true) {
                let protobufTag = try codedInputStream.readTag()
                switch protobufTag {
                case 0: 
                    self.unknownFields = try unknownFieldsBuilder.build()
                    return self

                case 10:
                    let subBuilder:IGPRequest.Builder = IGPRequest.Builder()
                    if hasIgpRequest {
                        try subBuilder.mergeFrom(other: igpRequest)
                    }
                    try codedInputStream.readMessage(builder: subBuilder, extensionRegistry:extensionRegistry)
                    igpRequest = subBuilder.buildPartial()

                case 18:
                    igpUsername = try codedInputStream.readString()

                case 24:
                    igpRoomId = try codedInputStream.readInt64()

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPGroupCheckUsername.Builder {
            let resultDecodedBuilder = IGPGroupCheckUsername.Builder()
            if let jsonValueIgpRequest = jsonMap["IGPRequest"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpRequest = try IGPRequest.Builder.decodeToBuilder(jsonMap:jsonValueIgpRequest).build()

            }
            if let jsonValueIgpUsername = jsonMap["IGPUsername"] as? String {
                resultDecodedBuilder.igpUsername = jsonValueIgpUsername
            }
            if let jsonValueIgpRoomId = jsonMap["IGPRoomId"] as? String {
                resultDecodedBuilder.igpRoomId = Int64(jsonValueIgpRoomId)!
            } else if let jsonValueIgpRoomId = jsonMap["IGPRoomId"] as? Int {
                resultDecodedBuilder.igpRoomId = Int64(jsonValueIgpRoomId)
            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> IGPGroupCheckUsername.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPGroupCheckUsername.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

final public class IGPGroupCheckUsernameResponse : GeneratedResponseMessage {

    public static func == (lhs: IGPGroupCheckUsernameResponse, rhs: IGPGroupCheckUsernameResponse) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasIgpResponse == rhs.hasIgpResponse) && (!lhs.hasIgpResponse || lhs.igpResponse == rhs.igpResponse)
        fieldCheck = fieldCheck && (lhs.hasIgpStatus == rhs.hasIgpStatus) && (!lhs.hasIgpStatus || lhs.igpStatus == rhs.igpStatus)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }



    //iGap Properties declaration start



    //iGap Properties declaration end



        //Enum type declaration start 

        public enum IGPStatus:Int32, CustomDebugStringConvertible, CustomStringConvertible, Hashable {
            case invalid = 0
            case taken = 1
            case available = 2
            case occupyingLimitExceeded = 3
            public func toString() -> String {
                switch self {
                case .invalid: return "INVALID"
                case .taken: return "TAKEN"
                case .available: return "AVAILABLE"
                case .occupyingLimitExceeded: return "OCCUPYING_LIMIT_EXCEEDED"
                }
            }
            public static func fromString(str:String) throws -> IGPGroupCheckUsernameResponse.IGPStatus {
                switch str {
                case "INVALID":    return .invalid
                case "TAKEN":    return .taken
                case "AVAILABLE":    return .available
                case "OCCUPYING_LIMIT_EXCEEDED":    return .occupyingLimitExceeded
                default: throw ProtocolBuffersError.invalidProtocolBuffer("Conversion String to Enum has failed.")
                }
            }
            public var debugDescription:String { return getDescription() }
            public var description:String { return getDescription() }
            private func getDescription() -> String { 
                switch self {
                case .invalid: return ".invalid"
                case .taken: return ".taken"
                case .available: return ".available"
                case .occupyingLimitExceeded: return ".occupyingLimitExceeded"
                }
            }
            public var hashValue:Int {
                return self.rawValue.hashValue
            }
            public static func ==(lhs:IGPStatus, rhs:IGPStatus) -> Bool {
                return lhs.hashValue == rhs.hashValue
            }
        }

        //Enum type declaration end 

    public fileprivate(set) var igpStatus:IGPGroupCheckUsernameResponse.IGPStatus = IGPGroupCheckUsernameResponse.IGPStatus.invalid
    public fileprivate(set) var hasIgpStatus:Bool = false
    required public init() {
        super.init()
    }
    override public func isInitialized() -> Bool {
        return true
    }
    override public func writeTo(codedOutputStream: CodedOutputStream) throws {
        if hasIgpResponse {
            try codedOutputStream.writeMessage(fieldNumber: 1, value:igpResponse)
        }
        if hasIgpStatus {
            try codedOutputStream.writeEnum(fieldNumber: 2, value:igpStatus.rawValue)
        }
        try unknownFields.writeTo(codedOutputStream: codedOutputStream)
    }
    override public func serializedSize() -> Int32 {
        var serialize_size:Int32 = memoizedSerializedSize
        if serialize_size != -1 {
         return serialize_size
        }

        serialize_size = 0
        if hasIgpResponse {
            if let varSizeigpResponse = igpResponse?.computeMessageSize(fieldNumber: 1) {
                serialize_size += varSizeigpResponse
            }
        }
        if (hasIgpStatus) {
            serialize_size += igpStatus.rawValue.computeEnumSize(fieldNumber: 2)
        }
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> IGPGroupCheckUsernameResponse.Builder {
        return IGPGroupCheckUsernameResponse.classBuilder() as! IGPGroupCheckUsernameResponse.Builder
    }
    public func getBuilder() -> IGPGroupCheckUsernameResponse.Builder {
        return classBuilder() as! IGPGroupCheckUsernameResponse.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPGroupCheckUsernameResponse.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPGroupCheckUsernameResponse.Builder()
    }
    public func toBuilder() throws -> IGPGroupCheckUsernameResponse.Builder {
        return try IGPGroupCheckUsernameResponse.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPGroupCheckUsernameResponse) throws -> IGPGroupCheckUsernameResponse.Builder {
        return try IGPGroupCheckUsernameResponse.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        guard isInitialized() else {
            throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
        }

        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasIgpResponse {
            jsonMap["IGPResponse"] = try igpResponse.encode()
        }
        if hasIgpStatus {
            jsonMap["IGPStatus"] = igpStatus.toString()
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPGroupCheckUsernameResponse {
        return try IGPGroupCheckUsernameResponse.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPGroupCheckUsernameResponse {
        return try IGPGroupCheckUsernameResponse.Builder.fromJSONToBuilder(data:data).build()
    }
    override public func getDescription(indent:String) throws -> String {
        var output = ""
        if hasIgpResponse {
            output += "\(indent) igpResponse {\n"
            if let outDescIgpResponse = igpResponse {
                output += try outDescIgpResponse.getDescription(indent: "\(indent)  ")
            }
            output += "\(indent) }\n"
        }
        if (hasIgpStatus) {
            output += "\(indent) igpStatus: \(igpStatus.description)\n"
        }
        output += unknownFields.getDescription(indent: indent)
        return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasIgpResponse {
                if let hashValueigpResponse = igpResponse?.hashValue {
                    hashCode = (hashCode &* 31) &+ hashValueigpResponse
                }
            }
            if hasIgpStatus {
                 hashCode = (hashCode &* 31) &+ igpStatus.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "IGPGroupCheckUsernameResponse"
    }
    override public func className() -> String {
        return "IGPGroupCheckUsernameResponse"
    }
    //Meta information declaration end

    final public class Builder : GeneratedResponseMessageBuilder {
        fileprivate var builderResult:IGPGroupCheckUsernameResponse = IGPGroupCheckUsernameResponse()
        public func getMessage() -> IGPGroupCheckUsernameResponse {
            return builderResult
        }

        required override public init () {
            super.init()
        }
        public var igpResponse:IGPResponse! {
            get {
                if igpResponseBuilder_ != nil {
                    builderResult.igpResponse = igpResponseBuilder_.getMessage()
                }
                return builderResult.igpResponse
            }
            set (value) {
                builderResult.hasIgpResponse = true
                builderResult.igpResponse = value
            }
        }
        public var hasIgpResponse:Bool {
            get {
                return builderResult.hasIgpResponse
            }
        }
        fileprivate var igpResponseBuilder_:IGPResponse.Builder! {
            didSet {
                builderResult.hasIgpResponse = true
            }
        }
        public func getIgpResponseBuilder() -> IGPResponse.Builder {
            if igpResponseBuilder_ == nil {
                igpResponseBuilder_ = IGPResponse.Builder()
                builderResult.igpResponse = igpResponseBuilder_.getMessage()
                if igpResponse != nil {
                    try! igpResponseBuilder_.mergeFrom(other: igpResponse)
                }
            }
            return igpResponseBuilder_
        }
        @discardableResult
        public func setIgpResponse(_ value:IGPResponse!) -> IGPGroupCheckUsernameResponse.Builder {
            self.igpResponse = value
            return self
        }
        @discardableResult
        public func mergeIgpResponse(value:IGPResponse) throws -> IGPGroupCheckUsernameResponse.Builder {
            if builderResult.hasIgpResponse {
                builderResult.igpResponse = try IGPResponse.builderWithPrototype(prototype:builderResult.igpResponse).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpResponse = value
            }
            builderResult.hasIgpResponse = true
            return self
        }
        @discardableResult
        public func clearIgpResponse() -> IGPGroupCheckUsernameResponse.Builder {
            igpResponseBuilder_ = nil
            builderResult.hasIgpResponse = false
            builderResult.igpResponse = nil
            return self
        }
            public var igpStatus:IGPGroupCheckUsernameResponse.IGPStatus {
                get {
                    return builderResult.igpStatus
                }
                set (value) {
                    builderResult.hasIgpStatus = true
                    builderResult.igpStatus = value
                }
            }
            public var hasIgpStatus:Bool{
                get {
                    return builderResult.hasIgpStatus
                }
            }
        @discardableResult
            public func setIgpStatus(_ value:IGPGroupCheckUsernameResponse.IGPStatus) -> IGPGroupCheckUsernameResponse.Builder {
              self.igpStatus = value
              return self
            }
        @discardableResult
            public func clearIgpStatus() -> IGPGroupCheckUsernameResponse.Builder {
               builderResult.hasIgpStatus = false
               builderResult.igpStatus = .invalid
               return self
            }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> IGPGroupCheckUsernameResponse.Builder {
            builderResult = IGPGroupCheckUsernameResponse()
            return self
        }
        override public func clone() throws -> IGPGroupCheckUsernameResponse.Builder {
            return try IGPGroupCheckUsernameResponse.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPGroupCheckUsernameResponse {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPGroupCheckUsernameResponse {
            let returnMe:IGPGroupCheckUsernameResponse = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPGroupCheckUsernameResponse) throws -> IGPGroupCheckUsernameResponse.Builder {
            if other == IGPGroupCheckUsernameResponse() {
                return self
            }
            if (other.hasIgpResponse) {
                try mergeIgpResponse(value: other.igpResponse)
            }
            if other.hasIgpStatus {
                igpStatus = other.igpStatus
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPGroupCheckUsernameResponse.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPGroupCheckUsernameResponse.Builder {
            let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(copyFrom:self.unknownFields)
            while (true) {
                let protobufTag = try codedInputStream.readTag()
                switch protobufTag {
                case 0: 
                    self.unknownFields = try unknownFieldsBuilder.build()
                    return self

                case 10:
                    let subBuilder:IGPResponse.Builder = IGPResponse.Builder()
                    if hasIgpResponse {
                        try subBuilder.mergeFrom(other: igpResponse)
                    }
                    try codedInputStream.readMessage(builder: subBuilder, extensionRegistry:extensionRegistry)
                    igpResponse = subBuilder.buildPartial()

                case 16:
                    let valueIntigpStatus = try codedInputStream.readEnum()
                    if let enumsigpStatus = IGPGroupCheckUsernameResponse.IGPStatus(rawValue:valueIntigpStatus){
                        igpStatus = enumsigpStatus
                    } else {
                        try unknownFieldsBuilder.mergeVarintField(fieldNumber: 2, value:Int64(valueIntigpStatus))
                    }

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPGroupCheckUsernameResponse.Builder {
            let resultDecodedBuilder = IGPGroupCheckUsernameResponse.Builder()
            if let jsonValueIgpResponse = jsonMap["IGPResponse"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpResponse = try IGPResponse.Builder.decodeToBuilder(jsonMap:jsonValueIgpResponse).build()

            }
            if let jsonValueIgpStatus = jsonMap["IGPStatus"] as? String {
                resultDecodedBuilder.igpStatus = try IGPGroupCheckUsernameResponse.IGPStatus.fromString(str: jsonValueIgpStatus)
            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> IGPGroupCheckUsernameResponse.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPGroupCheckUsernameResponse.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

extension IGPGroupCheckUsername: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPGroupCheckUsername> {
        var mergedArray = Array<IGPGroupCheckUsername>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPGroupCheckUsername? {
        return try IGPGroupCheckUsername.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPGroupCheckUsername {
        return try IGPGroupCheckUsername.Builder().mergeFrom(data: data, extensionRegistry:GroupCheckUsernameRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPGroupCheckUsername {
        return try IGPGroupCheckUsername.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPGroupCheckUsername {
        return try IGPGroupCheckUsername.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPGroupCheckUsername {
        return try IGPGroupCheckUsername.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPGroupCheckUsername {
        return try IGPGroupCheckUsername.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPGroupCheckUsername {
        return try IGPGroupCheckUsername.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpRequest": return self.igpRequest
        case "igpUsername": return self.igpUsername
        case "igpRoomId": return self.igpRoomId
        default: return nil
        }
    }
}
extension IGPGroupCheckUsername.Builder: GeneratedMessageBuilderProtocol {
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "igpRequest": return self.igpRequest
            case "igpUsername": return self.igpUsername
            case "igpRoomId": return self.igpRoomId
            default: return nil
            }
        }
        set (newSubscriptValue) { 
            switch key {
            case "igpRequest":
                guard let newSubscriptValue = newSubscriptValue as? IGPRequest else {
                    return
                }
                self.igpRequest = newSubscriptValue
            case "igpUsername":
                guard let newSubscriptValue = newSubscriptValue as? String else {
                    return
                }
                self.igpUsername = newSubscriptValue
            case "igpRoomId":
                guard let newSubscriptValue = newSubscriptValue as? Int64 else {
                    return
                }
                self.igpRoomId = newSubscriptValue
            default: return
            }
        }
    }
}
extension IGPGroupCheckUsernameResponse: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPGroupCheckUsernameResponse> {
        var mergedArray = Array<IGPGroupCheckUsernameResponse>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPGroupCheckUsernameResponse? {
        return try IGPGroupCheckUsernameResponse.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPGroupCheckUsernameResponse {
        return try IGPGroupCheckUsernameResponse.Builder().mergeFrom(data: data, extensionRegistry:GroupCheckUsernameRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPGroupCheckUsernameResponse {
        return try IGPGroupCheckUsernameResponse.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPGroupCheckUsernameResponse {
        return try IGPGroupCheckUsernameResponse.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPGroupCheckUsernameResponse {
        return try IGPGroupCheckUsernameResponse.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPGroupCheckUsernameResponse {
        return try IGPGroupCheckUsernameResponse.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPGroupCheckUsernameResponse {
        return try IGPGroupCheckUsernameResponse.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpResponse": return self.igpResponse
        case "igpStatus": return self.igpStatus
        default: return nil
        }
    }
}
extension IGPGroupCheckUsernameResponse.Builder: GeneratedMessageBuilderProtocol {
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "igpResponse": return self.igpResponse
            case "igpStatus": return self.igpStatus
            default: return nil
            }
        }
        set (newSubscriptValue) { 
            switch key {
            case "igpResponse":
                guard let newSubscriptValue = newSubscriptValue as? IGPResponse else {
                    return
                }
                self.igpResponse = newSubscriptValue
            case "igpStatus":
                guard let newSubscriptValue = newSubscriptValue as? IGPGroupCheckUsernameResponse.IGPStatus else {
                    return
                }
                self.igpStatus = newSubscriptValue
            default: return
            }
        }
    }
}

// @@protoc_insertion_point(global_scope)
