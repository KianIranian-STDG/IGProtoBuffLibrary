/// Generated by the Protocol Buffers 3.2.0 compiler.  DO NOT EDIT!
/// Protobuf-swift version: 3.0.13
/// Source file "ChatGetDraft.proto"
/// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct ChatGetDraftRoot {
    public static let `default` = ChatGetDraftRoot()
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

final public class IGPChatGetDraft : GeneratedMessage {

    public static func == (lhs: IGPChatGetDraft, rhs: IGPChatGetDraft) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasIgpRequest == rhs.hasIgpRequest) && (!lhs.hasIgpRequest || lhs.igpRequest == rhs.igpRequest)
        fieldCheck = fieldCheck && (lhs.hasIgpRoomId == rhs.hasIgpRoomId) && (!lhs.hasIgpRoomId || lhs.igpRoomId == rhs.igpRoomId)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }



    //iGap Properties declaration start



    //iGap Properties declaration end

    public fileprivate(set) var igpRequest:IGPRequest!
    public fileprivate(set) var hasIgpRequest:Bool = false
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
        if hasIgpRoomId {
            try codedOutputStream.writeInt64(fieldNumber: 2, value:igpRoomId)
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
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> IGPChatGetDraft.Builder {
        return IGPChatGetDraft.classBuilder() as! IGPChatGetDraft.Builder
    }
    public func getBuilder() -> IGPChatGetDraft.Builder {
        return classBuilder() as! IGPChatGetDraft.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPChatGetDraft.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPChatGetDraft.Builder()
    }
    public func toBuilder() throws -> IGPChatGetDraft.Builder {
        return try IGPChatGetDraft.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPChatGetDraft) throws -> IGPChatGetDraft.Builder {
        return try IGPChatGetDraft.Builder().mergeFrom(other:prototype)
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
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPChatGetDraft {
        return try IGPChatGetDraft.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPChatGetDraft {
        return try IGPChatGetDraft.Builder.fromJSONToBuilder(data:data).build()
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
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "IGPChatGetDraft"
    }
    override public func className() -> String {
        return "IGPChatGetDraft"
    }
    //Meta information declaration end

    final public class Builder : GeneratedRequestMessageBuilder {
        fileprivate var builderResult:IGPChatGetDraft = IGPChatGetDraft()
        public func getMessage() -> IGPChatGetDraft {
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
        public override func setIgpRequest(_ value:IGPRequest!) -> IGPChatGetDraft.Builder {
            self.igpRequest = value
            return self
        }
        @discardableResult
        public func mergeIgpRequest(value:IGPRequest) throws -> IGPChatGetDraft.Builder {
            if builderResult.hasIgpRequest {
                builderResult.igpRequest = try IGPRequest.builderWithPrototype(prototype:builderResult.igpRequest).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpRequest = value
            }
            builderResult.hasIgpRequest = true
            return self
        }
        @discardableResult
        public func clearIgpRequest() -> IGPChatGetDraft.Builder {
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
        public func setIgpRoomId(_ value:Int64) -> IGPChatGetDraft.Builder {
            self.igpRoomId = value
            return self
        }
        @discardableResult
        public func clearIgpRoomId() -> IGPChatGetDraft.Builder{
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
        override public func clear() -> IGPChatGetDraft.Builder {
            builderResult = IGPChatGetDraft()
            return self
        }
        override public func clone() throws -> IGPChatGetDraft.Builder {
            return try IGPChatGetDraft.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPChatGetDraft {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPChatGetDraft {
            let returnMe:IGPChatGetDraft = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPChatGetDraft) throws -> IGPChatGetDraft.Builder {
            if other == IGPChatGetDraft() {
                return self
            }
            if (other.hasIgpRequest) {
                try mergeIgpRequest(value: other.igpRequest)
            }
            if other.hasIgpRoomId {
                igpRoomId = other.igpRoomId
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPChatGetDraft.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPChatGetDraft.Builder {
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

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPChatGetDraft.Builder {
            let resultDecodedBuilder = IGPChatGetDraft.Builder()
            if let jsonValueIgpRequest = jsonMap["IGPRequest"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpRequest = try IGPRequest.Builder.decodeToBuilder(jsonMap:jsonValueIgpRequest).build()

            }
            if let jsonValueIgpRoomId = jsonMap["IGPRoomId"] as? String {
                resultDecodedBuilder.igpRoomId = Int64(jsonValueIgpRoomId)!
            } else if let jsonValueIgpRoomId = jsonMap["IGPRoomId"] as? Int {
                resultDecodedBuilder.igpRoomId = Int64(jsonValueIgpRoomId)
            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> IGPChatGetDraft.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPChatGetDraft.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

final public class IGPChatGetDraftResponse : GeneratedResponseMessage {

    public static func == (lhs: IGPChatGetDraftResponse, rhs: IGPChatGetDraftResponse) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasIgpResponse == rhs.hasIgpResponse) && (!lhs.hasIgpResponse || lhs.igpResponse == rhs.igpResponse)
        fieldCheck = fieldCheck && (lhs.hasIgpDraft == rhs.hasIgpDraft) && (!lhs.hasIgpDraft || lhs.igpDraft == rhs.igpDraft)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }



    //iGap Properties declaration start



    //iGap Properties declaration end

    public fileprivate(set) var igpDraft:IGPRoomDraft!
    public fileprivate(set) var hasIgpDraft:Bool = false
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
        if hasIgpDraft {
            try codedOutputStream.writeMessage(fieldNumber: 2, value:igpDraft)
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
        if hasIgpDraft {
            if let varSizeigpDraft = igpDraft?.computeMessageSize(fieldNumber: 2) {
                serialize_size += varSizeigpDraft
            }
        }
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> IGPChatGetDraftResponse.Builder {
        return IGPChatGetDraftResponse.classBuilder() as! IGPChatGetDraftResponse.Builder
    }
    public func getBuilder() -> IGPChatGetDraftResponse.Builder {
        return classBuilder() as! IGPChatGetDraftResponse.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPChatGetDraftResponse.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPChatGetDraftResponse.Builder()
    }
    public func toBuilder() throws -> IGPChatGetDraftResponse.Builder {
        return try IGPChatGetDraftResponse.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPChatGetDraftResponse) throws -> IGPChatGetDraftResponse.Builder {
        return try IGPChatGetDraftResponse.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        guard isInitialized() else {
            throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
        }

        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasIgpResponse {
            jsonMap["IGPResponse"] = try igpResponse.encode()
        }
        if hasIgpDraft {
            jsonMap["IGPDraft"] = try igpDraft.encode()
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPChatGetDraftResponse {
        return try IGPChatGetDraftResponse.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPChatGetDraftResponse {
        return try IGPChatGetDraftResponse.Builder.fromJSONToBuilder(data:data).build()
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
        if hasIgpDraft {
            output += "\(indent) igpDraft {\n"
            if let outDescIgpDraft = igpDraft {
                output += try outDescIgpDraft.getDescription(indent: "\(indent)  ")
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
            if hasIgpDraft {
                if let hashValueigpDraft = igpDraft?.hashValue {
                    hashCode = (hashCode &* 31) &+ hashValueigpDraft
                }
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "IGPChatGetDraftResponse"
    }
    override public func className() -> String {
        return "IGPChatGetDraftResponse"
    }
    //Meta information declaration end

    final public class Builder : GeneratedResponseMessageBuilder {
        fileprivate var builderResult:IGPChatGetDraftResponse = IGPChatGetDraftResponse()
        public func getMessage() -> IGPChatGetDraftResponse {
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
        public func setIgpResponse(_ value:IGPResponse!) -> IGPChatGetDraftResponse.Builder {
            self.igpResponse = value
            return self
        }
        @discardableResult
        public func mergeIgpResponse(value:IGPResponse) throws -> IGPChatGetDraftResponse.Builder {
            if builderResult.hasIgpResponse {
                builderResult.igpResponse = try IGPResponse.builderWithPrototype(prototype:builderResult.igpResponse).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpResponse = value
            }
            builderResult.hasIgpResponse = true
            return self
        }
        @discardableResult
        public func clearIgpResponse() -> IGPChatGetDraftResponse.Builder {
            igpResponseBuilder_ = nil
            builderResult.hasIgpResponse = false
            builderResult.igpResponse = nil
            return self
        }
        public var igpDraft:IGPRoomDraft! {
            get {
                if igpDraftBuilder_ != nil {
                    builderResult.igpDraft = igpDraftBuilder_.getMessage()
                }
                return builderResult.igpDraft
            }
            set (value) {
                builderResult.hasIgpDraft = true
                builderResult.igpDraft = value
            }
        }
        public var hasIgpDraft:Bool {
            get {
                return builderResult.hasIgpDraft
            }
        }
        fileprivate var igpDraftBuilder_:IGPRoomDraft.Builder! {
            didSet {
                builderResult.hasIgpDraft = true
            }
        }
        public func getIgpDraftBuilder() -> IGPRoomDraft.Builder {
            if igpDraftBuilder_ == nil {
                igpDraftBuilder_ = IGPRoomDraft.Builder()
                builderResult.igpDraft = igpDraftBuilder_.getMessage()
                if igpDraft != nil {
                    try! igpDraftBuilder_.mergeFrom(other: igpDraft)
                }
            }
            return igpDraftBuilder_
        }
        @discardableResult
        public func setIgpDraft(_ value:IGPRoomDraft!) -> IGPChatGetDraftResponse.Builder {
            self.igpDraft = value
            return self
        }
        @discardableResult
        public func mergeIgpDraft(value:IGPRoomDraft) throws -> IGPChatGetDraftResponse.Builder {
            if builderResult.hasIgpDraft {
                builderResult.igpDraft = try IGPRoomDraft.builderWithPrototype(prototype:builderResult.igpDraft).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpDraft = value
            }
            builderResult.hasIgpDraft = true
            return self
        }
        @discardableResult
        public func clearIgpDraft() -> IGPChatGetDraftResponse.Builder {
            igpDraftBuilder_ = nil
            builderResult.hasIgpDraft = false
            builderResult.igpDraft = nil
            return self
        }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> IGPChatGetDraftResponse.Builder {
            builderResult = IGPChatGetDraftResponse()
            return self
        }
        override public func clone() throws -> IGPChatGetDraftResponse.Builder {
            return try IGPChatGetDraftResponse.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPChatGetDraftResponse {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPChatGetDraftResponse {
            let returnMe:IGPChatGetDraftResponse = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPChatGetDraftResponse) throws -> IGPChatGetDraftResponse.Builder {
            if other == IGPChatGetDraftResponse() {
                return self
            }
            if (other.hasIgpResponse) {
                try mergeIgpResponse(value: other.igpResponse)
            }
            if (other.hasIgpDraft) {
                try mergeIgpDraft(value: other.igpDraft)
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPChatGetDraftResponse.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPChatGetDraftResponse.Builder {
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
                    let subBuilder:IGPRoomDraft.Builder = IGPRoomDraft.Builder()
                    if hasIgpDraft {
                        try subBuilder.mergeFrom(other: igpDraft)
                    }
                    try codedInputStream.readMessage(builder: subBuilder, extensionRegistry:extensionRegistry)
                    igpDraft = subBuilder.buildPartial()

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPChatGetDraftResponse.Builder {
            let resultDecodedBuilder = IGPChatGetDraftResponse.Builder()
            if let jsonValueIgpResponse = jsonMap["IGPResponse"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpResponse = try IGPResponse.Builder.decodeToBuilder(jsonMap:jsonValueIgpResponse).build()

            }
            if let jsonValueIgpDraft = jsonMap["IGPDraft"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpDraft = try IGPRoomDraft.Builder.decodeToBuilder(jsonMap:jsonValueIgpDraft).build()

            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> IGPChatGetDraftResponse.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPChatGetDraftResponse.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

extension IGPChatGetDraft: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPChatGetDraft> {
        var mergedArray = Array<IGPChatGetDraft>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPChatGetDraft? {
        return try IGPChatGetDraft.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPChatGetDraft {
        return try IGPChatGetDraft.Builder().mergeFrom(data: data, extensionRegistry:ChatGetDraftRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPChatGetDraft {
        return try IGPChatGetDraft.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPChatGetDraft {
        return try IGPChatGetDraft.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPChatGetDraft {
        return try IGPChatGetDraft.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPChatGetDraft {
        return try IGPChatGetDraft.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPChatGetDraft {
        return try IGPChatGetDraft.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpRequest": return self.igpRequest
        case "igpRoomId": return self.igpRoomId
        default: return nil
        }
    }
}
extension IGPChatGetDraft.Builder: GeneratedMessageBuilderProtocol {
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "igpRequest": return self.igpRequest
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
extension IGPChatGetDraftResponse: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPChatGetDraftResponse> {
        var mergedArray = Array<IGPChatGetDraftResponse>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPChatGetDraftResponse? {
        return try IGPChatGetDraftResponse.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPChatGetDraftResponse {
        return try IGPChatGetDraftResponse.Builder().mergeFrom(data: data, extensionRegistry:ChatGetDraftRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPChatGetDraftResponse {
        return try IGPChatGetDraftResponse.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPChatGetDraftResponse {
        return try IGPChatGetDraftResponse.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPChatGetDraftResponse {
        return try IGPChatGetDraftResponse.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPChatGetDraftResponse {
        return try IGPChatGetDraftResponse.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPChatGetDraftResponse {
        return try IGPChatGetDraftResponse.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpResponse": return self.igpResponse
        case "igpDraft": return self.igpDraft
        default: return nil
        }
    }
}
extension IGPChatGetDraftResponse.Builder: GeneratedMessageBuilderProtocol {
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "igpResponse": return self.igpResponse
            case "igpDraft": return self.igpDraft
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
            case "igpDraft":
                guard let newSubscriptValue = newSubscriptValue as? IGPRoomDraft else {
                    return
                }
                self.igpDraft = newSubscriptValue
            default: return
            }
        }
    }
}

// @@protoc_insertion_point(global_scope)