.class Lcom/oculus/auth/receiver/LoginHandlersRunner$1;
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

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lcom/oculus/auth/receiver/LoginHandlersRunner;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/oculus/auth/receiver/LoginHandlersRunner$1;->this$0:Lcom/oculus/auth/receiver/LoginHandlersRunner;

    iput-wide p2, p0, Lcom/oculus/auth/receiver/LoginHandlersRunner$1;->val$start:J

    iput-object p4, p0, Lcom/oculus/auth/receiver/LoginHandlersRunner$1;->val$name:Ljava/lang/String;

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
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x2

    sget v1, Lcom/oculus/time/TimeModule$UL_id;->$ul_$xXXcom_oculus_time_Clock$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/auth/receiver/LoginHandlersRunner$1;->this$0:Lcom/oculus/auth/receiver/LoginHandlersRunner;

    invoke-static {v2}, Lcom/oculus/auth/receiver/LoginHandlersRunner;->access$000(Lcom/oculus/auth/receiver/LoginHandlersRunner;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/time/Clock;

    invoke-virtual {v0}, Lcom/oculus/time/Clock;->uptime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oculus/auth/receiver/LoginHandlersRunner$1;->val$start:J

    sub-long/2addr v0, v2

    .line 62
    invoke-static {}, Lcom/oculus/auth/receiver/LoginHandlersRunner;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Executing login handler complete: %s [%dms]"

    iget-object v4, p0, Lcom/oculus/auth/receiver/LoginHandlersRunner$1;->val$name:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3, v4, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    return-object p1
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/oculus/auth/receiver/LoginHandlersRunner$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
