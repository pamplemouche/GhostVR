.class Lcom/oculus/horizon/nux360/Nux360NamePresenter$1;
.super Ljava/lang/Object;
.source "Nux360NamePresenter.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/nux360/Nux360NamePresenter;->setUsernameAndRealName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
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
        "Lcom/oculus/horizon/api/registration/CheckUsernameResponse;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/nux360/Nux360NamePresenter;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/nux360/Nux360NamePresenter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/oculus/horizon/nux360/Nux360NamePresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360NamePresenter;

    iput-object p2, p0, Lcom/oculus/horizon/nux360/Nux360NamePresenter$1;->val$username:Ljava/lang/String;

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
    .line 94
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/nux360/Nux360NamePresenter$1;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/oculus/horizon/api/registration/CheckUsernameResponse;",
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
    const/4 v3, 0x0

    .line 98
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360NamePresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360NamePresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360NamePresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360NamePresenter;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-object v3

    .line 101
    :cond_1
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360NamePresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360NamePresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360NamePresenter;->access$100(Lcom/oculus/horizon/nux360/Nux360NamePresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360NamePresenter$NameView;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360NamePresenter$NameView;->hideLoading()V

    .line 103
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360NamePresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360NamePresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360NamePresenter;->access$200(Lcom/oculus/horizon/nux360/Nux360NamePresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360NamePresenter$NameView;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360NamePresenter$NameView;->showNetworkError()V

    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/registration/CheckUsernameResponse;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/registration/CheckUsernameResponse;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    new-instance v0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;

    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360NamePresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360NamePresenter;

    invoke-static {v1}, Lcom/oculus/horizon/nux360/Nux360NamePresenter;->access$300(Lcom/oculus/horizon/nux360/Nux360NamePresenter;)Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;->getData()Lcom/oculus/horizon/nux360/RegistrationData;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/nux360/RegistrationData$Builder;-><init>(Lcom/oculus/horizon/nux360/RegistrationData;)V

    .line 109
    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360NamePresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360NamePresenter;

    invoke-static {v1}, Lcom/oculus/horizon/nux360/Nux360NamePresenter;->access$300(Lcom/oculus/horizon/nux360/Nux360NamePresenter;)Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/nux360/Nux360NamePresenter$1;->val$username:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->setUsername(Ljava/lang/String;)Lcom/oculus/horizon/nux360/RegistrationData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->build()Lcom/oculus/horizon/nux360/RegistrationData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;->setData(Lcom/oculus/horizon/nux360/RegistrationData;)V

    .line 110
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360NamePresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360NamePresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360NamePresenter;->access$400(Lcom/oculus/horizon/nux360/Nux360NamePresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360NamePresenter$NameView;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360NamePresenter$NameView;->proceedNext()V

    goto :goto_0

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360NamePresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360NamePresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360NamePresenter;->access$500(Lcom/oculus/horizon/nux360/Nux360NamePresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360NamePresenter$NameView;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360NamePresenter$NameView;->hideLoading()V

    .line 113
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360NamePresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360NamePresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360NamePresenter;->access$600(Lcom/oculus/horizon/nux360/Nux360NamePresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360NamePresenter$NameView;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360NamePresenter$NameView;->showUsernameTakenError()V

    goto :goto_0
.end method
