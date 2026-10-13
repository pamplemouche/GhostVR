.class Lcom/oculus/authapi/OVRAuth$4;
.super Landroid/os/ResultReceiver;
.source "OVRAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/authapi/OVRAuth;->status(Landroid/os/ResultReceiver;)V
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

    .line 232
    iput-object p1, p0, Lcom/oculus/authapi/OVRAuth$4;->this$0:Lcom/oculus/authapi/OVRAuth;

    iput-object p3, p0, Lcom/oculus/authapi/OVRAuth$4;->val$receiver:Landroid/os/ResultReceiver;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/oculus/authapi/OVRAuth$4;->val$receiver:Landroid/os/ResultReceiver;

    invoke-virtual {v0, p1, p2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method
