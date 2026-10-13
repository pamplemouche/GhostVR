.class Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment$2;
.super Ljava/lang/Object;
.source "UserRoadblockForceUpgradeFragment.java"

# interfaces
.implements Lcom/oculus/coreapps/CoreAppManager$CoreAppsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment$2;->this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppProgress(Lcom/oculus/coreapps/CoreApp;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment$2;->this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;

    invoke-static {v0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->access$300(Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;)V

    .line 123
    return-void
.end method

.method public onCompletedInstalls([Lcom/oculus/coreapps/CoreApp;)V
    .locals 4

    .prologue
    .line 98
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment$2;->this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;

    iget-object v0, v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->mCoreAppManager:Lcom/oculus/coreapps/CoreAppManager;

    invoke-virtual {v0, p0}, Lcom/oculus/coreapps/CoreAppManager;->removeCoreAppsListener(Lcom/oculus/coreapps/CoreAppManager$CoreAppsListener;)V

    .line 99
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment$2;->this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;

    invoke-static {v0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->access$200(Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;)V

    .line 100
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment$2;->this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->onRoadblockCompleted()V

    .line 104
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 105
    iget-object v2, v2, Lcom/oculus/coreapps/CoreApp;->entry:Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->package_name:Ljava/lang/String;

    const-string v3, "com.oculus.vrshell.home"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment$2;->this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;

    iget-object v2, v2, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->mApplicationContext:Landroid/content/Context;

    sget-object v3, Lcom/oculus/util/WakeupUtil$Action;->FETCH_CONFIG:Lcom/oculus/util/WakeupUtil$Action;

    invoke-static {v2, v3}, Lcom/oculus/util/WakeupUtil;->wakeupHomeForAction(Landroid/content/Context;Lcom/oculus/util/WakeupUtil$Action;)V

    .line 104
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_1
    return-void
.end method

.method public onFetchError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment$2;->this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;

    iget-object v0, v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->mCoreAppManager:Lcom/oculus/coreapps/CoreAppManager;

    invoke-virtual {v0, p0}, Lcom/oculus/coreapps/CoreAppManager;->removeCoreAppsListener(Lcom/oculus/coreapps/CoreAppManager$CoreAppsListener;)V

    .line 117
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment$2;->this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;

    invoke-static {v0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->access$200(Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;)V

    .line 118
    return-void
.end method
