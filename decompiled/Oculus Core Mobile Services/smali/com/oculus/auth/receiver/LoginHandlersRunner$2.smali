.class Lcom/oculus/auth/receiver/LoginHandlersRunner$2;
.super Ljava/lang/Object;
.source "LoginHandlersRunner.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/auth/receiver/LoginHandlersRunner;->runLoginHandlers()V
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
.field final synthetic this$0:Lcom/oculus/auth/receiver/LoginHandlersRunner;

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lcom/oculus/auth/receiver/LoginHandlersRunner;J)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/oculus/auth/receiver/LoginHandlersRunner$2;->this$0:Lcom/oculus/auth/receiver/LoginHandlersRunner;

    iput-wide p2, p0, Lcom/oculus/auth/receiver/LoginHandlersRunner$2;->val$start:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 8
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
    const/4 v1, 0x2

    .line 75
    invoke-static {}, Lcom/oculus/auth/receiver/LoginHandlersRunner;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Executing all login handlers completed! %dms"

    sget v0, Lcom/oculus/time/TimeModule$UL_id;->$ul_$xXXcom_oculus_time_Clock$xXXBINDING_ID:I

    iget-object v4, p0, Lcom/oculus/auth/receiver/LoginHandlersRunner$2;->this$0:Lcom/oculus/auth/receiver/LoginHandlersRunner;

    invoke-static {v4}, Lcom/oculus/auth/receiver/LoginHandlersRunner;->access$000(Lcom/oculus/auth/receiver/LoginHandlersRunner;)Lcom/facebook/inject/InjectionContext;

    move-result-object v4

    invoke-static {v1, v0, v4}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/time/Clock;

    invoke-virtual {v0}, Lcom/oculus/time/Clock;->uptime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/oculus/auth/receiver/LoginHandlersRunner$2;->val$start:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 74
    invoke-static {v2, v3, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    move v1, v0

    .line 77
    :cond_0
    const/4 v0, 0x1

    sget v2, Lcom/oculus/perflogs/OculusPerformanceLoggerModule$UL_id;->$ul_$xXXcom_oculus_perflogs_OculusPerformanceLogger$xXXBINDING_ID:I

    iget-object v3, p0, Lcom/oculus/auth/receiver/LoginHandlersRunner$2;->this$0:Lcom/oculus/auth/receiver/LoginHandlersRunner;

    invoke-static {v3}, Lcom/oculus/auth/receiver/LoginHandlersRunner;->access$000(Lcom/oculus/auth/receiver/LoginHandlersRunner;)Lcom/facebook/inject/InjectionContext;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/perflogs/OculusPerformanceLogger;

    const v2, 0xeb0005

    invoke-interface {v0, v2, v1}, Lcom/oculus/perflogs/OculusPerformanceLogger;->markerEnd(IS)V

    .line 78
    iget-object v0, p0, Lcom/oculus/auth/receiver/LoginHandlersRunner$2;->this$0:Lcom/oculus/auth/receiver/LoginHandlersRunner;

    invoke-static {v0}, Lcom/oculus/auth/receiver/LoginHandlersRunner;->access$200(Lcom/oculus/auth/receiver/LoginHandlersRunner;)Lcom/oculus/auth/receiver/LoginHandlersRunner$LoginHandlerCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/oculus/auth/receiver/LoginHandlersRunner$2;->this$0:Lcom/oculus/auth/receiver/LoginHandlersRunner;

    invoke-static {v0}, Lcom/oculus/auth/receiver/LoginHandlersRunner;->access$200(Lcom/oculus/auth/receiver/LoginHandlersRunner;)Lcom/oculus/auth/receiver/LoginHandlersRunner$LoginHandlerCompletionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/auth/receiver/LoginHandlersRunner$LoginHandlerCompletionListener;->onLoginInternalCompleted()V

    .line 81
    :cond_1
    const/4 v0, 0x0

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
    .line 71
    invoke-virtual {p0, p1}, Lcom/oculus/auth/receiver/LoginHandlersRunner$2;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
