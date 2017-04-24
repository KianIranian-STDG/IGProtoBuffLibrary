/// Generated by the Protocol Buffers 3.2.0 compiler.  DO NOT EDIT!
/// Protobuf-swift version: 3.0.13
/// Source file "QrCodeJoin.proto"
/// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct QrCodeJoinRoot {
    public static let `default` = QrCodeJoinRoot()
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

final public class IGPQrCodeJoin : GeneratedMessage {

    public static func == (lhs: IGPQrCodeJoin, rhs: IGPQrCodeJoin) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasIgpRequest == rhs.hasIgpRequest) && (!lhs.hasIgpRequest || lhs.igpRequest == rhs.igpRequest)
        fieldCheck = fieldCheck && (lhs.hasIgpInviteToken == rhs.hasIgpInviteToken) && (!lhs.hasIgpInviteToken || lhs.igpInviteToken == rhs.igpInviteToken)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }



    //iGap Properties declaration start



    //iGap Properties declaration end

    public fileprivate(set) var igpRequest:IGPRequest!
    public fileprivate(set) var hasIgpRequest:Bool = false
    public fileprivate(set) var igpInviteToken:String = ""
    public fileprivate(set) var hasIgpInviteToken:Bool = false

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
        if hasIgpInviteToken {
            try codedOutputStream.writeString(fieldNumber: 2, value:igpInviteToken)
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
        if hasIgpInviteToken {
            serialize_size += igpInviteToken.computeStringSize(fieldNumber: 2)
        }
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> IGPQrCodeJoin.Builder {
        return IGPQrCodeJoin.classBuilder() as! IGPQrCodeJoin.Builder
    }
    public func getBuilder() -> IGPQrCodeJoin.Builder {
        return classBuilder() as! IGPQrCodeJoin.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPQrCodeJoin.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPQrCodeJoin.Builder()
    }
    public func toBuilder() throws -> IGPQrCodeJoin.Builder {
        return try IGPQrCodeJoin.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPQrCodeJoin) throws -> IGPQrCodeJoin.Builder {
        return try IGPQrCodeJoin.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        guard isInitialized() else {
            throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
        }

        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasIgpRequest {
            jsonMap["IGPRequest"] = try igpRequest.encode()
        }
        if hasIgpInviteToken {
            jsonMap["IGPInviteToken"] = igpInviteToken
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPQrCodeJoin {
        return try IGPQrCodeJoin.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPQrCodeJoin {
        return try IGPQrCodeJoin.Builder.fromJSONToBuilder(data:data).build()
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
        if hasIgpInviteToken {
            output += "\(indent) igpInviteToken: \(igpInviteToken) \n"
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
            if hasIgpInviteToken {
                hashCode = (hashCode &* 31) &+ igpInviteToken.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "IGPQrCodeJoin"
    }
    override public func className() -> String {
        return "IGPQrCodeJoin"
    }
    //Meta information declaration end

    final public class Builder : GeneratedRequestMessageBuilder {
        fileprivate var builderResult:IGPQrCodeJoin = IGPQrCodeJoin()
        public func getMessage() -> IGPQrCodeJoin {
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
        public override func setIgpRequest(_ value:IGPRequest!) -> IGPQrCodeJoin.Builder {
            self.igpRequest = value
            return self
        }
        @discardableResult
        public func mergeIgpRequest(value:IGPRequest) throws -> IGPQrCodeJoin.Builder {
            if builderResult.hasIgpRequest {
                builderResult.igpRequest = try IGPRequest.builderWithPrototype(prototype:builderResult.igpRequest).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpRequest = value
            }
            builderResult.hasIgpRequest = true
            return self
        }
        @discardableResult
        public func clearIgpRequest() -> IGPQrCodeJoin.Builder {
            igpRequestBuilder_ = nil
            builderResult.hasIgpRequest = false
            builderResult.igpRequest = nil
            return self
        }
        public var igpInviteToken:String {
            get {
                return builderResult.igpInviteToken
            }
            set (value) {
                builderResult.hasIgpInviteToken = true
                builderResult.igpInviteToken = value
            }
        }
        public var hasIgpInviteToken:Bool {
            get {
                return builderResult.hasIgpInviteToken
            }
        }
        @discardableResult
        public func setIgpInviteToken(_ value:String) -> IGPQrCodeJoin.Builder {
            self.igpInviteToken = value
            return self
        }
        @discardableResult
        public func clearIgpInviteToken() -> IGPQrCodeJoin.Builder{
            builderResult.hasIgpInviteToken = false
            builderResult.igpInviteToken = ""
            return self
        }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> IGPQrCodeJoin.Builder {
            builderResult = IGPQrCodeJoin()
            return self
        }
        override public func clone() throws -> IGPQrCodeJoin.Builder {
            return try IGPQrCodeJoin.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPQrCodeJoin {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPQrCodeJoin {
            let returnMe:IGPQrCodeJoin = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPQrCodeJoin) throws -> IGPQrCodeJoin.Builder {
            if other == IGPQrCodeJoin() {
                return self
            }
            if (other.hasIgpRequest) {
                try mergeIgpRequest(value: other.igpRequest)
            }
            if other.hasIgpInviteToken {
                igpInviteToken = other.igpInviteToken
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPQrCodeJoin.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPQrCodeJoin.Builder {
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
                    igpInviteToken = try codedInputStream.readString()

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPQrCodeJoin.Builder {
            let resultDecodedBuilder = IGPQrCodeJoin.Builder()
            if let jsonValueIgpRequest = jsonMap["IGPRequest"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpRequest = try IGPRequest.Builder.decodeToBuilder(jsonMap:jsonValueIgpRequest).build()

            }
            if let jsonValueIgpInviteToken = jsonMap["IGPInviteToken"] as? String {
                resultDecodedBuilder.igpInviteToken = jsonValueIgpInviteToken
            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> IGPQrCodeJoin.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPQrCodeJoin.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

final public class IGPQrCodeJoinResponse : GeneratedResponseMessage {

    public static func == (lhs: IGPQrCodeJoinResponse, rhs: IGPQrCodeJoinResponse) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasIgpResponse == rhs.hasIgpResponse) && (!lhs.hasIgpResponse || lhs.igpResponse == rhs.igpResponse)
        fieldCheck = fieldCheck && (lhs.hasIgpQrCodeImage == rhs.hasIgpQrCodeImage) && (!lhs.hasIgpQrCodeImage || lhs.igpQrCodeImage == rhs.igpQrCodeImage)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }



    //iGap Properties declaration start



    //iGap Properties declaration end

    public fileprivate(set) var igpQrCodeImage:Data = Data()
    public fileprivate(set) var hasIgpQrCodeImage:Bool = false

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
        if hasIgpQrCodeImage {
            try codedOutputStream.writeData(fieldNumber: 2, value:igpQrCodeImage)
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
        if hasIgpQrCodeImage {
            serialize_size += igpQrCodeImage.computeDataSize(fieldNumber: 2)
        }
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> IGPQrCodeJoinResponse.Builder {
        return IGPQrCodeJoinResponse.classBuilder() as! IGPQrCodeJoinResponse.Builder
    }
    public func getBuilder() -> IGPQrCodeJoinResponse.Builder {
        return classBuilder() as! IGPQrCodeJoinResponse.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPQrCodeJoinResponse.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPQrCodeJoinResponse.Builder()
    }
    public func toBuilder() throws -> IGPQrCodeJoinResponse.Builder {
        return try IGPQrCodeJoinResponse.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPQrCodeJoinResponse) throws -> IGPQrCodeJoinResponse.Builder {
        return try IGPQrCodeJoinResponse.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        guard isInitialized() else {
            throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
        }

        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasIgpResponse {
            jsonMap["IGPResponse"] = try igpResponse.encode()
        }
        if hasIgpQrCodeImage {
            jsonMap["IGPQrCodeImage"] = igpQrCodeImage.base64EncodedString(options: Data.Base64EncodingOptions(rawValue: 0))
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPQrCodeJoinResponse {
        return try IGPQrCodeJoinResponse.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPQrCodeJoinResponse {
        return try IGPQrCodeJoinResponse.Builder.fromJSONToBuilder(data:data).build()
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
        if hasIgpQrCodeImage {
            output += "\(indent) igpQrCodeImage: \(igpQrCodeImage) \n"
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
            if hasIgpQrCodeImage {
                hashCode = (hashCode &* 31) &+ igpQrCodeImage.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "IGPQrCodeJoinResponse"
    }
    override public func className() -> String {
        return "IGPQrCodeJoinResponse"
    }
    //Meta information declaration end

    final public class Builder : GeneratedResponseMessageBuilder {
        fileprivate var builderResult:IGPQrCodeJoinResponse = IGPQrCodeJoinResponse()
        public func getMessage() -> IGPQrCodeJoinResponse {
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
        public func setIgpResponse(_ value:IGPResponse!) -> IGPQrCodeJoinResponse.Builder {
            self.igpResponse = value
            return self
        }
        @discardableResult
        public func mergeIgpResponse(value:IGPResponse) throws -> IGPQrCodeJoinResponse.Builder {
            if builderResult.hasIgpResponse {
                builderResult.igpResponse = try IGPResponse.builderWithPrototype(prototype:builderResult.igpResponse).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpResponse = value
            }
            builderResult.hasIgpResponse = true
            return self
        }
        @discardableResult
        public func clearIgpResponse() -> IGPQrCodeJoinResponse.Builder {
            igpResponseBuilder_ = nil
            builderResult.hasIgpResponse = false
            builderResult.igpResponse = nil
            return self
        }
        public var igpQrCodeImage:Data {
            get {
                return builderResult.igpQrCodeImage
            }
            set (value) {
                builderResult.hasIgpQrCodeImage = true
                builderResult.igpQrCodeImage = value
            }
        }
        public var hasIgpQrCodeImage:Bool {
            get {
                return builderResult.hasIgpQrCodeImage
            }
        }
        @discardableResult
        public func setIgpQrCodeImage(_ value:Data) -> IGPQrCodeJoinResponse.Builder {
            self.igpQrCodeImage = value
            return self
        }
        @discardableResult
        public func clearIgpQrCodeImage() -> IGPQrCodeJoinResponse.Builder{
            builderResult.hasIgpQrCodeImage = false
            builderResult.igpQrCodeImage = Data()
            return self
        }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> IGPQrCodeJoinResponse.Builder {
            builderResult = IGPQrCodeJoinResponse()
            return self
        }
        override public func clone() throws -> IGPQrCodeJoinResponse.Builder {
            return try IGPQrCodeJoinResponse.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPQrCodeJoinResponse {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPQrCodeJoinResponse {
            let returnMe:IGPQrCodeJoinResponse = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPQrCodeJoinResponse) throws -> IGPQrCodeJoinResponse.Builder {
            if other == IGPQrCodeJoinResponse() {
                return self
            }
            if (other.hasIgpResponse) {
                try mergeIgpResponse(value: other.igpResponse)
            }
            if other.hasIgpQrCodeImage {
                igpQrCodeImage = other.igpQrCodeImage
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPQrCodeJoinResponse.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPQrCodeJoinResponse.Builder {
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
                    igpQrCodeImage = try codedInputStream.readData()

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPQrCodeJoinResponse.Builder {
            let resultDecodedBuilder = IGPQrCodeJoinResponse.Builder()
            if let jsonValueIgpResponse = jsonMap["IGPResponse"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpResponse = try IGPResponse.Builder.decodeToBuilder(jsonMap:jsonValueIgpResponse).build()

            }
            if let jsonValueIgpQrCodeImage = jsonMap["IGPQrCodeImage"] as? String {
                resultDecodedBuilder.igpQrCodeImage = Data(base64Encoded:jsonValueIgpQrCodeImage, options: Data.Base64DecodingOptions(rawValue:0))!
            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> IGPQrCodeJoinResponse.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPQrCodeJoinResponse.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

extension IGPQrCodeJoin: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPQrCodeJoin> {
        var mergedArray = Array<IGPQrCodeJoin>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPQrCodeJoin? {
        return try IGPQrCodeJoin.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPQrCodeJoin {
        return try IGPQrCodeJoin.Builder().mergeFrom(data: data, extensionRegistry:QrCodeJoinRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPQrCodeJoin {
        return try IGPQrCodeJoin.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPQrCodeJoin {
        return try IGPQrCodeJoin.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPQrCodeJoin {
        return try IGPQrCodeJoin.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPQrCodeJoin {
        return try IGPQrCodeJoin.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPQrCodeJoin {
        return try IGPQrCodeJoin.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpRequest": return self.igpRequest
        case "igpInviteToken": return self.igpInviteToken
        default: return nil
        }
    }
}
extension IGPQrCodeJoin.Builder: GeneratedMessageBuilderProtocol {
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "igpRequest": return self.igpRequest
            case "igpInviteToken": return self.igpInviteToken
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
            case "igpInviteToken":
                guard let newSubscriptValue = newSubscriptValue as? String else {
                    return
                }
                self.igpInviteToken = newSubscriptValue
            default: return
            }
        }
    }
}
extension IGPQrCodeJoinResponse: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPQrCodeJoinResponse> {
        var mergedArray = Array<IGPQrCodeJoinResponse>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPQrCodeJoinResponse? {
        return try IGPQrCodeJoinResponse.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPQrCodeJoinResponse {
        return try IGPQrCodeJoinResponse.Builder().mergeFrom(data: data, extensionRegistry:QrCodeJoinRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPQrCodeJoinResponse {
        return try IGPQrCodeJoinResponse.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPQrCodeJoinResponse {
        return try IGPQrCodeJoinResponse.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPQrCodeJoinResponse {
        return try IGPQrCodeJoinResponse.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPQrCodeJoinResponse {
        return try IGPQrCodeJoinResponse.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPQrCodeJoinResponse {
        return try IGPQrCodeJoinResponse.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpResponse": return self.igpResponse
        case "igpQrCodeImage": return self.igpQrCodeImage
        default: return nil
        }
    }
}
extension IGPQrCodeJoinResponse.Builder: GeneratedMessageBuilderProtocol {
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "igpResponse": return self.igpResponse
            case "igpQrCodeImage": return self.igpQrCodeImage
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
            case "igpQrCodeImage":
                guard let newSubscriptValue = newSubscriptValue as? Data else {
                    return
                }
                self.igpQrCodeImage = newSubscriptValue
            default: return
            }
        }
    }
}

// @@protoc_insertion_point(global_scope)