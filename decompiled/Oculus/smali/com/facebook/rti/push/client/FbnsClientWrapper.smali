.class public Lcom/facebook/rti/push/client/FbnsClientWrapper;
.super Ljava/lang/Object;
.source "FbnsClientWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/facebook/rti/push/client/FbnsClientWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/push/client/FbnsClientWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static ackNotification(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 101
    const-string v0, "extra_notification_sender"

    .line 103
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "extra_notification_id"

    .line 104
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-static {p0, v0, v1}, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryHelper;->ackNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method
