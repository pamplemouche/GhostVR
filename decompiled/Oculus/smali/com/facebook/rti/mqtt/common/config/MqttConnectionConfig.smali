.class public Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;
.super Ljava/lang/Object;
.source "MqttConnectionConfig.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public final mAnalyticsEndpoint:Ljava/lang/String;

.field public final mAnalyticsLogMinIntervalForReceivedMs:J

.field public final mAnalyticsLogMinIntervalForSentMs:J

.field public final mBackOffInitialRetryInterval:I

.field public final mBackOffMaxRetryInterval:I

.field public final mBackToBackRetryAttempts:I

.field public final mBackToBackRetryInterval:I

.field public final mBackgroundBackOffInitialRetryInterval:I

.field public final mBackgroundBackToBackRetryAttempts:I

.field public final mBackgroundKeepaliveIntervalPersistent:I

.field public final mBackupPort:I

.field public final mChanellengeTimeoutMS:I

.field public final mConnectRateLimiterIntervalS:I

.field public final mConnectRateLimiterLimit:I

.field public final mDnsTimeoutSec:I

.field public final mForceServerPing:Z

.field public final mForegroundKeepaliveInterval:I

.field public final mGcmPingMqttDelaySec:I

.field public final mHappyEyeballsDelayMs:I

.field public final mHostNameIpv6:Ljava/lang/String;

.field public final mMqttClientThreadPriorityUI:I

.field public final mMqttClientThreadPriorityWorker:I

.field public final mMqttConnectTimeoutSec:I

.field public final mMqttResponseTimeout:I

.field public final mPhpOverrideEndpoint:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final mPingDelayS:I

.field public final mPort:I

.field public final mShortMqttConnectionSec:I

.field public final mSkipPingThresholdS:I

.field public final mSocketTimeoutSec:I

.field public final mUseCompression:Z

