/// Generated by the Protocol Buffers 3.2.0 compiler.  DO NOT EDIT!
/// Protobuf-swift version: 3.0.13
/// Source file "FileUploadOption.proto"
/// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct FileUploadOptionRoot {
    public static let `default` = FileUploadOptionRoot()
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

final public class IGPFileUploadOption : GeneratedMessage {

    public static func == (lhs: IGPFileUploadOption, rhs: IGPFileUploadOption) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasIgpRequest == rhs.hasIgpRequest) && (!lhs.hasIgpRequest || lhs.igpRequest == rhs.igpRequest)
        fieldCheck = fieldCheck && (lhs.hasIgpSize == rhs.hasIgpSize) && (!lhs.hasIgpSize || lhs.igpSize == rhs.igpSize)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }



    //iGap Properties declaration start



    //iGap Properties declaration end

    public fileprivate(set) var igpRequest:IGPRequest!
    public fileprivate(set) var hasIgpRequest:Bool = false
    public fileprivate(set) var igpSize:Int64 = Int64(0)
    public fileprivate(set) var hasIgpSize:Bool = false

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
        if hasIgpSize {
            try codedOutputStream.writeInt64(fieldNumber: 2, value:igpSize)
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
        if hasIgpSize {
            serialize_size += igpSize.computeInt64Size(fieldNumber: 2)
        }
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> IGPFileUploadOption.Builder {
        return IGPFileUploadOption.classBuilder() as! IGPFileUploadOption.Builder
    }
    public func getBuilder() -> IGPFileUploadOption.Builder {
        return classBuilder() as! IGPFileUploadOption.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPFileUploadOption.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPFileUploadOption.Builder()
    }
    public func toBuilder() throws -> IGPFileUploadOption.Builder {
        return try IGPFileUploadOption.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPFileUploadOption) throws -> IGPFileUploadOption.Builder {
        return try IGPFileUploadOption.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        guard isInitialized() else {
            throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
        }

        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasIgpRequest {
            jsonMap["IGPRequest"] = try igpRequest.encode()
        }
        if hasIgpSize {
            jsonMap["IGPSize"] = "\(igpSize)"
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPFileUploadOption {
        return try IGPFileUploadOption.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPFileUploadOption {
        return try IGPFileUploadOption.Builder.fromJSONToBuilder(data:data).build()
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
        if hasIgpSize {
            output += "\(indent) igpSize: \(igpSize) \n"
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
            if hasIgpSize {
                hashCode = (hashCode &* 31) &+ igpSize.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "IGPFileUploadOption"
    }
    override public func className() -> String {
        return "IGPFileUploadOption"
    }
    //Meta information declaration end

    final public class Builder : GeneratedRequestMessageBuilder {
        fileprivate var builderResult:IGPFileUploadOption = IGPFileUploadOption()
        public func getMessage() -> IGPFileUploadOption {
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
        public override func setIgpRequest(_ value:IGPRequest!) -> IGPFileUploadOption.Builder {
            self.igpRequest = value
            return self
        }
        @discardableResult
        public func mergeIgpRequest(value:IGPRequest) throws -> IGPFileUploadOption.Builder {
            if builderResult.hasIgpRequest {
                builderResult.igpRequest = try IGPRequest.builderWithPrototype(prototype:builderResult.igpRequest).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpRequest = value
            }
            builderResult.hasIgpRequest = true
            return self
        }
        @discardableResult
        public func clearIgpRequest() -> IGPFileUploadOption.Builder {
            igpRequestBuilder_ = nil
            builderResult.hasIgpRequest = false
            builderResult.igpRequest = nil
            return self
        }
        public var igpSize:Int64 {
            get {
                return builderResult.igpSize
            }
            set (value) {
                builderResult.hasIgpSize = true
                builderResult.igpSize = value
            }
        }
        public var hasIgpSize:Bool {
            get {
                return builderResult.hasIgpSize
            }
        }
        @discardableResult
        public func setIgpSize(_ value:Int64) -> IGPFileUploadOption.Builder {
            self.igpSize = value
            return self
        }
        @discardableResult
        public func clearIgpSize() -> IGPFileUploadOption.Builder{
            builderResult.hasIgpSize = false
            builderResult.igpSize = Int64(0)
            return self
        }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> IGPFileUploadOption.Builder {
            builderResult = IGPFileUploadOption()
            return self
        }
        override public func clone() throws -> IGPFileUploadOption.Builder {
            return try IGPFileUploadOption.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPFileUploadOption {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPFileUploadOption {
            let returnMe:IGPFileUploadOption = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPFileUploadOption) throws -> IGPFileUploadOption.Builder {
            if other == IGPFileUploadOption() {
                return self
            }
            if (other.hasIgpRequest) {
                try mergeIgpRequest(value: other.igpRequest)
            }
            if other.hasIgpSize {
                igpSize = other.igpSize
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPFileUploadOption.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPFileUploadOption.Builder {
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
                    igpSize = try codedInputStream.readInt64()

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPFileUploadOption.Builder {
            let resultDecodedBuilder = IGPFileUploadOption.Builder()
            if let jsonValueIgpRequest = jsonMap["IGPRequest"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpRequest = try IGPRequest.Builder.decodeToBuilder(jsonMap:jsonValueIgpRequest).build()

            }
            if let jsonValueIgpSize = jsonMap["IGPSize"] as? String {
                resultDecodedBuilder.igpSize = Int64(jsonValueIgpSize)!
            } else if let jsonValueIgpSize = jsonMap["IGPSize"] as? Int {
                resultDecodedBuilder.igpSize = Int64(jsonValueIgpSize)
            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> IGPFileUploadOption.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPFileUploadOption.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

final public class IGPFileUploadOptionResponse : GeneratedResponseMessage {

    public static func == (lhs: IGPFileUploadOptionResponse, rhs: IGPFileUploadOptionResponse) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasIgpResponse == rhs.hasIgpResponse) && (!lhs.hasIgpResponse || lhs.igpResponse == rhs.igpResponse)
        fieldCheck = fieldCheck && (lhs.hasIgpFirstBytesLimit == rhs.hasIgpFirstBytesLimit) && (!lhs.hasIgpFirstBytesLimit || lhs.igpFirstBytesLimit == rhs.igpFirstBytesLimit)
        fieldCheck = fieldCheck && (lhs.hasIgpLastBytesLimit == rhs.hasIgpLastBytesLimit) && (!lhs.hasIgpLastBytesLimit || lhs.igpLastBytesLimit == rhs.igpLastBytesLimit)
        fieldCheck = fieldCheck && (lhs.hasIgpMaxConnection == rhs.hasIgpMaxConnection) && (!lhs.hasIgpMaxConnection || lhs.igpMaxConnection == rhs.igpMaxConnection)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }



    //iGap Properties declaration start



    //iGap Properties declaration end

    public fileprivate(set) var igpFirstBytesLimit:Int32 = Int32(0)
    public fileprivate(set) var hasIgpFirstBytesLimit:Bool = false

    public fileprivate(set) var igpLastBytesLimit:Int32 = Int32(0)
    public fileprivate(set) var hasIgpLastBytesLimit:Bool = false

    public fileprivate(set) var igpMaxConnection:Int32 = Int32(0)
    public fileprivate(set) var hasIgpMaxConnection:Bool = false

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
        if hasIgpFirstBytesLimit {
            try codedOutputStream.writeInt32(fieldNumber: 2, value:igpFirstBytesLimit)
        }
        if hasIgpLastBytesLimit {
            try codedOutputStream.writeInt32(fieldNumber: 3, value:igpLastBytesLimit)
        }
        if hasIgpMaxConnection {
            try codedOutputStream.writeInt32(fieldNumber: 4, value:igpMaxConnection)
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
        if hasIgpFirstBytesLimit {
            serialize_size += igpFirstBytesLimit.computeInt32Size(fieldNumber: 2)
        }
        if hasIgpLastBytesLimit {
            serialize_size += igpLastBytesLimit.computeInt32Size(fieldNumber: 3)
        }
        if hasIgpMaxConnection {
            serialize_size += igpMaxConnection.computeInt32Size(fieldNumber: 4)
        }
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> IGPFileUploadOptionResponse.Builder {
        return IGPFileUploadOptionResponse.classBuilder() as! IGPFileUploadOptionResponse.Builder
    }
    public func getBuilder() -> IGPFileUploadOptionResponse.Builder {
        return classBuilder() as! IGPFileUploadOptionResponse.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPFileUploadOptionResponse.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPFileUploadOptionResponse.Builder()
    }
    public func toBuilder() throws -> IGPFileUploadOptionResponse.Builder {
        return try IGPFileUploadOptionResponse.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPFileUploadOptionResponse) throws -> IGPFileUploadOptionResponse.Builder {
        return try IGPFileUploadOptionResponse.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        guard isInitialized() else {
            throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
        }

        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasIgpResponse {
            jsonMap["IGPResponse"] = try igpResponse.encode()
        }
        if hasIgpFirstBytesLimit {
            jsonMap["IGPFirstBytesLimit"] = Int(igpFirstBytesLimit)
        }
        if hasIgpLastBytesLimit {
            jsonMap["IGPLastBytesLimit"] = Int(igpLastBytesLimit)
        }
        if hasIgpMaxConnection {
            jsonMap["IGPMaxConnection"] = Int(igpMaxConnection)
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPFileUploadOptionResponse {
        return try IGPFileUploadOptionResponse.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPFileUploadOptionResponse {
        return try IGPFileUploadOptionResponse.Builder.fromJSONToBuilder(data:data).build()
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
        if hasIgpFirstBytesLimit {
            output += "\(indent) igpFirstBytesLimit: \(igpFirstBytesLimit) \n"
        }
        if hasIgpLastBytesLimit {
            output += "\(indent) igpLastBytesLimit: \(igpLastBytesLimit) \n"
        }
        if hasIgpMaxConnection {
            output += "\(indent) igpMaxConnection: \(igpMaxConnection) \n"
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
            if hasIgpFirstBytesLimit {
                hashCode = (hashCode &* 31) &+ igpFirstBytesLimit.hashValue
            }
            if hasIgpLastBytesLimit {
                hashCode = (hashCode &* 31) &+ igpLastBytesLimit.hashValue
            }
            if hasIgpMaxConnection {
                hashCode = (hashCode &* 31) &+ igpMaxConnection.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "IGPFileUploadOptionResponse"
    }
    override public func className() -> String {
        return "IGPFileUploadOptionResponse"
    }
    //Meta information declaration end

    final public class Builder : GeneratedResponseMessageBuilder {
        fileprivate var builderResult:IGPFileUploadOptionResponse = IGPFileUploadOptionResponse()
        public func getMessage() -> IGPFileUploadOptionResponse {
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
        public func setIgpResponse(_ value:IGPResponse!) -> IGPFileUploadOptionResponse.Builder {
            self.igpResponse = value
            return self
        }
        @discardableResult
        public func mergeIgpResponse(value:IGPResponse) throws -> IGPFileUploadOptionResponse.Builder {
            if builderResult.hasIgpResponse {
                builderResult.igpResponse = try IGPResponse.builderWithPrototype(prototype:builderResult.igpResponse).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpResponse = value
            }
            builderResult.hasIgpResponse = true
            return self
        }
        @discardableResult
        public func clearIgpResponse() -> IGPFileUploadOptionResponse.Builder {
            igpResponseBuilder_ = nil
            builderResult.hasIgpResponse = false
            builderResult.igpResponse = nil
            return self
        }
        public var igpFirstBytesLimit:Int32 {
            get {
                return builderResult.igpFirstBytesLimit
            }
            set (value) {
                builderResult.hasIgpFirstBytesLimit = true
                builderResult.igpFirstBytesLimit = value
            }
        }
        public var hasIgpFirstBytesLimit:Bool {
            get {
                return builderResult.hasIgpFirstBytesLimit
            }
        }
        @discardableResult
        public func setIgpFirstBytesLimit(_ value:Int32) -> IGPFileUploadOptionResponse.Builder {
            self.igpFirstBytesLimit = value
            return self
        }
        @discardableResult
        public func clearIgpFirstBytesLimit() -> IGPFileUploadOptionResponse.Builder{
            builderResult.hasIgpFirstBytesLimit = false
            builderResult.igpFirstBytesLimit = Int32(0)
            return self
        }
        public var igpLastBytesLimit:Int32 {
            get {
                return builderResult.igpLastBytesLimit
            }
            set (value) {
                builderResult.hasIgpLastBytesLimit = true
                builderResult.igpLastBytesLimit = value
            }
        }
        public var hasIgpLastBytesLimit:Bool {
            get {
                return builderResult.hasIgpLastBytesLimit
            }
        }
        @discardableResult
        public func setIgpLastBytesLimit(_ value:Int32) -> IGPFileUploadOptionResponse.Builder {
            self.igpLastBytesLimit = value
            return self
        }
        @discardableResult
        public func clearIgpLastBytesLimit() -> IGPFileUploadOptionResponse.Builder{
            builderResult.hasIgpLastBytesLimit = false
            builderResult.igpLastBytesLimit = Int32(0)
            return self
        }
        public var igpMaxConnection:Int32 {
            get {
                return builderResult.igpMaxConnection
            }
            set (value) {
                builderResult.hasIgpMaxConnection = true
                builderResult.igpMaxConnection = value
            }
        }
        public var hasIgpMaxConnection:Bool {
            get {
                return builderResult.hasIgpMaxConnection
            }
        }
        @discardableResult
        public func setIgpMaxConnection(_ value:Int32) -> IGPFileUploadOptionResponse.Builder {
            self.igpMaxConnection = value
            return self
        }
        @discardableResult
        public func clearIgpMaxConnection() -> IGPFileUploadOptionResponse.Builder{
            builderResult.hasIgpMaxConnection = false
            builderResult.igpMaxConnection = Int32(0)
            return self
        }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> IGPFileUploadOptionResponse.Builder {
            builderResult = IGPFileUploadOptionResponse()
            return self
        }
        override public func clone() throws -> IGPFileUploadOptionResponse.Builder {
            return try IGPFileUploadOptionResponse.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPFileUploadOptionResponse {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPFileUploadOptionResponse {
            let returnMe:IGPFileUploadOptionResponse = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPFileUploadOptionResponse) throws -> IGPFileUploadOptionResponse.Builder {
            if other == IGPFileUploadOptionResponse() {
                return self
            }
            if (other.hasIgpResponse) {
                try mergeIgpResponse(value: other.igpResponse)
            }
            if other.hasIgpFirstBytesLimit {
                igpFirstBytesLimit = other.igpFirstBytesLimit
            }
            if other.hasIgpLastBytesLimit {
                igpLastBytesLimit = other.igpLastBytesLimit
            }
            if other.hasIgpMaxConnection {
                igpMaxConnection = other.igpMaxConnection
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPFileUploadOptionResponse.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPFileUploadOptionResponse.Builder {
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
                    igpFirstBytesLimit = try codedInputStream.readInt32()

                case 24:
                    igpLastBytesLimit = try codedInputStream.readInt32()

                case 32:
                    igpMaxConnection = try codedInputStream.readInt32()

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPFileUploadOptionResponse.Builder {
            let resultDecodedBuilder = IGPFileUploadOptionResponse.Builder()
            if let jsonValueIgpResponse = jsonMap["IGPResponse"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpResponse = try IGPResponse.Builder.decodeToBuilder(jsonMap:jsonValueIgpResponse).build()

            }
            if let jsonValueIgpFirstBytesLimit = jsonMap["IGPFirstBytesLimit"] as? Int {
                resultDecodedBuilder.igpFirstBytesLimit = Int32(jsonValueIgpFirstBytesLimit)
            } else if let jsonValueIgpFirstBytesLimit = jsonMap["IGPFirstBytesLimit"] as? String {
                resultDecodedBuilder.igpFirstBytesLimit = Int32(jsonValueIgpFirstBytesLimit)!
            }
            if let jsonValueIgpLastBytesLimit = jsonMap["IGPLastBytesLimit"] as? Int {
                resultDecodedBuilder.igpLastBytesLimit = Int32(jsonValueIgpLastBytesLimit)
            } else if let jsonValueIgpLastBytesLimit = jsonMap["IGPLastBytesLimit"] as? String {
                resultDecodedBuilder.igpLastBytesLimit = Int32(jsonValueIgpLastBytesLimit)!
            }
            if let jsonValueIgpMaxConnection = jsonMap["IGPMaxConnection"] as? Int {
                resultDecodedBuilder.igpMaxConnection = Int32(jsonValueIgpMaxConnection)
            } else if let jsonValueIgpMaxConnection = jsonMap["IGPMaxConnection"] as? String {
                resultDecodedBuilder.igpMaxConnection = Int32(jsonValueIgpMaxConnection)!
            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> IGPFileUploadOptionResponse.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPFileUploadOptionResponse.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

extension IGPFileUploadOption: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPFileUploadOption> {
        var mergedArray = Array<IGPFileUploadOption>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPFileUploadOption? {
        return try IGPFileUploadOption.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPFileUploadOption {
        return try IGPFileUploadOption.Builder().mergeFrom(data: data, extensionRegistry:FileUploadOptionRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPFileUploadOption {
        return try IGPFileUploadOption.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPFileUploadOption {
        return try IGPFileUploadOption.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPFileUploadOption {
        return try IGPFileUploadOption.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPFileUploadOption {
        return try IGPFileUploadOption.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPFileUploadOption {
        return try IGPFileUploadOption.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpRequest": return self.igpRequest
        case "igpSize": return self.igpSize
        default: return nil
        }
    }
}
extension IGPFileUploadOption.Builder: GeneratedMessageBuilderProtocol {
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "igpRequest": return self.igpRequest
            case "igpSize": return self.igpSize
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
            case "igpSize":
                guard let newSubscriptValue = newSubscriptValue as? Int64 else {
                    return
                }
                self.igpSize = newSubscriptValue
            default: return
            }
        }
    }
}
extension IGPFileUploadOptionResponse: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPFileUploadOptionResponse> {
        var mergedArray = Array<IGPFileUploadOptionResponse>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPFileUploadOptionResponse? {
        return try IGPFileUploadOptionResponse.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPFileUploadOptionResponse {
        return try IGPFileUploadOptionResponse.Builder().mergeFrom(data: data, extensionRegistry:FileUploadOptionRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPFileUploadOptionResponse {
        return try IGPFileUploadOptionResponse.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPFileUploadOptionResponse {
        return try IGPFileUploadOptionResponse.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPFileUploadOptionResponse {
        return try IGPFileUploadOptionResponse.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPFileUploadOptionResponse {
        return try IGPFileUploadOptionResponse.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPFileUploadOptionResponse {
        return try IGPFileUploadOptionResponse.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpResponse": return self.igpResponse
        case "igpFirstBytesLimit": return self.igpFirstBytesLimit
        case "igpLastBytesLimit": return self.igpLastBytesLimit
        case "igpMaxConnection": return self.igpMaxConnection
        default: return nil
        }
    }
}
extension IGPFileUploadOptionResponse.Builder: GeneratedMessageBuilderProtocol {
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "igpResponse": return self.igpResponse
            case "igpFirstBytesLimit": return self.igpFirstBytesLimit
            case "igpLastBytesLimit": return self.igpLastBytesLimit
            case "igpMaxConnection": return self.igpMaxConnection
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
            case "igpFirstBytesLimit":
                guard let newSubscriptValue = newSubscriptValue as? Int32 else {
                    return
                }
                self.igpFirstBytesLimit = newSubscriptValue
            case "igpLastBytesLimit":
                guard let newSubscriptValue = newSubscriptValue as? Int32 else {
                    return
                }
                self.igpLastBytesLimit = newSubscriptValue
            case "igpMaxConnection":
                guard let newSubscriptValue = newSubscriptValue as? Int32 else {
                    return
                }
                self.igpMaxConnection = newSubscriptValue
            default: return
            }
        }
    }
}

// @@protoc_insertion_point(global_scope)