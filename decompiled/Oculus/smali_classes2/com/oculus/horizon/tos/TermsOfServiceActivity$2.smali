.class Lcom/oculus/horizon/tos/TermsOfServiceActivity$2;
.super Ljava/lang/Object;
.source "TermsOfServiceActivity.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/tos/TermsOfServiceActivity;->onAcceptClickAsync()Lbolts/Task;
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
.field final synthetic this$0:Lcom/oculus/horizon/tos/TermsOfServiceActivity;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/tos/TermsOfServiceActivity;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/oculus/horizon/tos/TermsOfServiceActivity$2;->this$0:Lcom/oculus/horizon/tos/TermsOfServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 4
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
    .line 108
    new-instance v0, Lbolts/TaskCompletionSource;

    invoke-direct {v0}, Lbolts/TaskCompletionSource;-><init>()V

    .line 109
    iget-object v1, p0, Lcom/oculus/horizon/tos/TermsOfServiceActivity$2;->this$0:Lcom/oculus/horizon/tos/TermsOfServiceActivity;

    invoke-static {v1}, Lcom/oculus/horizon/tos/TermsOfServiceActivity;->access$200(Lcom/oculus/horizon/tos/TermsOfServiceActivity;)Lcom/oculus/horizon/api/ApiRequestManager;

    move-result-object v1

    new-instance v2, Lcom/oculus/horizon/api/tos/AcceptTermsOfServiceRequest;

    invoke-direct {v2}, Lcom/oculus/horizon/api/tos/AcceptTermsOfServiceRequest;-><init>()V

    new-instance v3, Lcom/oculus/horizon/tos/TermsOfServiceActivity$2$1;

    invoke-direct {v3, p0, v0}, Lcom/oculus/horizon/tos/TermsOfServiceActivity$2$1;-><init>(Lcom/oculus/horizon/tos/TermsOfServiceActivity$2;Lbolts/TaskCompletionSource;)V

    invoke-virtual {v1, v2, v3}, Lcom/oculus/horizon/api/ApiRequestManager;->post(Lcom/oculus/http/core/base/ApiRequest;Lcom/oculus/http/core/base/ApiCallback;)V

    .line 122
    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/tos/TermsOfServiceActivity$2;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
