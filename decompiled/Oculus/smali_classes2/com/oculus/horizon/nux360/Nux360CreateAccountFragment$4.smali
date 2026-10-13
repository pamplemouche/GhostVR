.class Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment$4;
.super Ljava/lang/Object;
.source "Nux360CreateAccountFragment.java"

# interfaces
.implements Lcom/oculus/coreapps/CoreAppManager$CoreAppsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment$4;->this$0:Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppProgress(Lcom/oculus/coreapps/CoreApp;)V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public onCompletedInstalls([Lcom/oculus/coreapps/CoreApp;)V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment$4;->this$0:Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->access$400(Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;)Lcom/oculus/coreapps/CoreAppManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oculus/coreapps/CoreAppManager;->removeCoreAppsListener(Lcom/oculus/coreapps/CoreAppManager$CoreAppsListener;)V

    .line 195
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment$4;->this$0:Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->access$500(Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;)Lcom/oculus/horizon/nux360/Nux360FirstPartyAppsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/nux360/Nux360FirstPartyAppsController;->downloadFirstPartyApps()V

    .line 196
    return-void
.end method

.method public onFetchError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment$4;->this$0:Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->access$400(Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;)Lcom/oculus/coreapps/CoreAppManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oculus/coreapps/CoreAppManager;->removeCoreAppsListener(Lcom/oculus/coreapps/CoreAppManager$CoreAppsListener;)V

    .line 201
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment$4;->this$0:Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->access$500(Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;)Lcom/oculus/horizon/nux360/Nux360FirstPartyAppsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/nux360/Nux360FirstPartyAppsController;->downloadFirstPartyApps()V

    .line 202
    return-void
.end method
