/// Generated by the Protocol Buffers 3.2.0 compiler.  DO NOT EDIT!
/// Protobuf-swift version: 3.0.13
/// Source file "ClientGetRoomMessage.proto"
/// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct ClientGetRoomMessageRoot {
    public static let `default` = ClientGetRoomMessageRoot()
    public var extensionRegistry:ExtensionRegistry

    init() {
        extensionRegistry = ExtensionRegistry()
        registerAllExtensions(registry: extensionRegistry)
        RequestRoot.default.registerAllExtensions(registry: extensionRegistry)
        ResponseRoot.default.registerAllExtensions(registry: extensionRegistry)
        GlobalRoot.default.registerAllExtensions(registry: extensionRegistry)
    }
    public func registerAllExtensions(registry: ExtensionRegistry) {
    }
}

final public class IGPClientGetRoomMessage : GeneratedMessage {

    public static func == (lhs: IGPClientGetRoomMessage, rhs: IGPClientGetRoomMessage) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasIgpRequest == rhs.hasIgpRequest) && (!lhs.hasIgpRequest || lhs.igpRequest == rhs.igpRequest)
        fieldCheck = fieldCheck && (lhs.hasIgpRoomId == rhs.hasIgpRoomId) && (!lhs.hasIgpRoomId || lhs.igpRoomId == rhs.igpRoomId)
        fieldCheck = fieldCheck && (lhs.hasIgpMessageId == rhs.hasIgpMessageId) && (!lhs.hasIgpMessageId || lhs.igpMessageId == rhs.igpMessageId)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }



    //iGap Properties declaration start



    //iGap Properties declaration end

    public fileprivate(set) var igpRequest:IGPRequest!
    public fileprivate(set) var hasIgpRequest:Bool = false
    public fileprivate(set) var igpRoomId:Int64 = Int64(0)
    public fileprivate(set) var hasIgpRoomId:Bool = false

    public fileprivate(set) var igpMessageId:Int64 = Int64(0)
    public fileprivate(set) var hasIgpMessageId:Bool = false

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
        if hasIgpRoomId {
            try codedOutputStream.writeInt64(fieldNumber: 2, value:igpRoomId)
        }
        if hasIgpMessageId {
            try codedOutputStream.writeInt64(fieldNumber: 3, value:igpMessageId)
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
        if hasIgpRoomId {
            serialize_size += igpRoomId.computeInt64Size(fieldNumber: 2)
        }
        if hasIgpMessageId {
            serialize_size += igpMessageId.computeInt64Size(fieldNumber: 3)
        }
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> IGPClientGetRoomMessage.Builder {
        return IGPClientGetRoomMessage.classBuilder() as! IGPClientGetRoomMessage.Builder
    }
    public func getBuilder() -> IGPClientGetRoomMessage.Builder {
        return classBuilder() as! IGPClientGetRoomMessage.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPClientGetRoomMessage.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPClientGetRoomMessage.Builder()
    }
    public func toBuilder() throws -> IGPClientGetRoomMessage.Builder {
        return try IGPClientGetRoomMessage.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPClientGetRoomMessage) throws -> IGPClientGetRoomMessage.Builder {
        return try IGPClientGetRoomMessage.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        guard isInitialized() else {
            throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
        }

        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasIgpRequest {
            jsonMap["IGPRequest"] = try igpRequest.encode()
        }
        if hasIgpRoomId {
            jsonMap["IGPRoomId"] = "\(igpRoomId)"
        }
        if hasIgpMessageId {
            jsonMap["IGPMessageId"] = "\(igpMessageId)"
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPClientGetRoomMessage {
        return try IGPClientGetRoomMessage.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPClientGetRoomMessage {
        return try IGPClientGetRoomMessage.Builder.fromJSONToBuilder(data:data).build()
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
        if hasIgpRoomId {
            output += "\(indent) igpRoomId: \(igpRoomId) \n"
        }
        if hasIgpMessageId {
            output += "\(indent) igpMessageId: \(igpMessageId) \n"
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
            if hasIgpRoomId {
                hashCode = (hashCode &* 31) &+ igpRoomId.hashValue
            }
            if hasIgpMessageId {
                hashCode = (hashCode &* 31) &+ igpMessageId.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "IGPClientGetRoomMessage"
    }
    override public func className() -> String {
        return "IGPClientGetRoomMessage"
    }
    //Meta information declaration end

    final public class Builder : GeneratedRequestMessageBuilder {
        fileprivate var builderResult:IGPClientGetRoomMessage = IGPClientGetRoomMessage()
        public func getMessage() -> IGPClientGetRoomMessage {
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
        public override func setIgpRequest(_ value:IGPRequest!) -> IGPClientGetRoomMessage.Builder {
            self.igpRequest = value
            return self
        }
        @discardableResult
        public func mergeIgpRequest(value:IGPRequest) throws -> IGPClientGetRoomMessage.Builder {
            if builderResult.hasIgpRequest {
                builderResult.igpRequest = try IGPRequest.builderWithPrototype(prototype:builderResult.igpRequest).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpRequest = value
            }
            builderResult.hasIgpRequest = true
            return self
        }
        @discardableResult
        public func clearIgpRequest() -> IGPClientGetRoomMessage.Builder {
            igpRequestBuilder_ = nil
            builderResult.hasIgpRequest = false
            builderResult.igpRequest = nil
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
        public func setIgpRoomId(_ value:Int64) -> IGPClientGetRoomMessage.Builder {
            self.igpRoomId = value
            return self
        }
        @discardableResult
        public func clearIgpRoomId() -> IGPClientGetRoomMessage.Builder{
            builderResult.hasIgpRoomId = false
            builderResult.igpRoomId = Int64(0)
            return self
        }
        public var igpMessageId:Int64 {
            get {
                return builderResult.igpMessageId
            }
            set (value) {
                builderResult.hasIgpMessageId = true
                builderResult.igpMessageId = value
            }
        }
        public var hasIgpMessageId:Bool {
            get {
                return builderResult.hasIgpMessageId
            }
        }
        @discardableResult
        public func setIgpMessageId(_ value:Int64) -> IGPClientGetRoomMessage.Builder {
            self.igpMessageId = value
            return self
        }
        @discardableResult
        public func clearIgpMessageId() -> IGPClientGetRoomMessage.Builder{
            builderResult.hasIgpMessageId = false
            builderResult.igpMessageId = Int64(0)
            return self
        }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> IGPClientGetRoomMessage.Builder {
            builderResult = IGPClientGetRoomMessage()
            return self
        }
        override public func clone() throws -> IGPClientGetRoomMessage.Builder {
            return try IGPClientGetRoomMessage.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPClientGetRoomMessage {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPClientGetRoomMessage {
            let returnMe:IGPClientGetRoomMessage = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPClientGetRoomMessage) throws -> IGPClientGetRoomMessage.Builder {
            if other == IGPClientGetRoomMessage() {
                return self
            }
            if (other.hasIgpRequest) {
                try mergeIgpRequest(value: other.igpRequest)
            }
            if other.hasIgpRoomId {
                igpRoomId = other.igpRoomId
            }
            if other.hasIgpMessageId {
                igpMessageId = other.igpMessageId
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPClientGetRoomMessage.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPClientGetRoomMessage.Builder {
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

                case 16:
                    igpRoomId = try codedInputStream.readInt64()

                case 24:
                    igpMessageId = try codedInputStream.readInt64()

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPClientGetRoomMessage.Builder {
            let resultDecodedBuilder = IGPClientGetRoomMessage.Builder()
            if let jsonValueIgpRequest = jsonMap["IGPRequest"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpRequest = try IGPRequest.Builder.decodeToBuilder(jsonMap:jsonValueIgpRequest).build()

            }
            if let jsonValueIgpRoomId = jsonMap["IGPRoomId"] as? String {
                resultDecodedBuilder.igpRoomId = Int64(jsonValueIgpRoomId)!
            } else if let jsonValueIgpRoomId = jsonMap["IGPRoomId"] as? Int {
                resultDecodedBuilder.igpRoomId = Int64(jsonValueIgpRoomId)
            }
            if let jsonValueIgpMessageId = jsonMap["IGPMessageId"] as? String {
                resultDecodedBuilder.igpMessageId = Int64(jsonValueIgpMessageId)!
            } else if let jsonValueIgpMessageId = jsonMap["IGPMessageId"] as? Int {
                resultDecodedBuilder.igpMessageId = Int64(jsonValueIgpMessageId)
            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> IGPClientGetRoomMessage.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPClientGetRoomMessage.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

final public class IGPClientGetRoomMessageResponse : GeneratedResponseMessage {

    public static func == (lhs: IGPClientGetRoomMessageResponse, rhs: IGPClientGetRoomMessageResponse) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasIgpResponse == rhs.hasIgpResponse) && (!lhs.hasIgpResponse || lhs.igpResponse == rhs.igpResponse)
        fieldCheck = fieldCheck && (lhs.hasIgpMessage == rhs.hasIgpMessage) && (!lhs.hasIgpMessage || lhs.igpMessage == rhs.igpMessage)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }



    //iGap Properties declaration start



    //iGap Properties declaration end

    public fileprivate(set) var igpMessage:IGPRoomMessage!
    public fileprivate(set) var hasIgpMessage:Bool = false
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
        if hasIgpMessage {
            try codedOutputStream.writeMessage(fieldNumber: 2, value:igpMessage)
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
        if hasIgpMessage {
            if let varSizeigpMessage = igpMessage?.computeMessageSize(fieldNumber: 2) {
                serialize_size += varSizeigpMessage
            }
        }
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> IGPClientGetRoomMessageResponse.Builder {
        return IGPClientGetRoomMessageResponse.classBuilder() as! IGPClientGetRoomMessageResponse.Builder
    }
    public func getBuilder() -> IGPClientGetRoomMessageResponse.Builder {
        return classBuilder() as! IGPClientGetRoomMessageResponse.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPClientGetRoomMessageResponse.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPClientGetRoomMessageResponse.Builder()
    }
    public func toBuilder() throws -> IGPClientGetRoomMessageResponse.Builder {
        return try IGPClientGetRoomMessageResponse.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPClientGetRoomMessageResponse) throws -> IGPClientGetRoomMessageResponse.Builder {
        return try IGPClientGetRoomMessageResponse.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        guard isInitialized() else {
            throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
        }

        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasIgpResponse {
            jsonMap["IGPResponse"] = try igpResponse.encode()
        }
        if hasIgpMessage {
            jsonMap["IGPMessage"] = try igpMessage.encode()
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPClientGetRoomMessageResponse {
        return try IGPClientGetRoomMessageResponse.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPClientGetRoomMessageResponse {
        return try IGPClientGetRoomMessageResponse.Builder.fromJSONToBuilder(data:data).build()
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
        if hasIgpMessage {
            output += "\(indent) igpMessage {\n"
            if let outDescIgpMessage = igpMessage {
                output += try outDescIgpMessage.getDescription(indent: "\(indent)  ")
            }
            output += "\(indent) }\n"
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
            if hasIgpMessage {
                if let hashValueigpMessage = igpMessage?.hashValue {
                    hashCode = (hashCode &* 31) &+ hashValueigpMessage
                }
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "IGPClientGetRoomMessageResponse"
    }
    override public func className() -> String {
        return "IGPClientGetRoomMessageResponse"
    }
    //Meta information declaration end

    final public class Builder : GeneratedResponseMessageBuilder {
        fileprivate var builderResult:IGPClientGetRoomMessageResponse = IGPClientGetRoomMessageResponse()
        public func getMessage() -> IGPClientGetRoomMessageResponse {
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
        public func setIgpResponse(_ value:IGPResponse!) -> IGPClientGetRoomMessageResponse.Builder {
            self.igpResponse = value
            return self
        }
        @discardableResult
        public func mergeIgpResponse(value:IGPResponse) throws -> IGPClientGetRoomMessageResponse.Builder {
            if builderResult.hasIgpResponse {
                builderResult.igpResponse = try IGPResponse.builderWithPrototype(prototype:builderResult.igpResponse).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpResponse = value
            }
            builderResult.hasIgpResponse = true
            return self
        }
        @discardableResult
        public func clearIgpResponse() -> IGPClientGetRoomMessageResponse.Builder {
            igpResponseBuilder_ = nil
            builderResult.hasIgpResponse = false
            builderResult.igpResponse = nil
            return self
        }
        public var igpMessage:IGPRoomMessage! {
            get {
                if igpMessageBuilder_ != nil {
                    builderResult.igpMessage = igpMessageBuilder_.getMessage()
                }
                return builderResult.igpMessage
            }
            set (value) {
                builderResult.hasIgpMessage = true
                builderResult.igpMessage = value
            }
        }
        public var hasIgpMessage:Bool {
            get {
                return builderResult.hasIgpMessage
            }
        }
        fileprivate var igpMessageBuilder_:IGPRoomMessage.Builder! {
            didSet {
                builderResult.hasIgpMessage = true
            }
        }
        public func getIgpMessageBuilder() -> IGPRoomMessage.Builder {
            if igpMessageBuilder_ == nil {
                igpMessageBuilder_ = IGPRoomMessage.Builder()
                builderResult.igpMessage = igpMessageBuilder_.getMessage()
                if igpMessage != nil {
                    try! igpMessageBuilder_.mergeFrom(other: igpMessage)
                }
            }
            return igpMessageBuilder_
        }
        @discardableResult
        public func setIgpMessage(_ value:IGPRoomMessage!) -> IGPClientGetRoomMessageResponse.Builder {
            self.igpMessage = value
            return self
        }
        @discardableResult
        public func mergeIgpMessage(value:IGPRoomMessage) throws -> IGPClientGetRoomMessageResponse.Builder {
            if builderResult.hasIgpMessage {
                builderResult.igpMessage = try IGPRoomMessage.builderWithPrototype(prototype:builderResult.igpMessage).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpMessage = value
            }
            builderResult.hasIgpMessage = true
            return self
        }
        @discardableResult
        public func clearIgpMessage() -> IGPClientGetRoomMessageResponse.Builder {
            igpMessageBuilder_ = nil
            builderResult.hasIgpMessage = false
            builderResult.igpMessage = nil
            return self
        }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> IGPClientGetRoomMessageResponse.Builder {
            builderResult = IGPClientGetRoomMessageResponse()
            return self
        }
        override public func clone() throws -> IGPClientGetRoomMessageResponse.Builder {
            return try IGPClientGetRoomMessageResponse.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPClientGetRoomMessageResponse {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPClientGetRoomMessageResponse {
            let returnMe:IGPClientGetRoomMessageResponse = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPClientGetRoomMessageResponse) throws -> IGPClientGetRoomMessageResponse.Builder {
            if other == IGPClientGetRoomMessageResponse() {
                return self
            }
            if (other.hasIgpResponse) {
                try mergeIgpResponse(value: other.igpResponse)
            }
            if (other.hasIgpMessage) {
                try mergeIgpMessage(value: other.igpMessage)
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPClientGetRoomMessageResponse.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPClientGetRoomMessageResponse.Builder {
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
                    let subBuilder:IGPRoomMessage.Builder = IGPRoomMessage.Builder()
                    if hasIgpMessage {
                        try subBuilder.mergeFrom(other: igpMessage)
                    }
                    try codedInputStream.readMessage(builder: subBuilder, extensionRegistry:extensionRegistry)
                    igpMessage = subBuilder.buildPartial()

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPClientGetRoomMessageResponse.Builder {
            let resultDecodedBuilder = IGPClientGetRoomMessageResponse.Builder()
            if let jsonValueIgpResponse = jsonMap["IGPResponse"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpResponse = try IGPResponse.Builder.decodeToBuilder(jsonMap:jsonValueIgpResponse).build()

            }
            if let jsonValueIgpMessage = jsonMap["IGPMessage"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpMessage = try IGPRoomMessage.Builder.decodeToBuilder(jsonMap:jsonValueIgpMessage).build()

            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> IGPClientGetRoomMessageResponse.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPClientGetRoomMessageResponse.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

extension IGPClientGetRoomMessage: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPClientGetRoomMessage> {
        var mergedArray = Array<IGPClientGetRoomMessage>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPClientGetRoomMessage? {
        return try IGPClientGetRoomMessage.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPClientGetRoomMessage {
        return try IGPClientGetRoomMessage.Builder().mergeFrom(data: data, extensionRegistry:ClientGetRoomMessageRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPClientGetRoomMessage {
        return try IGPClientGetRoomMessage.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPClientGetRoomMessage {
        return try IGPClientGetRoomMessage.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPClientGetRoomMessage {
        return try IGPClientGetRoomMessage.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPClientGetRoomMessage {
        return try IGPClientGetRoomMessage.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPClientGetRoomMessage {
        return try IGPClientGetRoomMessage.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpRequest": return self.igpRequest
        case "igpRoomId": return self.igpRoomId
        case "igpMessageId": return self.igpMessageId
        default: return nil
        }
    }
}
extension IGPClientGetRoomMessage.Builder: GeneratedMessageBuilderProtocol {
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "igpRequest": return self.igpRequest
            case "igpRoomId": return self.igpRoomId
            case "igpMessageId": return self.igpMessageId
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
            case "igpRoomId":
                guard let newSubscriptValue = newSubscriptValue as? Int64 else {
                    return
                }
                self.igpRoomId = newSubscriptValue
            case "igpMessageId":
                guard let newSubscriptValue = newSubscriptValue as? Int64 else {
                    return
                }
                self.igpMessageId = newSubscriptValue
            default: return
            }
        }
    }
}
extension IGPClientGetRoomMessageResponse: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPClientGetRoomMessageResponse> {
        var mergedArray = Array<IGPClientGetRoomMessageResponse>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPClientGetRoomMessageResponse? {
        return try IGPClientGetRoomMessageResponse.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPClientGetRoomMessageResponse {
        return try IGPClientGetRoomMessageResponse.Builder().mergeFrom(data: data, extensionRegistry:ClientGetRoomMessageRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPClientGetRoomMessageResponse {
        return try IGPClientGetRoomMessageResponse.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPClientGetRoomMessageResponse {
        return try IGPClientGetRoomMessageResponse.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPClientGetRoomMessageResponse {
        return try IGPClientGetRoomMessageResponse.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPClientGetRoomMessageResponse {
        return try IGPClientGetRoomMessageResponse.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPClientGetRoomMessageResponse {
        return try IGPClientGetRoomMessageResponse.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpResponse": return self.igpResponse
        case "igpMessage": return self.igpMessage
        default: return nil
        }
    }
}
extension IGPClientGetRoomMessageResponse.Builder: GeneratedMessageBuilderProtocol {
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "igpResponse": return self.igpResponse
            case "igpMessage": return self.igpMessage
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
            case "igpMessage":
                guard let newSubscriptValue = newSubscriptValue as? IGPRoomMessage else {
                    return
                }
                self.igpMessage = newSubscriptValue
            default: return
            }
        }
    }
}

// @@protoc_insertion_point(global_scope)
