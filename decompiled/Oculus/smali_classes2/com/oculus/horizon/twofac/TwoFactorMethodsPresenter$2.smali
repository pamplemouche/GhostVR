.class Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter$2;
.super Ljava/lang/Object;
.source "TwoFactorMethodsPresenter.java"

# interfaces
.implements Lcom/oculus/authapi/AuthResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;->continueWithMethod(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oculus/authapi/AuthResultCallback",
        "<",
        "Ljava/lang/Void;",
        "Lcom/oculus/authapi/AuthError;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;

.field final synthetic val$methods:Lcom/google/common/collect/ImmutableList;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;Lcom/google/common/collect/ImmutableList;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter$2;->this$0:Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;

    iput-object p2, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter$2;->val$methods:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/authapi/AuthError;)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter$2;->this$0:Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;

    invoke-static {v0, p1}, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;->access$600(Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;Lcom/oculus/authapi/AuthError;)V

    .line 167
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 153
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter$2;->onResult(Ljava/lang/Void;)V

    return-void
.end method

.method public onResult(Ljava/lang/Void;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 156
    iget-object v0, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter$2;->this$0:Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;->access$700(Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter$2;->this$0:Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;->access$800(Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter$TwoFactorMethodsView;

    invoke-interface {v0}, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter$TwoFactorMethodsView;->stopLoadingState()V

    .line 161
    iget-object v0, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter$2;->this$0:Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;->access$900(Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter$TwoFactorMethodsView;

    iget-object v2, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter$2;->val$methods:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    :goto_1
    invoke-interface {v0, v1}, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter$TwoFactorMethodsView;->twoFactorCodeSent(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
