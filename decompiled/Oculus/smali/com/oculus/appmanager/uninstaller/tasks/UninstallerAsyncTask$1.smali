.class Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$1;
.super Ljava/lang/Object;
.source "UninstallerAsyncTask.java"

# interfaces
.implements Lcom/oculus/common/packagescache/PackagesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask;->createNewUninstallPackageListener()Lcom/oculus/common/packagescache/PackagesListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask;


# direct methods
.method constructor <init>(Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$1;->this$0:Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageChanged(Lcom/oculus/common/packagescache/PackagesListener$PackageAction;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 356
    sget-object v0, Lcom/oculus/common/packagescache/PackagesListener$PackageAction;->REMOVED:Lcom/oculus/common/packagescache/PackagesListener$PackageAction;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$1;->this$0:Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask;

    invoke-static {v0}, Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask;->access$000(Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$1;->this$0:Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask;

    invoke-static {v0}, Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask;->access$100(Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask;)Lcom/oculus/common/packagescache/PackagesCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oculus/common/packagescache/PackagesCache;->removeListener(Lcom/oculus/common/packagescache/PackagesListener;)V

    .line 358
    invoke-static {}, Lcom/oculus/appmanager/uninstaller/events/UninstallerEventBus;->getInstance()Lcom/oculus/appmanager/uninstaller/events/UninstallerEventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$1;->this$0:Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask;

    .line 359
    invoke-static {v1}, Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask;->access$000(Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$1;->this$0:Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask;

    invoke-static {v2}, Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask;->access$200(Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask;)Landroid/os/ResultReceiver;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oculus/appmanager/uninstaller/events/UninstallResponse;->success(Ljava/lang/String;Landroid/os/ResultReceiver;)Lcom/oculus/appmanager/uninstaller/events/UninstallResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/appmanager/uninstaller/events/UninstallerEventBus;->post(Ljava/lang/Object;)V

    .line 361
    :cond_0
    return-void
.end method
