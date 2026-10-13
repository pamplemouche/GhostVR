.class Lcom/oculus/auth/components/LoginComponents$3;
.super Ljava/lang/Object;
.source "LoginComponents.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/auth/components/LoginComponents;->startLoginWithFbAuthAsync(Ljava/lang/String;Lcom/oculus/auth/components/AuthAction;)Lbolts/Task;
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
        "Lcom/oculus/auth/api/LoginWithFbAuthResponse$LoginSession;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/auth/components/LoginComponents;

.field final synthetic val$action:Lcom/oculus/auth/components/AuthAction;


# direct methods
.method constructor <init>(Lcom/oculus/auth/components/LoginComponents;Lcom/oculus/auth/components/AuthAction;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/oculus/auth/components/LoginComponents$3;->this$0:Lcom/oculus/auth/components/LoginComponents;

    iput-object p2, p0, Lcom/oculus/auth/components/LoginComponents$3;->val$action:Lcom/oculus/auth/components/AuthAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/oculus/auth/api/LoginWithFbAuthResponse$LoginSession;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/auth/api/LoginWithFbAuthResponse$LoginSession;

    .line 138
    iget-object v1, p0, Lcom/oculus/auth/components/LoginComponents$3;->this$0:Lcom/oculus/auth/components/LoginComponents;

    iget-object v2, v0, Lcom/oculus/auth/api/LoginWithFbAuthResponse$LoginSession;->userId:Ljava/lang/String;

    iget-object v0, v0, Lcom/oculus/auth/api/LoginWithFbAuthResponse$LoginSession;->accessToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/auth/components/LoginComponents$3;->this$0:Lcom/oculus/auth/components/LoginComponents;

    .line 139
    invoke-static {v3}, Lcom/oculus/auth/components/LoginComponents;->access$000(Lcom/oculus/auth/components/LoginComponents;)Lcom/oculus/auth/components/LoginComponents$Mode;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/auth/components/LoginComponents$3;->val$action:Lcom/oculus/auth/components/AuthAction;

    .line 138
    invoke-static {v1, v2, v0, v3, v4}, Lcom/oculus/auth/components/LoginComponents;->access$100(Lcom/oculus/auth/components/LoginComponents;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/auth/components/LoginComponents$Mode;Lcom/oculus/auth/components/AuthAction;)Lbolts/Task;

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
    .line 134
    invoke-virtual {p0, p1}, Lcom/oculus/auth/components/LoginComponents$3;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
