.class Lcom/oculus/vrshell/home/config/ConfigUpdater$1;
.super Ljava/lang/Object;
.source "ConfigUpdater.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/home/config/ConfigUpdater;->clearAsync(Landroid/content/Context;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/home/config/ConfigUpdater;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/home/config/ConfigUpdater;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/vrshell/home/config/ConfigUpdater;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/oculus/vrshell/home/config/ConfigUpdater$1;->this$0:Lcom/oculus/vrshell/home/config/ConfigUpdater;

    iput-object p2, p0, Lcom/oculus/vrshell/home/config/ConfigUpdater$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/oculus/vrshell/home/config/ConfigUpdater$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oculus/vrshell/home/config/ConfigUpdater$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/oculus/vrshell/home/module/GateKeepers;->onLogout(Landroid/content/Context;)V

    .line 104
    iget-object v0, p0, Lcom/oculus/vrshell/home/config/ConfigUpdater$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/oculus/modules/QuickExperimentsModuleImpl;->onLogout(Landroid/content/Context;)V

    .line 105
    iget-object v0, p0, Lcom/oculus/vrshell/home/config/ConfigUpdater$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/oculus/modules/QuickPromotionModuleImpl;->onLogout(Landroid/content/Context;)V

    .line 106
    iget-object v0, p0, Lcom/oculus/vrshell/home/config/ConfigUpdater$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/oculus/vrshell/home/HomeApplication;->clearApplicationData(Landroid/content/Context;)V

    .line 107
    invoke-static {}, Lcom/oculus/vrshell/home/config/ConfigUpdater;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clearAsync(): Complete"

    invoke-static {v0, v1}, Llibraries/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x0

    return-object v0
.end method
