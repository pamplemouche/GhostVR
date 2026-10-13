.class Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter$3;
.super Ljava/lang/Object;
.source "LoginApprovalsPresenter.java"

# interfaces
.implements Lcom/oculus/authapi/AuthResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter;->resendConfirmationCode()V
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
.field final synthetic this$0:Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter$3;->this$0:Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/authapi/AuthError;)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter$3;->this$0:Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter;

    invoke-static {v0, p1}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter;->access$300(Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter;Lcom/oculus/authapi/AuthError;)V

    .line 166
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 157
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter$3;->onResult(Ljava/lang/Void;)V

    return-void
.end method

.method public onResult(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter$3;->this$0:Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter;->access$200(Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter;)V

    .line 161
    return-void
.end method
