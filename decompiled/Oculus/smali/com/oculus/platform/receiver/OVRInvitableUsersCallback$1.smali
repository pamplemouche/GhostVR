.class Lcom/oculus/platform/receiver/OVRInvitableUsersCallback$1;
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
    .line 35
    iput-object p1, p0, Lcom/oculus/platform/receiver/OVRInvitableUsersCallback$1;->this$0:Lcom/oculus/platform/receiver/OVRInvitableUsersCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oculus/platform/receiver/OVRInvitableUsersCallback$1;->this$0:Lcom/oculus/platform/receiver/OVRInvitableUsersCallback;

    invoke-static {v0}, Lcom/oculus/platform/receiver/OVRInvitableUsersCallback;->access$000(Lcom/oculus/platform/receiver/OVRInvitableUsersCallback;)Lcom/oculus/platform/callback/OVRStringCallback;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/oculus/platform/callback/OVRStringCallback;->onSuccess(Ljava/lang/String;)V

    .line 39
    return-void
.end method
