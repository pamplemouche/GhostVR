.class public abstract Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;
.super Ljava/lang/Object;
.source "NotificationDeliveryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper$NotificationSource;
    }
.end annotation


# instance fields
.field protected final mClock:Lcom/facebook/rti/common/time/Clock;

.field protected mCommitOnBackgroundThread:Z

.field protected final mContext:Landroid/content/Context;

.field protected mNotificationAckReceiver:Landroid/content/BroadcastReceiver;

.field protected mNotificationDeliveryStore:Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStore;

.field protected final mNotificationSource:Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper$NotificationSource;

.field protected final mServiceName:Ljava/lang/String;

.field protected final mSignatureAuthSecureIntent:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;Lcom/facebook/rti/common/time/Clock;Ljava/lang/String;Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper$NotificationSource;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;->mCommitOnBackgroundThread:Z

    .line 73
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;->mSignatureAuthSecureIntent:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    .line 75
    iput-object p3, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;->mClock:Lcom/facebook/rti/common/time/Clock;

    .line 76
    iput-object p4, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;->mServiceName:Ljava/lang/String;

    .line 77
    iput-object p5, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;->mNotificationSource:Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper$NotificationSource;

    .line 78
    return-void
.end method

.method public static ackNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;->ackNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 51
    return-void
.end method

.method public static ackNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 55
    invoke-static {p2}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.rti.intent.ACTION_NOTIFICATION_ACK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v1, "extra_notification_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v1, "extra_processor_completed"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    new-instance v1, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    invoke-direct {v1, p0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {v1, v0, p1}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->sendExplicitSecureBroadcast(Landroid/content/Intent;Ljava/lang/String;)Z

    .line 64
    const-string v0, "NotificationDeliveryHelper"

    const-string v1, "ackNotification %s"

    invoke-static {v0, v1, p2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected getNotificationDeliveryStore()Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStore;
    .locals 5

    .prologue
    .line 175
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;->mNotificationDeliveryStore:Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStore;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;->mServiceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;->mNotificationSource:Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper$NotificationSource;

    .line 179
    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper$NotificationSource;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;->mClock:Lcom/facebook/rti/common/time/Clock;

    iget-boolean v4, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;->mCommitOnBackgroundThread:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/rti/common/time/Clock;Z)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;->mNotificationDeliveryStore:Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStore;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;->mNotificationDeliveryStore:Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStore;

    return-object v0
.end method

.method public getNotificationDeliveryStoreClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;->getNotificationDeliveryStore()Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStore;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStore;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onNotificationAcknowledged(Ljava/lang/String;Ljava/lang/String;Z)J
    .locals 5

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;->getNotificationDeliveryStore()Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStore;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStore;->remove(Ljava/lang/String;)J

    move-result-wide v0

    .line 163
    const-string v2, "NotificationDeliveryHelper"

    const-string/jumbo v3, "receiver/NotificationAckReceiver %s, delay = %d"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, p1, v4}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    return-wide v0
.end method

.method protected onNotificationDiscarded(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;)V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method protected onRedeliverNotification(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public redeliverAllNotifications()I
    .locals 6

    .prologue
    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;->getNotificationDeliveryStore()Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStore;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStore;->checkAndUpdateRetryList(Ljava/util/List;Ljava/util/List;)V

    .line 130
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/manager/NotificationItem;

    .line 131
    if-eqz v0, :cond_0

    .line 132
    const-string v3, "NotificationDeliveryHelper"

    const-string v4, "discarded Notification %s"

    iget-object v5, v0, Lcom/facebook/rti/mqtt/manager/NotificationItem;->notifId:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    iget-object v3, v0, Lcom/facebook/rti/mqtt/manager/NotificationItem;->intent:Landroid/content/Intent;

    .line 134
    if-eqz v3, :cond_0

    .line 135
    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/NotificationItem;->notifId:Ljava/lang/String;

    .line 136
    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->DATA_EXPIRED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    .line 135
    invoke-virtual {p0, v0, v3, v4}, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;->onNotificationDiscarded(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;)V

    goto :goto_0

    .line 141
    :cond_1
    const/4 v0, 0x0

    .line 142
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/manager/NotificationItem;

    .line 143
    const-string v3, "NotificationDeliveryHelper"

    const-string/jumbo v4, "redeliverAllNotifications send %s"

    iget-object v5, v0, Lcom/facebook/rti/mqtt/manager/NotificationItem;->notifId:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    iget-object v3, v0, Lcom/facebook/rti/mqtt/manager/NotificationItem;->notifId:Ljava/lang/String;

    .line 145
    iget-object v4, v0, Lcom/facebook/rti/mqtt/manager/NotificationItem;->intent:Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v3, v4}, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;->onRedeliverNotification(Ljava/lang/String;Landroid/content/Intent;)V

    .line 147
    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;->redeliverNotification(Lcom/facebook/rti/mqtt/manager/NotificationItem;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    .line 150
    goto :goto_1

    .line 151
    :cond_2
    return v1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method protected abstract redeliverNotification(Lcom/facebook/rti/mqtt/manager/NotificationItem;)Z
.end method

.method public register(Landroid/os/Handler;)V
    .locals 6
    .param p1    # Landroid/os/Handler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 85
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;->mNotificationAckReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper$1;

    invoke-direct {v0, p0}, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper$1;-><init>(Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;->mNotificationAckReceiver:Landroid/content/BroadcastReceiver;

    .line 108
    sget-object v0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->NO_REPORT:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;->mNotificationAckReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.facebook.rti.intent.ACTION_NOTIFICATION_ACK"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Z

    .line 115
    :cond_0
    return-void
.end method

.method public setDeliveryRetryInterval(I)V
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;->getNotificationDeliveryStore()Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStore;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStore;->setDeliveryRetryInterval(I)V

    .line 188
    return-void
.end method

.method public unregister()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;->mNotificationAckReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->NO_REPORT:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;->mNotificationAckReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;->mNotificationAckReceiver:Landroid/content/BroadcastReceiver;

    .line 123
    :cond_0
    return-void
.end method
