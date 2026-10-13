.class public Lcom/oculus/horizon/notifications/receivers/OculusFbnsCallbackReceiver;
.super Lcom/facebook/rti/push/client/FbnsCallbackReceiver;
.source "OculusFbnsCallbackReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;

    invoke-direct {p0, v0}, Lcom/facebook/rti/push/client/FbnsCallbackReceiver;-><init>(Ljava/lang/Class;)V

    .line 13
    return-void
.end method
