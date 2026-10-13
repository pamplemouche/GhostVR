.class Lcom/oculus/platform/receiver/OVRInvitableUsersCallback$2;
.super Ljava/lang/Object;
.source "OVRInvitableUsersCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/platform/receiver/OVRInvitableUsersCallback;->onReceiveResult(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/platform/receiver/OVRInvitableUsersCallback;


# direct methods
.method constructor <init>(Lcom/oculus/platform/receiver/OVRInvitableUsersCallback;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/oculus/platform/receiver/OVRInvitableUsersCallback$2;->this$0:Lcom/oculus/platform/receiver/OVRInvitableUsersCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oculus/platform/receiver/OVRInvitableUsersCallback$2;->this$0:Lcom/oculus/platform/receiver/OVRInvitableUsersCallback;

    invoke-static {v0}, Lcom/oculus/platform/receiver/OVRInvitableUsersCallback;->access$000(Lcom/oculus/platform/receiver/OVRInvitableUsersCallback;)Lcom/oculus/platform/callback/OVRStringCallback;

    move-result-object v0

    sget-object v1, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    const-string v2, "Unknown error launching Invitable Users."

    invoke-virtual {v0, v1, v2}, Lcom/oculus/platform/callback/OVRStringCallback;->onClientError(ILjava/lang/String;)V

    .line 48
    return-void
.end method
