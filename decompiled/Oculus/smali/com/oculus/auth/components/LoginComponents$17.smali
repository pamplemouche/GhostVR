.class Lcom/oculus/auth/components/LoginComponents$17;
.super Ljava/lang/Object;
.source "LoginComponents.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/auth/components/LoginComponents;->runUserManagerUpdate(Ljava/lang/String;)Lbolts/Task;
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
        "Lcom/google/common/base/Optional",
        "<",
        "Lcom/oculus/horizon/api/common/user/User;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/auth/components/LoginComponents;


# direct methods
.method constructor <init>(Lcom/oculus/auth/components/LoginComponents;)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lcom/oculus/auth/components/LoginComponents$17;->this$0:Lcom/oculus/auth/components/LoginComponents;

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
    .line 500
    invoke-virtual {p0, p1}, Lcom/oculus/auth/components/LoginComponents$17;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/oculus/horizon/api/common/user/User;",
            ">;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 503
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Optional;

    .line 504
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    iget-object v1, p0, Lcom/oculus/auth/components/LoginComponents$17;->this$0:Lcom/oculus/auth/components/LoginComponents;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/user/User;

    invoke-static {v1, v0}, Lcom/oculus/auth/components/LoginComponents;->access$900(Lcom/oculus/auth/components/LoginComponents;Lcom/oculus/horizon/api/common/user/User;)V

    .line 507
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
