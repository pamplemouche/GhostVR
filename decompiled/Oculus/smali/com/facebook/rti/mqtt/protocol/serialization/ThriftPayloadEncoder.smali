.class public Lcom/facebook/rti/mqtt/protocol/serialization/ThriftPayloadEncoder;
.super Ljava/lang/Object;
.source "ThriftPayloadEncoder.java"

# interfaces
.implements Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnectSubscribeTopics(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;

    .line 122
    iget-object v3, v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->mTopicName:Ljava/lang/String;

    invoke-static {v3}, Lcom/facebook/rti/common/thrift/MqttTopic;->encodeTopic(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 123
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_1
    return-object v1
.end method

.method public handleConnectMessage(Ljava/io/DataOutputStream;Lcom/facebook/rti/mqtt/protocol/messages/ConnectMqttMessage;)I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    const/4 v1, 0x1

    .line 29
    const/16 v2, 0xc

    .line 31
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectMqttMessage;->getFixedHeader()Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    move-result-object v3

    .line 32
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectMqttMessage;->getVariableHeader()Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;

    move-result-object v4

    .line 33
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectMqttMessage;->getPayload()Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;

    move-result-object v5

    .line 35
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x200

    invoke-direct {v6, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 36
    new-instance v7, Lcom/facebook/rti/common/thrift/TCompactProtocol;

    invoke-direct {v7, v6}, Lcom/facebook/rti/common/thrift/TCompactProtocol;-><init>(Ljava/io/OutputStream;)V

    .line 37
    iget-object v8, v5, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->mUserName:Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;

    .line 38
    new-instance v9, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;

    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;->ClientInfo:Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;

    invoke-direct {v9, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;)V

    .line 39
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_userId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    iget-object v10, v8, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mUserId:Ljava/lang/Long;

    invoke-virtual {v9, v0, v10}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->addProperty(Lcom/facebook/rti/common/thrift/ThriftProperty;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;

    .line 40
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_userAgent:Lcom/facebook/rti/common/thrift/ThriftProperty;

    iget-object v10, v8, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v9, v0, v10}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->addProperty(Lcom/facebook/rti/common/thrift/ThriftProperty;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;

    .line 41
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_clientCapabilities:Lcom/facebook/rti/common/thrift/ThriftProperty;

    iget-object v10, v8, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mCapabilities:Ljava/lang/Long;

    invoke-virtual {v9, v0, v10}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->addProperty(Lcom/facebook/rti/common/thrift/ThriftProperty;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;

    .line 42
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_endpointCapabilities:Lcom/facebook/rti/common/thrift/ThriftProperty;

    iget-object v10, v8, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mMqttEndpointCapability:Ljava/lang/Long;

    invoke-virtual {v9, v0, v10}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->addProperty(Lcom/facebook/rti/common/thrift/ThriftProperty;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;

    .line 44
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_publishFormat:Lcom/facebook/rti/common/thrift/ThriftProperty;

    iget v10, v8, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mPublishFormat:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->addProperty(Lcom/facebook/rti/common/thrift/ThriftProperty;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;

    .line 45
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_noAutomaticForeground:Lcom/facebook/rti/common/thrift/ThriftProperty;

    iget-object v10, v8, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mNoAutoForeground:Ljava/lang/Boolean;

    invoke-virtual {v9, v0, v10}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->addProperty(Lcom/facebook/rti/common/thrift/ThriftProperty;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;

    .line 47
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_makeUserAvailableInForeground:Lcom/facebook/rti/common/thrift/ThriftProperty;

    iget-object v10, v8, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mIsChatOn:Ljava/lang/Boolean;

    invoke-virtual {v9, v0, v10}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->addProperty(Lcom/facebook/rti/common/thrift/ThriftProperty;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;

    .line 49
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_deviceId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    iget-object v10, v8, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mDeviceClientId:Ljava/lang/String;

    invoke-virtual {v9, v0, v10}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->addProperty(Lcom/facebook/rti/common/thrift/ThriftProperty;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;

    .line 50
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_isInitiallyForeground:Lcom/facebook/rti/common/thrift/ThriftProperty;

    iget-object v10, v8, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mIsForegroundKeepalive:Ljava/lang/Boolean;

    invoke-virtual {v9, v0, v10}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->addProperty(Lcom/facebook/rti/common/thrift/ThriftProperty;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;

    .line 52
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_networkType:Lcom/facebook/rti/common/thrift/ThriftProperty;

    iget-object v10, v8, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mNetworkType:Ljava/lang/Integer;

    invoke-virtual {v9, v0, v10}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->addProperty(Lcom/facebook/rti/common/thrift/ThriftProperty;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;

    .line 53
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_networkSubtype:Lcom/facebook/rti/common/thrift/ThriftProperty;

    iget-object v10, v8, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mNetworkSubType:Ljava/lang/Integer;

    invoke-virtual {v9, v0, v10}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->addProperty(Lcom/facebook/rti/common/thrift/ThriftProperty;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;

    .line 54
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_clientMqttSessionId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    iget-object v10, v8, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mMqttSessionId:Ljava/lang/Long;

    invoke-virtual {v9, v0, v10}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->addProperty(Lcom/facebook/rti/common/thrift/ThriftProperty;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;

    .line 55
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_clientIpAddress:Lcom/facebook/rti/common/thrift/ThriftProperty;

    const/4 v10, 0x0

    invoke-virtual {v9, v0, v10}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->addProperty(Lcom/facebook/rti/common/thrift/ThriftProperty;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;

    .line 57
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 58
    iget-object v0, v8, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mConnectSubTopics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    invoke-static {v0}, Lcom/facebook/rti/common/thrift/MqttTopic;->encodeTopic(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_1
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_subscribeTopics:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-virtual {v9, v0, v10}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->addProperty(Lcom/facebook/rti/common/thrift/ThriftProperty;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;

    .line 65
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_clientType:Lcom/facebook/rti/common/thrift/ThriftProperty;

    iget-object v10, v8, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mClientType:Ljava/lang/String;

    invoke-virtual {v9, v0, v10}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->addProperty(Lcom/facebook/rti/common/thrift/ThriftProperty;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;

    .line 66
    sget-object v10, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_appId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    iget-object v0, v8, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mAppId:Ljava/lang/String;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v9, v10, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->addProperty(Lcom/facebook/rti/common/thrift/ThriftProperty;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;

    .line 69
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_overrideNectarLogging:Lcom/facebook/rti/common/thrift/ThriftProperty;

    const/4 v10, 0x0

    invoke-virtual {v9, v0, v10}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->addProperty(Lcom/facebook/rti/common/thrift/ThriftProperty;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;

    .line 70
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_connectTokenHash:Lcom/facebook/rti/common/thrift/ThriftProperty;

    const/4 v10, 0x0

    invoke-virtual {v9, v0, v10}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->addProperty(Lcom/facebook/rti/common/thrift/ThriftProperty;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;

    .line 71
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_regionPreference:Lcom/facebook/rti/common/thrift/ThriftProperty;

    iget-object v10, v8, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mDataCenterPreference:Ljava/lang/String;

    invoke-virtual {v9, v0, v10}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->addProperty(Lcom/facebook/rti/common/thrift/ThriftProperty;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;

    .line 72
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_deviceSecret:Lcom/facebook/rti/common/thrift/ThriftProperty;

    iget-object v10, v8, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mDeviceClientSecret:Ljava/lang/String;

    invoke-virtual {v9, v0, v10}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->addProperty(Lcom/facebook/rti/common/thrift/ThriftProperty;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;

    .line 73
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_clientStack:Lcom/facebook/rti/common/thrift/ThriftProperty;

    iget-object v10, v8, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mClientStack:Ljava/lang/Byte;

    invoke-virtual {v9, v0, v10}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->addProperty(Lcom/facebook/rti/common/thrift/ThriftProperty;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;

    .line 74
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_loggerUserId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    iget-object v10, v8, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mLoggerUserId:Ljava/lang/Long;

    invoke-virtual {v9, v0, v10}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->addProperty(Lcom/facebook/rti/common/thrift/ThriftProperty;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;

    .line 76
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;

    sget-object v10, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;->ConnectMessage:Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;

    invoke-direct {v0, v10}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;)V

    .line 77
    sget-object v10, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_clientIdentifier:Lcom/facebook/rti/common/thrift/ThriftProperty;

    iget-object v11, v5, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->mClientIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->addProperty(Lcom/facebook/rti/common/thrift/ThriftProperty;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;

    .line 79
    sget-object v10, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_willTopic:Lcom/facebook/rti/common/thrift/ThriftProperty;

    iget-object v11, v5, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->mWillTopic:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->addProperty(Lcom/facebook/rti/common/thrift/ThriftProperty;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;

    .line 80
    sget-object v10, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_willMessage:Lcom/facebook/rti/common/thrift/ThriftProperty;

    iget-object v11, v5, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->mWillMessage:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->addProperty(Lcom/facebook/rti/common/thrift/ThriftProperty;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;

    .line 81
    sget-object v10, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_clientInfo:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-virtual {v0, v10, v9}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->addProperty(Lcom/facebook/rti/common/thrift/ThriftProperty;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;

    .line 82
    sget-object v9, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_password:Lcom/facebook/rti/common/thrift/ThriftProperty;

    iget-object v5, v5, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v9, v5}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->addProperty(Lcom/facebook/rti/common/thrift/ThriftProperty;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;

    .line 83
    sget-object v5, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_getDiffsRequests:Lcom/facebook/rti/common/thrift/ThriftProperty;

    const/4 v9, 0x0

    invoke-virtual {v0, v5, v9}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->addProperty(Lcom/facebook/rti/common/thrift/ThriftProperty;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;

    .line 84
    sget-object v5, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_proxygenInfo:Lcom/facebook/rti/common/thrift/ThriftProperty;

    const/4 v9, 0x0

    invoke-virtual {v0, v5, v9}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->addProperty(Lcom/facebook/rti/common/thrift/ThriftProperty;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;

    .line 85
    sget-object v5, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_combinedPublishes:Lcom/facebook/rti/common/thrift/ThriftProperty;

    const/4 v9, 0x0

    invoke-virtual {v0, v5, v9}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->addProperty(Lcom/facebook/rti/common/thrift/ThriftProperty;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;

    .line 86
    sget-object v5, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_zeroRatingTokenHash:Lcom/facebook/rti/common/thrift/ThriftProperty;

    const/4 v9, 0x0

    invoke-virtual {v0, v5, v9}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->addProperty(Lcom/facebook/rti/common/thrift/ThriftProperty;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;

    .line 87
    sget-object v5, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_appSpecificInfo:Lcom/facebook/rti/common/thrift/ThriftProperty;

    iget-object v8, v8, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mAppSpecificInfo:Ljava/util/Map;

    invoke-virtual {v0, v5, v8}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->addProperty(Lcom/facebook/rti/common/thrift/ThriftProperty;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;

    .line 89
    invoke-virtual {v0, v7}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->write(Lcom/facebook/rti/common/thrift/TCompactProtocol;)V

    .line 91
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/zlib/ZlibCompressionUtil;->compressBytes([B)[B

    move-result-object v0

    .line 94
    array-length v5, v0

    add-int/2addr v2, v5

    .line 95
    invoke-static {v3}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->getFixedHeaderByte1(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 96
    invoke-static {p1, v2}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->writeVariableLengthInt(Ljava/io/DataOutputStream;I)I

    move-result v3

    add-int/2addr v1, v3

    .line 99
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 100
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 101
    const/16 v3, 0x4d

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 102
    const/16 v3, 0x51

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 103
    const/16 v3, 0x54

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 104
    const/16 v3, 0x54

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 105
    const/16 v3, 0x6f

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 106
    const/16 v3, 0x54

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 107
    iget v3, v4, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->mVersion:I

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 108
    invoke-static {v4}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->getConnVariableHeaderFlag(Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 109
    iget v3, v4, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->mKeepAliveTimeSeconds:I

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 112
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {p1, v0, v3, v4}, Ljava/io/DataOutputStream;->write([BII)V

    .line 113
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 114
    add-int v0, v1, v2

    .line 115
    return v0

    .line 66
    :cond_2
    iget-object v0, v8, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mAppId:Ljava/lang/String;

    .line 68
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_1
.end method
