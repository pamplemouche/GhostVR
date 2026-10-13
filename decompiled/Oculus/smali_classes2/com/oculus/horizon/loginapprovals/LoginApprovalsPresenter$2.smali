.class Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter$2;
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
    .line 141
    iput-object p1, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter$2;->this$0:Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/authapi/AuthError;)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter$2;->this$0:Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter;

    invoke-static {v0, p1}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter;->access$300(Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter;Lcom/oculus/authapi/AuthError;)V

    .line 150
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 141
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter$2;->onResult(Ljava/lang/Void;)V

    return-void
.end method

.method public onResult(Ljava/lang/Void;)V
    .locals 1
    .param p1    # Ljava/lang/Void;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 144
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter$2;->this$0:Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter;->access$200(Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter;)V

    .line 145
    return-void
.end method
