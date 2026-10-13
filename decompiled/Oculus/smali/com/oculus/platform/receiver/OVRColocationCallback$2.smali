.class Lcom/oculus/platform/receiver/OVRColocationCallback$2;
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
    .line 43
    iput-object p1, p0, Lcom/oculus/platform/receiver/OVRColocationCallback$2;->this$0:Lcom/oculus/platform/receiver/OVRColocationCallback;

    iput-object p2, p0, Lcom/oculus/platform/receiver/OVRColocationCallback$2;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oculus/platform/receiver/OVRColocationCallback$2;->this$0:Lcom/oculus/platform/receiver/OVRColocationCallback;

    invoke-static {v0}, Lcom/oculus/platform/receiver/OVRColocationCallback;->access$000(Lcom/oculus/platform/receiver/OVRColocationCallback;)Lcom/oculus/platform/callback/OVRStringCallback;

    move-result-object v1

    sget-object v0, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v0, Lcom/oculus/platform/util/OVRError;->mCode:I

    iget-object v0, p0, Lcom/oculus/platform/receiver/OVRColocationCallback$2;->val$result:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Unknown error getting current result"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/oculus/platform/callback/OVRStringCallback;->onClientError(ILjava/lang/String;)V

    .line 49
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/oculus/platform/receiver/OVRColocationCallback$2;->val$result:Ljava/lang/String;

    goto :goto_0
.end method
