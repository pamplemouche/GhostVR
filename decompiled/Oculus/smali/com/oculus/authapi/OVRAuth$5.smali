.class Lcom/oculus/authapi/OVRAuth$5;
.super Landroid/os/ResultReceiver;
.source "OVRAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/authapi/OVRAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$receiver:Landroid/os/ResultReceiver;


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/oculus/authapi/OVRAuth$5;->val$receiver:Landroid/os/ResultReceiver;

    invoke-virtual {v0, p1, p2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 279
    return-void
.end method
