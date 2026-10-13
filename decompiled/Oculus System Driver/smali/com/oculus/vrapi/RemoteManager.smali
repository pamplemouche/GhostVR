.class public Lcom/oculus/vrapi/RemoteManager;
.super Ljava/lang/Object;
.source "RemoteManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static injectBackButtonUpEvent(Landroid/content/Context;IIJ)V
    .locals 0

    .line 27
    invoke-static {p0, p1, p2, p3, p4}, Lcom/oculus/vrapi/RemoteButtonHandler;->injectBackButtonUpEvent(Landroid/content/Context;IIJ)V

    return-void
.end method

.method public static native nativeAddRemoteTouchSwipeStat(J)V
.end method

.method public static native nativeGetRemoteTouchState(J)Z
.end method

.method public static setRemoteEmulation(Landroid/content/Context;Z)V
    .locals 0

    .line 17
    invoke-static {p1}, Lcom/oculus/vrapi/RemoteTouchHandler;->setRemoteEmulation(Z)V

    return-void
.end method

.method public static showLowBatteryNotification(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/oculus/vrapi/NotificationReceiverHelper;->displayControllerBatteryLowNotification(Landroid/content/Context;)V

    return-void
.end method
