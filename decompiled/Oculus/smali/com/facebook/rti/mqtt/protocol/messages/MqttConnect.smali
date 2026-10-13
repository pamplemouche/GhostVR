.class public Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;
.super Ljava/lang/Object;
.source "MqttConnect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;
    }
.end annotation


# static fields
.field public static final ClientInfo_appId:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final ClientInfo_clientCapabilities:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final ClientInfo_clientIpAddress:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ClientInfo_clientMqttSessionId:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final ClientInfo_clientStack:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final ClientInfo_clientType:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ClientInfo_connectTokenHash:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<[B>;"
        }
    .end annotation
.end field

.field public static final ClientInfo_deviceId:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ClientInfo_deviceSecret:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ClientInfo_endpointCapabilities:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final ClientInfo_fbnsConnectionKey:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final ClientInfo_fbnsConnectionSecret:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ClientInfo_fbnsDeviceId:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ClientInfo_fbnsDeviceSecret:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ClientInfo_isInitiallyForeground:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final ClientInfo_loggerUserId:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final ClientInfo_makeUserAvailableInForeground:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final ClientInfo_networkSubtype:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ClientInfo_networkType:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ClientInfo_noAutomaticForeground:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final ClientInfo_overrideNectarLogging:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final ClientInfo_publishFormat:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ClientInfo_regionPreference:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ClientInfo_subscribeTopics:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final ClientInfo_userAgent:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ClientInfo_userId:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final ConnPublishMessage_messageId:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ConnPublishMessage_payload:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<[B>;"
        }
    .end annotation
.end field

.field public static final ConnPublishMessage_topic:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ConnectMessage_appSpecificInfo:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final ConnectMessage_clientIdentifier:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ConnectMessage_clientInfo:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;",
            ">;"
        }
    .end annotation
.end field

.field public static final ConnectMessage_combinedPublishes:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final ConnectMessage_getDiffsRequests:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation
.end field

.field public static final ConnectMessage_password:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ConnectMessage_proxygenInfo:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final ConnectMessage_willMessage:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ConnectMessage_willTopic:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ConnectMessage_zeroRatingTokenHash:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final GetIrisDiffs_deltaBatchSize:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final GetIrisDiffs_deviceId:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final GetIrisDiffs_deviceParams:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final GetIrisDiffs_encoding:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final GetIrisDiffs_entityFbid:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final GetIrisDiffs_lastSeqId:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final GetIrisDiffs_maxDeltasAbleToProcess:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final GetIrisDiffs_queueParams:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final GetIrisDiffs_queueType:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final GetIrisDiffs_syncApiVersion:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final GetIrisDiffs_syncToken:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final GetIrisDiffs_syncTokenLong:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final ProxygenInfo_hostName:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ProxygenInfo_ipAddr:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ProxygenInfo_vipAddr:Lcom/facebook/rti/common/thrift/ThriftProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/16 v6, 0x8

    const/16 v5, 0xa

    const/16 v4, 0xb

    .line 20
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string/jumbo v1, "userId"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_userId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 22
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string/jumbo v1, "userAgent"

    invoke-direct {v0, v1, v4, v7}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_userAgent:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 24
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "clientCapabilities"

    invoke-direct {v0, v1, v5, v8}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_clientCapabilities:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 26
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "endpointCapabilities"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_endpointCapabilities:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 28
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "publishFormat"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_publishFormat:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 30
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "noAutomaticForeground"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_noAutomaticForeground:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 32
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "makeUserAvailableInForeground"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v7, v2}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_makeUserAvailableInForeground:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 34
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "deviceId"

    invoke-direct {v0, v1, v4, v6}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_deviceId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 36
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "isInitiallyForeground"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v7, v2}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_isInitiallyForeground:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 38
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "networkType"

    invoke-direct {v0, v1, v6, v5}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_networkType:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 40
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "networkSubtype"

    invoke-direct {v0, v1, v6, v4}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_networkSubtype:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 42
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "clientMqttSessionId"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_clientMqttSessionId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 44
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "clientIpAddress"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_clientIpAddress:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 46
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string/jumbo v1, "subscribeTopics"

    const/16 v2, 0xf

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_subscribeTopics:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 48
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "clientType"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_clientType:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 50
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "appId"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_appId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 52
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "overrideNectarLogging"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v7, v2}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_overrideNectarLogging:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 54
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "connectTokenHash"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_connectTokenHash:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 56
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string/jumbo v1, "regionPreference"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_regionPreference:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 58
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "deviceSecret"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_deviceSecret:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 60
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "clientStack"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v8, v2}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_clientStack:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 62
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "fbnsConnectionKey"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_fbnsConnectionKey:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 64
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "fbnsConnectionSecret"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_fbnsConnectionSecret:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 66
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "fbnsDeviceId"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_fbnsDeviceId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 68
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "fbnsDeviceSecret"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_fbnsDeviceSecret:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 70
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "luid"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_loggerUserId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 72
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string/jumbo v1, "syncToken"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_syncToken:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 74
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "lastSeqId"

    invoke-direct {v0, v1, v5, v7}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_lastSeqId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 76
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "maxDeltasAbleToProcess"

    invoke-direct {v0, v1, v6, v8}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_maxDeltasAbleToProcess:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 78
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "deltaBatchSize"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_deltaBatchSize:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 80
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "encoding"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_encoding:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 82
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string/jumbo v1, "queueType"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_queueType:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 84
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string/jumbo v1, "syncApiVersion"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_syncApiVersion:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 86
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "deviceId"

    invoke-direct {v0, v1, v4, v6}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_deviceId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 88
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "deviceParams"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_deviceParams:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 90
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string/jumbo v1, "queueParams"

    invoke-direct {v0, v1, v4, v5}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_queueParams:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 92
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "entityFbid"

    invoke-direct {v0, v1, v5, v4}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_entityFbid:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 94
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string/jumbo v1, "syncTokenLong"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_syncTokenLong:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 96
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "ipAddr"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ProxygenInfo_ipAddr:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 98
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "hostName"

    invoke-direct {v0, v1, v4, v7}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ProxygenInfo_hostName:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 100
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string/jumbo v1, "vipAddr"

    invoke-direct {v0, v1, v4, v8}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ProxygenInfo_vipAddr:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 102
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string/jumbo v1, "topic"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnPublishMessage_topic:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 104
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "messageId"

    invoke-direct {v0, v1, v6, v7}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnPublishMessage_messageId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 106
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "payload"

    invoke-direct {v0, v1, v4, v8}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnPublishMessage_payload:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 108
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "clientIdentifier"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_clientIdentifier:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 110
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string/jumbo v1, "willTopic"

    invoke-direct {v0, v1, v4, v7}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_willTopic:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 112
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string/jumbo v1, "willMessage"

    invoke-direct {v0, v1, v4, v8}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_willMessage:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 114
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "clientInfo"

    const/16 v2, 0xc

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_clientInfo:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 116
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "password"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_password:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 118
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "getDiffsRequests"

    const/16 v2, 0xf

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_getDiffsRequests:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 120
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "proxygenInfo"

    const/16 v2, 0xf

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_proxygenInfo:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 122
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "combinedPublishes"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v6}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_combinedPublishes:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 124
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string/jumbo v1, "zeroRatingTokenHash"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_zeroRatingTokenHash:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 126
    new-instance v0, Lcom/facebook/rti/common/thrift/ThriftProperty;

    const-string v1, "appSpecificInfo"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v5}, Lcom/facebook/rti/common/thrift/ThriftProperty;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_appSpecificInfo:Lcom/facebook/rti/common/thrift/ThriftProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
