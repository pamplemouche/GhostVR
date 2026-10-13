.class public Lcom/oculus/vrshell/notifications/VrNotificationListenerHelper;
.super Ljava/lang/Object;
.source "VrNotificationListenerHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCaptiveWifiNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 11
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "ConnectivityNotification"

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
