.class Lcom/oculus/auth/components/LoginComponents$2;
.super Ljava/lang/Object;
.source "LoginComponents.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/auth/components/LoginComponents;->startLoginAsync(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/auth/components/LoginComponents$Mode;Lcom/oculus/auth/components/AuthAction;)Lbolts/Task;
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
        "Lcom/oculus/auth/credentials/Credentials;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/auth/components/LoginComponents;

.field final synthetic val$action:Lcom/oculus/auth/components/AuthAction;

.field final synthetic val$mode:Lcom/oculus/auth/components/LoginComponents$Mode;


# direct methods
.method constructor <init>(Lcom/oculus/auth/components/LoginComponents;Lcom/oculus/auth/components/LoginComponents$Mode;Lcom/oculus/auth/components/AuthAction;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/oculus/auth/components/LoginComponents$2;->this$0:Lcom/oculus/auth/components/LoginComponents;

    iput-object p2, p0, Lcom/oculus/auth/components/LoginComponents$2;->val$mode:Lcom/oculus/auth/components/LoginComponents$Mode;

    iput-object p3, p0, Lcom/oculus/auth/components/LoginComponents$2;->val$action:Lcom/oculus/auth/components/AuthAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/oculus/auth/credentials/Credentials;",
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
    .line 124
    iget-object v0, p0, Lcom/oculus/auth/components/LoginComponents$2;->this$0:Lcom/oculus/auth/components/LoginComponents;

    iget-object v1, p0, Lcom/oculus/auth/components/LoginComponents$2;->val$mode:Lcom/oculus/auth/components/LoginComponents$Mode;

    iget-object v2, p0, Lcom/oculus/auth/components/LoginComponents$2;->val$action:Lcom/oculus/auth/components/AuthAction;

    invoke-virtual {v0, p1, v1, v2}, Lcom/oculus/auth/components/LoginComponents;->completeLoginAsync(Lbolts/Task;Lcom/oculus/auth/components/LoginComponents$Mode;Lcom/oculus/auth/components/AuthAction;)Lbolts/Task;

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
    .line 121
    invoke-virtual {p0, p1}, Lcom/oculus/auth/components/LoginComponents$2;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
