.class final Lcom/oculus/authapi/OVRAuth$TestReceiverForSending;
.super Landroid/os/ResultReceiver;
.source "OVRAuth.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/authapi/OVRAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TestReceiverForSending"
.end annotation


# instance fields
.field final mActualReceiver:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroid/os/ResultReceiver;)V
    .locals 1
    .param p1, "actualReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 54
    iput-object p1, p0, Lcom/oculus/authapi/OVRAuth$TestReceiverForSending;->mActualReceiver:Landroid/os/ResultReceiver;

    .line 55
    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/oculus/authapi/OVRAuth$TestReceiverForSending;->mActualReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v0, p1, p2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 60
    return-void
.end method
