.class Lcom/oculus/horizon/pdp/ReviewFragment$3;
.super Lcom/oculus/horizon/common/UICallback;
.source "ReviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/pdp/ReviewFragment;->onSend()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/common/UICallback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/pdp/ReviewFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/pdp/ReviewFragment;Lcom/oculus/horizon/base/OculusBaseFragment;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/oculus/horizon/pdp/ReviewFragment$3;->this$0:Lcom/oculus/horizon/pdp/ReviewFragment;

    invoke-direct {p0, p2}, Lcom/oculus/horizon/common/UICallback;-><init>(Lcom/oculus/horizon/base/OculusBaseFragment;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment$3;->this$0:Lcom/oculus/horizon/pdp/ReviewFragment;

    invoke-static {v0, p1}, Lcom/oculus/horizon/pdp/ReviewFragment;->access$200(Lcom/oculus/horizon/pdp/ReviewFragment;Lcom/oculus/http/core/base/ApiError;)V

    .line 188
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 179
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/pdp/ReviewFragment$3;->onResponse(Ljava/lang/Void;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment$3;->this$0:Lcom/oculus/horizon/pdp/ReviewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/horizon/pdp/ReviewFragment;->access$200(Lcom/oculus/horizon/pdp/ReviewFragment;Lcom/oculus/http/core/base/ApiError;)V

    .line 183
    return-void
.end method
