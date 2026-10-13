.class Lcom/oculus/horizon/fbconnectui/FBConnectFragment$4$1;
.super Lcom/oculus/horizon/common/UICallback;
.source "FBConnectFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/fbconnectui/FBConnectFragment$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/common/UICallback",
        "<",
        "Lcom/oculus/horizon/api/fbconnect/FBConnectAccountResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/horizon/fbconnectui/FBConnectFragment$4;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/fbconnectui/FBConnectFragment$4;Lcom/oculus/horizon/base/OculusBaseFragment;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$4$1;->this$1:Lcom/oculus/horizon/fbconnectui/FBConnectFragment$4;

    invoke-direct {p0, p2}, Lcom/oculus/horizon/common/UICallback;-><init>(Lcom/oculus/horizon/base/OculusBaseFragment;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$4$1;->this$1:Lcom/oculus/horizon/fbconnectui/FBConnectFragment$4;

    iget-object v0, v0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$4;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

    const-string v1, "sso_connect_failure"

    invoke-static {v0, v1}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->access$400(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$4$1;->this$1:Lcom/oculus/horizon/fbconnectui/FBConnectFragment$4;

    iget-object v0, v0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$4;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

    invoke-static {v0, p1}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->access$500(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;Lcom/oculus/http/core/base/ApiError;)V

    .line 410
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/fbconnect/FBConnectAccountResponse;)V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$4$1;->this$1:Lcom/oculus/horizon/fbconnectui/FBConnectFragment$4;

    iget-object v0, v0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$4;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

    const-string v1, "sso_connect_success"

    invoke-static {v0, v1}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->access$400(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$4$1;->this$1:Lcom/oculus/horizon/fbconnectui/FBConnectFragment$4;

    iget-object v0, v0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$4;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

    invoke-static {v0, p1}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->access$900(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;Lcom/oculus/horizon/api/fbconnect/FBConnectAccountResponse;)V

    .line 404
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 399
    check-cast p1, Lcom/oculus/horizon/api/fbconnect/FBConnectAccountResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$4$1;->onResponse(Lcom/oculus/horizon/api/fbconnect/FBConnectAccountResponse;)V

    return-void
.end method
