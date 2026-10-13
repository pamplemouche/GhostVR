.class Lcom/oculus/horizon/login/LoginPresenter$1;
.super Ljava/lang/Object;
.source "LoginPresenter.java"

# interfaces
.implements Lcom/oculus/authapi/AuthResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/login/LoginPresenter;->startLogin(Ljava/lang/String;Ljava/lang/String;)V
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
        "Lcom/oculus/authapi/AuthLoginError;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/login/LoginPresenter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/login/LoginPresenter;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/oculus/horizon/login/LoginPresenter$1;->this$0:Lcom/oculus/horizon/login/LoginPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/oculus/authapi/AuthError;)V
    .locals 0

    .prologue
    .line 87
    check-cast p1, Lcom/oculus/authapi/AuthLoginError;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/login/LoginPresenter$1;->onError(Lcom/oculus/authapi/AuthLoginError;)V

    return-void
.end method

.method public onError(Lcom/oculus/authapi/AuthLoginError;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginPresenter$1;->this$0:Lcom/oculus/horizon/login/LoginPresenter;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/login/LoginPresenter;->onLoginError(Lcom/oculus/authapi/AuthLoginError;)Z

    .line 96
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 87
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/login/LoginPresenter$1;->onResult(Ljava/lang/Void;)V

    return-void
.end method

.method public onResult(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginPresenter$1;->this$0:Lcom/oculus/horizon/login/LoginPresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/login/LoginPresenter;->onLoginSuccess()V

    .line 91
    return-void
.end method
