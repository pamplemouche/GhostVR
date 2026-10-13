.class Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationDeliveryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;->register(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper$1;->this$0:Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 90
    if-nez p2, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.facebook.rti.intent.ACTION_NOTIFICATION_ACK"

    invoke-static {v0, v1}, Lcom/facebook/rti/common/guavalite/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper$1;->this$0:Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;->mSignatureAuthSecureIntent:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    invoke-virtual {v0, p2}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->verifySender(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "extra_notification_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {v0}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    const-string v1, "extra_processor_completed"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 103
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper$1;->this$0:Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;

    iget-object v3, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper$1;->this$0:Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;

    iget-object v3, v3, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;->mSignatureAuthSecureIntent:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    .line 104
    invoke-virtual {v3, p2}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->getSender(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-virtual {v2, v0, v3, v1}, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;->onNotificationAcknowledged(Ljava/lang/String;Ljava/lang/String;Z)J

    goto :goto_0
.end method
