.class public Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;
.super Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;
.source "FbnsLiteNotificationDeliveryHelper.java"


# static fields
.field private static final SUPPORTED_APPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFbnsService:Lcom/facebook/rti/push/service/FbnsService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    invoke-static {}, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil;->getCompatibleApps()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;->SUPPORTED_APPS:Ljava/util/List;

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/facebook/rti/push/service/FbnsService;Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;Lcom/facebook/rti/common/time/Clock;)V
    .locals 6

    .prologue
    .line 34
    invoke-virtual {p1}, Lcom/facebook/rti/push/service/FbnsService;->getServiceName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper$NotificationSource;->FBNS_LITE:Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper$NotificationSource;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 30
    invoke-direct/range {v0 .. v5}, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;-><init>(Landroid/content/Context;Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;Lcom/facebook/rti/common/time/Clock;Ljava/lang/String;Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper$NotificationSource;)V

    .line 36
    iput-object p1, p0, Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;->mFbnsService:Lcom/facebook/rti/push/service/FbnsService;

    .line 37
    return-void
.end method

.method private deliverFbnsLiteNotificationInternal(Landroid/content/Intent;)Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;
    .locals 4

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 80
    const-string v0, "com.facebook.rti.fbns.intent.RECEIVE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;->mSignatureAuthSecureIntent:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    .line 82
    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->checkPackageInfo(Ljava/lang/String;)Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    move-result-object v0

    .line 83
    sget-object v2, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PACKAGE_TRUSTED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    if-eq v0, v2, :cond_1

    .line 84
    iget-object v2, p0, Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;->mFbnsService:Lcom/facebook/rti/push/service/FbnsService;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/facebook/rti/push/service/FbnsService;->logUntrustedApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    :goto_0
    return-object v0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;->mFbnsService:Lcom/facebook/rti/push/service/FbnsService;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/push/service/FbnsService;->addReceiverToTempWhitelist(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;->mSignatureAuthSecureIntent:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    .line 92
    invoke-virtual {v0, p1, v1}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->sendExplicitSecureBroadcastToTrustedWithResult(Landroid/content/Intent;Ljava/lang/String;)Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->isSucceeded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;->mFbnsService:Lcom/facebook/rti/push/service/FbnsService;

    invoke-virtual {v2, v1}, Lcom/facebook/rti/push/service/FbnsService;->logBroadcastFailure(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_2
    sget-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->DATA_INVALID:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    goto :goto_0
.end method

.method private onNotificationPending(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;->mFbnsService:Lcom/facebook/rti/push/service/FbnsService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/rti/push/service/FbnsService;->onNotificationPending(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;)V

    .line 122
    return-void
.end method


# virtual methods
.method public deliverFbnsLiteNotification(Ljava/lang/String;Landroid/content/Intent;)Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;
    .locals 4

    .prologue
    .line 40
    invoke-static {p1}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;->mFbnsService:Lcom/facebook/rti/push/service/FbnsService;

    invoke-virtual {v0}, Lcom/facebook/rti/push/service/FbnsService;->logNullNotificationId()V

    .line 42
    sget-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->DATA_INVALID:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    .line 72
    :cond_0
    :goto_0
    return-object v0

    .line 45
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {v1}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;->mFbnsService:Lcom/facebook/rti/push/service/FbnsService;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/rti/push/service/FbnsService;->logInvalidReceiver(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PACKAGE_INVALID:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    goto :goto_0

    .line 50
    :cond_2
    sget-object v0, Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;->SUPPORTED_APPS:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 51
    sget-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PACKAGE_UNSUPPORTED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    goto :goto_0

    .line 54
    :cond_3
    const-string v0, "extra_notification_sender"

    iget-object v2, p0, Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string v0, "extra_notification_id"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0}, Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;->getNotificationDeliveryStore()Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStore;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStore;->add(Ljava/lang/String;Landroid/content/Intent;)V

    .line 59
    invoke-direct {p0, p2}, Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;->deliverFbnsLiteNotificationInternal(Landroid/content/Intent;)Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    move-result-object v0

    .line 60
    const-string v2, "FbnsLiteNotificationDeliveryHelper"

    const-string v3, "deliverFbnsLiteNotification %s result %s"

    invoke-static {v2, v3, p1, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->isPermanentFailure()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 64
    invoke-virtual {p0}, Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;->getNotificationDeliveryStore()Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStore;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStore;->remove(Ljava/lang/String;)J

    .line 66
    invoke-virtual {p0, p1, v1, v0}, Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;->onNotificationDiscarded(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;)V

    goto :goto_0

    .line 67
    :cond_4
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->isSucceeded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;->onNotificationPending(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;)V

    goto :goto_0
.end method

.method protected onNotificationAcknowledged(Ljava/lang/String;Ljava/lang/String;Z)J
    .locals 6

    .prologue
    .line 132
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;->onNotificationAcknowledged(Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide v4

    .line 133
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;->mFbnsService:Lcom/facebook/rti/push/service/FbnsService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/rti/push/service/FbnsService;->onNotificationAcknowledged(Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 134
    return-wide v4
.end method

.method protected onNotificationDiscarded(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;->mFbnsService:Lcom/facebook/rti/push/service/FbnsService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/rti/push/service/FbnsService;->onNotificationDiscarded(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;)V

    .line 128
    return-void
.end method

.method protected onRedeliverNotification(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;->mFbnsService:Lcom/facebook/rti/push/service/FbnsService;

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/rti/push/service/FbnsService;->logRedeliverNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method protected redeliverNotification(Lcom/facebook/rti/mqtt/manager/NotificationItem;)Z
    .locals 3

    .prologue
    .line 105
    iget-object v0, p1, Lcom/facebook/rti/mqtt/manager/NotificationItem;->intent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;->deliverFbnsLiteNotificationInternal(Landroid/content/Intent;)Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->isPermanentFailure()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;->getNotificationDeliveryStore()Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStore;

    move-result-object v1

    iget-object v2, p1, Lcom/facebook/rti/mqtt/manager/NotificationItem;->notifId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStore;->remove(Ljava/lang/String;)J

    .line 110
    iget-object v1, p1, Lcom/facebook/rti/mqtt/manager/NotificationItem;->notifId:Ljava/lang/String;

    iget-object v2, p1, Lcom/facebook/rti/mqtt/manager/NotificationItem;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;->onNotificationDiscarded(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;)V

    .line 116
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->isSucceeded()Z

    move-result v0

    return v0

    .line 111
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->isSucceeded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    iget-object v1, p1, Lcom/facebook/rti/mqtt/manager/NotificationItem;->notifId:Ljava/lang/String;

    iget-object v2, p1, Lcom/facebook/rti/mqtt/manager/NotificationItem;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/facebook/rti/push/service/FbnsLiteNotificationDeliveryHelper;->onNotificationPending(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;)V

    goto :goto_0
.end method
