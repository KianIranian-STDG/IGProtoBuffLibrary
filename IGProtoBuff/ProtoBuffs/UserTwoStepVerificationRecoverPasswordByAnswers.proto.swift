/// Generated by the Protocol Buffers 3.2.0 compiler.  DO NOT EDIT!
/// Protobuf-swift version: 3.0.13
/// Source file "UserTwoStepVerificationRecoverPasswordByAnswers.proto"
/// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct UserTwoStepVerificationRecoverPasswordByAnswersRoot {
    public static let `default` = UserTwoStepVerificationRecoverPasswordByAnswersRoot()
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

final public class IGPUserTwoStepVerificationRecoverPasswordByAnswers : GeneratedMessage {

    public static func == (lhs: IGPUserTwoStepVerificationRecoverPasswordByAnswers, rhs: IGPUserTwoStepVerificationRecoverPasswordByAnswers) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasIgpRequest == rhs.hasIgpRequest) && (!lhs.hasIgpRequest || lhs.igpRequest == rhs.igpRequest)
        fieldCheck = fieldCheck && (lhs.hasIgpAnswerOne == rhs.hasIgpAnswerOne) && (!lhs.hasIgpAnswerOne || lhs.igpAnswerOne == rhs.igpAnswerOne)
        fieldCheck = fieldCheck && (lhs.hasIgpAnswerTwo == rhs.hasIgpAnswerTwo) && (!lhs.hasIgpAnswerTwo || lhs.igpAnswerTwo == rhs.igpAnswerTwo)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }



    //iGap Properties declaration start



    //iGap Properties declaration end

    public fileprivate(set) var igpRequest:IGPRequest!
    public fileprivate(set) var hasIgpRequest:Bool = false
    public fileprivate(set) var igpAnswerOne:String = ""
    public fileprivate(set) var hasIgpAnswerOne:Bool = false

    public fileprivate(set) var igpAnswerTwo:String = ""
    public fileprivate(set) var hasIgpAnswerTwo:Bool = false

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
        if hasIgpAnswerOne {
            try codedOutputStream.writeString(fieldNumber: 2, value:igpAnswerOne)
        }
        if hasIgpAnswerTwo {
            try codedOutputStream.writeString(fieldNumber: 3, value:igpAnswerTwo)
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
        if hasIgpAnswerOne {
            serialize_size += igpAnswerOne.computeStringSize(fieldNumber: 2)
        }
        if hasIgpAnswerTwo {
            serialize_size += igpAnswerTwo.computeStringSize(fieldNumber: 3)
        }
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> IGPUserTwoStepVerificationRecoverPasswordByAnswers.Builder {
        return IGPUserTwoStepVerificationRecoverPasswordByAnswers.classBuilder() as! IGPUserTwoStepVerificationRecoverPasswordByAnswers.Builder
    }
    public func getBuilder() -> IGPUserTwoStepVerificationRecoverPasswordByAnswers.Builder {
        return classBuilder() as! IGPUserTwoStepVerificationRecoverPasswordByAnswers.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPUserTwoStepVerificationRecoverPasswordByAnswers.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPUserTwoStepVerificationRecoverPasswordByAnswers.Builder()
    }
    public func toBuilder() throws -> IGPUserTwoStepVerificationRecoverPasswordByAnswers.Builder {
        return try IGPUserTwoStepVerificationRecoverPasswordByAnswers.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPUserTwoStepVerificationRecoverPasswordByAnswers) throws -> IGPUserTwoStepVerificationRecoverPasswordByAnswers.Builder {
        return try IGPUserTwoStepVerificationRecoverPasswordByAnswers.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        guard isInitialized() else {
            throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
        }

        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasIgpRequest {
            jsonMap["IGPRequest"] = try igpRequest.encode()
        }
        if hasIgpAnswerOne {
            jsonMap["IGPAnswerOne"] = igpAnswerOne
        }
        if hasIgpAnswerTwo {
            jsonMap["IGPAnswerTwo"] = igpAnswerTwo
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPUserTwoStepVerificationRecoverPasswordByAnswers {
        return try IGPUserTwoStepVerificationRecoverPasswordByAnswers.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPUserTwoStepVerificationRecoverPasswordByAnswers {
        return try IGPUserTwoStepVerificationRecoverPasswordByAnswers.Builder.fromJSONToBuilder(data:data).build()
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
        if hasIgpAnswerOne {
            output += "\(indent) igpAnswerOne: \(igpAnswerOne) \n"
        }
        if hasIgpAnswerTwo {
            output += "\(indent) igpAnswerTwo: \(igpAnswerTwo) \n"
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
            if hasIgpAnswerOne {
                hashCode = (hashCode &* 31) &+ igpAnswerOne.hashValue
            }
            if hasIgpAnswerTwo {
                hashCode = (hashCode &* 31) &+ igpAnswerTwo.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "IGPUserTwoStepVerificationRecoverPasswordByAnswers"
    }
    override public func className() -> String {
        return "IGPUserTwoStepVerificationRecoverPasswordByAnswers"
    }
    //Meta information declaration end

    final public class Builder : GeneratedRequestMessageBuilder {
        fileprivate var builderResult:IGPUserTwoStepVerificationRecoverPasswordByAnswers = IGPUserTwoStepVerificationRecoverPasswordByAnswers()
        public func getMessage() -> IGPUserTwoStepVerificationRecoverPasswordByAnswers {
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
        public override func setIgpRequest(_ value:IGPRequest!) -> IGPUserTwoStepVerificationRecoverPasswordByAnswers.Builder {
            self.igpRequest = value
            return self
        }
        @discardableResult
        public func mergeIgpRequest(value:IGPRequest) throws -> IGPUserTwoStepVerificationRecoverPasswordByAnswers.Builder {
            if builderResult.hasIgpRequest {
                builderResult.igpRequest = try IGPRequest.builderWithPrototype(prototype:builderResult.igpRequest).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpRequest = value
            }
            builderResult.hasIgpRequest = true
            return self
        }
        @discardableResult
        public func clearIgpRequest() -> IGPUserTwoStepVerificationRecoverPasswordByAnswers.Builder {
            igpRequestBuilder_ = nil
            builderResult.hasIgpRequest = false
            builderResult.igpRequest = nil
            return self
        }
        public var igpAnswerOne:String {
            get {
                return builderResult.igpAnswerOne
            }
            set (value) {
                builderResult.hasIgpAnswerOne = true
                builderResult.igpAnswerOne = value
            }
        }
        public var hasIgpAnswerOne:Bool {
            get {
                return builderResult.hasIgpAnswerOne
            }
        }
        @discardableResult
        public func setIgpAnswerOne(_ value:String) -> IGPUserTwoStepVerificationRecoverPasswordByAnswers.Builder {
            self.igpAnswerOne = value
            return self
        }
        @discardableResult
        public func clearIgpAnswerOne() -> IGPUserTwoStepVerificationRecoverPasswordByAnswers.Builder{
            builderResult.hasIgpAnswerOne = false
            builderResult.igpAnswerOne = ""
            return self
        }
        public var igpAnswerTwo:String {
            get {
                return builderResult.igpAnswerTwo
            }
            set (value) {
                builderResult.hasIgpAnswerTwo = true
                builderResult.igpAnswerTwo = value
            }
        }
        public var hasIgpAnswerTwo:Bool {
            get {
                return builderResult.hasIgpAnswerTwo
            }
        }
        @discardableResult
        public func setIgpAnswerTwo(_ value:String) -> IGPUserTwoStepVerificationRecoverPasswordByAnswers.Builder {
            self.igpAnswerTwo = value
            return self
        }
        @discardableResult
        public func clearIgpAnswerTwo() -> IGPUserTwoStepVerificationRecoverPasswordByAnswers.Builder{
            builderResult.hasIgpAnswerTwo = false
            builderResult.igpAnswerTwo = ""
            return self
        }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> IGPUserTwoStepVerificationRecoverPasswordByAnswers.Builder {
            builderResult = IGPUserTwoStepVerificationRecoverPasswordByAnswers()
            return self
        }
        override public func clone() throws -> IGPUserTwoStepVerificationRecoverPasswordByAnswers.Builder {
            return try IGPUserTwoStepVerificationRecoverPasswordByAnswers.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPUserTwoStepVerificationRecoverPasswordByAnswers {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPUserTwoStepVerificationRecoverPasswordByAnswers {
            let returnMe:IGPUserTwoStepVerificationRecoverPasswordByAnswers = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPUserTwoStepVerificationRecoverPasswordByAnswers) throws -> IGPUserTwoStepVerificationRecoverPasswordByAnswers.Builder {
            if other == IGPUserTwoStepVerificationRecoverPasswordByAnswers() {
                return self
            }
            if (other.hasIgpRequest) {
                try mergeIgpRequest(value: other.igpRequest)
            }
            if other.hasIgpAnswerOne {
                igpAnswerOne = other.igpAnswerOne
            }
            if other.hasIgpAnswerTwo {
                igpAnswerTwo = other.igpAnswerTwo
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPUserTwoStepVerificationRecoverPasswordByAnswers.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationRecoverPasswordByAnswers.Builder {
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
                    igpAnswerOne = try codedInputStream.readString()

                case 26:
                    igpAnswerTwo = try codedInputStream.readString()

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPUserTwoStepVerificationRecoverPasswordByAnswers.Builder {
            let resultDecodedBuilder = IGPUserTwoStepVerificationRecoverPasswordByAnswers.Builder()
            if let jsonValueIgpRequest = jsonMap["IGPRequest"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpRequest = try IGPRequest.Builder.decodeToBuilder(jsonMap:jsonValueIgpRequest).build()

            }
            if let jsonValueIgpAnswerOne = jsonMap["IGPAnswerOne"] as? String {
                resultDecodedBuilder.igpAnswerOne = jsonValueIgpAnswerOne
            }
            if let jsonValueIgpAnswerTwo = jsonMap["IGPAnswerTwo"] as? String {
                resultDecodedBuilder.igpAnswerTwo = jsonValueIgpAnswerTwo
            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> IGPUserTwoStepVerificationRecoverPasswordByAnswers.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPUserTwoStepVerificationRecoverPasswordByAnswers.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

final public class IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse : GeneratedResponseMessage {

    public static func == (lhs: IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse, rhs: IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasIgpResponse == rhs.hasIgpResponse) && (!lhs.hasIgpResponse || lhs.igpResponse == rhs.igpResponse)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }



    //iGap Properties declaration start



    //iGap Properties declaration end

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
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse.Builder {
        return IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse.classBuilder() as! IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse.Builder
    }
    public func getBuilder() -> IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse.Builder {
        return classBuilder() as! IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse.Builder()
    }
    public func toBuilder() throws -> IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse.Builder {
        return try IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse) throws -> IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse.Builder {
        return try IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        guard isInitialized() else {
            throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
        }

        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasIgpResponse {
            jsonMap["IGPResponse"] = try igpResponse.encode()
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse {
        return try IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse {
        return try IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse.Builder.fromJSONToBuilder(data:data).build()
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
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse"
    }
    override public func className() -> String {
        return "IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse"
    }
    //Meta information declaration end

    final public class Builder : GeneratedResponseMessageBuilder {
        fileprivate var builderResult:IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse = IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse()
        public func getMessage() -> IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse {
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
        public func setIgpResponse(_ value:IGPResponse!) -> IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse.Builder {
            self.igpResponse = value
            return self
        }
        @discardableResult
        public func mergeIgpResponse(value:IGPResponse) throws -> IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse.Builder {
            if builderResult.hasIgpResponse {
                builderResult.igpResponse = try IGPResponse.builderWithPrototype(prototype:builderResult.igpResponse).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpResponse = value
            }
            builderResult.hasIgpResponse = true
            return self
        }
        @discardableResult
        public func clearIgpResponse() -> IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse.Builder {
            igpResponseBuilder_ = nil
            builderResult.hasIgpResponse = false
            builderResult.igpResponse = nil
            return self
        }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse.Builder {
            builderResult = IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse()
            return self
        }
        override public func clone() throws -> IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse.Builder {
            return try IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse {
            let returnMe:IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse) throws -> IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse.Builder {
            if other == IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse() {
                return self
            }
            if (other.hasIgpResponse) {
                try mergeIgpResponse(value: other.igpResponse)
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse.Builder {
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

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse.Builder {
            let resultDecodedBuilder = IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse.Builder()
            if let jsonValueIgpResponse = jsonMap["IGPResponse"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpResponse = try IGPResponse.Builder.decodeToBuilder(jsonMap:jsonValueIgpResponse).build()

            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

extension IGPUserTwoStepVerificationRecoverPasswordByAnswers: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPUserTwoStepVerificationRecoverPasswordByAnswers> {
        var mergedArray = Array<IGPUserTwoStepVerificationRecoverPasswordByAnswers>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPUserTwoStepVerificationRecoverPasswordByAnswers? {
        return try IGPUserTwoStepVerificationRecoverPasswordByAnswers.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPUserTwoStepVerificationRecoverPasswordByAnswers {
        return try IGPUserTwoStepVerificationRecoverPasswordByAnswers.Builder().mergeFrom(data: data, extensionRegistry:UserTwoStepVerificationRecoverPasswordByAnswersRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationRecoverPasswordByAnswers {
        return try IGPUserTwoStepVerificationRecoverPasswordByAnswers.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPUserTwoStepVerificationRecoverPasswordByAnswers {
        return try IGPUserTwoStepVerificationRecoverPasswordByAnswers.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationRecoverPasswordByAnswers {
        return try IGPUserTwoStepVerificationRecoverPasswordByAnswers.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPUserTwoStepVerificationRecoverPasswordByAnswers {
        return try IGPUserTwoStepVerificationRecoverPasswordByAnswers.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationRecoverPasswordByAnswers {
        return try IGPUserTwoStepVerificationRecoverPasswordByAnswers.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpRequest": return self.igpRequest
        case "igpAnswerOne": return self.igpAnswerOne
        case "igpAnswerTwo": return self.igpAnswerTwo
        default: return nil
        }
    }
}
extension IGPUserTwoStepVerificationRecoverPasswordByAnswers.Builder: GeneratedMessageBuilderProtocol {
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "igpRequest": return self.igpRequest
            case "igpAnswerOne": return self.igpAnswerOne
            case "igpAnswerTwo": return self.igpAnswerTwo
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
            case "igpAnswerOne":
                guard let newSubscriptValue = newSubscriptValue as? String else {
                    return
                }
                self.igpAnswerOne = newSubscriptValue
            case "igpAnswerTwo":
                guard let newSubscriptValue = newSubscriptValue as? String else {
                    return
                }
                self.igpAnswerTwo = newSubscriptValue
            default: return
            }
        }
    }
}
extension IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse> {
        var mergedArray = Array<IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse? {
        return try IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse {
        return try IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse.Builder().mergeFrom(data: data, extensionRegistry:UserTwoStepVerificationRecoverPasswordByAnswersRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse {
        return try IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse {
        return try IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse {
        return try IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse {
        return try IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse {
        return try IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpResponse": return self.igpResponse
        default: return nil
        }
    }
}
extension IGPUserTwoStepVerificationRecoverPasswordByAnswersResponse.Builder: GeneratedMessageBuilderProtocol {
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "igpResponse": return self.igpResponse
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
            default: return
            }
        }
    }
}

// @@protoc_insertion_point(global_scope)
