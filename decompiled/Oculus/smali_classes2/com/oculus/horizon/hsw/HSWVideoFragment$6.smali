.class Lcom/oculus/horizon/hsw/HSWVideoFragment$6;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "HSWVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/hsw/HSWVideoFragment;->setHSWOptOut(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/hsw/HSWVideoFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/hsw/HSWVideoFragment;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment$6;->this$0:Lcom/oculus/horizon/hsw/HSWVideoFragment;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 3

    .prologue
    .line 197
    invoke-static {}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onError: "

    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment$6;->this$0:Lcom/oculus/horizon/hsw/HSWVideoFragment;

    invoke-static {v0}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->access$700(Lcom/oculus/horizon/hsw/HSWVideoFragment;)V

    .line 199
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 189
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/hsw/HSWVideoFragment$6;->onResponse(Ljava/lang/Void;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment$6;->this$0:Lcom/oculus/horizon/hsw/HSWVideoFragment;

    invoke-static {v0}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->access$700(Lcom/oculus/horizon/hsw/HSWVideoFragment;)V

    .line 193
    return-void
.end method
