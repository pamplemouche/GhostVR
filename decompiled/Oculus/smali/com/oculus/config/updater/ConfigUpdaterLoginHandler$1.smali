.class Lcom/oculus/config/updater/ConfigUpdaterLoginHandler$1;
.super Ljava/lang/Object;
.source "ConfigUpdaterLoginHandler.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/config/updater/ConfigUpdaterLoginHandler;->afterLoginAsync()Lbolts/Task;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/config/updater/ConfigUpdaterLoginHandler;


# direct methods
.method constructor <init>(Lcom/oculus/config/updater/ConfigUpdaterLoginHandler;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/oculus/config/updater/ConfigUpdaterLoginHandler$1;->this$0:Lcom/oculus/config/updater/ConfigUpdaterLoginHandler;

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
    .line 27
    invoke-virtual {p0, p1}, Lcom/oculus/config/updater/ConfigUpdaterLoginHandler$1;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/config/updater/ConfigUpdaterLoginHandler$1;->this$0:Lcom/oculus/config/updater/ConfigUpdaterLoginHandler;

    invoke-static {v0}, Lcom/oculus/config/updater/ConfigUpdaterLoginHandler;->access$000(Lcom/oculus/config/updater/ConfigUpdaterLoginHandler;)Lcom/facebook/inject/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/config/updater/ConfigUpdaterJobScheduler;

    invoke-virtual {v0}, Lcom/oculus/config/updater/ConfigUpdaterJobScheduler;->schedule()V

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method
