.class public Lcom/oculus/svclib/receiver/OVREntitlementReceiver;
.super Landroid/os/ResultReceiver;
.source "OVREntitlementReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/svclib/receiver/OVREntitlementReceiver$Listener;
    }
.end annotation


# instance fields
.field private final mOnReceiveResult:Lcom/oculus/svclib/receiver/OVREntitlementReceiver$Listener;


# direct methods
.method public constructor <init>(Lcom/oculus/svclib/receiver/OVREntitlementReceiver$Listener;)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 26
    iput-object p1, p0, Lcom/oculus/svclib/receiver/OVREntitlementReceiver;->mOnReceiveResult:Lcom/oculus/svclib/receiver/OVREntitlementReceiver$Listener;

    .line 27
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 32
    iget-object v0, p0, Lcom/oculus/svclib/receiver/OVREntitlementReceiver;->mOnReceiveResult:Lcom/oculus/svclib/receiver/OVREntitlementReceiver$Listener;

    invoke-interface {v0, p1, p2}, Lcom/oculus/svclib/receiver/OVREntitlementReceiver$Listener;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 33
    return-void
.end method
