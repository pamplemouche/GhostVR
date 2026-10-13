.class Lcom/oculus/autoupdates/AutoUpdatesManager$2;
.super Ljava/lang/Object;
.source "AutoUpdatesManager.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/autoupdates/AutoUpdatesManager;->onInstallResponse(Lcom/oculus/appmanager/installer/events/InstallResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/autoupdates/AutoUpdatesManager;

.field final synthetic val$installResponse:Lcom/oculus/appmanager/installer/events/InstallResponse;


# direct methods
.method constructor <init>(Lcom/oculus/autoupdates/AutoUpdatesManager;Lcom/oculus/appmanager/installer/events/InstallResponse;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/oculus/autoupdates/AutoUpdatesManager$2;->this$0:Lcom/oculus/autoupdates/AutoUpdatesManager;

    iput-object p2, p0, Lcom/oculus/autoupdates/AutoUpdatesManager$2;->val$installResponse:Lcom/oculus/appmanager/installer/events/InstallResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 240
    instance-of v0, p1, Landroid/database/sqlite/SQLiteConstraintException;

    if-eqz v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 244
    :cond_0
    const-string v0, "AutoUpdatesManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to record auto-update failure in db for "

    .line 247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "packageName="

    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/autoupdates/AutoUpdatesManager$2;->val$installResponse:Lcom/oculus/appmanager/installer/events/InstallResponse;

    .line 249
    invoke-virtual {v2}, Lcom/oculus/appmanager/installer/events/InstallResponse;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " versionCode="

    .line 250
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/autoupdates/AutoUpdatesManager$2;->val$installResponse:Lcom/oculus/appmanager/installer/events/InstallResponse;

    .line 251
    invoke-virtual {v2}, Lcom/oculus/appmanager/installer/events/InstallResponse;->getVersionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " throwable"

    .line 252
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 253
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 254
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-static {v0, v1}, Lcom/oculus/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 231
    const-string v0, "AutoUpdatesManager"

    const-string/jumbo v1, "recorded auto-update failure in db for %s:%d"

    iget-object v2, p0, Lcom/oculus/autoupdates/AutoUpdatesManager$2;->val$installResponse:Lcom/oculus/appmanager/installer/events/InstallResponse;

    .line 234
    invoke-virtual {v2}, Lcom/oculus/appmanager/installer/events/InstallResponse;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/autoupdates/AutoUpdatesManager$2;->val$installResponse:Lcom/oculus/appmanager/installer/events/InstallResponse;

    .line 235
    invoke-virtual {v3}, Lcom/oculus/appmanager/installer/events/InstallResponse;->getVersionCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 231
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 236
    return-void
.end method
