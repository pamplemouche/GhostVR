.class Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1$1;
.super Ljava/lang/Object;
.source "StandaloneDefaultAppSetupManager.java"

# interfaces
.implements Lcom/oculus/coreapps/CoreAppManager$CoreAppsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1;->then(Lbolts/Task;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1;

.field final synthetic val$taskCompletionSource:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1;Lbolts/TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1$1;->this$1:Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1;

    iput-object p2, p0, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1$1;->val$taskCompletionSource:Lbolts/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppProgress(Lcom/oculus/coreapps/CoreApp;)V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public onCompletedInstalls([Lcom/oculus/coreapps/CoreApp;)V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1$1;->this$1:Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1;

    iget-object v0, v0, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1;->this$0:Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;

    invoke-static {v0}, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;->access$200(Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;)Lcom/oculus/coreapps/CoreAppManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oculus/coreapps/CoreAppManager;->removeCoreAppsListener(Lcom/oculus/coreapps/CoreAppManager$CoreAppsListener;)V

    .line 188
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1$1;->this$1:Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1;

    iget-object v0, v0, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1;->this$0:Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;

    invoke-static {v0}, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;->access$200(Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;)Lcom/oculus/coreapps/CoreAppManager;

    move-result-object v0

    .line 189
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    .line 188
    invoke-virtual {v0, v1, v2}, Lcom/oculus/coreapps/CoreAppManager;->setCoreApps(Ljava/util/List;Z)V

    .line 191
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1$1;->val$taskCompletionSource:Lbolts/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 192
    return-void
.end method

.method public onFetchError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1$1;->this$1:Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1;

    iget-object v0, v0, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1;->this$0:Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;

    invoke-static {v0}, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;->access$100(Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;)Lcom/oculus/errorreporting/ErrorReporter;

    move-result-object v0

    invoke-static {}, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error while fetching app list"

    invoke-virtual {v0, v1, v2, p1}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1$1;->this$1:Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1;

    iget-object v0, v0, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1;->this$0:Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;

    invoke-static {v0}, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;->access$200(Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;)Lcom/oculus/coreapps/CoreAppManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oculus/coreapps/CoreAppManager;->removeCoreAppsListener(Lcom/oculus/coreapps/CoreAppManager$CoreAppsListener;)V

    .line 200
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1$1;->val$taskCompletionSource:Lbolts/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 201
    return-void
.end method
