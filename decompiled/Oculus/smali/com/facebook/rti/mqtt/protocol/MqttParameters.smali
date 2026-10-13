.class public Lcom/facebook/rti/mqtt/protocol/MqttParameters;
.super Ljava/lang/Object;
.source "MqttParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rti/mqtt/protocol/MqttParameters$MqttHashException;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field static final HEX_CHAR_TABLE:[B


# instance fields
.field private final mAppId:Ljava/lang/String;

.field private final mAppSpecificInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mBackupPort:I

.field private final mConnectPayloadHash:Ljava/lang/String;

.field private final mConnectTimeoutSec:I

.field private final mCustomTransactionTimeoutInSeconds:I

.field private final mDnsTimeoutSec:I

.field private final mEnableConnectionMerge:Z

.field private final mEnableCustomTransactionTimeout:Z

.field private final mEnableFizz:Z

.field private final mEnableLargePayloadSupport:Z

.field private final mEnableSPDYTransport:Z

.field private final mEndpointCapabilityProvider:Lcom/facebook/rti/common/util/NonInjectProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mHappyEyeballsDelayMs:I

.field private mHostName:Ljava/lang/String;

.field private final mIsAppInitialForeground:Z

.field private final mIsChatOn:Z

.field private final mIsFastSendEnabled:Z

.field private final mKeepaliveSecondsProvider:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mMergedHostCName:Ljava/lang/String;

.field private final mMqttAuthenticationKeySecretPair:Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;

.field private final mMqttDeviceIdAndSecret:Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

.field private mPhpOverride:Ljava/lang/String;

.field private final mPort:I

.field private final mPublishCompression:I

.field private final mSocketTimeoutSec:I

.field private final mThreadPriority:I

.field private final mTopics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final mUseSsl:Z

