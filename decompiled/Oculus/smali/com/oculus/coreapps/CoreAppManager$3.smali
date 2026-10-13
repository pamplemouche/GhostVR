.class Lcom/oculus/coreapps/CoreAppManager$3;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "CoreAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/coreapps/CoreAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/api/common/MinimumAppVersion;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/coreapps/CoreAppManager;

.field final synthetic val$installRequestSource:Ljava/lang/String;

.field final synthetic val$skipHorizon:Z


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 5

    .prologue
    .line 243
    invoke-static {}, Lcom/oculus/coreapps/CoreAppManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to fetch MinimumAppVersion: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    iget-object v0, p0, Lcom/oculus/coreapps/CoreAppManager$3;->this$0:Lcom/oculus/coreapps/CoreAppManager;

    invoke-static {v0, p1}, Lcom/oculus/coreapps/CoreAppManager;->access$700(Lcom/oculus/coreapps/CoreAppManager;Lcom/oculus/http/core/base/ApiError;)V

    .line 245
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/common/MinimumAppVersion;)V
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/oculus/coreapps/CoreAppManager$3;->this$0:Lcom/oculus/coreapps/CoreAppManager;

    iget-object v1, p1, Lcom/oculus/horizon/api/common/MinimumAppVersion;->required_versions:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/oculus/coreapps/CoreAppManager$3;->val$skipHorizon:Z

    invoke-virtual {v0, v1, v2}, Lcom/oculus/coreapps/CoreAppManager;->setCoreApps(Ljava/util/List;Z)V

    .line 238
    iget-object v0, p0, Lcom/oculus/coreapps/CoreAppManager$3;->this$0:Lcom/oculus/coreapps/CoreAppManager;

    iget-object v1, p0, Lcom/oculus/coreapps/CoreAppManager$3;->val$installRequestSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/coreapps/CoreAppManager;->installOrUpdateRequiredApps(Ljava/lang/String;)Lbolts/Task;

    .line 239
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 234
    check-cast p1, Lcom/oculus/horizon/api/common/MinimumAppVersion;

    invoke-virtual {p0, p1}, Lcom/oculus/coreapps/CoreAppManager$3;->onResponse(Lcom/oculus/horizon/api/common/MinimumAppVersion;)V

    return-void
.end method
