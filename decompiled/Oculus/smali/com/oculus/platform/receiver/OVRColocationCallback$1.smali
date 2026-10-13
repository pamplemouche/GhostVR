.class Lcom/oculus/platform/receiver/OVRColocationCallback$1;
.super Ljava/lang/Object;
.source "OVRColocationCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/platform/receiver/OVRColocationCallback;->onReceiveResult(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/platform/receiver/OVRColocationCallback;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/platform/receiver/OVRColocationCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/oculus/platform/receiver/OVRColocationCallback$1;->this$0:Lcom/oculus/platform/receiver/OVRColocationCallback;

    iput-object p2, p0, Lcom/oculus/platform/receiver/OVRColocationCallback$1;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oculus/platform/receiver/OVRColocationCallback$1;->this$0:Lcom/oculus/platform/receiver/OVRColocationCallback;

    invoke-static {v0}, Lcom/oculus/platform/receiver/OVRColocationCallback;->access$000(Lcom/oculus/platform/receiver/OVRColocationCallback;)Lcom/oculus/platform/callback/OVRStringCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/platform/receiver/OVRColocationCallback$1;->val$result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/platform/callback/OVRStringCallback;->onSuccess(Ljava/lang/String;)V

    .line 39
    return-void
.end method
