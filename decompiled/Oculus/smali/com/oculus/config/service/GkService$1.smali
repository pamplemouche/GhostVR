.class Lcom/oculus/config/service/GkService$1;
.super Lcom/oculus/aidl/IGkService$Stub;
.source "GkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/config/service/GkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/config/service/GkService;


# direct methods
.method constructor <init>(Lcom/oculus/config/service/GkService;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/oculus/config/service/GkService$1;->this$0:Lcom/oculus/config/service/GkService;

    invoke-direct {p0}, Lcom/oculus/aidl/IGkService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public clearGatekeeperOverride(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oculus/config/service/GkService$1;->this$0:Lcom/oculus/config/service/GkService;

    invoke-static {v0}, Lcom/oculus/config/service/GkService;->access$000(Lcom/oculus/config/service/GkService;)Lcom/oculus/config/service/GkServiceCallerVerifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/config/service/GkServiceCallerVerifier;->enforceTrustedCaller()V

    .line 75
    iget-object v0, p0, Lcom/oculus/config/service/GkService$1;->this$0:Lcom/oculus/config/service/GkService;

    invoke-static {v0}, Lcom/oculus/config/service/GkService;->access$200(Lcom/oculus/config/service/GkService;)Lcom/oculus/config/updater/ConfigUpdater;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/config/updater/ConfigUpdater;->clearGatekeeperOverride(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public deregisterGatekeeper(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/oculus/config/service/GkService$1;->this$0:Lcom/oculus/config/service/GkService;

    invoke-static {v0}, Lcom/oculus/config/service/GkService;->access$000(Lcom/oculus/config/service/GkService;)Lcom/oculus/config/service/GkServiceCallerVerifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/config/service/GkServiceCallerVerifier;->enforceTrustedCaller()V

    .line 63
    iget-object v0, p0, Lcom/oculus/config/service/GkService$1;->this$0:Lcom/oculus/config/service/GkService;

    invoke-static {v0}, Lcom/oculus/config/service/GkService;->access$100(Lcom/oculus/config/service/GkService;)Lcom/oculus/config/gatekeeper/DynamicGatekeeperRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/config/gatekeeper/DynamicGatekeeperRegistry;->deregisterGateKeeper(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public fetchGatekeeper(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/oculus/config/service/GkService$1;->this$0:Lcom/oculus/config/service/GkService;

    invoke-static {v0}, Lcom/oculus/config/service/GkService;->access$000(Lcom/oculus/config/service/GkService;)Lcom/oculus/config/service/GkServiceCallerVerifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/config/service/GkServiceCallerVerifier;->enforceTrustedCaller()V

    .line 98
    iget-object v0, p0, Lcom/oculus/config/service/GkService$1;->this$0:Lcom/oculus/config/service/GkService;

    invoke-static {v0}, Lcom/oculus/config/service/GkService;->access$500(Lcom/oculus/config/service/GkService;)Lcom/oculus/util/thread/ThreadUtils;

    move-result-object v0

    const-string v1, "must not be run on the ui thread"

    invoke-virtual {v0, v1}, Lcom/oculus/util/thread/ThreadUtils;->assertIsNonUiThread(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/oculus/config/service/GkService$1;->this$0:Lcom/oculus/config/service/GkService;

    invoke-static {v0}, Lcom/oculus/config/service/GkService;->access$300(Lcom/oculus/config/service/GkService;)Lcom/oculus/config/ConfigController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/config/ConfigController;->isGatekeeperRegistered(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-static {}, Lcom/oculus/config/service/GkService;->access$600()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oculus/config/service/GkService$1;->fetchGatekeepers(J)Z

    .line 101
    iget-object v0, p0, Lcom/oculus/config/service/GkService$1;->this$0:Lcom/oculus/config/service/GkService;

    invoke-static {v0}, Lcom/oculus/config/service/GkService;->access$300(Lcom/oculus/config/service/GkService;)Lcom/oculus/config/ConfigController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/config/ConfigController;->getGatekeeper(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 102
    invoke-static {}, Lcom/oculus/config/service/GkService;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GK %s registered, value=%s"

    invoke-static {v1, v2, p1, v0}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 105
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fetchGatekeepers(J)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 116
    iget-object v1, p0, Lcom/oculus/config/service/GkService$1;->this$0:Lcom/oculus/config/service/GkService;

    invoke-static {v1}, Lcom/oculus/config/service/GkService;->access$000(Lcom/oculus/config/service/GkService;)Lcom/oculus/config/service/GkServiceCallerVerifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/config/service/GkServiceCallerVerifier;->enforceTrustedCaller()V

    .line 117
    iget-object v1, p0, Lcom/oculus/config/service/GkService$1;->this$0:Lcom/oculus/config/service/GkService;

    invoke-static {v1}, Lcom/oculus/config/service/GkService;->access$500(Lcom/oculus/config/service/GkService;)Lcom/oculus/util/thread/ThreadUtils;

    move-result-object v1

    const-string v2, "must not be run on the ui thread"

    invoke-virtual {v1, v2}, Lcom/oculus/util/thread/ThreadUtils;->assertIsNonUiThread(Ljava/lang/String;)V

    .line 118
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    .line 119
    invoke-static {}, Lcom/oculus/config/service/GkService;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "invalid timeout"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_0
    return v0

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/oculus/config/service/GkService$1;->this$0:Lcom/oculus/config/service/GkService;

    invoke-static {v1}, Lcom/oculus/config/service/GkService;->access$200(Lcom/oculus/config/service/GkService;)Lcom/oculus/config/updater/ConfigUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/config/updater/ConfigUpdater;->fetchAsync()Lbolts/Task;

    move-result-object v1

    .line 124
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, v2}, Lbolts/Task;->waitForCompletion(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v1

    .line 127
    invoke-static {}, Lcom/oculus/config/service/GkService;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fetchGatekeepersSync interrupted."

    invoke-static {v2, v3, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public fetchGatekeepersAsync()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/oculus/config/service/GkService$1;->this$0:Lcom/oculus/config/service/GkService;

    invoke-static {v0}, Lcom/oculus/config/service/GkService;->access$000(Lcom/oculus/config/service/GkService;)Lcom/oculus/config/service/GkServiceCallerVerifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/config/service/GkServiceCallerVerifier;->enforceTrustedCaller()V

    .line 111
    iget-object v0, p0, Lcom/oculus/config/service/GkService$1;->this$0:Lcom/oculus/config/service/GkService;

    invoke-static {v0}, Lcom/oculus/config/service/GkService;->access$200(Lcom/oculus/config/service/GkService;)Lcom/oculus/config/updater/ConfigUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/config/updater/ConfigUpdater;->fetchAsync()Lbolts/Task;

    .line 112
    return-void
.end method

.method public getGatekeeper(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oculus/config/service/GkService$1;->this$0:Lcom/oculus/config/service/GkService;

    invoke-static {v0}, Lcom/oculus/config/service/GkService;->access$000(Lcom/oculus/config/service/GkService;)Lcom/oculus/config/service/GkServiceCallerVerifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/config/service/GkServiceCallerVerifier;->enforceTrustedCaller()V

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oculus/config/service/GkService$1;->getGatekeeperDef(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getGatekeeperDef(Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oculus/config/service/GkService$1;->this$0:Lcom/oculus/config/service/GkService;

    invoke-static {v0}, Lcom/oculus/config/service/GkService;->access$000(Lcom/oculus/config/service/GkService;)Lcom/oculus/config/service/GkServiceCallerVerifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/config/service/GkServiceCallerVerifier;->enforceTrustedCaller()V

    .line 87
    iget-object v0, p0, Lcom/oculus/config/service/GkService$1;->this$0:Lcom/oculus/config/service/GkService;

    invoke-static {v0}, Lcom/oculus/config/service/GkService;->access$300(Lcom/oculus/config/service/GkService;)Lcom/oculus/config/ConfigController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/config/ConfigController;->isGatekeeperRegistered(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/oculus/config/service/GkService$1;->this$0:Lcom/oculus/config/service/GkService;

    invoke-static {v0}, Lcom/oculus/config/service/GkService;->access$300(Lcom/oculus/config/service/GkService;)Lcom/oculus/config/ConfigController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oculus/config/ConfigController;->getGatekeeper(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 89
    invoke-static {}, Lcom/oculus/config/service/GkService;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GK %s registered, value=%s"

    invoke-static {v1, v2, p1, v0}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 92
    :cond_0
    return p2
.end method

.method public overrideGatekeeper(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/oculus/config/service/GkService$1;->this$0:Lcom/oculus/config/service/GkService;

    invoke-static {v0}, Lcom/oculus/config/service/GkService;->access$000(Lcom/oculus/config/service/GkService;)Lcom/oculus/config/service/GkServiceCallerVerifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/config/service/GkServiceCallerVerifier;->enforceTrustedCaller()V

    .line 69
    iget-object v0, p0, Lcom/oculus/config/service/GkService$1;->this$0:Lcom/oculus/config/service/GkService;

    invoke-static {v0}, Lcom/oculus/config/service/GkService;->access$200(Lcom/oculus/config/service/GkService;)Lcom/oculus/config/updater/ConfigUpdater;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oculus/config/updater/ConfigUpdater;->setGatekeeperOverride(Ljava/lang/String;Z)V

    .line 70
    return-void
.end method

.method public registerGatekeeper(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oculus/config/service/GkService$1;->this$0:Lcom/oculus/config/service/GkService;

    invoke-static {v0}, Lcom/oculus/config/service/GkService;->access$000(Lcom/oculus/config/service/GkService;)Lcom/oculus/config/service/GkServiceCallerVerifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/config/service/GkServiceCallerVerifier;->enforceTrustedCaller()V

    .line 57
    iget-object v0, p0, Lcom/oculus/config/service/GkService$1;->this$0:Lcom/oculus/config/service/GkService;

    invoke-static {v0}, Lcom/oculus/config/service/GkService;->access$100(Lcom/oculus/config/service/GkService;)Lcom/oculus/config/gatekeeper/DynamicGatekeeperRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/config/gatekeeper/DynamicGatekeeperRegistry;->registerGateKeeper(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
