.class public Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;
.super Ljava/lang/Object;
.source "FbnsAnalyticsLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;,
        Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;,
        Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;
    }
.end annotation


# instance fields
.field private final mAnalyticsLogger:Lcom/facebook/rti/common/analytics/AnalyticsLogger;

.field private final mClock:Lcom/facebook/rti/common/time/MonotonicClock;

.field private final mCreationTime:J

.field private final mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;Lcom/facebook/rti/common/time/MonotonicClock;Lcom/facebook/rti/common/analytics/AnalyticsLogger;)V
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->mPackageName:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    .line 99
    iput-object p3, p0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->mClock:Lcom/facebook/rti/common/time/MonotonicClock;

    .line 100
    iput-object p4, p0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->mAnalyticsLogger:Lcom/facebook/rti/common/analytics/AnalyticsLogger;

    .line 101
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->mClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->mCreationTime:J

    .line 102
    return-void
.end method


# virtual methods
.method public reportFbnsAuthIntentEvent(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 270
    const-string/jumbo v0, "verify_sender_failed"

    .line 271
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "event_type"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/facebook/rti/common/analytics/AnalyticsUtil;->makeMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 272
    invoke-static {p1}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 273
    const-string v1, "event_extra_info"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_0
    const-string v1, "fbns_auth_intent_event"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 276
    return-void
.end method

.method public reportFbnsEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 285
    const-string v0, "FbnsAnalyticsLogger"

    const-string v1, "Event name: %s, Event parameters: %s"

    invoke-static {v0, v1, p1, p2}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 287
    new-instance v0, Lcom/facebook/rti/common/analytics/AnalyticsEvent;

    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/facebook/rti/common/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0, p2}, Lcom/facebook/rti/common/analytics/AnalyticsEvent;->putExtras(Ljava/util/Map;)Lcom/facebook/rti/common/analytics/AnalyticsEvent;

    .line 290
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->mAnalyticsLogger:Lcom/facebook/rti/common/analytics/AnalyticsLogger;

    invoke-interface {v1, v0}, Lcom/facebook/rti/common/analytics/AnalyticsLogger;->reportEvent(Lcom/facebook/rti/common/analytics/AnalyticsEvent;)V

    .line 291
    return-void
.end method

.method public reportFbnsMessageAcknowledgedEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 239
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "event_type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->ACKNOWLEDGED_NOTIFICATION:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    .line 240
    invoke-virtual {v2}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/AnalyticsUtil;->makeMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 242
    invoke-static {p1}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 243
    const-string v1, "event_extra_info"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_0
    invoke-static {p2}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 247
    const-string v1, "dpn"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_1
    const-string v1, "delivery_delay"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v1, "fbns_message_event"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 253
    return-void
.end method

.method public reportFbnsMessageDiscardedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 221
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "event_type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->DISCARDED_NOTIFICATION:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    .line 222
    invoke-virtual {v2}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/AnalyticsUtil;->makeMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 224
    invoke-static {p1}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    const-string v1, "event_extra_info"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_0
    invoke-static {p2}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 229
    const-string v1, "dpn"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_1
    const-string/jumbo v1, "result"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v1, "fbns_message_event"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 235
    return-void
.end method

.method public reportFbnsMessageEvent(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 206
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "event_type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/AnalyticsUtil;->makeMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 208
    invoke-static {p2}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    const-string v1, "event_extra_info"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_0
    invoke-static {p3}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 213
    const-string v1, "dpn"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_1
    const-string v1, "fbns_message_event"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 217
    return-void
.end method

.method public reportFbnsMessageEvent(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZJ)V
    .locals 6
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 179
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "event_type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/AnalyticsUtil;->makeMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 180
    invoke-static {p2}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    const-string v1, "event_extra_info"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_0
    invoke-static {p3}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 184
    const-string v1, "is_buffered"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_1
    invoke-static {p4}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 187
    const-string v1, "dpn"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_2
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->mClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v1}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v2

    .line 191
    const-string/jumbo v1, "s_boot_ms"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string/jumbo v1, "s_svc_ms"

    iget-wide v4, p0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->mCreationTime:J

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string/jumbo v1, "s_mqtt_ms"

    sub-long v4, v2, p5

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string/jumbo v1, "s_net_ms"

    iget-object v4, p0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    .line 195
    invoke-virtual {v4}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->getNetworkSessionId()J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 194
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-wide/16 v4, 0x0

    cmp-long v1, p8, v4

    if-lez v1, :cond_3

    .line 197
    const-string v1, "is_scr_on"

    invoke-static {p7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string/jumbo v1, "s_scr_ms"

    sub-long/2addr v2, p8

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_3
    const-string v1, "fbns_message_event"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 202
    return-void
.end method

.method public reportFbnsMessageRedeliverEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 256
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "event_type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->REDELIVER_NOTIFICATION:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    .line 257
    invoke-virtual {v2}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/AnalyticsUtil;->makeMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 259
    invoke-static {p1}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    const-string v1, "event_extra_info"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :cond_0
    invoke-static {p2}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 264
    const-string v1, "dpn"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_1
    const-string v1, "fbns_message_event"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 267
    return-void
.end method

.method public reportFbnsRegistrationEvent(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;Ljava/lang/String;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 126
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "event_type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/AnalyticsUtil;->makeMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 127
    invoke-static {p2}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    const-string v1, "event_extra_info"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_0
    const-string v1, "fbns_registration_event"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 132
    return-void
.end method

.method public reportFbnsRegistrationInvalidPackageEvent(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 147
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "event_type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/AnalyticsUtil;->makeMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 148
    invoke-static {p2}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    const-string v1, "event_extra_info"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_0
    invoke-static {p3}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    const-string/jumbo v1, "spn"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_1
    invoke-static {p4}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 155
    const-string v1, "dpn"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_2
    const-string v1, "fbns_registration_event"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 158
    return-void
.end method

.method public reportFbnsServiceEvent(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;Ljava/lang/String;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 111
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "event_type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/AnalyticsUtil;->makeMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 112
    invoke-static {p2}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    const-string v1, "event_extra_info"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_0
    const-string v1, "fbns_service_event"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 117
    return-void
.end method
