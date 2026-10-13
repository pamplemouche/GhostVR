.class public Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;
.super Ljava/lang/Object;
.source "ConnectPayloadUserName.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final mAppId:Ljava/lang/String;

.field public final mAppSpecificInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mCapabilities:Ljava/lang/Long;

.field public final mClientStack:Ljava/lang/Byte;

.field public final mClientType:Ljava/lang/String;

.field public final mConnectPayloadHash:Ljava/lang/String;

.field public final mConnectSubTopics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mDataCenterPreference:Ljava/lang/String;

.field public final mDeviceClientId:Ljava/lang/String;

.field public final mDeviceClientSecret:Ljava/lang/String;

.field public final mIsChatOn:Ljava/lang/Boolean;

.field public final mIsForegroundKeepalive:Ljava/lang/Boolean;

.field public final mLoggerUserId:Ljava/lang/Long;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final mMqttEndpointCapability:Ljava/lang/Long;

.field public final mMqttSessionId:Ljava/lang/Long;

.field public final mNetworkSubType:Ljava/lang/Integer;

.field public final mNetworkType:Ljava/lang/Integer;

.field public final mNetworkTypeInfo:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final mNoAutoForeground:Ljava/lang/Boolean;

.field public final mPublishFormat:I

.field public final mUserAgent:Ljava/lang/String;

.field public final mUserId:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Byte;Ljava/util/Map;Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 1
    .param p21    # Ljava/lang/Long;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p22    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Long;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Byte;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mUserId:Ljava/lang/Long;

    .line 68
    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mUserAgent:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mCapabilities:Ljava/lang/Long;

    .line 70
    iput-object p4, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mMqttSessionId:Ljava/lang/Long;

    .line 71
    iput-object p5, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mNetworkType:Ljava/lang/Integer;

    .line 72
    iput-object p6, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mNetworkSubType:Ljava/lang/Integer;

    .line 73
    iput-object p7, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mIsChatOn:Ljava/lang/Boolean;

    .line 74
    iput-object p8, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mNoAutoForeground:Ljava/lang/Boolean;

    .line 75
    iput-object p9, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mDeviceClientId:Ljava/lang/String;

    .line 76
    iput-object p10, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mDeviceClientSecret:Ljava/lang/String;

    .line 77
    iput-object p11, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mIsForegroundKeepalive:Ljava/lang/Boolean;

    .line 78
    iput-object p12, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mMqttEndpointCapability:Ljava/lang/Long;

    .line 79
    iput p13, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mPublishFormat:I

    .line 80
    iput-object p14, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mClientType:Ljava/lang/String;

    .line 81
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mAppId:Ljava/lang/String;

    .line 82
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mConnectSubTopics:Ljava/util/List;

    .line 83
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mConnectPayloadHash:Ljava/lang/String;

    .line 84
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mDataCenterPreference:Ljava/lang/String;

    .line 85
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mClientStack:Ljava/lang/Byte;

    .line 86
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mAppSpecificInfo:Ljava/util/Map;

    .line 87
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mLoggerUserId:Ljava/lang/Long;

    .line 88
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mNetworkTypeInfo:Ljava/lang/Integer;

    .line 89
    return-void
.end method

