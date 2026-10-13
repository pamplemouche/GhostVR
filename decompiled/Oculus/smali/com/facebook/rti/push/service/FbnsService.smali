.class public Lcom/facebook/rti/push/service/FbnsService;
.super Lcom/facebook/rti/mqtt/manager/MqttPushService;
.source "FbnsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rti/push/service/FbnsService$PushHistoryHelper;
    }
.end annotation


# static fields
.field public static final FBNS_NOTIFICATION_TOPICS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;"
        }
    .end annotation
.end field

.field public static final FBNS_TOPICS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static sLastService:Lcom/facebook/rti/push/service/FbnsService;


# instance fields
.field private mDeviceId:Ljava/lang/String;

.field private final mFbnsAIDLBinder:Lcom/facebook/push/fbns/ipc/IFbnsAIDLService$Stub;

.field protected mFbnsAnalyticsLogger:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

.field protected mFbnsLiteFlytrapLogger:Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;

.field protected mFbnsLiteNotificationDeliveryHelper:Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;

.field private mFbnsRegistrarRetry:Lcom/facebook/rti/push/service/FbnsRegistrarRetry;

.field mPushHistoryHelper:Lcom/facebook/rti/push/service/FbnsService$PushHistoryHelper;
    .annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected mRegistrationState:Lcom/facebook/rti/push/service/RegistrationState;
    .annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected mSignatureAuthSecureIntent:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-class v0, Lcom/facebook/rti/push/service/FbnsService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/push/service/FbnsService;->TAG:Ljava/lang/String;

    .line 116
    new-instance v0, Lcom/facebook/rti/push/service/FbnsService$1;

    invoke-direct {v0}, Lcom/facebook/rti/push/service/FbnsService$1;-><init>()V

    sput-object v0, Lcom/facebook/rti/push/service/FbnsService;->FBNS_NOTIFICATION_TOPICS:Ljava/util/List;

    .line 123
    new-instance v0, Lcom/facebook/rti/push/service/FbnsService$2;

    invoke-direct {v0}, Lcom/facebook/rti/push/service/FbnsService$2;-><init>()V

    sput-object v0, Lcom/facebook/rti/push/service/FbnsService;->FBNS_TOPICS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;-><init>()V

    .line 146
    new-instance v0, Lcom/facebook/rti/push/service/FbnsService$3;

    invoke-direct {v0, p0}, Lcom/facebook/rti/push/service/FbnsService$3;-><init>(Lcom/facebook/rti/push/service/FbnsService;)V

    iput-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsAIDLBinder:Lcom/facebook/push/fbns/ipc/IFbnsAIDLService$Stub;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/facebook/rti/push/service/FbnsService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private broadcastRegistrationSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1009
    sget-object v0, Lcom/facebook/rti/push/service/FbnsService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "service/registered; package=%s, token=%s"

    invoke-static {v0, v1, p1, p2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1010
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsRegistrarRetry:Lcom/facebook/rti/push/service/FbnsRegistrarRetry;

    invoke-virtual {v0, p1}, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->cancelAndReset(Ljava/lang/String;)V

    .line 1011
    const-string/jumbo v0, "registered"

    .line 1012
    invoke-virtual {p0, p1, v0, p2}, Lcom/facebook/rti/push/service/FbnsService;->createReceiveIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1013
    invoke-virtual {p0, v0}, Lcom/facebook/rti/push/service/FbnsService;->sendFBNSBroadcast(Landroid/content/Intent;)V

    .line 1014
    return-void
.end method

.method public static getClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    invoke-static {p0}, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil;->isServicePreLoadedPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    const-string v0, "com.facebook.oxygen.services.fbns.PreloadedFbnsService"

    .line 235
    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/facebook/rti/push/service/FbnsService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getLoggerUserId(Landroid/content/SharedPreferences;)Ljava/lang/Long;
    .locals 2

    .prologue
    .line 324
    :try_start_0
    sget-object v0, Lcom/facebook/rti/push/client/SharedPrefKeys;->ANALYTIC_FB_UID:Lcom/facebook/rti/push/client/SharedPrefKeys;

    .line 325
    invoke-virtual {v0}, Lcom/facebook/rti/push/client/SharedPrefKeys;->getPrefKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 330
    :goto_0
    return-object v0

    .line 327
    :catch_0
    move-exception v0

    .line 330
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method private initAnalytics(Landroid/content/SharedPreferences;)I
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/16 v1, 0x2710

    .line 254
    sget-object v0, Lcom/facebook/rti/push/client/SharedPrefKeys;->LOGGING_ANALYTICS_EVENTS_SAMPLE_RATE:Lcom/facebook/rti/push/client/SharedPrefKeys;

    const/4 v3, -0x1

    .line 255
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lcom/facebook/rti/push/client/SharedPrefKeys;->get(Landroid/content/SharedPreferences;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 256
    if-ltz v3, :cond_0

    if-le v3, v1, :cond_2

    .line 260
    :cond_0
    invoke-static {p0}, Lcom/facebook/rti/common/util/RtiBuildInfoUtil;->getInstance(Landroid/content/Context;)Lcom/facebook/rti/common/util/RtiBuildInfoUtil;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Lcom/facebook/rti/common/util/RtiBuildInfoUtil;->isProdBuild()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 264
    :goto_0
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 265
    invoke-virtual {v4, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 268
    :goto_1
    sget-object v1, Lcom/facebook/rti/push/service/FbnsService;->TAG:Ljava/lang/String;

    const-string v4, "initialize/reset analyticsSamplingRate, oldRate %d newRate %d log_analytic_events %b"

    .line 271
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 272
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 273
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 268
    invoke-static {v1, v4, v3, v5, v6}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 275
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 276
    sget-object v3, Lcom/facebook/rti/push/client/SharedPrefKeys;->LOGGING_ANALYTICS_EVENTS_SAMPLE_RATE:Lcom/facebook/rti/push/client/SharedPrefKeys;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/facebook/rti/push/client/SharedPrefKeys;->set(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V

    .line 277
    sget-object v3, Lcom/facebook/rti/push/client/SharedPrefKeys;->LOG_ANALYTICS_EVENTS:Lcom/facebook/rti/push/client/SharedPrefKeys;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/facebook/rti/push/client/SharedPrefKeys;->set(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V

    .line 278
    invoke-static {v1}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 281
    :goto_2
    return v0

    .line 265
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    move v0, v3

    .line 281
    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private initHealthStatsAnalytics(Landroid/content/SharedPreferences;)I
    .locals 5

    .prologue
    const/16 v1, 0x2710

    .line 292
    sget-object v0, Lcom/facebook/rti/push/client/SharedPrefKeys;->LOGGING_HEALTH_STATS_SAMPLE_RATE:Lcom/facebook/rti/push/client/SharedPrefKeys;

    const/4 v2, -0x1

    .line 293
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/facebook/rti/push/client/SharedPrefKeys;->get(Landroid/content/SharedPreferences;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 294
    if-ltz v2, :cond_0

    if-le v2, v1, :cond_2

    .line 296
    :cond_0
    const/4 v0, 0x1

    .line 297
    invoke-static {p0}, Lcom/facebook/rti/common/util/RtiBuildInfoUtil;->getInstance(Landroid/content/Context;)Lcom/facebook/rti/common/util/RtiBuildInfoUtil;

    move-result-object v3

    .line 298
    invoke-virtual {v3}, Lcom/facebook/rti/common/util/RtiBuildInfoUtil;->isProdBuild()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 301
    :cond_1
    sget-object v1, Lcom/facebook/rti/push/service/FbnsService;->TAG:Ljava/lang/String;

    const-string v3, "initialize/reset healthSamplingRate, oldRate %d newRate %d"

    .line 304
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 305
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 301
    invoke-static {v1, v3, v2, v4}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 307
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 308
    sget-object v2, Lcom/facebook/rti/push/client/SharedPrefKeys;->LOGGING_HEALTH_STATS_SAMPLE_RATE:Lcom/facebook/rti/push/client/SharedPrefKeys;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/facebook/rti/push/client/SharedPrefKeys;->set(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V

    .line 309
    invoke-static {v1}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 312
    :goto_0
    return v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private logAcknowledgedNotification(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 768
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsAnalyticsLogger:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsMessageAcknowledgedEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 769
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsLiteFlytrapLogger:Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ACK from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 771
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": notifId = "

    .line 772
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 773
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; delay = "

    .line 774
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 775
    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 776
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 769
    invoke-virtual {v0, v1}, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->log(Ljava/lang/String;)V

    .line 777
    return-void
.end method

.method private logDeliveryHelperFailed(Lcom/facebook/rti/push/service/FbnsNotificationMessage;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 751
    sget-object v0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->DELIVERYHELPER_FAILED:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/rti/push/service/FbnsService;->reportFbnsMessageEvent(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;Lcom/facebook/rti/push/service/FbnsNotificationMessage;Ljava/lang/String;)V

    .line 753
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsLiteFlytrapLogger:Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: Delivery helper failed notifId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/facebook/rti/push/service/FbnsNotificationMessage;->mNotifId:Ljava/lang/String;

    .line 755
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; reason = "

    .line 756
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 757
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 758
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 753
    invoke-virtual {v0, v1}, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->log(Ljava/lang/String;)V

    .line 759
    return-void
.end method

.method private logDiscardedNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 762
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsAnalyticsLogger:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsMessageDiscardedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsLiteFlytrapLogger:Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: Fail to deliver notifId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 764
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 763
    invoke-virtual {v0, v1}, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->log(Ljava/lang/String;)V

    .line 765
    return-void
.end method

.method private onMessage(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 889
    invoke-static {p1}, Lcom/facebook/rti/push/service/FbnsNotificationMessage;->deserialize(Ljava/lang/String;)Lcom/facebook/rti/push/service/FbnsNotificationMessage;

    move-result-object v0

    .line 890
    invoke-virtual {p0, v0}, Lcom/facebook/rti/push/service/FbnsService;->logReceivedNotification(Lcom/facebook/rti/push/service/FbnsNotificationMessage;)V

    .line 892
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsService;->mPushHistoryHelper:Lcom/facebook/rti/push/service/FbnsService$PushHistoryHelper;

    invoke-static {v1, v0}, Lcom/facebook/rti/push/service/FbnsService$PushHistoryHelper;->access$100(Lcom/facebook/rti/push/service/FbnsService$PushHistoryHelper;Lcom/facebook/rti/push/service/FbnsNotificationMessage;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 893
    sget-object v1, Lcom/facebook/rti/push/service/FbnsService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "receive/message; duplicatedNotif=%s"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 894
    iget-object v1, v0, Lcom/facebook/rti/push/service/FbnsNotificationMessage;->mNotifId:Ljava/lang/String;

    iget-object v2, v0, Lcom/facebook/rti/push/service/FbnsNotificationMessage;->mPackageName:Ljava/lang/String;

    sget-object v3, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->NOTIF_DUPED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    invoke-direct {p0, v1, v2, v3}, Lcom/facebook/rti/push/service/FbnsService;->sendNotificationAck(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;)V

    .line 898
    invoke-virtual {p0, v0}, Lcom/facebook/rti/push/service/FbnsService;->logDuplicatedNotification(Lcom/facebook/rti/push/service/FbnsNotificationMessage;)V

    .line 929
    :goto_0
    return-void

    .line 902
    :cond_0
    iget-object v1, v0, Lcom/facebook/rti/push/service/FbnsNotificationMessage;->mPackageName:Ljava/lang/String;

    const-string v2, "message"

    iget-object v3, v0, Lcom/facebook/rti/push/service/FbnsNotificationMessage;->mPayload:Ljava/lang/String;

    .line 903
    invoke-virtual {p0, v1, v2, v3}, Lcom/facebook/rti/push/service/FbnsService;->createReceiveIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 905
    iget-object v2, v0, Lcom/facebook/rti/push/service/FbnsNotificationMessage;->mToken:Ljava/lang/String;

    invoke-static {v2}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 906
    const-string/jumbo v2, "token"

    iget-object v3, v0, Lcom/facebook/rti/push/service/FbnsNotificationMessage;->mToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 908
    :cond_1
    iget-object v2, v0, Lcom/facebook/rti/push/service/FbnsNotificationMessage;->mCollapseKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 909
    const-string v2, "collapse_key"

    iget-object v3, v0, Lcom/facebook/rti/push/service/FbnsNotificationMessage;->mCollapseKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 912
    :cond_2
    iget-object v2, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsLiteNotificationDeliveryHelper:Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;

    iget-object v3, v0, Lcom/facebook/rti/push/service/FbnsNotificationMessage;->mNotifId:Ljava/lang/String;

    .line 913
    invoke-virtual {v2, v3, v1}, Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;->deliverFbnsLiteNotification(Ljava/lang/String;Landroid/content/Intent;)Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    move-result-object v2

    .line 915
    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->isSucceeded()Z

    move-result v3

    if-nez v3, :cond_5

    .line 916
    sget-object v3, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PACKAGE_UNSUPPORTED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    if-ne v2, v3, :cond_4

    .line 917
    invoke-virtual {p0}, Lcom/facebook/rti/push/service/FbnsService;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/facebook/rti/push/service/FbnsNotificationMessage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 920
    sget-object v3, Lcom/facebook/rti/push/service/FbnsService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "receive/message; broadcast directly; %s"

    invoke-static {v3, v4, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 921
    iget-object v3, p0, Lcom/facebook/rti/push/service/FbnsService;->mSignatureAuthSecureIntent:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    iget-object v4, v0, Lcom/facebook/rti/push/service/FbnsNotificationMessage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->sendExplicitSecureBroadcast(Landroid/content/Intent;Ljava/lang/String;)Z

    .line 923
    :cond_3
    iget-object v1, v0, Lcom/facebook/rti/push/service/FbnsNotificationMessage;->mNotifId:Ljava/lang/String;

    iget-object v3, v0, Lcom/facebook/rti/push/service/FbnsNotificationMessage;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v2}, Lcom/facebook/rti/push/service/FbnsService;->sendNotificationAck(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;)V

    .line 925
    :cond_4
    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/rti/push/service/FbnsService;->logDeliveryHelperFailed(Lcom/facebook/rti/push/service/FbnsNotificationMessage;Ljava/lang/String;)V

    .line 928
    :cond_5
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsService;->mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    iget-object v0, v0, Lcom/facebook/rti/push/service/FbnsNotificationMessage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->reportFbnsLiteNotificationReceived(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onRegisterResponse(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 837
    invoke-static {p1}, Lcom/facebook/rti/push/service/FbnsRegisterResponse;->deserialize(Ljava/lang/String;)Lcom/facebook/rti/push/service/FbnsRegisterResponse;

    move-result-object v0

    .line 838
    iget-object v1, v0, Lcom/facebook/rti/push/service/FbnsRegisterResponse;->mError:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 839
    invoke-direct {p0, v0}, Lcom/facebook/rti/push/service/FbnsService;->respondRegistrationSuccess(Lcom/facebook/rti/push/service/FbnsRegisterResponse;)V

    .line 845
    :goto_0
    return-void

    .line 841
    :cond_0
    invoke-direct {p0, v0}, Lcom/facebook/rti/push/service/FbnsService;->respondRegistrationError(Lcom/facebook/rti/push/service/FbnsRegisterResponse;)V

    .line 842
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsAnalyticsLogger:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v2, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;->FAILURE_SERVER_RESPOND_WITH_ERROR:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;

    iget-object v0, v0, Lcom/facebook/rti/push/service/FbnsRegisterResponse;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsRegistrationEvent(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private reportFbnsMessageEvent(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;Lcom/facebook/rti/push/service/FbnsNotificationMessage;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 935
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsAnalyticsLogger:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    iget-object v3, p2, Lcom/facebook/rti/push/service/FbnsNotificationMessage;->mIsBuffered:Ljava/lang/String;

    iget-object v4, p2, Lcom/facebook/rti/push/service/FbnsNotificationMessage;->mPackageName:Ljava/lang/String;

    iget-wide v5, p0, Lcom/facebook/rti/push/service/FbnsService;->mConnectionTimeMs:J

    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsService;->mScreenPowerState:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

    .line 941
    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;->isScreenOn()Z

    move-result v7

    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsService;->mScreenPowerState:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

    .line 942
    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;->getLastStateUpdatedTimeStamp()J

    move-result-wide v8

    move-object v1, p1

    move-object v2, p3

    .line 935
    invoke-virtual/range {v0 .. v9}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsMessageEvent(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZJ)V

    .line 943
    return-void
.end method

.method private respondRegistrationError(Lcom/facebook/rti/push/service/FbnsRegisterResponse;)V
    .locals 2

    .prologue
    .line 1187
    iget-object v0, p1, Lcom/facebook/rti/push/service/FbnsRegisterResponse;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1188
    sget-object v0, Lcom/facebook/rti/push/service/FbnsService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "service/register/response/empty_package"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    :goto_0
    return-void

    .line 1192
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mRegistrationState:Lcom/facebook/rti/push/service/RegistrationState;

    iget-object v1, p1, Lcom/facebook/rti/push/service/FbnsRegisterResponse;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/push/service/RegistrationState;->invalidateTokenCache(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private respondRegistrationSuccess(Lcom/facebook/rti/push/service/FbnsRegisterResponse;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1160
    iget-object v0, p1, Lcom/facebook/rti/push/service/FbnsRegisterResponse;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1161
    sget-object v0, Lcom/facebook/rti/push/service/FbnsService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "service/register/response/invalid"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsAnalyticsLogger:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v1, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;->FAILURE_SERVER_RESPOND_WITH_INVALID_PACKAGE_NAME:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;

    invoke-virtual {v0, v1, v3}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsRegistrationEvent(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;Ljava/lang/String;)V

    .line 1184
    :goto_0
    return-void

    .line 1168
    :cond_0
    iget-object v0, p1, Lcom/facebook/rti/push/service/FbnsRegisterResponse;->mToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1169
    sget-object v0, Lcom/facebook/rti/push/service/FbnsService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "service/register/response/empty_token"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsAnalyticsLogger:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v1, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;->FAILURE_SERVER_RESPOND_WITH_INVALID_TOKEN:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;

    invoke-virtual {v0, v1, v3}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsRegistrationEvent(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 1175
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mRegistrationState:Lcom/facebook/rti/push/service/RegistrationState;

    iget-object v1, p1, Lcom/facebook/rti/push/service/FbnsRegisterResponse;->mPackageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/facebook/rti/push/service/FbnsRegisterResponse;->mToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/push/service/RegistrationState;->updateTokenCache(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1176
    iget-object v0, p1, Lcom/facebook/rti/push/service/FbnsRegisterResponse;->mPackageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/facebook/rti/push/service/FbnsRegisterResponse;->mToken:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/facebook/rti/push/service/FbnsService;->broadcastRegistrationSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsAnalyticsLogger:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v1, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;->RESPONSE_RECEIVED:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;

    invoke-virtual {v0, v1, v3}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsRegistrationEvent(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 1180
    :cond_2
    sget-object v0, Lcom/facebook/rti/push/service/FbnsService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "service/register/response/cache_update_failed"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsAnalyticsLogger:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v1, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;->FAILURE_CACHE_UPDATE:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;

    iget-object v2, p1, Lcom/facebook/rti/push/service/FbnsRegisterResponse;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsRegistrationEvent(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private responseHearBeat(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1257
    sget-object v0, Lcom/facebook/rti/push/service/FbnsService;->TAG:Ljava/lang/String;

    const-string v1, "Handling heart beat request"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1263
    const-string v1, "beacon_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1266
    invoke-static {v0}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1284
    :goto_0
    return-void

    .line 1269
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 1272
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsConnectionManager:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    const-string v1, "/fbns_exp_logging"

    .line 1274
    invoke-static {p1}, Lcom/facebook/rti/common/util/StringUtil;->toUTf8(Ljava/lang/String;)[B

    move-result-object v2

    sget-object v3, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->FIRE_AND_FORGET:Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;

    const/4 v4, 0x0

    .line 1272
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->publish(Ljava/lang/String;[BLcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/facebook/rti/mqtt/protocol/MqttException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1277
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1281
    :catch_1
    move-exception v0

    goto :goto_0

    .line 1279
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private sendNotificationAck(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 684
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsConnectionManager:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->getFbnsExplicitDeliveryAckEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 685
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mRegistrationState:Lcom/facebook/rti/push/service/RegistrationState;

    invoke-virtual {v0, p2}, Lcom/facebook/rti/push/service/RegistrationState;->getTokenEntry(Ljava/lang/String;)Lcom/facebook/rti/push/service/RegistrationCacheEntry;

    move-result-object v1

    .line 686
    new-instance v0, Lcom/facebook/rti/push/service/FbnsMsgAck;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mToken:Ljava/lang/String;

    :goto_0
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mAppId:Ljava/lang/String;

    :cond_0
    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/rti/push/service/FbnsMsgAck;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;)V

    .line 696
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/rti/push/service/FbnsMsgAck;->serialize()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 702
    sget-object v1, Lcom/facebook/rti/push/service/FbnsService;->TAG:Ljava/lang/String;

    const-string v2, "publish /fbns_msg_ack=%s"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 704
    :try_start_1
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsConnectionManager:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    const-string v2, "/fbns_msg_ack"

    .line 706
    invoke-static {v0}, Lcom/facebook/rti/common/util/StringUtil;->toUTf8(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v3, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->FIRE_AND_FORGET:Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;

    const/4 v4, 0x0

    .line 704
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->publish(Ljava/lang/String;[BLcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;)I
    :try_end_1
    .catch Lcom/facebook/rti/mqtt/protocol/MqttException; {:try_start_1 .. :try_end_1} :catch_1

    .line 713
    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v2, v3

    .line 686
    goto :goto_0

    .line 697
    :catch_0
    move-exception v0

    goto :goto_1

    .line 709
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private unregister(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1098
    const-string v0, "pkg_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1099
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsService;->mRegistrationState:Lcom/facebook/rti/push/service/RegistrationState;

    invoke-virtual {v1, v0}, Lcom/facebook/rti/push/service/RegistrationState;->getValidToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1100
    iget-object v2, p0, Lcom/facebook/rti/push/service/FbnsService;->mRegistrationState:Lcom/facebook/rti/push/service/RegistrationState;

    invoke-virtual {v2, v0}, Lcom/facebook/rti/push/service/RegistrationState;->getAppId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1101
    iget-object v3, p0, Lcom/facebook/rti/push/service/FbnsService;->mRegistrationState:Lcom/facebook/rti/push/service/RegistrationState;

    invoke-virtual {v3, v0}, Lcom/facebook/rti/push/service/RegistrationState;->removeApp(Ljava/lang/String;)V

    .line 1103
    const-string/jumbo v3, "unregistered"

    .line 1104
    invoke-virtual {p0, v0, v3, v5}, Lcom/facebook/rti/push/service/FbnsService;->createReceiveIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 1105
    invoke-virtual {p0, v3}, Lcom/facebook/rti/push/service/FbnsService;->sendFBNSBroadcast(Landroid/content/Intent;)V

    .line 1106
    iget-object v3, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsAnalyticsLogger:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v4, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;->UNREGISTER_CALLED:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;

    invoke-virtual {v3, v4, v5}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsRegistrationEvent(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;Ljava/lang/String;)V

    .line 1109
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1110
    invoke-direct {p0, v1, v0, v2}, Lcom/facebook/rti/push/service/FbnsService;->unregisterOnMqttPublish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    :cond_0
    return-void
.end method

.method private unregisterOnMqttPublish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, -0x1

    .line 1116
    new-instance v0, Lcom/facebook/rti/push/service/FbnsUnregisterRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/rti/push/service/FbnsUnregisterRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/rti/push/service/FbnsUnregisterRequest;->serialize()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1126
    new-instance v2, Lcom/facebook/rti/push/service/FbnsService$10;

    invoke-direct {v2, p0}, Lcom/facebook/rti/push/service/FbnsService$10;-><init>(Lcom/facebook/rti/push/service/FbnsService;)V

    .line 1144
    :try_start_1
    iget-object v3, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsConnectionManager:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    const-string v4, "/fbns_unreg_req"

    .line 1147
    invoke-static {v0}, Lcom/facebook/rti/common/util/StringUtil;->toUTf8(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v5, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->ACKNOWLEDGED_DELIVERY:Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;

    .line 1145
    invoke-virtual {v3, v4, v0, v5, v2}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->publish(Ljava/lang/String;[BLcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;)I
    :try_end_1
    .catch Lcom/facebook/rti/mqtt/protocol/MqttException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 1153
    :goto_0
    if-ne v0, v1, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsAnalyticsLogger:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v1, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;->UNREGISTER_FAILURE_MQTT_NOT_CONNECTED:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;

    invoke-virtual {v0, v1, v6}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsRegistrationEvent(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;Ljava/lang/String;)V

    .line 1157
    :cond_0
    :goto_1
    return-void

    .line 1120
    :catch_0
    move-exception v0

    .line 1121
    sget-object v1, Lcom/facebook/rti/push/service/FbnsService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "service/unregister/serialization_exception"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1122
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsAnalyticsLogger:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v1, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;->FAILURE_UNKNOWN_CLIENT_ERROR:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;

    invoke-virtual {v0, v1, v6}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsRegistrationEvent(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;Ljava/lang/String;)V

    goto :goto_1

    .line 1150
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private verifyIntent(Landroid/content/Intent;)Z
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 848
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 849
    const-string v0, "com.facebook.rti.fbns.intent.REGISTER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.facebook.rti.fbns.intent.REGISTER_RETRY"

    .line 850
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.facebook.rti.fbns.intent.UNREGISTER"

    .line 851
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 852
    :cond_0
    const-string v0, "pkg_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 853
    iget-object v4, p0, Lcom/facebook/rti/push/service/FbnsService;->mSignatureAuthSecureIntent:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    invoke-virtual {v4, p1}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->getSender(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 854
    invoke-static {v0}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 855
    sget-object v5, Lcom/facebook/rti/push/service/FbnsService;->TAG:Ljava/lang/String;

    const-string v6, "Empty package name for %s from %s"

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v3, v7, v1

    aput-object v4, v7, v2

    invoke-static {v5, v6, v7}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 856
    iget-object v2, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsAnalyticsLogger:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v5, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;->FAILURE_EMPTY_PACKAGE_NAME:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;

    invoke-virtual {v2, v5, v3, v4, v0}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsRegistrationInvalidPackageEvent(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 885
    :goto_0
    return v0

    .line 865
    :cond_1
    const-string v5, "com.facebook.rti.fbns.intent.REGISTER_RETRY"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 866
    invoke-virtual {p0}, Lcom/facebook/rti/push/service/FbnsService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 869
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 870
    sget-object v5, Lcom/facebook/rti/push/service/FbnsService;->TAG:Ljava/lang/String;

    const-string v6, "Package mismatch for %s from %s: packageName %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v1

    aput-object v4, v7, v2

    aput-object v0, v7, v8

    invoke-static {v5, v6, v7}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 876
    iget-object v2, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsAnalyticsLogger:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v5, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;->FAILURE_PACKAGE_DOES_NOT_MATCH_INTENT:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;

    invoke-virtual {v2, v5, v3, v4, v0}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsRegistrationInvalidPackageEvent(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 881
    goto :goto_0

    :cond_3
    move v0, v2

    .line 885
    goto :goto_0
.end method


# virtual methods
.method public addReceiverToTempWhitelist(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 715
    return-void
.end method

.method protected bootstrapService()Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;
    .locals 21

    .prologue
    .line 338
    sget-object v3, Lcom/facebook/rti/push/service/FbnsService;->sLastService:Lcom/facebook/rti/push/service/FbnsService;

    if-eqz v3, :cond_0

    .line 339
    sget-object v3, Lcom/facebook/rti/push/service/FbnsService;->sLastService:Lcom/facebook/rti/push/service/FbnsService;

    invoke-virtual {v3}, Lcom/facebook/rti/push/service/FbnsService;->destroy()V

    .line 341
    :cond_0
    sput-object p0, Lcom/facebook/rti/push/service/FbnsService;->sLastService:Lcom/facebook/rti/push/service/FbnsService;

    .line 343
    new-instance v3, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/rti/push/service/FbnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsLiteFlytrapLogger:Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;

    .line 345
    new-instance v12, Lcom/facebook/rti/push/service/FbnsService$4;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/facebook/rti/push/service/FbnsService$4;-><init>(Lcom/facebook/rti/push/service/FbnsService;)V

    .line 354
    new-instance v13, Lcom/facebook/rti/push/service/FbnsService$5;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/facebook/rti/push/service/FbnsService$5;-><init>(Lcom/facebook/rti/push/service/FbnsService;)V

    .line 363
    new-instance v14, Lcom/facebook/rti/push/service/FbnsService$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/facebook/rti/push/service/FbnsService$6;-><init>(Lcom/facebook/rti/push/service/FbnsService;)V

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/rti/push/service/FbnsService;->getFbErrorReporter()Lcom/facebook/common/errorreporting/FbErrorReporter;

    move-result-object v15

    .line 372
    new-instance v16, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;-><init>(Landroid/content/Context;Lcom/facebook/common/errorreporting/FbErrorReporter;)V

    .line 375
    new-instance v17, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefsProvider;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefsProvider;-><init>(Landroid/content/Context;)V

    .line 377
    new-instance v18, Lcom/facebook/rti/push/service/FbnsServiceIdManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/push/service/FbnsServiceIdManager;-><init>(Lcom/facebook/rti/push/service/FbnsService;Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;)V

    .line 379
    invoke-virtual/range {v18 .. v18}, Lcom/facebook/rti/push/service/FbnsServiceIdManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/facebook/rti/push/service/FbnsService;->mDeviceId:Ljava/lang/String;

    .line 381
    new-instance v19, Lcom/facebook/rti/push/service/FbnsConnectionConfigManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/facebook/rti/push/service/FbnsConnectionConfigManager;-><init>(Landroid/content/Context;)V

    .line 384
    sget-object v3, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->ANALYTICS:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    .line 385
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper;->getSharedPreferences(Landroid/content/Context;Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 386
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/facebook/rti/push/service/FbnsService;->initAnalytics(Landroid/content/SharedPreferences;)I

    move-result v3

    .line 387
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/facebook/rti/push/service/FbnsService;->initHealthStatsAnalytics(Landroid/content/SharedPreferences;)I

    move-result v4

    .line 388
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/facebook/rti/push/service/FbnsService;->getLoggerUserId(Landroid/content/SharedPreferences;)Ljava/lang/Long;

    move-result-object v20

    .line 390
    sget-object v6, Lcom/facebook/rti/push/service/FbnsService;->TAG:Ljava/lang/String;

    const-string v7, "configureAnalytics current healthSampleRate: %d analyticsSampleRate: %d"

    .line 393
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 394
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 390
    invoke-static {v6, v7, v8, v3}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 396
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/16 v6, 0x2710

    .line 397
    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    if-ge v3, v4, :cond_1

    const/4 v3, 0x1

    move v11, v3

    .line 399
    :goto_0
    sget-object v3, Lcom/facebook/rti/push/client/SharedPrefKeys;->LOG_ANALYTICS_EVENTS:Lcom/facebook/rti/push/client/SharedPrefKeys;

    .line 401
    invoke-virtual {v3}, Lcom/facebook/rti/push/client/SharedPrefKeys;->getPrefKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 400
    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 403
    new-instance v4, Lcom/facebook/rti/push/service/FbnsService$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v3, v5}, Lcom/facebook/rti/push/service/FbnsService$7;-><init>(Lcom/facebook/rti/push/service/FbnsService;ZLandroid/content/SharedPreferences;)V

    .line 415
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/rti/push/service/FbnsService;->getServiceName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/facebook/rti/push/service/FbnsService$8;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v7, v0, v1}, Lcom/facebook/rti/push/service/FbnsService$8;-><init>(Lcom/facebook/rti/push/service/FbnsService;Lcom/facebook/rti/push/service/FbnsConnectionConfigManager;)V

    .line 422
    invoke-virtual/range {v18 .. v18}, Lcom/facebook/rti/push/service/FbnsServiceIdManager;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "567310203415052"

    .line 424
    invoke-virtual/range {v18 .. v18}, Lcom/facebook/rti/push/service/FbnsServiceIdManager;->getAppName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v3, p0

    .line 404
    invoke-static/range {v3 .. v10}, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->newDefaultAnalyticsLogger(Landroid/content/Context;Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSamplePolicy;Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/facebook/rti/common/util/NonInjectProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;

    move-result-object v3

    .line 426
    new-instance v4, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;

    invoke-direct {v4}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;-><init>()V

    .line 428
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->setContext(Landroid/content/Context;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;

    move-result-object v4

    .line 429
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/rti/push/service/FbnsService;->getServiceConnectionType()Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->setServiceConnectionType(Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;

    move-result-object v4

    new-instance v5, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-direct {v5}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;-><init>()V

    .line 430
    invoke-virtual {v4, v5}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->setFbnsConnectionManager(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/rti/push/service/FbnsService;->mConnectionManagerCallbacks:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;

    .line 431
    invoke-virtual {v4, v5}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->setFbnsConnectionManagerCallbacks(Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$ConnectionManagerCallbacks;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;

    move-result-object v4

    .line 432
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->setMqttIdManager(Lcom/facebook/rti/mqtt/manager/MqttIdManager;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;

    move-result-object v4

    new-instance v5, Lcom/facebook/rti/push/service/MqttDeviceAuthCredentials;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/facebook/rti/push/service/MqttDeviceAuthCredentials;-><init>(Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;)V

    .line 433
    invoke-virtual {v4, v5}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->setMqttCredentials(Lcom/facebook/rti/mqtt/credentials/MqttCredentials;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;

    move-result-object v4

    new-instance v5, Lcom/facebook/rti/mqtt/protocol/serialization/ThriftPayloadEncoder;

    invoke-direct {v5}, Lcom/facebook/rti/mqtt/protocol/serialization/ThriftPayloadEncoder;-><init>()V

    .line 434
    invoke-virtual {v4, v5}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->setMessagePayloadEncoder(Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;

    move-result-object v4

    .line 435
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->setConnectionConfigManager(Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;

    move-result-object v4

    const/4 v5, 0x0

    .line 436
    invoke-virtual {v4, v5}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->setIsMqttForegroundProvider(Lcom/facebook/rti/common/util/NonInjectProvider;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;

    move-result-object v4

    .line 437
    invoke-virtual {v4, v12}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->setMqttEndpointCapabilityProvider(Lcom/facebook/rti/common/util/NonInjectProvider;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;

    move-result-object v4

    new-instance v5, Landroid/os/Handler;

    .line 438
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v4, v5}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->setMqttHandler(Landroid/os/Handler;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;

    move-result-object v4

    new-instance v5, Lcom/facebook/rti/common/fbtrace/EmptyFbTraceLogger;

    invoke-direct {v5}, Lcom/facebook/rti/common/fbtrace/EmptyFbTraceLogger;-><init>()V

    .line 439
    invoke-virtual {v4, v5}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->setFbtraceLogger(Lcom/facebook/rti/common/fbtrace/FbTraceLogger;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;

    move-result-object v4

    .line 440
    invoke-virtual {v4, v15}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->setFbErrorReporter(Lcom/facebook/common/errorreporting/FbErrorReporter;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;

    move-result-object v4

    .line 441
    invoke-virtual {v4, v3}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->setAnalyticsLogger(Lcom/facebook/rti/common/analytics/AnalyticsLogger;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsLiteFlytrapLogger:Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;

    .line 442
    invoke-virtual {v3, v4}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->setRtiFlytrapLogger(Lcom/facebook/rti/common/logging/RtiFlytrapLogger;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;

    move-result-object v3

    .line 443
    invoke-virtual {v3, v14}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->setIsChatOnProvider(Lcom/facebook/rti/common/util/NonInjectProvider;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;

    move-result-object v3

    .line 444
    invoke-virtual {v3, v13}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->setMqttRequestRoutingRegionProvider(Lcom/facebook/rti/common/util/NonInjectProvider;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 445
    invoke-virtual {v3, v4}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->setIsMqttPublishOptionalCompression(Z)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;

    move-result-object v3

    new-instance v4, Lcom/facebook/rti/push/service/FbnsKeepaliveParms;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Lcom/facebook/rti/push/service/FbnsKeepaliveParms;-><init>(Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;)V

    .line 446
    invoke-virtual {v3, v4}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->setKeepaliveParms(Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;

    move-result-object v3

    new-instance v4, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreBuilder;

    invoke-direct {v4}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreBuilder;-><init>()V

    .line 447
    invoke-virtual {v3, v4}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->setMqttClientCoreBuilder(Lcom/facebook/rti/mqtt/protocol/MqttClientCoreBuilder;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 448
    invoke-virtual {v3, v4}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->setRefCode(Ljava/util/concurrent/atomic/AtomicReference;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;

    move-result-object v3

    const-string v4, "567310203415052"

    .line 449
    invoke-virtual {v3, v4}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->setAppId(Ljava/lang/String;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;

    move-result-object v3

    .line 450
    invoke-virtual {v3, v14}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->setIsLogTimeProvider(Lcom/facebook/rti/common/util/NonInjectProvider;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;

    move-result-object v3

    .line 451
    invoke-virtual {v3, v11}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->setIsLoggingHealthStatsEnabled(Z)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;

    move-result-object v3

    .line 452
    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->setLoggerUserId(Ljava/lang/Long;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 453
    invoke-virtual {v3, v4}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->setEnableFizz(Z)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;

    move-result-object v3

    .line 454
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->setIRtiSharedPrefsProvider(Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;

    move-result-object v3

    .line 455
    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters$Builder;->build()Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;

    move-result-object v3

    .line 457
    new-instance v4, Lcom/facebook/rti/push/service/FbnsBootstrapper;

    invoke-direct {v4}, Lcom/facebook/rti/push/service/FbnsBootstrapper;-><init>()V

    .line 458
    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v3}, Lcom/facebook/rti/push/service/FbnsBootstrapper;->bootstrap(Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrapParameters;)V

    .line 460
    return-object v4

    .line 397
    :cond_1
    const/4 v3, 0x0

    move v11, v3

    goto/16 :goto_0
.end method

.method protected createReceiveIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1242
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.rti.fbns.intent.RECEIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1243
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1244
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1245
    const-string/jumbo v1, "receive_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1246
    if-eqz p3, :cond_0

    .line 1247
    const-string v1, "data"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1249
    :cond_0
    return-object v0
.end method

.method protected doDestroy()V
    .locals 1

    .prologue
    .line 499
    invoke-super {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->doDestroy()V

    .line 500
    sget-object v0, Lcom/facebook/rti/push/service/FbnsService;->sLastService:Lcom/facebook/rti/push/service/FbnsService;

    if-ne v0, p0, :cond_0

    .line 501
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/rti/push/service/FbnsService;->sLastService:Lcom/facebook/rti/push/service/FbnsService;

    .line 503
    :cond_0
    return-void
.end method

.method protected doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 528
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/rti/push/service/FbnsService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 530
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 531
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 532
    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/push/service/FbnsService;->dumpCompatibleApps(Ljava/util/List;Ljava/util/List;)V

    .line 533
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 534
    invoke-virtual {p0, v2}, Lcom/facebook/rti/push/service/FbnsService;->dumpRegisteredApps(Ljava/util/ArrayList;)V

    .line 536
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "validCompatibleApps="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enabledCompatibleApps="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registeredApps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notificationCounter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsService;->mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    .line 540
    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getFbnsLiteNotificationCounters()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 539
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 546
    return-void

    .line 541
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected doIntent(Landroid/content/Intent;Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;)V
    .locals 4

    .prologue
    .line 573
    invoke-super {p0, p1, p2}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->doIntent(Landroid/content/Intent;Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;)V

    .line 574
    invoke-direct {p0, p1}, Lcom/facebook/rti/push/service/FbnsService;->verifyIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 601
    :goto_0
    return-void

    .line 578
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 579
    const-string v1, "com.facebook.rti.fbns.intent.REGISTER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 580
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;->FBNS_REGISTER:Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;

    invoke-virtual {p0, v0, p2}, Lcom/facebook/rti/push/service/FbnsService;->start(Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;)V

    .line 581
    invoke-virtual {p0, p1}, Lcom/facebook/rti/push/service/FbnsService;->register(Landroid/content/Intent;)V

    .line 594
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 595
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 596
    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/push/service/FbnsService;->dumpCompatibleApps(Ljava/util/List;Ljava/util/List;)V

    .line 597
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 598
    invoke-virtual {p0, v2}, Lcom/facebook/rti/push/service/FbnsService;->dumpRegisteredApps(Ljava/util/ArrayList;)V

    .line 599
    iget-object v3, p0, Lcom/facebook/rti/push/service/FbnsService;->mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    invoke-virtual {v3, v0, v1, v2}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->updateRegisteredApps(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 582
    :cond_1
    const-string v1, "com.facebook.rti.fbns.intent.REGISTER_RETRY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 583
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;->FBNS_REGISTER_RETRY:Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;

    invoke-virtual {p0, v0, p2}, Lcom/facebook/rti/push/service/FbnsService;->start(Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;)V

    .line 584
    invoke-virtual {p0, p1}, Lcom/facebook/rti/push/service/FbnsService;->registerRetry(Landroid/content/Intent;)V

    goto :goto_1

    .line 585
    :cond_2
    const-string v1, "com.facebook.rti.fbns.intent.UNREGISTER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 586
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;->FBNS_UNREGISTER:Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;

    invoke-virtual {p0, v0, p2}, Lcom/facebook/rti/push/service/FbnsService;->start(Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;)V

    .line 587
    invoke-direct {p0, p1}, Lcom/facebook/rti/push/service/FbnsService;->unregister(Landroid/content/Intent;)V

    goto :goto_1

    .line 589
    :cond_3
    sget-object v0, Lcom/facebook/rti/push/service/FbnsService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "service/doIntent/unrecognized_action"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected dumpCompatibleApps(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 815
    invoke-static {}, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil;->getCompatibleApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 816
    const/16 v2, 0x40

    sget-object v3, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->NO_REPORT:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    .line 817
    invoke-static {p0, v0, v2, v3}, Lcom/facebook/rti/common/util/PackageInfoUtil;->getFbnsPackageInfo(Landroid/content/Context;Ljava/lang/String;ILcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;)Lcom/facebook/rti/common/util/FbnsPackageInfo;

    move-result-object v0

    .line 819
    iget-object v2, v0, Lcom/facebook/rti/common/util/FbnsPackageInfo;->mPackageStatus:Lcom/facebook/rti/common/util/FbnsPackageInfo$PackageStatus;

    sget-object v3, Lcom/facebook/rti/common/util/FbnsPackageInfo$PackageStatus;->INSTALLED:Lcom/facebook/rti/common/util/FbnsPackageInfo$PackageStatus;

    if-eq v2, v3, :cond_1

    iget-object v2, v0, Lcom/facebook/rti/common/util/FbnsPackageInfo;->mPackageStatus:Lcom/facebook/rti/common/util/FbnsPackageInfo$PackageStatus;

    sget-object v3, Lcom/facebook/rti/common/util/FbnsPackageInfo$PackageStatus;->DISABLED:Lcom/facebook/rti/common/util/FbnsPackageInfo$PackageStatus;

    if-eq v2, v3, :cond_1

    iget-object v2, v0, Lcom/facebook/rti/common/util/FbnsPackageInfo;->mPackageStatus:Lcom/facebook/rti/common/util/FbnsPackageInfo$PackageStatus;

    sget-object v3, Lcom/facebook/rti/common/util/FbnsPackageInfo$PackageStatus;->TRUSTED:Lcom/facebook/rti/common/util/FbnsPackageInfo$PackageStatus;

    if-ne v2, v3, :cond_2

    .line 822
    :cond_1
    iget-object v2, v0, Lcom/facebook/rti/common/util/FbnsPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    :cond_2
    iget-object v2, v0, Lcom/facebook/rti/common/util/FbnsPackageInfo;->mPackageStatus:Lcom/facebook/rti/common/util/FbnsPackageInfo$PackageStatus;

    sget-object v3, Lcom/facebook/rti/common/util/FbnsPackageInfo$PackageStatus;->TRUSTED:Lcom/facebook/rti/common/util/FbnsPackageInfo$PackageStatus;

    if-ne v2, v3, :cond_0

    .line 825
    iget-object v0, v0, Lcom/facebook/rti/common/util/FbnsPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 828
    :cond_3
    return-void
.end method

.method protected declared-synchronized dumpRegisteredApps(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 831
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mRegistrationState:Lcom/facebook/rti/push/service/RegistrationState;

    invoke-virtual {v0}, Lcom/facebook/rti/push/service/RegistrationState;->getRegisteredApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;

    .line 832
    iget-object v0, v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 831
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 834
    :cond_0
    monitor-exit p0

    return-void
.end method

.method getFlytrapFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 718
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsLiteFlytrapLogger:Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;

    invoke-virtual {v0}, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->getFlytrapFiles()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getMqttPersistenceString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 522
    const-string v0, "FBNS_ALWAYS"

    return-object v0
.end method

.method public getServiceConnectionType()Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;->FBNS:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    return-object v0
.end method

.method protected initService()V
    .locals 2

    .prologue
    .line 492
    invoke-super {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->initService()V

    .line 493
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsLiteNotificationDeliveryHelper:Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;

    .line 494
    invoke-virtual {v1}, Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;->getNotificationDeliveryStoreClass()Ljava/lang/String;

    move-result-object v1

    .line 493
    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->setNotificationDeliveryStoreClass(Ljava/lang/String;)V

    .line 495
    return-void
.end method

.method protected final injectFbnsService(Lcom/facebook/rti/push/service/RegistrationState;Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;Lcom/facebook/rti/push/service/FbnsRegistrarRetry;Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;)V
    .locals 1

    .prologue
    .line 482
    iput-object p1, p0, Lcom/facebook/rti/push/service/FbnsService;->mRegistrationState:Lcom/facebook/rti/push/service/RegistrationState;

    .line 483
    iput-object p2, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsAnalyticsLogger:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    .line 484
    iput-object p3, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsRegistrarRetry:Lcom/facebook/rti/push/service/FbnsRegistrarRetry;

    .line 485
    new-instance v0, Lcom/facebook/rti/push/service/FbnsService$PushHistoryHelper;

    invoke-direct {v0}, Lcom/facebook/rti/push/service/FbnsService$PushHistoryHelper;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mPushHistoryHelper:Lcom/facebook/rti/push/service/FbnsService$PushHistoryHelper;

    .line 486
    iput-object p4, p0, Lcom/facebook/rti/push/service/FbnsService;->mSignatureAuthSecureIntent:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    .line 487
    iput-object p5, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsLiteNotificationDeliveryHelper:Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;

    .line 488
    return-void
.end method

.method protected injectService()V
    .locals 7

    .prologue
    .line 465
    invoke-super {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->injectService()V

    .line 466
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mMqttBootstrapper:Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;

    check-cast v0, Lcom/facebook/rti/push/service/FbnsBootstrapper;

    .line 467
    iget-object v1, v0, Lcom/facebook/rti/push/service/FbnsBootstrapper;->registrationState:Lcom/facebook/rti/push/service/RegistrationState;

    iget-object v2, v0, Lcom/facebook/rti/push/service/FbnsBootstrapper;->fbnsAnalyticsLogger:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    iget-object v3, v0, Lcom/facebook/rti/push/service/FbnsBootstrapper;->fbnsRegistrarRetry:Lcom/facebook/rti/push/service/FbnsRegistrarRetry;

    iget-object v4, v0, Lcom/facebook/rti/push/service/FbnsBootstrapper;->signatureAuthSecureIntent:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    new-instance v5, Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;

    iget-object v6, v0, Lcom/facebook/rti/push/service/FbnsBootstrapper;->signatureAuthSecureIntent:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    iget-object v0, v0, Lcom/facebook/rti/push/service/FbnsBootstrapper;->clock:Lcom/facebook/rti/common/time/Clock;

    invoke-direct {v5, p0, v6, v0}, Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;-><init>(Lcom/facebook/rti/push/service/FbnsService;Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;Lcom/facebook/rti/common/time/Clock;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/rti/push/service/FbnsService;->injectFbnsService(Lcom/facebook/rti/push/service/RegistrationState;Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;Lcom/facebook/rti/push/service/FbnsRegistrarRetry;Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;)V

    .line 474
    return-void
.end method

.method protected isValidSender(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 557
    if-nez p1, :cond_1

    .line 567
    :cond_0
    :goto_0
    return v0

    .line 562
    :cond_1
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsService;->mSignatureAuthSecureIntent:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    invoke-virtual {v1, p1}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->getSender(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 563
    invoke-virtual {p0}, Lcom/facebook/rti/push/service/FbnsService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 564
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsAnalyticsLogger:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsAuthIntentEvent(Ljava/lang/String;)V

    .line 565
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public localGenerateNewToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1019
    invoke-static {p1}, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil;->isCompatibleApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1038
    :cond_0
    :goto_0
    return-object v0

    .line 1023
    :cond_1
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsConnectionManager:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->getCurrentConnectionKey()Ljava/lang/String;

    move-result-object v1

    .line 1026
    invoke-static {v1}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/facebook/rti/push/service/FbnsService;->mDeviceId:Ljava/lang/String;

    invoke-static {v2}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1030
    new-instance v2, Lcom/facebook/rti/push/service/FBNSPreloadTokenGenerator;

    iget-object v3, p0, Lcom/facebook/rti/push/service/FbnsService;->mDeviceId:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/facebook/rti/push/service/FBNSPreloadTokenGenerator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    invoke-virtual {v2, p1}, Lcom/facebook/rti/push/service/FBNSPreloadTokenGenerator;->genToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1034
    invoke-static {v1}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 1038
    goto :goto_0
.end method

.method logBroadcastFailure(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 808
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsAnalyticsLogger:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v1, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->FAIL_SECURE_BROADCAST:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsMessageEvent(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsLiteFlytrapLogger:Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;

    const-string v1, "Error: secure-broadcast failed"

    invoke-virtual {v0, v1}, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->log(Ljava/lang/String;)V

    .line 811
    return-void
.end method

.method logDuplicatedNotification(Lcom/facebook/rti/push/service/FbnsNotificationMessage;)V
    .locals 3

    .prologue
    .line 742
    sget-object v0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->DUPLICATED_NOTIFICATION:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    iget-object v1, p1, Lcom/facebook/rti/push/service/FbnsNotificationMessage;->mNotifId:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lcom/facebook/rti/push/service/FbnsService;->reportFbnsMessageEvent(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;Lcom/facebook/rti/push/service/FbnsNotificationMessage;Ljava/lang/String;)V

    .line 746
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsLiteFlytrapLogger:Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Duplicated Notif: notifId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/facebook/rti/push/service/FbnsNotificationMessage;->mNotifId:Ljava/lang/String;

    .line 747
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 746
    invoke-virtual {v0, v1}, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->log(Ljava/lang/String;)V

    .line 748
    return-void
.end method

.method logInvalidNotificationPayload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 722
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsAnalyticsLogger:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v1, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;->JSON_PARSE_ERROR:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;

    invoke-virtual {v0, v1, p1}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsServiceEvent(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsLiteFlytrapLogger:Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: invalid payload = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 725
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 724
    invoke-virtual {v0, v1}, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->log(Ljava/lang/String;)V

    .line 726
    return-void
.end method

.method logInvalidReceiver(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 795
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsAnalyticsLogger:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v1, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->FAIL_INVALID_RECEIVER:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    invoke-virtual {v0, v1, p1, p2}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsMessageEvent(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsLiteFlytrapLogger:Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: invalid receiver = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 798
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 797
    invoke-virtual {v0, v1}, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->log(Ljava/lang/String;)V

    .line 799
    return-void
.end method

.method logNullNotificationId()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 790
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsAnalyticsLogger:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v1, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->FAIL_NULL_NOTIF_ID:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    invoke-virtual {v0, v1, v2, v2}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsMessageEvent(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    return-void
.end method

.method logReceivedNotification(Lcom/facebook/rti/push/service/FbnsNotificationMessage;)V
    .locals 3

    .prologue
    .line 729
    sget-object v0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->NOTIFICATION_RECEIVED:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    iget-object v1, p1, Lcom/facebook/rti/push/service/FbnsNotificationMessage;->mNotifId:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lcom/facebook/rti/push/service/FbnsService;->reportFbnsMessageEvent(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;Lcom/facebook/rti/push/service/FbnsNotificationMessage;Ljava/lang/String;)V

    .line 733
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsLiteFlytrapLogger:Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "===Received Notif: target = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/facebook/rti/push/service/FbnsNotificationMessage;->mPackageName:Ljava/lang/String;

    .line 735
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; notifId = "

    .line 736
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/facebook/rti/push/service/FbnsNotificationMessage;->mNotifId:Ljava/lang/String;

    .line 737
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 738
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 733
    invoke-virtual {v0, v1}, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->log(Ljava/lang/String;)V

    .line 739
    return-void
.end method

.method logRedeliverNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 780
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsAnalyticsLogger:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsMessageRedeliverEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsLiteFlytrapLogger:Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Redeliver Notif: notifId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 783
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; target = "

    .line 784
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 785
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 786
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 781
    invoke-virtual {v0, v1}, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->log(Ljava/lang/String;)V

    .line 787
    return-void
.end method

.method logUntrustedApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 802
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsAnalyticsLogger:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v1, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->FAIL_UNTRUSTED_APP:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    invoke-virtual {v0, v1, p2, p1}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsMessageEvent(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsLiteFlytrapLogger:Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;

    const-string v1, "Error: isTrusted() failed"

    invoke-virtual {v0, v1}, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->log(Ljava/lang/String;)V

    .line 805
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 216
    sget-object v0, Lcom/facebook/rti/push/service/FbnsService;->TAG:Ljava/lang/String;

    const-string v1, "onBind with intent: %s"

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mSignatureAuthSecureIntent:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    invoke-virtual {v0, p1}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->verifySender(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    sget-object v0, Lcom/facebook/rti/push/service/FbnsService;->TAG:Ljava/lang/String;

    const-string v1, "onBind invalid signature"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsAnalyticsLogger:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsAuthIntentEvent(Ljava/lang/String;)V

    .line 221
    const/4 v0, 0x0

    .line 223
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsAIDLBinder:Lcom/facebook/push/fbns/ipc/IFbnsAIDLService$Stub;

    goto :goto_0
.end method

.method protected onConnectFailed(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;)V
    .locals 5
    .param p1    # Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 1218
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_CONNECTION_REFUSED_BAD_USER_NAME_OR_PASSWORD:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-virtual {v0, p1}, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mRegistrationState:Lcom/facebook/rti/push/service/RegistrationState;

    .line 1219
    invoke-virtual {v0}, Lcom/facebook/rti/push/service/RegistrationState;->shouldAutoRegisterOnAuthFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1220
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mRegistrationState:Lcom/facebook/rti/push/service/RegistrationState;

    invoke-virtual {v0}, Lcom/facebook/rti/push/service/RegistrationState;->setAuthFailedRegisterTime()V

    .line 1221
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mRegistrationState:Lcom/facebook/rti/push/service/RegistrationState;

    invoke-virtual {v0}, Lcom/facebook/rti/push/service/RegistrationState;->getRegisteredApps()Ljava/util/List;

    move-result-object v0

    .line 1222
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsService;->mRegistrationState:Lcom/facebook/rti/push/service/RegistrationState;

    invoke-virtual {v1}, Lcom/facebook/rti/push/service/RegistrationState;->invalidateAllTokenCache()V

    .line 1223
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsAnalyticsLogger:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v2, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;->AUTHFAIL_AUTO_REGISTER:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;

    .line 1225
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 1223
    invoke-virtual {v1, v2, v3}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsRegistrationEvent(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;Ljava/lang/String;)V

    .line 1229
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;

    .line 1230
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.facebook.rti.fbns.intent.REGISTER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1231
    const-string v3, "pkg_name"

    iget-object v4, v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1232
    const-string v3, "appid"

    iget-object v0, v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mAppId:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1233
    invoke-virtual {p0}, Lcom/facebook/rti/push/service/FbnsService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1234
    invoke-virtual {p0, v2}, Lcom/facebook/rti/push/service/FbnsService;->register(Landroid/content/Intent;)V

    goto :goto_0

    .line 1237
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 240
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->isInternalBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/debug/log/BLog;->setLogLevel(I)V

    .line 243
    :cond_0
    invoke-super {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->onCreate()V

    .line 244
    return-void
.end method

.method protected onCredentialsChanged()V
    .locals 5

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mRegistrationState:Lcom/facebook/rti/push/service/RegistrationState;

    invoke-virtual {v0}, Lcom/facebook/rti/push/service/RegistrationState;->getRegisteredApps()Ljava/util/List;

    move-result-object v0

    .line 1198
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsService;->mRegistrationState:Lcom/facebook/rti/push/service/RegistrationState;

    invoke-virtual {v1}, Lcom/facebook/rti/push/service/RegistrationState;->invalidateAllTokenCache()V

    .line 1200
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsAnalyticsLogger:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v2, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;->CREDENTIALS_UPDATED:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;

    .line 1201
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 1200
    invoke-virtual {v1, v2, v3}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsRegistrationEvent(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;Ljava/lang/String;)V

    .line 1202
    new-instance v1, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters$Builder;

    invoke-direct {v1}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters$Builder;-><init>()V

    iget-object v2, p0, Lcom/facebook/rti/push/service/FbnsService;->mMqttBootstrapper:Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;

    iget-object v2, v2, Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;->mRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

    .line 1204
    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters$Builder;->buildFromSharedPreferences(Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;

    move-result-object v1

    .line 1205
    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;->CREDENTIALS_UPDATED:Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;

    invoke-virtual {p0, v2, v1}, Lcom/facebook/rti/push/service/FbnsService;->start(Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;)V

    .line 1207
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;

    .line 1208
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.facebook.rti.fbns.intent.REGISTER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1209
    const-string v3, "pkg_name"

    iget-object v4, v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1210
    const-string v3, "appid"

    iget-object v0, v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mAppId:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1211
    invoke-virtual {p0}, Lcom/facebook/rti/push/service/FbnsService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1212
    invoke-virtual {p0, v2}, Lcom/facebook/rti/push/service/FbnsService;->register(Landroid/content/Intent;)V

    goto :goto_0

    .line 1214
    :cond_0
    return-void
.end method

.method public onMessageReceived(Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)V
    .locals 4

    .prologue
    .line 650
    invoke-super {p0, p1}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->onMessageReceived(Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)V

    .line 651
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsLiteNotificationDeliveryHelper:Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;

    invoke-virtual {v0}, Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;->redeliverAllNotifications()I

    move-result v1

    .line 652
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mMqttHealthStatsHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    const-class v2, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;

    .line 653
    invoke-virtual {v0, v2}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getStat(Ljava/lang/Class;)Lcom/facebook/rti/mqtt/common/analytics/RTStatsBase;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->FbnsLiteNotificationDeliveryRetried:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    .line 654
    invoke-virtual {v0, v2}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;->get(Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v2, v1

    .line 655
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 656
    return-void
.end method

.method public onNotificationAcknowledged(Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 2

    .prologue
    .line 673
    if-eqz p3, :cond_0

    sget-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->NOTIF_ACKED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/rti/push/service/FbnsService;->sendNotificationAck(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;)V

    .line 679
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/facebook/rti/push/service/FbnsService;->logAcknowledgedNotification(Ljava/lang/String;Ljava/lang/String;J)V

    .line 680
    return-void

    .line 673
    :cond_0
    sget-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PROCESSOR_FAILED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    goto :goto_0
.end method

.method public onNotificationDiscarded(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;)V
    .locals 1

    .prologue
    .line 667
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/rti/push/service/FbnsService;->sendNotificationAck(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;)V

    .line 668
    invoke-virtual {p3}, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/rti/push/service/FbnsService;->logDiscardedNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    return-void
.end method

.method public onNotificationPending(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;)V
    .locals 0

    .prologue
    .line 661
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/rti/push/service/FbnsService;->sendNotificationAck(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;)V

    .line 662
    return-void
.end method

.method protected onPublishArrived(Ljava/lang/String;[BIJLcom/facebook/rti/common/util/RtiWakeLock;)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 615
    invoke-super/range {p0 .. p6}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->onPublishArrived(Ljava/lang/String;[BIJLcom/facebook/rti/common/util/RtiWakeLock;)V

    .line 617
    if-nez p2, :cond_0

    .line 618
    sget-object v0, Lcom/facebook/rti/push/service/FbnsService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "receive/publish/empty_payload; topic=%s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 619
    invoke-virtual {p6}, Lcom/facebook/rti/common/util/RtiWakeLock;->release()V

    .line 646
    :goto_0
    return-void

    .line 623
    :cond_0
    sget-object v0, Lcom/facebook/rti/push/service/FbnsService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "receive/publish; topic=%s"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 625
    const/4 v1, 0x0

    .line 627
    :try_start_0
    invoke-static {p2}, Lcom/facebook/rti/common/util/StringUtil;->fromUTf8([B)Ljava/lang/String;

    move-result-object v1

    .line 628
    const-string v0, "/fbns_msg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/fbns_msg_hp"

    .line 629
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 630
    :cond_1
    invoke-direct {p0, v1}, Lcom/facebook/rti/push/service/FbnsService;->onMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    :goto_1
    invoke-virtual {p6}, Lcom/facebook/rti/common/util/RtiWakeLock;->release()V

    goto :goto_0

    .line 631
    :cond_2
    :try_start_1
    const-string v0, "/fbns_reg_resp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 632
    invoke-direct {p0, v1}, Lcom/facebook/rti/push/service/FbnsService;->onRegisterResponse(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 640
    :catch_0
    move-exception v0

    .line 641
    sget-object v2, Lcom/facebook/rti/push/service/FbnsService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "receive/publish/payload_exception; topic=%s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v2, v0, v3, v4}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 642
    invoke-virtual {p0, p1, v1}, Lcom/facebook/rti/push/service/FbnsService;->logInvalidNotificationPayload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 633
    :cond_3
    :try_start_2
    const-string v0, "/fbns_exp_logging"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 634
    invoke-direct {p0, v1}, Lcom/facebook/rti/push/service/FbnsService;->responseHearBeat(Ljava/lang/String;)V

    goto :goto_1

    .line 636
    :cond_4
    sget-object v0, Lcom/facebook/rti/push/service/FbnsService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "receive/publish/wrong_topic; topic=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 637
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsAnalyticsLogger:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v2, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;->UNEXPECTED_TOPIC:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;

    invoke-virtual {v0, v2, p1}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsServiceEvent(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method protected register(Landroid/content/Intent;)V
    .locals 6
    .annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 966
    const-string v0, "pkg_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 967
    const-string v1, "appid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 968
    const-string v2, "local_generation"

    const/4 v3, 0x0

    .line 969
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 971
    iget-object v3, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsRegistrarRetry:Lcom/facebook/rti/push/service/FbnsRegistrarRetry;

    invoke-virtual {v3, v0}, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->cancelAndReset(Ljava/lang/String;)V

    .line 972
    iget-object v3, p0, Lcom/facebook/rti/push/service/FbnsService;->mServiceStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_0

    .line 973
    sget-object v3, Lcom/facebook/rti/push/service/FbnsService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "service/register/not_started"

    invoke-static {v3, v4}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    iget-object v3, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsAnalyticsLogger:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v4, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;->FAILURE_SERVICE_NOT_STARTED:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;

    invoke-virtual {v3, v4, v5}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsRegistrationEvent(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;Ljava/lang/String;)V

    .line 978
    :cond_0
    sget-object v3, Lcom/facebook/rti/push/service/FbnsService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "service/register; appId=%s, package=%s"

    invoke-static {v3, v4, v1, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 979
    iget-object v3, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsAnalyticsLogger:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v4, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;->REGISTER:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;

    invoke-virtual {v3, v4, v0}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsRegistrationEvent(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;Ljava/lang/String;)V

    .line 982
    iget-object v3, p0, Lcom/facebook/rti/push/service/FbnsService;->mRegistrationState:Lcom/facebook/rti/push/service/RegistrationState;

    invoke-virtual {v3, v0}, Lcom/facebook/rti/push/service/RegistrationState;->getValidToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 983
    invoke-static {v3}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 984
    invoke-direct {p0, v0, v3}, Lcom/facebook/rti/push/service/FbnsService;->broadcastRegistrationSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsAnalyticsLogger:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v1, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;->CACHE_HIT:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;

    invoke-virtual {v0, v1, v5}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsRegistrationEvent(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;Ljava/lang/String;)V

    .line 1000
    :goto_0
    return-void

    .line 991
    :cond_1
    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil;->isServicePreLoadedPackage(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 992
    invoke-virtual {p0, v0}, Lcom/facebook/rti/push/service/FbnsService;->localGenerateNewToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 993
    invoke-static {v2}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 994
    sget-object v1, Lcom/facebook/rti/push/service/FbnsService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "service/register; package=%s local_generated_token=%s"

    invoke-static {v1, v3, v0, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 995
    invoke-direct {p0, v0, v2}, Lcom/facebook/rti/push/service/FbnsService;->broadcastRegistrationSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 999
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/rti/push/service/FbnsService;->requestNewToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected registerReceivers()V
    .locals 2

    .prologue
    .line 507
    invoke-super {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->registerReceivers()V

    .line 509
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsLiteNotificationDeliveryHelper:Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;->register(Landroid/os/Handler;)V

    .line 510
    return-void
.end method

.method protected registerRetry(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 1003
    const-string v0, "pkg_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1004
    const-string v1, "appid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1005
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/rti/push/service/FbnsService;->requestNewToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    return-void
.end method

.method public requestNewToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v1, -0x1

    .line 1043
    invoke-static {p1}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1044
    :cond_0
    sget-object v0, Lcom/facebook/rti/push/service/FbnsService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "service/register/invalid_input"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    :cond_1
    :goto_0
    return-void

    .line 1048
    :cond_2
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsRegistrarRetry:Lcom/facebook/rti/push/service/FbnsRegistrarRetry;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->schedule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mRegistrationState:Lcom/facebook/rti/push/service/RegistrationState;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/rti/push/service/RegistrationState;->addApp(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1050
    new-instance v0, Lcom/facebook/rti/push/service/FbnsRegisterRequest;

    invoke-direct {v0, p1, p2}, Lcom/facebook/rti/push/service/FbnsRegisterRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/rti/push/service/FbnsRegisterRequest;->serialize()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1062
    new-instance v2, Lcom/facebook/rti/push/service/FbnsService$9;

    invoke-direct {v2, p0}, Lcom/facebook/rti/push/service/FbnsService$9;-><init>(Lcom/facebook/rti/push/service/FbnsService;)V

    .line 1080
    sget-object v3, Lcom/facebook/rti/push/service/FbnsService;->TAG:Ljava/lang/String;

    const-string v4, "publish /fbns_reg_req=%s"

    invoke-static {v3, v4, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1082
    :try_start_1
    iget-object v3, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsConnectionManager:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;

    const-string v4, "/fbns_reg_req"

    .line 1085
    invoke-static {v0}, Lcom/facebook/rti/common/util/StringUtil;->toUTf8(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v5, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->ACKNOWLEDGED_DELIVERY:Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;

    .line 1083
    invoke-virtual {v3, v4, v0, v5, v2}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;->publish(Ljava/lang/String;[BLcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;)I
    :try_end_1
    .catch Lcom/facebook/rti/mqtt/protocol/MqttException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 1091
    :goto_1
    if-ne v0, v1, :cond_1

    .line 1092
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsAnalyticsLogger:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v1, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;->FAILURE_MQTT_NOT_CONNECTED:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;

    invoke-virtual {v0, v1, v6}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsRegistrationEvent(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 1055
    :catch_0
    move-exception v0

    .line 1056
    sget-object v1, Lcom/facebook/rti/push/service/FbnsService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "service/register/serialize_exception"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1057
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsAnalyticsLogger:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v1, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;->FAILURE_UNKNOWN_CLIENT_ERROR:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;

    invoke-virtual {v0, v1, v6}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsRegistrationEvent(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 1088
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_1
.end method

.method protected sendFBNSBroadcast(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 946
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 947
    invoke-static {v0}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 962
    :cond_0
    :goto_0
    return-void

    .line 950
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/rti/push/service/FbnsService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 951
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsService;->mSignatureAuthSecureIntent:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    invoke-virtual {v1, p1, v0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->sendExplicitSecureBroadcast(Landroid/content/Intent;Ljava/lang/String;)Z

    goto :goto_0

    .line 952
    :cond_2
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsService;->mSignatureAuthSecureIntent:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    invoke-virtual {v1, v0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->isTrustedApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 953
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsService;->mRegistrationState:Lcom/facebook/rti/push/service/RegistrationState;

    invoke-virtual {v1, v0}, Lcom/facebook/rti/push/service/RegistrationState;->getValidToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 954
    iget-object v2, p0, Lcom/facebook/rti/push/service/FbnsService;->mRegistrationState:Lcom/facebook/rti/push/service/RegistrationState;

    invoke-virtual {v2, v0}, Lcom/facebook/rti/push/service/RegistrationState;->getAppId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 955
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 956
    invoke-direct {p0, v1, v0, v2}, Lcom/facebook/rti/push/service/FbnsService;->unregisterOnMqttPublish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 959
    :cond_3
    invoke-virtual {p0, v0}, Lcom/facebook/rti/push/service/FbnsService;->addReceiverToTempWhitelist(Ljava/lang/String;)V

    .line 960
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsService;->mSignatureAuthSecureIntent:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    invoke-virtual {v1, p1, v0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->sendExplicitSecureBroadcast(Landroid/content/Intent;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method protected setDeliveryRetryInterval(I)V
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsLiteNotificationDeliveryHelper:Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;->setDeliveryRetryInterval(I)V

    .line 606
    return-void
.end method

.method protected unregisterReceivers()V
    .locals 1

    .prologue
    .line 514
    invoke-super {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->unregisterReceivers()V

    .line 516
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsLiteNotificationDeliveryHelper:Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;

    invoke-virtual {v0}, Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;->unregister()V

    .line 517
    return-void
.end method
