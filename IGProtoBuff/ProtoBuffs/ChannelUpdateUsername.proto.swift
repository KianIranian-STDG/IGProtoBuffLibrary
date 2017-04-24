/// Generated by the Protocol Buffers 3.2.0 compiler.  DO NOT EDIT!
/// Protobuf-swift version: 3.0.13
/// Source file "ChannelUpdateUsername.proto"
/// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct ChannelUpdateUsernameRoot {
    public static let `default` = ChannelUpdateUsernameRoot()
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

final public class IGPChannelUpdateUsername : GeneratedMessage {

    public static func == (lhs: IGPChannelUpdateUsername, rhs: IGPChannelUpdateUsername) -> Bool {
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
    public class func getBuilder() -> IGPChannelUpdateUsername.Builder {
        return IGPChannelUpdateUsername.classBuilder() as! IGPChannelUpdateUsername.Builder
    }
    public func getBuilder() -> IGPChannelUpdateUsername.Builder {
        return classBuilder() as! IGPChannelUpdateUsername.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPChannelUpdateUsername.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPChannelUpdateUsername.Builder()
    }
    public func toBuilder() throws -> IGPChannelUpdateUsername.Builder {
        return try IGPChannelUpdateUsername.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPChannelUpdateUsername) throws -> IGPChannelUpdateUsername.Builder {
        return try IGPChannelUpdateUsername.Builder().mergeFrom(other:prototype)
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
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPChannelUpdateUsername {
        return try IGPChannelUpdateUsername.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPChannelUpdateUsername {
        return try IGPChannelUpdateUsername.Builder.fromJSONToBuilder(data:data).build()
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
        return "IGPChannelUpdateUsername"
    }
    override public func className() -> String {
        return "IGPChannelUpdateUsername"
    }
    //Meta information declaration end

    final public class Builder : GeneratedRequestMessageBuilder {
        fileprivate var builderResult:IGPChannelUpdateUsername = IGPChannelUpdateUsername()
        public func getMessage() -> IGPChannelUpdateUsername {
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
        public override func setIgpRequest(_ value:IGPRequest!) -> IGPChannelUpdateUsername.Builder {
            self.igpRequest = value
            return self
        }
        @discardableResult
        public func mergeIgpRequest(value:IGPRequest) throws -> IGPChannelUpdateUsername.Builder {
            if builderResult.hasIgpRequest {
                builderResult.igpRequest = try IGPRequest.builderWithPrototype(prototype:builderResult.igpRequest).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpRequest = value
            }
            builderResult.hasIgpRequest = true
            return self
        }
        @discardableResult
        public func clearIgpRequest() -> IGPChannelUpdateUsername.Builder {
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
        public func setIgpUsername(_ value:String) -> IGPChannelUpdateUsername.Builder {
            self.igpUsername = value
            return self
        }
        @discardableResult
        public func clearIgpUsername() -> IGPChannelUpdateUsername.Builder{
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
        public func setIgpRoomId(_ value:Int64) -> IGPChannelUpdateUsername.Builder {
            self.igpRoomId = value
            return self
        }
        @discardableResult
        public func clearIgpRoomId() -> IGPChannelUpdateUsername.Builder{
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
        override public func clear() -> IGPChannelUpdateUsername.Builder {
            builderResult = IGPChannelUpdateUsername()
            return self
        }
        override public func clone() throws -> IGPChannelUpdateUsername.Builder {
            return try IGPChannelUpdateUsername.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPChannelUpdateUsername {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPChannelUpdateUsername {
            let returnMe:IGPChannelUpdateUsername = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPChannelUpdateUsername) throws -> IGPChannelUpdateUsername.Builder {
            if other == IGPChannelUpdateUsername() {
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
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPChannelUpdateUsername.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPChannelUpdateUsername.Builder {
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
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPChannelUpdateUsername.Builder {
            let resultDecodedBuilder = IGPChannelUpdateUsername.Builder()
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
        override class public func fromJSONToBuilder(data:Data) throws -> IGPChannelUpdateUsername.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPChannelUpdateUsername.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

final public class IGPChannelUpdateUsernameResponse : GeneratedResponseMessage {

    public static func == (lhs: IGPChannelUpdateUsernameResponse, rhs: IGPChannelUpdateUsernameResponse) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasIgpResponse == rhs.hasIgpResponse) && (!lhs.hasIgpResponse || lhs.igpResponse == rhs.igpResponse)
        fieldCheck = fieldCheck && (lhs.hasIgpUsername == rhs.hasIgpUsername) && (!lhs.hasIgpUsername || lhs.igpUsername == rhs.igpUsername)
        fieldCheck = fieldCheck && (lhs.hasIgpRoomId == rhs.hasIgpRoomId) && (!lhs.hasIgpRoomId || lhs.igpRoomId == rhs.igpRoomId)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }



    //iGap Properties declaration start



    //iGap Properties declaration end

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
        if hasIgpResponse {
            try codedOutputStream.writeMessage(fieldNumber: 1, value:igpResponse)
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
        if hasIgpResponse {
            if let varSizeigpResponse = igpResponse?.computeMessageSize(fieldNumber: 1) {
                serialize_size += varSizeigpResponse
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
    public class func getBuilder() -> IGPChannelUpdateUsernameResponse.Builder {
        return IGPChannelUpdateUsernameResponse.classBuilder() as! IGPChannelUpdateUsernameResponse.Builder
    }
    public func getBuilder() -> IGPChannelUpdateUsernameResponse.Builder {
        return classBuilder() as! IGPChannelUpdateUsernameResponse.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPChannelUpdateUsernameResponse.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPChannelUpdateUsernameResponse.Builder()
    }
    public func toBuilder() throws -> IGPChannelUpdateUsernameResponse.Builder {
        return try IGPChannelUpdateUsernameResponse.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPChannelUpdateUsernameResponse) throws -> IGPChannelUpdateUsernameResponse.Builder {
        return try IGPChannelUpdateUsernameResponse.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        guard isInitialized() else {
            throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
        }

        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasIgpResponse {
            jsonMap["IGPResponse"] = try igpResponse.encode()
        }
        if hasIgpUsername {
            jsonMap["IGPUsername"] = igpUsername
        }
        if hasIgpRoomId {
            jsonMap["IGPRoomId"] = "\(igpRoomId)"
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPChannelUpdateUsernameResponse {
        return try IGPChannelUpdateUsernameResponse.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPChannelUpdateUsernameResponse {
        return try IGPChannelUpdateUsernameResponse.Builder.fromJSONToBuilder(data:data).build()
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
            if hasIgpResponse {
                if let hashValueigpResponse = igpResponse?.hashValue {
                    hashCode = (hashCode &* 31) &+ hashValueigpResponse
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
        return "IGPChannelUpdateUsernameResponse"
    }
    override public func className() -> String {
        return "IGPChannelUpdateUsernameResponse"
    }
    //Meta information declaration end

    final public class Builder : GeneratedResponseMessageBuilder {
        fileprivate var builderResult:IGPChannelUpdateUsernameResponse = IGPChannelUpdateUsernameResponse()
        public func getMessage() -> IGPChannelUpdateUsernameResponse {
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
        public func setIgpResponse(_ value:IGPResponse!) -> IGPChannelUpdateUsernameResponse.Builder {
            self.igpResponse = value
            return self
        }
        @discardableResult
        public func mergeIgpResponse(value:IGPResponse) throws -> IGPChannelUpdateUsernameResponse.Builder {
            if builderResult.hasIgpResponse {
                builderResult.igpResponse = try IGPResponse.builderWithPrototype(prototype:builderResult.igpResponse).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpResponse = value
            }
            builderResult.hasIgpResponse = true
            return self
        }
        @discardableResult
        public func clearIgpResponse() -> IGPChannelUpdateUsernameResponse.Builder {
            igpResponseBuilder_ = nil
            builderResult.hasIgpResponse = false
            builderResult.igpResponse = nil
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
        public func setIgpUsername(_ value:String) -> IGPChannelUpdateUsernameResponse.Builder {
            self.igpUsername = value
            return self
        }
        @discardableResult
        public func clearIgpUsername() -> IGPChannelUpdateUsernameResponse.Builder{
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
        public func setIgpRoomId(_ value:Int64) -> IGPChannelUpdateUsernameResponse.Builder {
            self.igpRoomId = value
            return self
        }
        @discardableResult
        public func clearIgpRoomId() -> IGPChannelUpdateUsernameResponse.Builder{
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
        override public func clear() -> IGPChannelUpdateUsernameResponse.Builder {
            builderResult = IGPChannelUpdateUsernameResponse()
            return self
        }
        override public func clone() throws -> IGPChannelUpdateUsernameResponse.Builder {
            return try IGPChannelUpdateUsernameResponse.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPChannelUpdateUsernameResponse {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPChannelUpdateUsernameResponse {
            let returnMe:IGPChannelUpdateUsernameResponse = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPChannelUpdateUsernameResponse) throws -> IGPChannelUpdateUsernameResponse.Builder {
            if other == IGPChannelUpdateUsernameResponse() {
                return self
            }
            if (other.hasIgpResponse) {
                try mergeIgpResponse(value: other.igpResponse)
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
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPChannelUpdateUsernameResponse.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPChannelUpdateUsernameResponse.Builder {
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
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPChannelUpdateUsernameResponse.Builder {
            let resultDecodedBuilder = IGPChannelUpdateUsernameResponse.Builder()
            if let jsonValueIgpResponse = jsonMap["IGPResponse"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpResponse = try IGPResponse.Builder.decodeToBuilder(jsonMap:jsonValueIgpResponse).build()

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
        override class public func fromJSONToBuilder(data:Data) throws -> IGPChannelUpdateUsernameResponse.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPChannelUpdateUsernameResponse.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

extension IGPChannelUpdateUsername: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPChannelUpdateUsername> {
        var mergedArray = Array<IGPChannelUpdateUsername>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPChannelUpdateUsername? {
        return try IGPChannelUpdateUsername.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPChannelUpdateUsername {
        return try IGPChannelUpdateUsername.Builder().mergeFrom(data: data, extensionRegistry:ChannelUpdateUsernameRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPChannelUpdateUsername {
        return try IGPChannelUpdateUsername.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPChannelUpdateUsername {
        return try IGPChannelUpdateUsername.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPChannelUpdateUsername {
        return try IGPChannelUpdateUsername.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPChannelUpdateUsername {
        return try IGPChannelUpdateUsername.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPChannelUpdateUsername {
        return try IGPChannelUpdateUsername.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
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
extension IGPChannelUpdateUsername.Builder: GeneratedMessageBuilderProtocol {
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
extension IGPChannelUpdateUsernameResponse: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPChannelUpdateUsernameResponse> {
        var mergedArray = Array<IGPChannelUpdateUsernameResponse>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPChannelUpdateUsernameResponse? {
        return try IGPChannelUpdateUsernameResponse.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPChannelUpdateUsernameResponse {
        return try IGPChannelUpdateUsernameResponse.Builder().mergeFrom(data: data, extensionRegistry:ChannelUpdateUsernameRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPChannelUpdateUsernameResponse {
        return try IGPChannelUpdateUsernameResponse.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPChannelUpdateUsernameResponse {
        return try IGPChannelUpdateUsernameResponse.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPChannelUpdateUsernameResponse {
        return try IGPChannelUpdateUsernameResponse.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPChannelUpdateUsernameResponse {
        return try IGPChannelUpdateUsernameResponse.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPChannelUpdateUsernameResponse {
        return try IGPChannelUpdateUsernameResponse.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpResponse": return self.igpResponse
        case "igpUsername": return self.igpUsername
        case "igpRoomId": return self.igpRoomId
        default: return nil
        }
    }
}
extension IGPChannelUpdateUsernameResponse.Builder: GeneratedMessageBuilderProtocol {
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "igpResponse": return self.igpResponse
            case "igpUsername": return self.igpUsername
            case "igpRoomId": return self.igpRoomId
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

// @@protoc_insertion_point(global_scope)