.class Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter$1;
.super Ljava/lang/Object;
.source "Nux360CreateAccountPresenter.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter;->createAccount(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;Z)V
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
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-object p1

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter;->access$100(Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter$CreateAccountView;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter$CreateAccountView;->hideLoading()V

    .line 113
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 114
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    .line 116
    instance-of v1, v0, Lcom/oculus/horizon/nux360/CreateAccountUtil$EmailAndPasswordException;

    if-eqz v1, :cond_3

    .line 117
    check-cast v0, Lcom/oculus/horizon/nux360/CreateAccountUtil$EmailAndPasswordException;

    .line 120
    invoke-virtual {v0}, Lcom/oculus/horizon/nux360/CreateAccountUtil$EmailAndPasswordException;->isEmailAlreadyTaken()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter;

    invoke-static {v1}, Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter;->access$200(Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter$CreateAccountView;

    invoke-interface {v1}, Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter$CreateAccountView;->showEmailAlreadyTakenError()V

    .line 123
    :cond_2
    invoke-virtual {v0}, Lcom/oculus/horizon/nux360/CreateAccountUtil$EmailAndPasswordException;->isPasswordNotValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter;->access$300(Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter$CreateAccountView;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter$CreateAccountView;->showPasswordNotValidError()V

    goto :goto_0

    .line 127
    :cond_3
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter;->access$400(Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter$CreateAccountView;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter$CreateAccountView;->showNetworkError()V

    goto :goto_0

    .line 133
    :cond_4
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter;->access$500(Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter$CreateAccountView;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter$CreateAccountView;->proceedNext()V

    goto :goto_0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
