/// Generated by the Protocol Buffers 3.2.0 compiler.  DO NOT EDIT!
/// Protobuf-swift version: 3.0.13
/// Source file "UserPrivacySetRule.proto"
/// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct UserPrivacySetRuleRoot {
    public static let `default` = UserPrivacySetRuleRoot()
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

final public class IGPUserPrivacySetRule : GeneratedMessage {

    public static func == (lhs: IGPUserPrivacySetRule, rhs: IGPUserPrivacySetRule) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasIgpRequest == rhs.hasIgpRequest) && (!lhs.hasIgpRequest || lhs.igpRequest == rhs.igpRequest)
        fieldCheck = fieldCheck && (lhs.hasIgpType == rhs.hasIgpType) && (!lhs.hasIgpType || lhs.igpType == rhs.igpType)
        fieldCheck = fieldCheck && (lhs.hasIgpLevel == rhs.hasIgpLevel) && (!lhs.hasIgpLevel || lhs.igpLevel == rhs.igpLevel)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }



    //iGap Properties declaration start



    //iGap Properties declaration end

    public fileprivate(set) var igpRequest:IGPRequest!
    public fileprivate(set) var hasIgpRequest:Bool = false
    public fileprivate(set) var igpType:IGPPrivacyType = IGPPrivacyType.userStatus
    public fileprivate(set) var hasIgpType:Bool = false
    public fileprivate(set) var igpLevel:IGPPrivacyLevel = IGPPrivacyLevel.allowAll
    public fileprivate(set) var hasIgpLevel:Bool = false
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
        if hasIgpType {
            try codedOutputStream.writeEnum(fieldNumber: 2, value:igpType.rawValue)
        }
        if hasIgpLevel {
            try codedOutputStream.writeEnum(fieldNumber: 3, value:igpLevel.rawValue)
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
        if (hasIgpType) {
            serialize_size += igpType.rawValue.computeEnumSize(fieldNumber: 2)
        }
        if (hasIgpLevel) {
            serialize_size += igpLevel.rawValue.computeEnumSize(fieldNumber: 3)
        }
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> IGPUserPrivacySetRule.Builder {
        return IGPUserPrivacySetRule.classBuilder() as! IGPUserPrivacySetRule.Builder
    }
    public func getBuilder() -> IGPUserPrivacySetRule.Builder {
        return classBuilder() as! IGPUserPrivacySetRule.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPUserPrivacySetRule.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPUserPrivacySetRule.Builder()
    }
    public func toBuilder() throws -> IGPUserPrivacySetRule.Builder {
        return try IGPUserPrivacySetRule.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPUserPrivacySetRule) throws -> IGPUserPrivacySetRule.Builder {
        return try IGPUserPrivacySetRule.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        guard isInitialized() else {
            throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
        }

        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasIgpRequest {
            jsonMap["IGPRequest"] = try igpRequest.encode()
        }
        if hasIgpType {
            jsonMap["IGPType"] = igpType.toString()
        }
        if hasIgpLevel {
            jsonMap["IGPLevel"] = igpLevel.toString()
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPUserPrivacySetRule {
        return try IGPUserPrivacySetRule.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPUserPrivacySetRule {
        return try IGPUserPrivacySetRule.Builder.fromJSONToBuilder(data:data).build()
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
        if (hasIgpType) {
            output += "\(indent) igpType: \(igpType.description)\n"
        }
        if (hasIgpLevel) {
            output += "\(indent) igpLevel: \(igpLevel.description)\n"
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
            if hasIgpType {
                 hashCode = (hashCode &* 31) &+ igpType.hashValue
            }
            if hasIgpLevel {
                 hashCode = (hashCode &* 31) &+ igpLevel.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "IGPUserPrivacySetRule"
    }
    override public func className() -> String {
        return "IGPUserPrivacySetRule"
    }
    //Meta information declaration end

    final public class Builder : GeneratedRequestMessageBuilder {
        fileprivate var builderResult:IGPUserPrivacySetRule = IGPUserPrivacySetRule()
        public func getMessage() -> IGPUserPrivacySetRule {
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
        public override func setIgpRequest(_ value:IGPRequest!) -> IGPUserPrivacySetRule.Builder {
            self.igpRequest = value
            return self
        }
        @discardableResult
        public func mergeIgpRequest(value:IGPRequest) throws -> IGPUserPrivacySetRule.Builder {
            if builderResult.hasIgpRequest {
                builderResult.igpRequest = try IGPRequest.builderWithPrototype(prototype:builderResult.igpRequest).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpRequest = value
            }
            builderResult.hasIgpRequest = true
            return self
        }
        @discardableResult
        public func clearIgpRequest() -> IGPUserPrivacySetRule.Builder {
            igpRequestBuilder_ = nil
            builderResult.hasIgpRequest = false
            builderResult.igpRequest = nil
            return self
        }
            public var igpType:IGPPrivacyType {
                get {
                    return builderResult.igpType
                }
                set (value) {
                    builderResult.hasIgpType = true
                    builderResult.igpType = value
                }
            }
            public var hasIgpType:Bool{
                get {
                    return builderResult.hasIgpType
                }
            }
        @discardableResult
            public func setIgpType(_ value:IGPPrivacyType) -> IGPUserPrivacySetRule.Builder {
              self.igpType = value
              return self
            }
        @discardableResult
            public func clearIgpType() -> IGPUserPrivacySetRule.Builder {
               builderResult.hasIgpType = false
               builderResult.igpType = .userStatus
               return self
            }
            public var igpLevel:IGPPrivacyLevel {
                get {
                    return builderResult.igpLevel
                }
                set (value) {
                    builderResult.hasIgpLevel = true
                    builderResult.igpLevel = value
                }
            }
            public var hasIgpLevel:Bool{
                get {
                    return builderResult.hasIgpLevel
                }
            }
        @discardableResult
            public func setIgpLevel(_ value:IGPPrivacyLevel) -> IGPUserPrivacySetRule.Builder {
              self.igpLevel = value
              return self
            }
        @discardableResult
            public func clearIgpLevel() -> IGPUserPrivacySetRule.Builder {
               builderResult.hasIgpLevel = false
               builderResult.igpLevel = .allowAll
               return self
            }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> IGPUserPrivacySetRule.Builder {
            builderResult = IGPUserPrivacySetRule()
            return self
        }
        override public func clone() throws -> IGPUserPrivacySetRule.Builder {
            return try IGPUserPrivacySetRule.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPUserPrivacySetRule {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPUserPrivacySetRule {
            let returnMe:IGPUserPrivacySetRule = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPUserPrivacySetRule) throws -> IGPUserPrivacySetRule.Builder {
            if other == IGPUserPrivacySetRule() {
                return self
            }
            if (other.hasIgpRequest) {
                try mergeIgpRequest(value: other.igpRequest)
            }
            if other.hasIgpType {
                igpType = other.igpType
            }
            if other.hasIgpLevel {
                igpLevel = other.igpLevel
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPUserPrivacySetRule.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserPrivacySetRule.Builder {
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
                    let valueIntigpType = try codedInputStream.readEnum()
                    if let enumsigpType = IGPPrivacyType(rawValue:valueIntigpType){
                        igpType = enumsigpType
                    } else {
                        try unknownFieldsBuilder.mergeVarintField(fieldNumber: 2, value:Int64(valueIntigpType))
                    }

                case 24:
                    let valueIntigpLevel = try codedInputStream.readEnum()
                    if let enumsigpLevel = IGPPrivacyLevel(rawValue:valueIntigpLevel){
                        igpLevel = enumsigpLevel
                    } else {
                        try unknownFieldsBuilder.mergeVarintField(fieldNumber: 3, value:Int64(valueIntigpLevel))
                    }

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPUserPrivacySetRule.Builder {
            let resultDecodedBuilder = IGPUserPrivacySetRule.Builder()
            if let jsonValueIgpRequest = jsonMap["IGPRequest"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpRequest = try IGPRequest.Builder.decodeToBuilder(jsonMap:jsonValueIgpRequest).build()

            }
            if let jsonValueIgpType = jsonMap["IGPType"] as? String {
                resultDecodedBuilder.igpType = try IGPPrivacyType.fromString(str: jsonValueIgpType)
            }
            if let jsonValueIgpLevel = jsonMap["IGPLevel"] as? String {
                resultDecodedBuilder.igpLevel = try IGPPrivacyLevel.fromString(str: jsonValueIgpLevel)
            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> IGPUserPrivacySetRule.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPUserPrivacySetRule.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

final public class IGPUserPrivacySetRuleResponse : GeneratedResponseMessage {

    public static func == (lhs: IGPUserPrivacySetRuleResponse, rhs: IGPUserPrivacySetRuleResponse) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasIgpResponse == rhs.hasIgpResponse) && (!lhs.hasIgpResponse || lhs.igpResponse == rhs.igpResponse)
        fieldCheck = fieldCheck && (lhs.hasIgpType == rhs.hasIgpType) && (!lhs.hasIgpType || lhs.igpType == rhs.igpType)
        fieldCheck = fieldCheck && (lhs.hasIgpLevel == rhs.hasIgpLevel) && (!lhs.hasIgpLevel || lhs.igpLevel == rhs.igpLevel)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }



    //iGap Properties declaration start



    //iGap Properties declaration end

    public fileprivate(set) var igpType:IGPPrivacyType = IGPPrivacyType.userStatus
    public fileprivate(set) var hasIgpType:Bool = false
    public fileprivate(set) var igpLevel:IGPPrivacyLevel = IGPPrivacyLevel.allowAll
    public fileprivate(set) var hasIgpLevel:Bool = false
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
        if hasIgpType {
            try codedOutputStream.writeEnum(fieldNumber: 2, value:igpType.rawValue)
        }
        if hasIgpLevel {
            try codedOutputStream.writeEnum(fieldNumber: 3, value:igpLevel.rawValue)
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
        if (hasIgpType) {
            serialize_size += igpType.rawValue.computeEnumSize(fieldNumber: 2)
        }
        if (hasIgpLevel) {
            serialize_size += igpLevel.rawValue.computeEnumSize(fieldNumber: 3)
        }
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> IGPUserPrivacySetRuleResponse.Builder {
        return IGPUserPrivacySetRuleResponse.classBuilder() as! IGPUserPrivacySetRuleResponse.Builder
    }
    public func getBuilder() -> IGPUserPrivacySetRuleResponse.Builder {
        return classBuilder() as! IGPUserPrivacySetRuleResponse.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPUserPrivacySetRuleResponse.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPUserPrivacySetRuleResponse.Builder()
    }
    public func toBuilder() throws -> IGPUserPrivacySetRuleResponse.Builder {
        return try IGPUserPrivacySetRuleResponse.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPUserPrivacySetRuleResponse) throws -> IGPUserPrivacySetRuleResponse.Builder {
        return try IGPUserPrivacySetRuleResponse.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        guard isInitialized() else {
            throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
        }

        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasIgpResponse {
            jsonMap["IGPResponse"] = try igpResponse.encode()
        }
        if hasIgpType {
            jsonMap["IGPType"] = igpType.toString()
        }
        if hasIgpLevel {
            jsonMap["IGPLevel"] = igpLevel.toString()
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPUserPrivacySetRuleResponse {
        return try IGPUserPrivacySetRuleResponse.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPUserPrivacySetRuleResponse {
        return try IGPUserPrivacySetRuleResponse.Builder.fromJSONToBuilder(data:data).build()
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
        if (hasIgpType) {
            output += "\(indent) igpType: \(igpType.description)\n"
        }
        if (hasIgpLevel) {
            output += "\(indent) igpLevel: \(igpLevel.description)\n"
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
            if hasIgpType {
                 hashCode = (hashCode &* 31) &+ igpType.hashValue
            }
            if hasIgpLevel {
                 hashCode = (hashCode &* 31) &+ igpLevel.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "IGPUserPrivacySetRuleResponse"
    }
    override public func className() -> String {
        return "IGPUserPrivacySetRuleResponse"
    }
    //Meta information declaration end

    final public class Builder : GeneratedResponseMessageBuilder {
        fileprivate var builderResult:IGPUserPrivacySetRuleResponse = IGPUserPrivacySetRuleResponse()
        public func getMessage() -> IGPUserPrivacySetRuleResponse {
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
        public func setIgpResponse(_ value:IGPResponse!) -> IGPUserPrivacySetRuleResponse.Builder {
            self.igpResponse = value
            return self
        }
        @discardableResult
        public func mergeIgpResponse(value:IGPResponse) throws -> IGPUserPrivacySetRuleResponse.Builder {
            if builderResult.hasIgpResponse {
                builderResult.igpResponse = try IGPResponse.builderWithPrototype(prototype:builderResult.igpResponse).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpResponse = value
            }
            builderResult.hasIgpResponse = true
            return self
        }
        @discardableResult
        public func clearIgpResponse() -> IGPUserPrivacySetRuleResponse.Builder {
            igpResponseBuilder_ = nil
            builderResult.hasIgpResponse = false
            builderResult.igpResponse = nil
            return self
        }
            public var igpType:IGPPrivacyType {
                get {
                    return builderResult.igpType
                }
                set (value) {
                    builderResult.hasIgpType = true
                    builderResult.igpType = value
                }
            }
            public var hasIgpType:Bool{
                get {
                    return builderResult.hasIgpType
                }
            }
        @discardableResult
            public func setIgpType(_ value:IGPPrivacyType) -> IGPUserPrivacySetRuleResponse.Builder {
              self.igpType = value
              return self
            }
        @discardableResult
            public func clearIgpType() -> IGPUserPrivacySetRuleResponse.Builder {
               builderResult.hasIgpType = false
               builderResult.igpType = .userStatus
               return self
            }
            public var igpLevel:IGPPrivacyLevel {
                get {
                    return builderResult.igpLevel
                }
                set (value) {
                    builderResult.hasIgpLevel = true
                    builderResult.igpLevel = value
                }
            }
            public var hasIgpLevel:Bool{
                get {
                    return builderResult.hasIgpLevel
                }
            }
        @discardableResult
            public func setIgpLevel(_ value:IGPPrivacyLevel) -> IGPUserPrivacySetRuleResponse.Builder {
              self.igpLevel = value
              return self
            }
        @discardableResult
            public func clearIgpLevel() -> IGPUserPrivacySetRuleResponse.Builder {
               builderResult.hasIgpLevel = false
               builderResult.igpLevel = .allowAll
               return self
            }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> IGPUserPrivacySetRuleResponse.Builder {
            builderResult = IGPUserPrivacySetRuleResponse()
            return self
        }
        override public func clone() throws -> IGPUserPrivacySetRuleResponse.Builder {
            return try IGPUserPrivacySetRuleResponse.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPUserPrivacySetRuleResponse {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPUserPrivacySetRuleResponse {
            let returnMe:IGPUserPrivacySetRuleResponse = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPUserPrivacySetRuleResponse) throws -> IGPUserPrivacySetRuleResponse.Builder {
            if other == IGPUserPrivacySetRuleResponse() {
                return self
            }
            if (other.hasIgpResponse) {
                try mergeIgpResponse(value: other.igpResponse)
            }
            if other.hasIgpType {
                igpType = other.igpType
            }
            if other.hasIgpLevel {
                igpLevel = other.igpLevel
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPUserPrivacySetRuleResponse.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserPrivacySetRuleResponse.Builder {
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
                    let valueIntigpType = try codedInputStream.readEnum()
                    if let enumsigpType = IGPPrivacyType(rawValue:valueIntigpType){
                        igpType = enumsigpType
                    } else {
                        try unknownFieldsBuilder.mergeVarintField(fieldNumber: 2, value:Int64(valueIntigpType))
                    }

                case 24:
                    let valueIntigpLevel = try codedInputStream.readEnum()
                    if let enumsigpLevel = IGPPrivacyLevel(rawValue:valueIntigpLevel){
                        igpLevel = enumsigpLevel
                    } else {
                        try unknownFieldsBuilder.mergeVarintField(fieldNumber: 3, value:Int64(valueIntigpLevel))
                    }

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPUserPrivacySetRuleResponse.Builder {
            let resultDecodedBuilder = IGPUserPrivacySetRuleResponse.Builder()
            if let jsonValueIgpResponse = jsonMap["IGPResponse"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpResponse = try IGPResponse.Builder.decodeToBuilder(jsonMap:jsonValueIgpResponse).build()

            }
            if let jsonValueIgpType = jsonMap["IGPType"] as? String {
                resultDecodedBuilder.igpType = try IGPPrivacyType.fromString(str: jsonValueIgpType)
            }
            if let jsonValueIgpLevel = jsonMap["IGPLevel"] as? String {
                resultDecodedBuilder.igpLevel = try IGPPrivacyLevel.fromString(str: jsonValueIgpLevel)
            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> IGPUserPrivacySetRuleResponse.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPUserPrivacySetRuleResponse.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

extension IGPUserPrivacySetRule: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPUserPrivacySetRule> {
        var mergedArray = Array<IGPUserPrivacySetRule>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPUserPrivacySetRule? {
        return try IGPUserPrivacySetRule.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPUserPrivacySetRule {
        return try IGPUserPrivacySetRule.Builder().mergeFrom(data: data, extensionRegistry:UserPrivacySetRuleRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPUserPrivacySetRule {
        return try IGPUserPrivacySetRule.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPUserPrivacySetRule {
        return try IGPUserPrivacySetRule.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserPrivacySetRule {
        return try IGPUserPrivacySetRule.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPUserPrivacySetRule {
        return try IGPUserPrivacySetRule.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserPrivacySetRule {
        return try IGPUserPrivacySetRule.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpRequest": return self.igpRequest
        case "igpType": return self.igpType
        case "igpLevel": return self.igpLevel
        default: return nil
        }
    }
}
extension IGPUserPrivacySetRule.Builder: GeneratedMessageBuilderProtocol {
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "igpRequest": return self.igpRequest
            case "igpType": return self.igpType
            case "igpLevel": return self.igpLevel
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
            case "igpType":
                guard let newSubscriptValue = newSubscriptValue as? IGPPrivacyType else {
                    return
                }
                self.igpType = newSubscriptValue
            case "igpLevel":
                guard let newSubscriptValue = newSubscriptValue as? IGPPrivacyLevel else {
                    return
                }
                self.igpLevel = newSubscriptValue
            default: return
            }
        }
    }
}
extension IGPUserPrivacySetRuleResponse: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPUserPrivacySetRuleResponse> {
        var mergedArray = Array<IGPUserPrivacySetRuleResponse>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPUserPrivacySetRuleResponse? {
        return try IGPUserPrivacySetRuleResponse.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPUserPrivacySetRuleResponse {
        return try IGPUserPrivacySetRuleResponse.Builder().mergeFrom(data: data, extensionRegistry:UserPrivacySetRuleRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPUserPrivacySetRuleResponse {
        return try IGPUserPrivacySetRuleResponse.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPUserPrivacySetRuleResponse {
        return try IGPUserPrivacySetRuleResponse.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserPrivacySetRuleResponse {
        return try IGPUserPrivacySetRuleResponse.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPUserPrivacySetRuleResponse {
        return try IGPUserPrivacySetRuleResponse.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserPrivacySetRuleResponse {
        return try IGPUserPrivacySetRuleResponse.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpResponse": return self.igpResponse
        case "igpType": return self.igpType
        case "igpLevel": return self.igpLevel
        default: return nil
        }
    }
}
extension IGPUserPrivacySetRuleResponse.Builder: GeneratedMessageBuilderProtocol {
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "igpResponse": return self.igpResponse
            case "igpType": return self.igpType
            case "igpLevel": return self.igpLevel
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
            case "igpType":
                guard let newSubscriptValue = newSubscriptValue as? IGPPrivacyType else {
                    return
                }
                self.igpType = newSubscriptValue
            case "igpLevel":
                guard let newSubscriptValue = newSubscriptValue as? IGPPrivacyLevel else {
                    return
                }
                self.igpLevel = newSubscriptValue
            default: return
            }
        }
    }
}

// @@protoc_insertion_point(global_scope)