.class Lcom/oculus/auth/components/BackendUpdater$1;
.super Ljava/lang/Object;
.source "BackendUpdater.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/auth/components/BackendUpdater;->activateHmdAsync(Ljava/lang/String;Lcom/oculus/auth/components/AuthAction;)Lbolts/Task;
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
.field final synthetic this$0:Lcom/oculus/auth/components/BackendUpdater;

.field final synthetic val$accessToken:Ljava/lang/String;

.field final synthetic val$action:Lcom/oculus/auth/components/AuthAction;


# direct methods
.method constructor <init>(Lcom/oculus/auth/components/BackendUpdater;Ljava/lang/String;Lcom/oculus/auth/components/AuthAction;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/oculus/auth/components/BackendUpdater$1;->this$0:Lcom/oculus/auth/components/BackendUpdater;

    iput-object p2, p0, Lcom/oculus/auth/components/BackendUpdater$1;->val$accessToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/oculus/auth/components/BackendUpdater$1;->val$action:Lcom/oculus/auth/components/AuthAction;

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
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oculus/auth/components/BackendUpdater$1;->this$0:Lcom/oculus/auth/components/BackendUpdater;

    iget-object v1, p0, Lcom/oculus/auth/components/BackendUpdater$1;->val$accessToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/auth/components/BackendUpdater$1;->val$action:Lcom/oculus/auth/components/AuthAction;

    invoke-static {v0, v1, v2}, Lcom/oculus/auth/components/BackendUpdater;->access$000(Lcom/oculus/auth/components/BackendUpdater;Ljava/lang/String;Lcom/oculus/auth/components/AuthAction;)Lbolts/Task;

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
    .line 34
    invoke-virtual {p0, p1}, Lcom/oculus/auth/components/BackendUpdater$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
