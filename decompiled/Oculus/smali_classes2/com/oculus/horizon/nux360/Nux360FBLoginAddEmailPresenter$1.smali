.class Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$1;
.super Ljava/lang/Object;
.source "Nux360FBLoginAddEmailPresenter.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;->addEmail(Ljava/lang/String;Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;)V
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
.field final synthetic this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;

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
    .line 78
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;)Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-object p1

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;)Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$View;->hideLoading()V

    .line 84
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    .line 87
    instance-of v1, v0, Lcom/oculus/horizon/nux360/CreateAccountUtil$EmailAndPasswordException;

    if-eqz v1, :cond_2

    .line 88
    check-cast v0, Lcom/oculus/horizon/nux360/CreateAccountUtil$EmailAndPasswordException;

    .line 91
    invoke-virtual {v0}, Lcom/oculus/horizon/nux360/CreateAccountUtil$EmailAndPasswordException;->isEmailAlreadyTaken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;)Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$View;->showEmailAlreadyTakenError()V

    goto :goto_0

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;)Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$View;->showNetworkError()V

    goto :goto_0

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;)Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$View;->registerFBLoginAccount()V

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
    .line 75
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