.method public static deserialize(Ljava/lang/String;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;
    .locals 26
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 131
    :try_start_0
    new-instance v24, Lorg/json/JSONObject;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 133
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 134
    sget-object v2, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->SUBSCRIBE_TOPICS:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    .line 135
    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->getJsonKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 136
    const/4 v2, 0x0

    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 137
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    :cond_0
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 141
    sget-object v2, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->APP_SPECIFIC_INFO:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    .line 142
    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->getJsonKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 143
    if-eqz v3, :cond_1

    .line 144
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 145
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 147
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 148
    move-object/from16 v0, v22

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 176
    :catch_0
    move-exception v2

    .line 177
    sget-object v3, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->TAG:Ljava/lang/String;

    const-string v4, "Failed to deserialize ConnectPayloadUserName"

    invoke-static {v3, v2, v4}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 178
    const/4 v2, 0x0

    :goto_2
    return-object v2

    .line 152
    :cond_1
    :try_start_1
    new-instance v2, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;

    sget-object v3, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->USER_ID:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    .line 153
    move-object/from16 v0, v24

    invoke-static {v0, v3}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->getLongByKey(Lorg/json/JSONObject;Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->AGENT:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    .line 154
    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->getStringByKey(Lorg/json/JSONObject;Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->CAPABILITIES:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    .line 155
    move-object/from16 v0, v24

    invoke-static {v0, v5}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->getLongByKey(Lorg/json/JSONObject;Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;)Ljava/lang/Long;

    move-result-object v5

    sget-object v6, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->CLIENT_MQTT_SESSION_ID:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    .line 156
    move-object/from16 v0, v24

    invoke-static {v0, v6}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->getLongByKey(Lorg/json/JSONObject;Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;)Ljava/lang/Long;

    move-result-object v6

    sget-object v7, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->NETWORK_TYPE:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    .line 157
    invoke-virtual {v7}, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->getJsonKey()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->NETWORK_SUBTYPE:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    .line 158
    move-object/from16 v0, v24

    invoke-static {v0, v8}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->getIntegerByKey(Lorg/json/JSONObject;Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;)Ljava/lang/Integer;

    move-result-object v8

    sget-object v9, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->MAKE_USER_AVAILABLE_IN_FOREGROUND:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    .line 159
    move-object/from16 v0, v24

    invoke-static {v0, v9}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->getBooleanByKey(Lorg/json/JSONObject;Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;)Ljava/lang/Boolean;

    move-result-object v9

    sget-object v10, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->NO_AUTOMATIC_FOREGROUND:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    .line 160
    move-object/from16 v0, v24

    invoke-static {v0, v10}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->getBooleanByKey(Lorg/json/JSONObject;Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;)Ljava/lang/Boolean;

    move-result-object v10

    sget-object v11, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->DEVICE_ID:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    .line 161
    move-object/from16 v0, v24

    invoke-static {v0, v11}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->getStringByKey(Lorg/json/JSONObject;Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->DEVICE_SECRET:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    .line 162
    move-object/from16 v0, v24

    invoke-static {v0, v12}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->getStringByKey(Lorg/json/JSONObject;Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->INITIAL_FOREGROUND_STATE:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    .line 163
    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->getBooleanByKey(Lorg/json/JSONObject;Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;)Ljava/lang/Boolean;

    move-result-object v13

    sget-object v14, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->ENDPOINT_CAPABILITIES:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    .line 164
    move-object/from16 v0, v24

    invoke-static {v0, v14}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->getLongByKey(Lorg/json/JSONObject;Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;)Ljava/lang/Long;

    move-result-object v14

    sget-object v15, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->PUBLISH_FORMAT:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    .line 166
    move-object/from16 v0, v24

    invoke-static {v0, v15}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->getStringByKey(Lorg/json/JSONObject;Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;)Ljava/lang/String;

    move-result-object v15

    .line 165
    invoke-static {v15}, Lcom/facebook/rti/mqtt/protocol/messages/MqttPublishCompression;->getPublishFormat(Ljava/lang/String;)I

    move-result v15

    sget-object v16, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->CLIENT_TYPE:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    .line 167
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->getStringByKey(Lorg/json/JSONObject;Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->APP_ID:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    .line 168
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->getStringByKey(Lorg/json/JSONObject;Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;)Ljava/lang/String;

    move-result-object v17

    sget-object v19, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->CONNECT_HASH:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    .line 170
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->getStringByKey(Lorg/json/JSONObject;Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;)Ljava/lang/String;

    move-result-object v19

    sget-object v20, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->DATACENTER_PREFERENCE:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    .line 171
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->getStringByKey(Lorg/json/JSONObject;Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;)Ljava/lang/String;

    move-result-object v20

    sget-object v21, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->CLIENT_STACK:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    .line 172
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->getByteByKey(Lorg/json/JSONObject;Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;)Ljava/lang/Byte;

    move-result-object v21

    sget-object v23, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->LOGGER_USER_ID:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    .line 174
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->getLongByKey(Lorg/json/JSONObject;Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;)Ljava/lang/Long;

    move-result-object v23

    sget-object v25, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->NETWORK_TYPE_INFO:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    .line 175
    invoke-static/range {v24 .. v25}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->getIntegerByKey(Lorg/json/JSONObject;Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;)Ljava/lang/Integer;

    move-result-object v24

    invoke-direct/range {v2 .. v24}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Byte;Ljava/util/Map;Ljava/lang/Long;Ljava/lang/Integer;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method private static getBooleanByKey(Lorg/json/JSONObject;Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;)Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->getJsonKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->getJsonKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private static getByteByKey(Lorg/json/JSONObject;Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;)Ljava/lang/Byte;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 123
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->getJsonKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getIntegerByKey(Lorg/json/JSONObject;Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;)Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->getJsonKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    const/4 v0, 0x0

    .line 118
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->getJsonKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private static getLongByKey(Lorg/json/JSONObject;Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;)Ljava/lang/Long;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->getJsonKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->getJsonKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method private static getStringByKey(Lorg/json/JSONObject;Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->getJsonKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 102
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->getJsonKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    const-string v1, "ConnectPayloadUserName {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    const-string/jumbo v1, "user_id = <redacted>, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string/jumbo v1, "user_agent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const-string v1, "capabilities = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mCapabilities:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const-string v1, "mqtt_session_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mMqttSessionId:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const-string v1, "network_type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mNetworkType:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    const-string v1, "network_subtype = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mNetworkType:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    const-string v1, "chat_on = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mIsChatOn:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const-string v1, "no_auto_fg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mNoAutoForeground:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const-string v1, "device_client_id = <redacted>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const-string v1, "device_client_secret = <redacted>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    const-string v1, "fg_keepalive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mIsForegroundKeepalive:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    const-string v1, "client_type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mClientType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    const-string v1, "app_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    const-string v1, "connect_payload_hash = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->mConnectPayloadHash:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
