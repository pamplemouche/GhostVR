.class Lcom/oculus/auth/components/LoginComponents$4;
.super Ljava/lang/Object;
.source "LoginComponents.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/auth/components/LoginComponents;->startVerifyLoginAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lbolts/Task;
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

.field final synthetic val$isSecuredAction:Z


# direct methods
.method constructor <init>(Lcom/oculus/auth/components/LoginComponents;Z)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/oculus/auth/components/LoginComponents$4;->this$0:Lcom/oculus/auth/components/LoginComponents;

    iput-boolean p2, p0, Lcom/oculus/auth/components/LoginComponents$4;->val$isSecuredAction:Z

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
    .line 163
    iget-object v1, p0, Lcom/oculus/auth/components/LoginComponents$4;->this$0:Lcom/oculus/auth/components/LoginComponents;

    iget-boolean v0, p0, Lcom/oculus/auth/components/LoginComponents$4;->val$isSecuredAction:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oculus/auth/components/LoginComponents$Mode;->SECURED_ACTION:Lcom/oculus/auth/components/LoginComponents$Mode;

    .line 166
    :goto_0
    invoke-static {}, Lcom/oculus/auth/components/AuthAction;->unknown()Lcom/oculus/auth/components/AuthAction;

    move-result-object v2

    .line 163
    invoke-virtual {v1, p1, v0, v2}, Lcom/oculus/auth/components/LoginComponents;->completeLoginAsync(Lbolts/Task;Lcom/oculus/auth/components/LoginComponents$Mode;Lcom/oculus/auth/components/AuthAction;)Lbolts/Task;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oculus/auth/components/LoginComponents$4;->this$0:Lcom/oculus/auth/components/LoginComponents;

    .line 165
    invoke-static {v0}, Lcom/oculus/auth/components/LoginComponents;->access$000(Lcom/oculus/auth/components/LoginComponents;)Lcom/oculus/auth/components/LoginComponents$Mode;

    move-result-object v0

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
    .line 160
    invoke-virtual {p0, p1}, Lcom/oculus/auth/components/LoginComponents$4;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
