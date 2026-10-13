.class public Lcom/oculus/platform/receiver/OVRPlatformResultReceiver;
.super Landroid/os/ResultReceiver;
.source "OVRPlatformResultReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/platform/receiver/OVRPlatformResultReceiver$Listener;
    }
.end annotation


# instance fields
.field private final mOnReceiveResult:Lcom/oculus/platform/receiver/OVRPlatformResultReceiver$Listener;


# direct methods
.method public constructor <init>(Lcom/oculus/platform/receiver/OVRPlatformResultReceiver$Listener;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 25
    iput-object p1, p0, Lcom/oculus/platform/receiver/OVRPlatformResultReceiver;->mOnReceiveResult:Lcom/oculus/platform/receiver/OVRPlatformResultReceiver$Listener;

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    .line 30
    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 31
    iget-object v0, p0, Lcom/oculus/platform/receiver/OVRPlatformResultReceiver;->mOnReceiveResult:Lcom/oculus/platform/receiver/OVRPlatformResultReceiver$Listener;

    invoke-interface {v0, p1, p2}, Lcom/oculus/platform/receiver/OVRPlatformResultReceiver$Listener;->onReceiveResult(ILandroid/os/Bundle;)V

    return-void
.end method
