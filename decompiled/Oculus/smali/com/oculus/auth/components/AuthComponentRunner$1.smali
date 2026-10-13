.class Lcom/oculus/auth/components/AuthComponentRunner$1;
.super Ljava/lang/Object;
.source "AuthComponentRunner.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/auth/components/AuthComponentRunner;->runAsync(Lbolts/Task;Ljava/lang/String;Lcom/oculus/auth/components/AuthAction;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/auth/components/AuthComponentRunner;

.field final synthetic val$action:Lcom/oculus/auth/components/AuthAction;

.field final synthetic val$component:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/auth/components/AuthComponentRunner;Ljava/lang/String;Lcom/oculus/auth/components/AuthAction;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/oculus/auth/components/AuthComponentRunner$1;->this$0:Lcom/oculus/auth/components/AuthComponentRunner;

    iput-object p2, p0, Lcom/oculus/auth/components/AuthComponentRunner$1;->val$component:Ljava/lang/String;

    iput-object p3, p0, Lcom/oculus/auth/components/AuthComponentRunner$1;->val$action:Lcom/oculus/auth/components/AuthAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/oculus/auth/components/AuthComponentRunner$1;->this$0:Lcom/oculus/auth/components/AuthComponentRunner;

    invoke-static {v1}, Lcom/oculus/auth/components/AuthComponentRunner;->access$000(Lcom/oculus/auth/components/AuthComponentRunner;)Lcom/oculus/auth/components/AuthLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/auth/components/AuthComponentRunner$1;->val$component:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/auth/components/AuthComponentRunner$1;->val$action:Lcom/oculus/auth/components/AuthAction;

    invoke-virtual {v1, v2, v3, v0}, Lcom/oculus/auth/components/AuthLogger;->reportComponent(Ljava/lang/String;Lcom/oculus/auth/components/AuthAction;Ljava/lang/Throwable;)V

    .line 29
    if-nez v0, :cond_0

    .line 30
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 32
    :cond_0
    throw v0
.end method
