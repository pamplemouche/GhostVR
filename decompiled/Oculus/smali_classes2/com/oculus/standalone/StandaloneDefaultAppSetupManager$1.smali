.class Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1;
.super Ljava/lang/Object;
.source "StandaloneDefaultAppSetupManager.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;->installStandAloneSetupAppsAsync(Z)Lbolts/Task;
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
        "Lcom/oculus/horizon/api/obe/RequiredApplicationsResponse;",
        "Lbolts/Task",
        "<[",
        "Lcom/oculus/coreapps/CoreApp;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;

.field final synthetic val$isHighPriorityAppsList:Z


# direct methods
.method constructor <init>(Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;Z)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1;->this$0:Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;

    iput-boolean p2, p0, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1;->val$isHighPriorityAppsList:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/oculus/horizon/api/obe/RequiredApplicationsResponse;",
            ">;)",
            "Lbolts/Task",
            "<[",
            "Lcom/oculus/coreapps/CoreApp;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 169
    new-instance v1, Lbolts/TaskCompletionSource;

    invoke-direct {v1}, Lbolts/TaskCompletionSource;-><init>()V

    .line 171
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v2

    .line 173
    iget-boolean v0, p0, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1;->val$isHighPriorityAppsList:Z

    if-eqz v0, :cond_0

    const-string v0, "high Priority App List"

    .line 177
    :goto_0
    iget-object v3, p0, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1;->this$0:Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;

    invoke-static {v3}, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;->access$100(Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;)Lcom/oculus/errorreporting/ErrorReporter;

    move-result-object v3

    .line 178
    invoke-static {}, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;->access$000()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "Error while fetching %s"

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    .line 179
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {v3, v4, v0, v2}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    invoke-virtual {v1, v2}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 232
    :goto_1
    invoke-virtual {v1}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v0

    return-object v0

    .line 173
    :cond_0
    const-string v0, "default standalone App list"

    goto :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1;->this$0:Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;

    invoke-static {v0}, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;->access$200(Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;)Lcom/oculus/coreapps/CoreAppManager;

    move-result-object v0

    new-instance v2, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1$1;

    invoke-direct {v2, p0, v1}, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1$1;-><init>(Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1;Lbolts/TaskCompletionSource;)V

    invoke-virtual {v0, v2}, Lcom/oculus/coreapps/CoreAppManager;->addCoreAppsListener(Lcom/oculus/coreapps/CoreAppManager$CoreAppsListener;)V

    .line 211
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/obe/RequiredApplicationsResponse;

    iget-object v0, v0, Lcom/oculus/horizon/api/obe/RequiredApplicationsResponse;->node:Lcom/oculus/horizon/api/obe/RequiredApplicationsResponse$Node;

    iget-object v0, v0, Lcom/oculus/horizon/api/obe/RequiredApplicationsResponse$Node;->default_applications:Ljava/util/List;

    .line 212
    iget-object v2, p0, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1;->this$0:Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;

    invoke-static {v2}, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;->access$300(Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;)Lcom/oculus/oculustestsettings/OculusTestSettings;

    move-result-object v2

    sget-object v3, Lcom/oculus/oculustestsettings/OculusTestSettings$SettingsKey;->FAIL_MNUX_UPDATE:Lcom/oculus/oculustestsettings/OculusTestSettings$SettingsKey;

    invoke-interface {v2, v3}, Lcom/oculus/oculustestsettings/OculusTestSettings;->getBooleanTestSetting(Lcom/oculus/oculustestsettings/OculusTestSettings$SettingsKey;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 214
    invoke-static {v0}, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;->access$400(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 216
    :cond_2
    iget-object v2, p0, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1;->this$0:Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;

    invoke-static {v2}, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;->access$200(Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;)Lcom/oculus/coreapps/CoreAppManager;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1;->this$0:Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;

    iget-object v4, p0, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1;->this$0:Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;

    .line 217
    invoke-static {v4, v0}, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;->access$500(Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;->access$600(Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 216
    invoke-virtual {v2, v0, v7}, Lcom/oculus/coreapps/CoreAppManager;->setCoreApps(Ljava/util/List;Z)V

    .line 219
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1;->this$0:Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;

    invoke-static {v0}, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;->access$200(Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;)Lcom/oculus/coreapps/CoreAppManager;

    move-result-object v0

    sget-object v2, Lcom/oculus/coreapps/CoreAppManager$InstallOrder;->SEQUENTIAL:Lcom/oculus/coreapps/CoreAppManager$InstallOrder;

    invoke-virtual {v0, v2}, Lcom/oculus/coreapps/CoreAppManager;->setInstallOrder(Lcom/oculus/coreapps/CoreAppManager$InstallOrder;)V

    .line 220
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1;->this$0:Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;

    invoke-static {v0}, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;->access$200(Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;)Lcom/oculus/coreapps/CoreAppManager;

    move-result-object v0

    sget-object v2, Lcom/oculus/appmanager/info/model/RequestOrigin;->PACIFIC_SETUP:Lcom/oculus/appmanager/info/model/RequestOrigin;

    invoke-virtual {v0, v2}, Lcom/oculus/coreapps/CoreAppManager;->setInstallRequestOrigin(Lcom/oculus/appmanager/info/model/RequestOrigin;)V

    .line 221
    iget-boolean v0, p0, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1;->val$isHighPriorityAppsList:Z

    if-eqz v0, :cond_3

    const-string v0, "high_pri_apps_setup"

    .line 223
    :goto_2
    invoke-static {}, Lcom/oculus/executors/OculusThreadExecutor;->getInstance()Lcom/oculus/executors/OculusThreadExecutor;

    move-result-object v2

    new-instance v3, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1$2;

    invoke-direct {v3, p0, v0}, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1$2;-><init>(Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1;Ljava/lang/String;)V

    .line 224
    invoke-virtual {v2, v3}, Lcom/oculus/executors/OculusThreadExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 221
    :cond_3
    const-string v0, "default_apps_setup"

    goto :goto_2
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
