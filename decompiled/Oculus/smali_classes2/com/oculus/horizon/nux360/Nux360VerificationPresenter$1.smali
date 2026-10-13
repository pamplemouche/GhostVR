.class Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$1;
.super Ljava/lang/Object;
.source "Nux360VerificationPresenter.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;->startRegisterAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$1;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;->access$100(Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$VerificationView;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$VerificationView;->hideLoading()V

    .line 128
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;->access$200(Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$VerificationView;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$VerificationView;->showNetworkError()V

    .line 133
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 129
    :cond_1
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;->access$300(Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$VerificationView;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$VerificationView;->proceedNext()V

    goto :goto_0
.end method
