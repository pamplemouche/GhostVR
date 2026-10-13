.class Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$1;
.super Ljava/lang/Object;
.source "Nux360FBLoginVerificationPresenter.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;->waitOnVerificationComplete()V
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
.field final synthetic this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;

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
    .line 86
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;)Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    :cond_0
    invoke-static {}, Lbolts/Task;->cancelled()Lbolts/Task;

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    .line 90
    :cond_1
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 91
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;)Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$View;->hideLoading()V

    .line 95
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;)Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$View;->showEmailVerified()V

    .line 97
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;->access$100(Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/logging/OculusLogger;->reportConfirmationSuccess()V

    .line 99
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;->access$200(Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;)Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->getCurrentFBAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_4

    .line 101
    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;

    invoke-static {v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;)Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$View;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$View;->doFBAuth(Lcom/facebook/AccessToken;)V

    .line 103
    :cond_4
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;

    const-string v1, "login_attempt"

    invoke-static {v0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;->access$300(Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;Ljava/lang/String;)V

    .line 106
    const/4 v0, 0x0

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
    .line 83
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
