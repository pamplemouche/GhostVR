.class Lcom/oculus/auth/service/AuthManager$2;
.super Ljava/lang/Object;
.source "AuthManager.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/auth/service/AuthManager;->performLogout(Landroid/content/Intent;)V
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
.field final synthetic this$0:Lcom/oculus/auth/service/AuthManager;

.field final synthetic val$receiver:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Lcom/oculus/auth/service/AuthManager;Landroid/os/ResultReceiver;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/oculus/auth/service/AuthManager$2;->this$0:Lcom/oculus/auth/service/AuthManager;

    iput-object p2, p0, Lcom/oculus/auth/service/AuthManager$2;->val$receiver:Landroid/os/ResultReceiver;

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

    .prologue
    const/4 v3, 0x0

    .line 313
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    .line 315
    const-string v1, "AuthManager"

    const-string v2, "Api error when calling logout."

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 316
    iget-object v1, p0, Lcom/oculus/auth/service/AuthManager$2;->val$receiver:Landroid/os/ResultReceiver;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/oculus/auth/service/AuthManager;->notifyReceiver(Landroid/os/ResultReceiver;ILjava/lang/Exception;)V

    .line 321
    :goto_0
    return-object v3

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/oculus/auth/service/AuthManager$2;->val$receiver:Landroid/os/ResultReceiver;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/oculus/auth/service/AuthManager;->access$300(Landroid/os/ResultReceiver;I)V

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
    .line 310
    invoke-virtual {p0, p1}, Lcom/oculus/auth/service/AuthManager$2;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
