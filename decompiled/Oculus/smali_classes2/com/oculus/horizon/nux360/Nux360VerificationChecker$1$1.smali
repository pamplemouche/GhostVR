.class Lcom/oculus/horizon/nux360/Nux360VerificationChecker$1$1;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "Nux360VerificationChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/nux360/Nux360VerificationChecker$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/api/registration/CheckEmailResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/horizon/nux360/Nux360VerificationChecker$1;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/nux360/Nux360VerificationChecker$1;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/oculus/horizon/nux360/Nux360VerificationChecker$1$1;->this$1:Lcom/oculus/horizon/nux360/Nux360VerificationChecker$1;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationChecker$1$1;->this$1:Lcom/oculus/horizon/nux360/Nux360VerificationChecker$1;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationChecker$1;->access$300(Lcom/oculus/horizon/nux360/Nux360VerificationChecker$1;)V

    .line 50
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/registration/CheckEmailResponse;)V
    .locals 2

    .prologue
    .line 37
    invoke-virtual {p1}, Lcom/oculus/horizon/api/registration/CheckEmailResponse;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationChecker$1$1;->this$1:Lcom/oculus/horizon/nux360/Nux360VerificationChecker$1;

    iget-object v0, v0, Lcom/oculus/horizon/nux360/Nux360VerificationChecker$1;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationChecker;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationChecker;->access$000(Lcom/oculus/horizon/nux360/Nux360VerificationChecker;)Lbolts/TaskCompletionSource;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 44
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationChecker$1$1;->this$1:Lcom/oculus/horizon/nux360/Nux360VerificationChecker$1;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationChecker$1;->access$300(Lcom/oculus/horizon/nux360/Nux360VerificationChecker$1;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Lcom/oculus/horizon/api/registration/CheckEmailResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/nux360/Nux360VerificationChecker$1$1;->onResponse(Lcom/oculus/horizon/api/registration/CheckEmailResponse;)V

    return-void
.end method
