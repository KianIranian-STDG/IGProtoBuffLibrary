/// Generated by the Protocol Buffers 3.2.0 compiler.  DO NOT EDIT!
/// Protobuf-swift version: 3.0.13
/// Source file "ClientUnsubscribeFromRoom.proto"
/// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct ClientUnsubscribeFromRoomRoot {
    public static let `default` = ClientUnsubscribeFromRoomRoot()
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

final public class IGPClientUnsubscribeFromRoom : GeneratedMessage {

    public static func == (lhs: IGPClientUnsubscribeFromRoom, rhs: IGPClientUnsubscribeFromRoom) -> Bool {
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
    public class func getBuilder() -> IGPClientUnsubscribeFromRoom.Builder {
        return IGPClientUnsubscribeFromRoom.classBuilder() as! IGPClientUnsubscribeFromRoom.Builder
    }
    public func getBuilder() -> IGPClientUnsubscribeFromRoom.Builder {
        return classBuilder() as! IGPClientUnsubscribeFromRoom.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPClientUnsubscribeFromRoom.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPClientUnsubscribeFromRoom.Builder()
    }
    public func toBuilder() throws -> IGPClientUnsubscribeFromRoom.Builder {
        return try IGPClientUnsubscribeFromRoom.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPClientUnsubscribeFromRoom) throws -> IGPClientUnsubscribeFromRoom.Builder {
        return try IGPClientUnsubscribeFromRoom.Builder().mergeFrom(other:prototype)
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
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPClientUnsubscribeFromRoom {
        return try IGPClientUnsubscribeFromRoom.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPClientUnsubscribeFromRoom {
        return try IGPClientUnsubscribeFromRoom.Builder.fromJSONToBuilder(data:data).build()
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
        return "IGPClientUnsubscribeFromRoom"
    }
    override public func className() -> String {
        return "IGPClientUnsubscribeFromRoom"
    }
    //Meta information declaration end

    final public class Builder : GeneratedRequestMessageBuilder {
        fileprivate var builderResult:IGPClientUnsubscribeFromRoom = IGPClientUnsubscribeFromRoom()
        public func getMessage() -> IGPClientUnsubscribeFromRoom {
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
        public override func setIgpRequest(_ value:IGPRequest!) -> IGPClientUnsubscribeFromRoom.Builder {
            self.igpRequest = value
            return self
        }
        @discardableResult
        public func mergeIgpRequest(value:IGPRequest) throws -> IGPClientUnsubscribeFromRoom.Builder {
            if builderResult.hasIgpRequest {
                builderResult.igpRequest = try IGPRequest.builderWithPrototype(prototype:builderResult.igpRequest).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpRequest = value
            }
            builderResult.hasIgpRequest = true
            return self
        }
        @discardableResult
        public func clearIgpRequest() -> IGPClientUnsubscribeFromRoom.Builder {
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
        public func setIgpRoomId(_ value:Int64) -> IGPClientUnsubscribeFromRoom.Builder {
            self.igpRoomId = value
            return self
        }
        @discardableResult
        public func clearIgpRoomId() -> IGPClientUnsubscribeFromRoom.Builder{
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
        override public func clear() -> IGPClientUnsubscribeFromRoom.Builder {
            builderResult = IGPClientUnsubscribeFromRoom()
            return self
        }
        override public func clone() throws -> IGPClientUnsubscribeFromRoom.Builder {
            return try IGPClientUnsubscribeFromRoom.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPClientUnsubscribeFromRoom {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPClientUnsubscribeFromRoom {
            let returnMe:IGPClientUnsubscribeFromRoom = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPClientUnsubscribeFromRoom) throws -> IGPClientUnsubscribeFromRoom.Builder {
            if other == IGPClientUnsubscribeFromRoom() {
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
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPClientUnsubscribeFromRoom.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPClientUnsubscribeFromRoom.Builder {
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
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPClientUnsubscribeFromRoom.Builder {
            let resultDecodedBuilder = IGPClientUnsubscribeFromRoom.Builder()
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
        override class public func fromJSONToBuilder(data:Data) throws -> IGPClientUnsubscribeFromRoom.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPClientUnsubscribeFromRoom.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

final public class IGPClientUnsubscribeFromRoomResponse : GeneratedResponseMessage {

    public static func == (lhs: IGPClientUnsubscribeFromRoomResponse, rhs: IGPClientUnsubscribeFromRoomResponse) -> Bool {
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
    public class func getBuilder() -> IGPClientUnsubscribeFromRoomResponse.Builder {
        return IGPClientUnsubscribeFromRoomResponse.classBuilder() as! IGPClientUnsubscribeFromRoomResponse.Builder
    }
    public func getBuilder() -> IGPClientUnsubscribeFromRoomResponse.Builder {
        return classBuilder() as! IGPClientUnsubscribeFromRoomResponse.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPClientUnsubscribeFromRoomResponse.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPClientUnsubscribeFromRoomResponse.Builder()
    }
    public func toBuilder() throws -> IGPClientUnsubscribeFromRoomResponse.Builder {
        return try IGPClientUnsubscribeFromRoomResponse.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPClientUnsubscribeFromRoomResponse) throws -> IGPClientUnsubscribeFromRoomResponse.Builder {
        return try IGPClientUnsubscribeFromRoomResponse.Builder().mergeFrom(other:prototype)
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
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPClientUnsubscribeFromRoomResponse {
        return try IGPClientUnsubscribeFromRoomResponse.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPClientUnsubscribeFromRoomResponse {
        return try IGPClientUnsubscribeFromRoomResponse.Builder.fromJSONToBuilder(data:data).build()
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
        return "IGPClientUnsubscribeFromRoomResponse"
    }
    override public func className() -> String {
        return "IGPClientUnsubscribeFromRoomResponse"
    }
    //Meta information declaration end

    final public class Builder : GeneratedResponseMessageBuilder {
        fileprivate var builderResult:IGPClientUnsubscribeFromRoomResponse = IGPClientUnsubscribeFromRoomResponse()
        public func getMessage() -> IGPClientUnsubscribeFromRoomResponse {
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
        public func setIgpResponse(_ value:IGPResponse!) -> IGPClientUnsubscribeFromRoomResponse.Builder {
            self.igpResponse = value
            return self
        }
        @discardableResult
        public func mergeIgpResponse(value:IGPResponse) throws -> IGPClientUnsubscribeFromRoomResponse.Builder {
            if builderResult.hasIgpResponse {
                builderResult.igpResponse = try IGPResponse.builderWithPrototype(prototype:builderResult.igpResponse).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpResponse = value
            }
            builderResult.hasIgpResponse = true
            return self
        }
        @discardableResult
        public func clearIgpResponse() -> IGPClientUnsubscribeFromRoomResponse.Builder {
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
        override public func clear() -> IGPClientUnsubscribeFromRoomResponse.Builder {
            builderResult = IGPClientUnsubscribeFromRoomResponse()
            return self
        }
        override public func clone() throws -> IGPClientUnsubscribeFromRoomResponse.Builder {
            return try IGPClientUnsubscribeFromRoomResponse.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPClientUnsubscribeFromRoomResponse {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPClientUnsubscribeFromRoomResponse {
            let returnMe:IGPClientUnsubscribeFromRoomResponse = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPClientUnsubscribeFromRoomResponse) throws -> IGPClientUnsubscribeFromRoomResponse.Builder {
            if other == IGPClientUnsubscribeFromRoomResponse() {
                return self
            }
            if (other.hasIgpResponse) {
                try mergeIgpResponse(value: other.igpResponse)
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPClientUnsubscribeFromRoomResponse.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPClientUnsubscribeFromRoomResponse.Builder {
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
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPClientUnsubscribeFromRoomResponse.Builder {
            let resultDecodedBuilder = IGPClientUnsubscribeFromRoomResponse.Builder()
            if let jsonValueIgpResponse = jsonMap["IGPResponse"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpResponse = try IGPResponse.Builder.decodeToBuilder(jsonMap:jsonValueIgpResponse).build()

            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> IGPClientUnsubscribeFromRoomResponse.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPClientUnsubscribeFromRoomResponse.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

extension IGPClientUnsubscribeFromRoom: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPClientUnsubscribeFromRoom> {
        var mergedArray = Array<IGPClientUnsubscribeFromRoom>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPClientUnsubscribeFromRoom? {
        return try IGPClientUnsubscribeFromRoom.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPClientUnsubscribeFromRoom {
        return try IGPClientUnsubscribeFromRoom.Builder().mergeFrom(data: data, extensionRegistry:ClientUnsubscribeFromRoomRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPClientUnsubscribeFromRoom {
        return try IGPClientUnsubscribeFromRoom.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPClientUnsubscribeFromRoom {
        return try IGPClientUnsubscribeFromRoom.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPClientUnsubscribeFromRoom {
        return try IGPClientUnsubscribeFromRoom.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPClientUnsubscribeFromRoom {
        return try IGPClientUnsubscribeFromRoom.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPClientUnsubscribeFromRoom {
        return try IGPClientUnsubscribeFromRoom.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpRequest": return self.igpRequest
        case "igpRoomId": return self.igpRoomId
        default: return nil
        }
    }
}
extension IGPClientUnsubscribeFromRoom.Builder: GeneratedMessageBuilderProtocol {
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
extension IGPClientUnsubscribeFromRoomResponse: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPClientUnsubscribeFromRoomResponse> {
        var mergedArray = Array<IGPClientUnsubscribeFromRoomResponse>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPClientUnsubscribeFromRoomResponse? {
        return try IGPClientUnsubscribeFromRoomResponse.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPClientUnsubscribeFromRoomResponse {
        return try IGPClientUnsubscribeFromRoomResponse.Builder().mergeFrom(data: data, extensionRegistry:ClientUnsubscribeFromRoomRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPClientUnsubscribeFromRoomResponse {
        return try IGPClientUnsubscribeFromRoomResponse.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPClientUnsubscribeFromRoomResponse {
        return try IGPClientUnsubscribeFromRoomResponse.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPClientUnsubscribeFromRoomResponse {
        return try IGPClientUnsubscribeFromRoomResponse.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPClientUnsubscribeFromRoomResponse {
        return try IGPClientUnsubscribeFromRoomResponse.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPClientUnsubscribeFromRoomResponse {
        return try IGPClientUnsubscribeFromRoomResponse.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpResponse": return self.igpResponse
        default: return nil
        }
    }
}
extension IGPClientUnsubscribeFromRoomResponse.Builder: GeneratedMessageBuilderProtocol {
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
