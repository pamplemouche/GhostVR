.class Lcom/oculus/config/updater/ConfigUpdater$2;
.super Ljava/lang/Object;
.source "ConfigUpdater.java"

# interfaces
.implements Lcom/oculus/config/updater/ConfigUpdater$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/config/updater/ConfigUpdater;->forceUpdateGksAsync()Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/config/updater/ConfigUpdater;

.field final synthetic val$tcs:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/oculus/config/updater/ConfigUpdater;Lbolts/TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/oculus/config/updater/ConfigUpdater$2;->this$0:Lcom/oculus/config/updater/ConfigUpdater;

    iput-object p2, p0, Lcom/oculus/config/updater/ConfigUpdater$2;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigUpdateComplete()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/oculus/config/updater/ConfigUpdater$2;->val$tcs:Lbolts/TaskCompletionSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 140
    return-void
.end method

.method public onConfigUpdateFailed(Lcom/oculus/http/core/base/ApiError;)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/oculus/config/updater/ConfigUpdater$2;->this$0:Lcom/oculus/config/updater/ConfigUpdater;

    invoke-static {v0}, Lcom/oculus/config/updater/ConfigUpdater;->access$100(Lcom/oculus/config/updater/ConfigUpdater;)Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;->logConfigUpdateFailed(Lcom/oculus/http/core/base/ApiError;)V

    .line 145
    iget-object v0, p0, Lcom/oculus/config/updater/ConfigUpdater$2;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 146
    return-void
.end method
