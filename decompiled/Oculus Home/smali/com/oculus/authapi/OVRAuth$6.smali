.class Lcom/oculus/authapi/OVRAuth$6;
.super Landroid/os/ResultReceiver;
.source "OVRAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/authapi/OVRAuth;->logout(Landroid/os/ResultReceiver;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/authapi/OVRAuth;

.field final synthetic val$receiver:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Lcom/oculus/authapi/OVRAuth;Landroid/os/Handler;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/authapi/OVRAuth;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/oculus/authapi/OVRAuth$6;->this$0:Lcom/oculus/authapi/OVRAuth;

    iput-object p3, p0, Lcom/oculus/authapi/OVRAuth$6;->val$receiver:Landroid/os/ResultReceiver;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/oculus/authapi/OVRAuth$6;->val$receiver:Landroid/os/ResultReceiver;

    invoke-virtual {v0, p1, p2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 314
    return-void
.end method
