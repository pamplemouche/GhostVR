.class Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$2;
.super Ljava/lang/Object;
.source "StandaloneDefaultAppSetupManager.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;->triggerSetupInstalls()V
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
        "Lcom/google/common/collect/ImmutableList",
        "<",
        "Lcom/oculus/library/model/App;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;


# direct methods
.method constructor <init>(Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$2;->this$0:Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/library/model/App;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 332
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    invoke-static {}, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cache Refresh Failed"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_0
    invoke-static {}, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Finished the Cache Refresh. Starting the Install process"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$2;->this$0:Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;

    invoke-virtual {v0}, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;->maybeBeginSetupInstallsProcess()V

    .line 337
    const/4 v0, 0x0

    return-object v0
.end method