.field private final mUserAgent:Lcom/facebook/rti/common/util/UserAgent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 324
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->HEX_CHAR_TABLE:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIZLcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/common/util/UserAgent;Ljava/util/concurrent/atomic/AtomicInteger;IIIIIILcom/facebook/rti/common/util/NonInjectProvider;Ljava/util/List;ZZZLjava/util/Map;ZLjava/lang/String;ZZIZZ)V
    .locals 6
    .param p19    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p23    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ",
            "Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/rti/common/util/UserAgent;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "IIIIII",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;ZZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "ZZIZZ)V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mHostName:Ljava/lang/String;

    .line 118
    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mPhpOverride:Ljava/lang/String;

    .line 119
    iput p3, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mPort:I

    .line 120
    iput p4, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mBackupPort:I

    .line 121
    iput-boolean p5, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mUseSsl:Z

    .line 122
    iput-object p6, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mMqttAuthenticationKeySecretPair:Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;

    .line 123
    new-instance v2, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

    const-wide v4, 0x7fffffffffffffffL

    invoke-direct {v2, p7, p8, v4, v5}, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iput-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mMqttDeviceIdAndSecret:Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

    .line 125
    iput-object p9, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mAppId:Ljava/lang/String;

    .line 126
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mUserAgent:Lcom/facebook/rti/common/util/UserAgent;

    .line 127
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mKeepaliveSecondsProvider:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 128
    move/from16 v0, p12

    iput v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mConnectTimeoutSec:I

    .line 129
    move/from16 v0, p13

    iput v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mSocketTimeoutSec:I

    .line 130
    move/from16 v0, p14

    iput v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mDnsTimeoutSec:I

    .line 131
    move/from16 v0, p15

    iput v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mPublishCompression:I

    .line 132
    move/from16 v0, p16

    iput v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mHappyEyeballsDelayMs:I

    .line 133
    move/from16 v0, p17

    iput v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mThreadPriority:I

    .line 134
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mEndpointCapabilityProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    .line 135
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mTopics:Ljava/util/List;

    .line 136
    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mIsChatOn:Z

    .line 137
    move/from16 v0, p21

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mIsAppInitialForeground:Z

    .line 142
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mUserAgent:Lcom/facebook/rti/common/util/UserAgent;

    .line 144
    invoke-virtual {v3}, Lcom/facebook/rti/common/util/UserAgent;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 146
    invoke-virtual {p6}, Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;->getSecret()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-static {v2}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->makeMD5Hash(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/facebook/rti/mqtt/protocol/MqttParameters$MqttHashException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 153
    :goto_0
    iput-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mConnectPayloadHash:Ljava/lang/String;

    .line 154
    move/from16 v0, p22

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mIsFastSendEnabled:Z

    .line 155
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mAppSpecificInfo:Ljava/util/Map;

    .line 156
    move/from16 v0, p24

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mEnableSPDYTransport:Z

    .line 157
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mMergedHostCName:Ljava/lang/String;

    .line 158
    move/from16 v0, p26

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mEnableConnectionMerge:Z

    .line 159
    move/from16 v0, p27

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mEnableCustomTransactionTimeout:Z

    .line 160
    move/from16 v0, p28

    iput v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mCustomTransactionTimeoutInSeconds:I

    .line 161
    move/from16 v0, p29

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mEnableFizz:Z

    .line 162
    move/from16 v0, p30

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mEnableLargePayloadSupport:Z

    .line 163
    return-void

    .line 150
    :catch_0
    move-exception v2

    .line 151
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static convertToHex([B)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 333
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-byte v3, p0, v0

    .line 334
    and-int/lit16 v3, v3, 0xff

    .line 335
    sget-object v4, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->HEX_CHAR_TABLE:[B

    ushr-int/lit8 v5, v3, 0x4

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 336
    sget-object v4, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->HEX_CHAR_TABLE:[B

    and-int/lit8 v3, v3, 0xf

    aget-byte v3, v4, v3

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static makeMD5Hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/rti/mqtt/protocol/MqttParameters$MqttHashException;
        }
    .end annotation

    .prologue
    .line 305
    :try_start_0
    const-string/jumbo v0, "utf-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->makeMD5Hash([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/MqttParameters$MqttHashException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/rti/mqtt/protocol/MqttParameters$MqttHashException;-><init>(Lcom/facebook/rti/mqtt/protocol/MqttParameters$1;)V

    throw v0
.end method

.method private static makeMD5Hash([B)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/rti/mqtt/protocol/MqttParameters$MqttHashException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 313
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 314
    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 315
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 316
    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->convertToHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 317
    :catch_0
    move-exception v0

    .line 318
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/MqttParameters$MqttHashException;

    invoke-direct {v0, v3}, Lcom/facebook/rti/mqtt/protocol/MqttParameters$MqttHashException;-><init>(Lcom/facebook/rti/mqtt/protocol/MqttParameters$1;)V

    throw v0

    .line 319
    :catch_1
    move-exception v0

    .line 320
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/MqttParameters$MqttHashException;

    invoke-direct {v0, v3}, Lcom/facebook/rti/mqtt/protocol/MqttParameters$MqttHashException;-><init>(Lcom/facebook/rti/mqtt/protocol/MqttParameters$1;)V

    throw v0
.end method


# virtual methods
.method public final enableFizz()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mEnableFizz:Z

    return v0
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppSpecificInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mAppSpecificInfo:Ljava/util/Map;

    return-object v0
.end method

.method public final getBackupPort()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mBackupPort:I

    return v0
.end method

.method public final getConnectPayloadHash()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mConnectPayloadHash:Ljava/lang/String;

    return-object v0
.end method

.method public final getConnectTimeoutMs()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mConnectTimeoutSec:I

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public final getDnsTimeoutMs()J
    .locals 4

    .prologue
    .line 226
    iget v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mDnsTimeoutSec:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public final getEndpointCapability()J
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mEndpointCapabilityProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    invoke-interface {v0}, Lcom/facebook/rti/common/util/NonInjectProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getHappyEyeballsDelayMs()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mHappyEyeballsDelayMs:I

    return v0
.end method

.method public final getHostName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mHostName:Ljava/lang/String;

    return-object v0
.end method

.method public final getKeepaliveSeconds()I
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mKeepaliveSecondsProvider:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final getMqttAuthenticationKeySecretPair()Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mMqttAuthenticationKeySecretPair:Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;

    return-object v0
.end method

.method public final getMqttDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mMqttDeviceIdAndSecret:Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMqttDeviceSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mMqttDeviceIdAndSecret:Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;->getSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPhpOverrider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mPhpOverride:Ljava/lang/String;

    return-object v0
.end method

.method public final getPort()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mPort:I

    return v0
.end method

.method public final getPublishCompression()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mPublishCompression:I

    return v0
.end method

.method public final getSocketTimeoutMs()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mSocketTimeoutSec:I

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public final getThreadPriority()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mThreadPriority:I

    return v0
.end method

.method public final getTopics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mTopics:Ljava/util/List;

    return-object v0
.end method

.method public final getUserAgent()Lcom/facebook/rti/common/util/UserAgent;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mUserAgent:Lcom/facebook/rti/common/util/UserAgent;

    return-object v0
.end method

.method public final isAppInitialForeground()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mIsAppInitialForeground:Z

    return v0
.end method

.method public final isChatOn()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mIsChatOn:Z

    return v0
.end method

.method public final isEnableLargePayloadSupport()Z
    .locals 1

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mEnableLargePayloadSupport:Z

    return v0
.end method

.method public final useSsl()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->mUseSsl:Z

    return v0
.end method