.field public final mUseSsl:Z


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v3, 0x0

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/16 v2, 0x3c

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const-string v0, "host_name_v6"

    const-string v1, "mqtt-mini.facebook.com"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mHostNameIpv6:Ljava/lang/String;

    .line 186
    const-string v0, "php_sandbox_host_name"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mPhpOverrideEndpoint:Ljava/lang/String;

    .line 187
    const-string v0, "analytics_endpoint"

    const-string v1, "https://b-api.facebook.com/method/logging.clientevent"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mAnalyticsEndpoint:Ljava/lang/String;

    .line 189
    const-string v0, "default_port"

    const/16 v1, 0x1bb

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mPort:I

    .line 190
    const-string v0, "backup_port"

    const/16 v1, 0x1bb

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackupPort:I

    .line 192
    const-string v0, "dns_timeout_sec"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mDnsTimeoutSec:I

    .line 193
    const-string/jumbo v0, "socket_timeout_sec"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mSocketTimeoutSec:I

    .line 195
    const-string v0, "mqtt_connect_timeout_sec"

    .line 196
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mMqttConnectTimeoutSec:I

    .line 197
    const-string/jumbo v0, "response_timeout_sec"

    const/16 v1, 0x3b

    .line 198
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mMqttResponseTimeout:I

    .line 200
    const-string v0, "back_to_back_retry_attempts"

    const/4 v1, 0x3

    .line 201
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackToBackRetryAttempts:I

    .line 202
    const-string v0, "background_back_to_back_retry_attempts"

    .line 203
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackgroundBackToBackRetryAttempts:I

    .line 205
    const-string v0, "back_to_back_retry_interval_sec"

    .line 206
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackToBackRetryInterval:I

    .line 208
    const-string v0, "back_off_initial_retry_interval_sec"

    const/4 v1, 0x2

    .line 209
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackOffInitialRetryInterval:I

    .line 211
    const-string v0, "background_back_off_initial_retry_interval_sec"

    .line 212
    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackgroundBackOffInitialRetryInterval:I

    .line 215
    const-string v0, "back_off_max_retry_interval_sec"

    const/16 v1, 0x384

    .line 216
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackOffMaxRetryInterval:I

    .line 218
    const-string v0, "foreground_keepalive_interval_sec"

    .line 219
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mForegroundKeepaliveInterval:I

    .line 220
    const-string v0, "background_keepalive_interval_persistent_sec"

    const/16 v1, 0x384

    .line 221
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackgroundKeepaliveIntervalPersistent:I

    .line 224
    const-string/jumbo v0, "skip_ping_threshold_s"

    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mSkipPingThresholdS:I

    .line 225
    const-string v0, "ping_delay_s"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mPingDelayS:I

    .line 226
    const-string v0, "force_server_ping"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mForceServerPing:Z

    .line 228
    const-string v0, "happy_eyeballs_delay_ms"

    const/16 v1, 0x19

    .line 229
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mHappyEyeballsDelayMs:I

    .line 231
    const-string v0, "mqtt_client_thread_priority_ui"

    .line 232
    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mMqttClientThreadPriorityUI:I

    .line 233
    const-string v0, "mqtt_client_thread_priority_worker"

    .line 234
    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mMqttClientThreadPriorityWorker:I

    .line 237
    const-string v0, "analytics_log_min_interval_for_sent_ms"

    const-wide/16 v2, 0x0

    .line 238
    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mAnalyticsLogMinIntervalForSentMs:J

    .line 240
    const-string v0, "analytics_log_min_interval_for_received_ms"

    const-wide/16 v2, 0x0

    .line 241
    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mAnalyticsLogMinIntervalForReceivedMs:J

    .line 245
    const-string v0, "gcm_ping_mqtt_delay_sec"

    const/16 v1, 0x1e

    .line 246
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mGcmPingMqttDelaySec:I

    .line 249
    const-string/jumbo v0, "use_ssl"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mUseSsl:Z

    .line 250
    const-string/jumbo v0, "use_compression"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mUseCompression:Z

    .line 251
    const-string v0, "ct"

    const v1, 0xea60

    .line 252
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mChanellengeTimeoutMS:I

    .line 253
    const-string/jumbo v0, "short_mqtt_connection_sec"

    .line 254
    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mShortMqttConnectionSec:I

    .line 255
    const-string v0, "connect_rate_limiter_limit"

    const/16 v1, 0x28

    .line 256
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mConnectRateLimiterLimit:I

    .line 257
    const-string v0, "connect_rate_limiter_interval_s"

    const/16 v1, 0x960

    .line 258
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mConnectRateLimiterIntervalS:I

    .line 268
    return-void
.end method

