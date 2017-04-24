/// Generated by the Protocol Buffers 3.2.0 compiler.  DO NOT EDIT!
/// Protobuf-swift version: 3.0.13
/// Source file "GroupGetDraft.proto"
/// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct GroupGetDraftRoot {
    public static let `default` = GroupGetDraftRoot()
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

final public class IGPGroupGetDraft : GeneratedMessage {

    public static func == (lhs: IGPGroupGetDraft, rhs: IGPGroupGetDraft) -> Bool {
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
    public class func getBuilder() -> IGPGroupGetDraft.Builder {
        return IGPGroupGetDraft.classBuilder() as! IGPGroupGetDraft.Builder
    }
    public func getBuilder() -> IGPGroupGetDraft.Builder {
        return classBuilder() as! IGPGroupGetDraft.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPGroupGetDraft.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPGroupGetDraft.Builder()
    }
    public func toBuilder() throws -> IGPGroupGetDraft.Builder {
        return try IGPGroupGetDraft.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPGroupGetDraft) throws -> IGPGroupGetDraft.Builder {
        return try IGPGroupGetDraft.Builder().mergeFrom(other:prototype)
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
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPGroupGetDraft {
        return try IGPGroupGetDraft.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPGroupGetDraft {
        return try IGPGroupGetDraft.Builder.fromJSONToBuilder(data:data).build()
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
        return "IGPGroupGetDraft"
    }
    override public func className() -> String {
        return "IGPGroupGetDraft"
    }
    //Meta information declaration end

    final public class Builder : GeneratedRequestMessageBuilder {
        fileprivate var builderResult:IGPGroupGetDraft = IGPGroupGetDraft()
        public func getMessage() -> IGPGroupGetDraft {
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
        public override func setIgpRequest(_ value:IGPRequest!) -> IGPGroupGetDraft.Builder {
            self.igpRequest = value
            return self
        }
        @discardableResult
        public func mergeIgpRequest(value:IGPRequest) throws -> IGPGroupGetDraft.Builder {
            if builderResult.hasIgpRequest {
                builderResult.igpRequest = try IGPRequest.builderWithPrototype(prototype:builderResult.igpRequest).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpRequest = value
            }
            builderResult.hasIgpRequest = true
            return self
        }
        @discardableResult
        public func clearIgpRequest() -> IGPGroupGetDraft.Builder {
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
        public func setIgpRoomId(_ value:Int64) -> IGPGroupGetDraft.Builder {
            self.igpRoomId = value
            return self
        }
        @discardableResult
        public func clearIgpRoomId() -> IGPGroupGetDraft.Builder{
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
        override public func clear() -> IGPGroupGetDraft.Builder {
            builderResult = IGPGroupGetDraft()
            return self
        }
        override public func clone() throws -> IGPGroupGetDraft.Builder {
            return try IGPGroupGetDraft.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPGroupGetDraft {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPGroupGetDraft {
            let returnMe:IGPGroupGetDraft = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPGroupGetDraft) throws -> IGPGroupGetDraft.Builder {
            if other == IGPGroupGetDraft() {
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
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPGroupGetDraft.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPGroupGetDraft.Builder {
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
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPGroupGetDraft.Builder {
            let resultDecodedBuilder = IGPGroupGetDraft.Builder()
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
        override class public func fromJSONToBuilder(data:Data) throws -> IGPGroupGetDraft.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPGroupGetDraft.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

final public class IGPGroupGetDraftResponse : GeneratedResponseMessage {

    public static func == (lhs: IGPGroupGetDraftResponse, rhs: IGPGroupGetDraftResponse) -> Bool {
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
    public class func getBuilder() -> IGPGroupGetDraftResponse.Builder {
        return IGPGroupGetDraftResponse.classBuilder() as! IGPGroupGetDraftResponse.Builder
    }
    public func getBuilder() -> IGPGroupGetDraftResponse.Builder {
        return classBuilder() as! IGPGroupGetDraftResponse.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPGroupGetDraftResponse.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPGroupGetDraftResponse.Builder()
    }
    public func toBuilder() throws -> IGPGroupGetDraftResponse.Builder {
        return try IGPGroupGetDraftResponse.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPGroupGetDraftResponse) throws -> IGPGroupGetDraftResponse.Builder {
        return try IGPGroupGetDraftResponse.Builder().mergeFrom(other:prototype)
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
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPGroupGetDraftResponse {
        return try IGPGroupGetDraftResponse.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPGroupGetDraftResponse {
        return try IGPGroupGetDraftResponse.Builder.fromJSONToBuilder(data:data).build()
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
        return "IGPGroupGetDraftResponse"
    }
    override public func className() -> String {
        return "IGPGroupGetDraftResponse"
    }
    //Meta information declaration end

    final public class Builder : GeneratedResponseMessageBuilder {
        fileprivate var builderResult:IGPGroupGetDraftResponse = IGPGroupGetDraftResponse()
        public func getMessage() -> IGPGroupGetDraftResponse {
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
        public func setIgpResponse(_ value:IGPResponse!) -> IGPGroupGetDraftResponse.Builder {
            self.igpResponse = value
            return self
        }
        @discardableResult
        public func mergeIgpResponse(value:IGPResponse) throws -> IGPGroupGetDraftResponse.Builder {
            if builderResult.hasIgpResponse {
                builderResult.igpResponse = try IGPResponse.builderWithPrototype(prototype:builderResult.igpResponse).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpResponse = value
            }
            builderResult.hasIgpResponse = true
            return self
        }
        @discardableResult
        public func clearIgpResponse() -> IGPGroupGetDraftResponse.Builder {
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
        public func setIgpDraft(_ value:IGPRoomDraft!) -> IGPGroupGetDraftResponse.Builder {
            self.igpDraft = value
            return self
        }
        @discardableResult
        public func mergeIgpDraft(value:IGPRoomDraft) throws -> IGPGroupGetDraftResponse.Builder {
            if builderResult.hasIgpDraft {
                builderResult.igpDraft = try IGPRoomDraft.builderWithPrototype(prototype:builderResult.igpDraft).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpDraft = value
            }
            builderResult.hasIgpDraft = true
            return self
        }
        @discardableResult
        public func clearIgpDraft() -> IGPGroupGetDraftResponse.Builder {
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
        override public func clear() -> IGPGroupGetDraftResponse.Builder {
            builderResult = IGPGroupGetDraftResponse()
            return self
        }
        override public func clone() throws -> IGPGroupGetDraftResponse.Builder {
            return try IGPGroupGetDraftResponse.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPGroupGetDraftResponse {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPGroupGetDraftResponse {
            let returnMe:IGPGroupGetDraftResponse = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPGroupGetDraftResponse) throws -> IGPGroupGetDraftResponse.Builder {
            if other == IGPGroupGetDraftResponse() {
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
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPGroupGetDraftResponse.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPGroupGetDraftResponse.Builder {
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
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPGroupGetDraftResponse.Builder {
            let resultDecodedBuilder = IGPGroupGetDraftResponse.Builder()
            if let jsonValueIgpResponse = jsonMap["IGPResponse"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpResponse = try IGPResponse.Builder.decodeToBuilder(jsonMap:jsonValueIgpResponse).build()

            }
            if let jsonValueIgpDraft = jsonMap["IGPDraft"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpDraft = try IGPRoomDraft.Builder.decodeToBuilder(jsonMap:jsonValueIgpDraft).build()

            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> IGPGroupGetDraftResponse.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPGroupGetDraftResponse.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

extension IGPGroupGetDraft: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPGroupGetDraft> {
        var mergedArray = Array<IGPGroupGetDraft>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPGroupGetDraft? {
        return try IGPGroupGetDraft.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPGroupGetDraft {
        return try IGPGroupGetDraft.Builder().mergeFrom(data: data, extensionRegistry:GroupGetDraftRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPGroupGetDraft {
        return try IGPGroupGetDraft.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPGroupGetDraft {
        return try IGPGroupGetDraft.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPGroupGetDraft {
        return try IGPGroupGetDraft.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPGroupGetDraft {
        return try IGPGroupGetDraft.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPGroupGetDraft {
        return try IGPGroupGetDraft.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpRequest": return self.igpRequest
        case "igpRoomId": return self.igpRoomId
        default: return nil
        }
    }
}
extension IGPGroupGetDraft.Builder: GeneratedMessageBuilderProtocol {
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
extension IGPGroupGetDraftResponse: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPGroupGetDraftResponse> {
        var mergedArray = Array<IGPGroupGetDraftResponse>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPGroupGetDraftResponse? {
        return try IGPGroupGetDraftResponse.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPGroupGetDraftResponse {
        return try IGPGroupGetDraftResponse.Builder().mergeFrom(data: data, extensionRegistry:GroupGetDraftRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPGroupGetDraftResponse {
        return try IGPGroupGetDraftResponse.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPGroupGetDraftResponse {
        return try IGPGroupGetDraftResponse.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPGroupGetDraftResponse {
        return try IGPGroupGetDraftResponse.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPGroupGetDraftResponse {
        return try IGPGroupGetDraftResponse.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPGroupGetDraftResponse {
        return try IGPGroupGetDraftResponse.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpResponse": return self.igpResponse
        case "igpDraft": return self.igpDraft
        default: return nil
        }
    }
}
extension IGPGroupGetDraftResponse.Builder: GeneratedMessageBuilderProtocol {
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
