.class Lcom/oculus/authapi/OVRAuth$10;
.super Landroid/os/ResultReceiver;
.source "OVRAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/authapi/OVRAuth;->callFBAuthMethod(Ljava/lang/String;Ljava/util/HashMap;Landroid/os/ResultReceiver;)V
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

    .line 429
    iput-object p1, p0, Lcom/oculus/authapi/OVRAuth$10;->this$0:Lcom/oculus/authapi/OVRAuth;

    iput-object p3, p0, Lcom/oculus/authapi/OVRAuth$10;->val$receiver:Landroid/os/ResultReceiver;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/oculus/authapi/OVRAuth$10;->val$receiver:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {v0, p1, p2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