.method public static buildConfigFromJson(Lorg/json/JSONObject;)Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;
    .locals 1

    .prologue
    .line 172
    new-instance v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    invoke-direct {v0, p0}, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public static newDefaultConfig()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;
    .locals 1

    .prologue
    .line 168
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->buildConfigFromJson(Lorg/json/JSONObject;)Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 276
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 383
    :cond_0
    :goto_0
    return v1

    .line 279
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 283
    check-cast p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    .line 285
    iget v2, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mPort:I

    iget v3, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mPort:I

    if-ne v2, v3, :cond_0

    .line 288
    iget v2, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackupPort:I

    iget v3, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackupPort:I

    if-ne v2, v3, :cond_0

    .line 291
    iget v2, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mDnsTimeoutSec:I

    iget v3, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mDnsTimeoutSec:I

    if-ne v2, v3, :cond_0

    .line 294
    iget v2, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mSocketTimeoutSec:I

    iget v3, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mSocketTimeoutSec:I

    if-ne v2, v3, :cond_0

    .line 297
    iget v2, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mMqttConnectTimeoutSec:I

    iget v3, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mMqttConnectTimeoutSec:I

    if-ne v2, v3, :cond_0

    .line 300
    iget v2, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mMqttResponseTimeout:I

    iget v3, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mMqttResponseTimeout:I

    if-ne v2, v3, :cond_0

    .line 303
    iget v2, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackToBackRetryAttempts:I

    iget v3, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackToBackRetryAttempts:I

    if-ne v2, v3, :cond_0

    .line 306
    iget v2, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackgroundBackToBackRetryAttempts:I

    iget v3, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackgroundBackToBackRetryAttempts:I

    if-ne v2, v3, :cond_0

    .line 309
    iget v2, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackToBackRetryInterval:I

    iget v3, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackToBackRetryInterval:I

    if-ne v2, v3, :cond_0

    .line 312
    iget v2, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackOffInitialRetryInterval:I

    iget v3, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackOffInitialRetryInterval:I

    if-ne v2, v3, :cond_0

    .line 315
    iget v2, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackgroundBackOffInitialRetryInterval:I

    iget v3, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackgroundBackOffInitialRetryInterval:I

    if-ne v2, v3, :cond_0

    .line 318
    iget v2, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackOffMaxRetryInterval:I

    iget v3, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackOffMaxRetryInterval:I

    if-ne v2, v3, :cond_0

    .line 321
    iget v2, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mForegroundKeepaliveInterval:I

    iget v3, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mForegroundKeepaliveInterval:I

    if-ne v2, v3, :cond_0

    .line 324
    iget v2, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mSkipPingThresholdS:I

    iget v3, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mSkipPingThresholdS:I

    if-ne v2, v3, :cond_0

    .line 327
    iget v2, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mPingDelayS:I

    iget v3, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mPingDelayS:I

    if-ne v2, v3, :cond_0

    .line 330
    iget-boolean v2, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mForceServerPing:Z

    iget-boolean v3, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mForceServerPing:Z

    if-ne v2, v3, :cond_0

    .line 333
    iget v2, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackgroundKeepaliveIntervalPersistent:I

    iget v3, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackgroundKeepaliveIntervalPersistent:I

    if-ne v2, v3, :cond_0

    .line 336
    iget v2, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mHappyEyeballsDelayMs:I

    iget v3, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mHappyEyeballsDelayMs:I

    if-ne v2, v3, :cond_0

    .line 339
    iget v2, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mMqttClientThreadPriorityUI:I

    iget v3, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mMqttClientThreadPriorityUI:I

    if-ne v2, v3, :cond_0

    .line 342
    iget v2, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mMqttClientThreadPriorityWorker:I

    iget v3, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mMqttClientThreadPriorityWorker:I

    if-ne v2, v3, :cond_0

    .line 345
    iget-wide v2, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mAnalyticsLogMinIntervalForSentMs:J

    iget-wide v4, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mAnalyticsLogMinIntervalForSentMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 348
    iget-wide v2, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mAnalyticsLogMinIntervalForReceivedMs:J

    iget-wide v4, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mAnalyticsLogMinIntervalForReceivedMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 351
    iget v2, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mGcmPingMqttDelaySec:I

    iget v3, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mGcmPingMqttDelaySec:I

    if-ne v2, v3, :cond_0

    .line 354
    iget-boolean v2, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mUseSsl:Z

    iget-boolean v3, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mUseSsl:Z

    if-ne v2, v3, :cond_0

    .line 357
    iget-boolean v2, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mUseCompression:Z

    iget-boolean v3, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mUseCompression:Z

    if-ne v2, v3, :cond_0

    .line 360
    iget v2, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mChanellengeTimeoutMS:I

    iget v3, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mChanellengeTimeoutMS:I

    if-ne v2, v3, :cond_0

    .line 363
    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mHostNameIpv6:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mHostNameIpv6:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mHostNameIpv6:Ljava/lang/String;

    .line 364
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 368
    :cond_2
    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mPhpOverrideEndpoint:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mPhpOverrideEndpoint:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mPhpOverrideEndpoint:Ljava/lang/String;

    .line 369
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    :cond_3
    iget v2, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mShortMqttConnectionSec:I

    iget v3, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mShortMqttConnectionSec:I

    if-ne v2, v3, :cond_0

    .line 376
    iget v2, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mConnectRateLimiterLimit:I

    iget v3, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mConnectRateLimiterLimit:I

    if-ne v2, v3, :cond_0

    .line 379
    iget v2, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mConnectRateLimiterIntervalS:I

    iget v3, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mConnectRateLimiterIntervalS:I

    if-ne v2, v3, :cond_0

    .line 382
    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mAnalyticsEndpoint:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mAnalyticsEndpoint:Ljava/lang/String;

    iget-object v1, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mAnalyticsEndpoint:Ljava/lang/String;

    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_4
    :goto_1
    move v1, v0

    goto/16 :goto_0

    .line 364
    :cond_5
    iget-object v2, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mHostNameIpv6:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto/16 :goto_0

    .line 369
    :cond_6
    iget-object v2, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mPhpOverrideEndpoint:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto/16 :goto_0

    .line 383
    :cond_7
    iget-object v2, p1, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mAnalyticsEndpoint:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 389
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mHostNameIpv6:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mHostNameIpv6:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 390
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mPhpOverrideEndpoint:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mPhpOverrideEndpoint:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v3

    .line 391
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mAnalyticsEndpoint:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mAnalyticsEndpoint:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v3

    .line 392
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mPort:I

    add-int/2addr v0, v3

    .line 393
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackupPort:I

    add-int/2addr v0, v3

    .line 394
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mDnsTimeoutSec:I

    add-int/2addr v0, v3

    .line 395
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mSocketTimeoutSec:I

    add-int/2addr v0, v3

    .line 396
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mMqttConnectTimeoutSec:I

    add-int/2addr v0, v3

    .line 397
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mMqttResponseTimeout:I

    add-int/2addr v0, v3

    .line 398
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackToBackRetryAttempts:I

    add-int/2addr v0, v3

    .line 399
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackgroundBackToBackRetryAttempts:I

    add-int/2addr v0, v3

    .line 400
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackToBackRetryInterval:I

    add-int/2addr v0, v3

    .line 401
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackOffInitialRetryInterval:I

    add-int/2addr v0, v3

    .line 402
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackgroundBackOffInitialRetryInterval:I

    add-int/2addr v0, v3

    .line 403
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackOffMaxRetryInterval:I

    add-int/2addr v0, v3

    .line 404
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mForegroundKeepaliveInterval:I

    add-int/2addr v0, v3

    .line 405
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mBackgroundKeepaliveIntervalPersistent:I

    add-int/2addr v0, v3

    .line 406
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mSkipPingThresholdS:I

    add-int/2addr v0, v3

    .line 407
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mPingDelayS:I

    add-int/2addr v0, v3

    .line 408
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mForceServerPing:Z

    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    add-int/2addr v0, v3

    .line 409
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mHappyEyeballsDelayMs:I

    add-int/2addr v0, v3

    .line 410
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mMqttClientThreadPriorityUI:I

    add-int/2addr v0, v3

    .line 411
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mMqttClientThreadPriorityWorker:I

    add-int/2addr v0, v3

    .line 412
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mAnalyticsLogMinIntervalForSentMs:J

    iget-wide v6, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mAnalyticsLogMinIntervalForSentMs:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int/2addr v0, v3

    .line 416
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mAnalyticsLogMinIntervalForReceivedMs:J

    iget-wide v6, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mAnalyticsLogMinIntervalForReceivedMs:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int/2addr v0, v3

    .line 421
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mGcmPingMqttDelaySec:I

    add-int/2addr v0, v3

    .line 422
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mUseSsl:Z

    if-eqz v0, :cond_4

    move v0, v2

    :goto_4
    add-int/2addr v0, v3

    .line 423
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mUseCompression:Z

    if-eqz v3, :cond_5

    :goto_5
    add-int/2addr v0, v2

    .line 424
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mChanellengeTimeoutMS:I

    add-int/2addr v0, v1

    .line 425
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mShortMqttConnectionSec:I

    add-int/2addr v0, v1

    .line 426
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mConnectRateLimiterLimit:I

    add-int/2addr v0, v1

    .line 427
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->mConnectRateLimiterIntervalS:I

    add-int/2addr v0, v1

    .line 428
    return v0

    :cond_0
    move v0, v1

    .line 389
    goto/16 :goto_0

    :cond_1
    move v0, v1

    .line 390
    goto/16 :goto_1

    :cond_2
    move v0, v1

    .line 391
    goto/16 :goto_2

    :cond_3
    move v0, v1

    .line 408
    goto :goto_3

    :cond_4
    move v0, v1

    .line 422
    goto :goto_4

    :cond_5
    move v2, v1

    .line 423
    goto :goto_5
.end method
