.class Lcom/oculus/installer/DownloadAndInstallApi$5;
.super Ljava/lang/Object;
.source "DownloadAndInstallApi.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/installer/DownloadAndInstallApi;->downloadAndInstallAsync(Lcom/oculus/appmanager/model/UpdateConfig;Lcom/oculus/appmanager/model/UpdateConfig;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)Lbolts/Task;
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
        "Lcom/oculus/appmanager/info/model/InstallerResult;",
        "Lcom/oculus/appmanager/info/model/InstallerResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/installer/DownloadAndInstallApi;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/installer/DownloadAndInstallApi;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/oculus/installer/DownloadAndInstallApi$5;->this$0:Lcom/oculus/installer/DownloadAndInstallApi;

    iput-object p2, p0, Lcom/oculus/installer/DownloadAndInstallApi$5;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lcom/oculus/appmanager/info/model/InstallerResult;
    .locals 2
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.WRITE_EXTERNAL_STORAGE"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/oculus/appmanager/info/model/InstallerResult;",
            ">;)",
            "Lcom/oculus/appmanager/info/model/InstallerResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 528
    iget-object v0, p0, Lcom/oculus/installer/DownloadAndInstallApi$5;->this$0:Lcom/oculus/installer/DownloadAndInstallApi;

    iget-object v1, p0, Lcom/oculus/installer/DownloadAndInstallApi$5;->val$packageName:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/oculus/installer/DownloadAndInstallApi;->access$800(Lcom/oculus/installer/DownloadAndInstallApi;Lbolts/Task;Ljava/lang/String;)Lcom/oculus/appmanager/info/model/InstallerResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.WRITE_EXTERNAL_STORAGE"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 524
    invoke-virtual {p0, p1}, Lcom/oculus/installer/DownloadAndInstallApi$5;->then(Lbolts/Task;)Lcom/oculus/appmanager/info/model/InstallerResult;

    move-result-object v0

    return-object v0
.end method
