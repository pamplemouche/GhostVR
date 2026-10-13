.class Lcom/oculus/appmanager/assets/InstallWatcher$1;
.super Ljava/lang/Object;
.source "InstallWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/appmanager/assets/InstallWatcher;->onInstall(Lcom/oculus/appmanager/info/model/InstallerResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/appmanager/assets/InstallWatcher;

.field final synthetic val$installerResult:Lcom/oculus/appmanager/info/model/InstallerResult;


# direct methods
.method constructor <init>(Lcom/oculus/appmanager/assets/InstallWatcher;Lcom/oculus/appmanager/info/model/InstallerResult;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/oculus/appmanager/assets/InstallWatcher$1;->this$0:Lcom/oculus/appmanager/assets/InstallWatcher;

    iput-object p2, p0, Lcom/oculus/appmanager/assets/InstallWatcher$1;->val$installerResult:Lcom/oculus/appmanager/info/model/InstallerResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oculus/appmanager/assets/InstallWatcher$1;->this$0:Lcom/oculus/appmanager/assets/InstallWatcher;

    invoke-static {v0}, Lcom/oculus/appmanager/assets/InstallWatcher;->access$000(Lcom/oculus/appmanager/assets/InstallWatcher;)Lcom/oculus/appmanager/assets/Assets;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/appmanager/assets/InstallWatcher$1;->val$installerResult:Lcom/oculus/appmanager/info/model/InstallerResult;

    iget-object v1, v1, Lcom/oculus/appmanager/info/model/InstallerResult;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/appmanager/assets/Assets;->removeAssets(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/oculus/appmanager/assets/InstallWatcher$1;->this$0:Lcom/oculus/appmanager/assets/InstallWatcher;

    iget-object v1, p0, Lcom/oculus/appmanager/assets/InstallWatcher$1;->val$installerResult:Lcom/oculus/appmanager/info/model/InstallerResult;

    iget-object v1, v1, Lcom/oculus/appmanager/info/model/InstallerResult;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oculus/appmanager/assets/InstallWatcher;->access$100(Lcom/oculus/appmanager/assets/InstallWatcher;Ljava/lang/String;)V

    .line 57
    return-void
.end method
