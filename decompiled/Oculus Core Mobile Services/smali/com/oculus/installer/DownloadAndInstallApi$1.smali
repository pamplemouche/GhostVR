.class Lcom/oculus/installer/DownloadAndInstallApi$1;
.super Ljava/lang/Object;
.source "DownloadAndInstallApi.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/installer/DownloadAndInstallApi;->checkBasicPreconditions(Ljava/lang/String;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
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
    .line 87
    iput-object p1, p0, Lcom/oculus/installer/DownloadAndInstallApi$1;->this$0:Lcom/oculus/installer/DownloadAndInstallApi;

    iput-object p2, p0, Lcom/oculus/installer/DownloadAndInstallApi$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/oculus/installer/DownloadAndInstallApi$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/installer/DownloadAndInstallApi$ExceptionWithInstallerResult;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/oculus/installer/DownloadAndInstallApi$1;->this$0:Lcom/oculus/installer/DownloadAndInstallApi;

    invoke-static {v0}, Lcom/oculus/installer/DownloadAndInstallApi;->access$000(Lcom/oculus/installer/DownloadAndInstallApi;)Lcom/oculus/appmanager/installer/util/InstallerServiceUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil;->isInstallerPackageEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/installer/DownloadAndInstallApi$1;->this$0:Lcom/oculus/installer/DownloadAndInstallApi;

    invoke-static {v0}, Lcom/oculus/installer/DownloadAndInstallApi;->access$100(Lcom/oculus/installer/DownloadAndInstallApi;)Lcom/oculus/debug/DebugMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/debug/DebugMode;->isDevBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    sget-object v0, Lcom/oculus/appmanager/info/model/InstallerResultError;->INSTALLER_DISABLED:Lcom/oculus/appmanager/info/model/InstallerResultError;

    iget-object v1, p0, Lcom/oculus/installer/DownloadAndInstallApi$1;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/installer/DownloadAndInstallApi$1;->this$0:Lcom/oculus/installer/DownloadAndInstallApi;

    .line 92
    invoke-static {v2}, Lcom/oculus/installer/DownloadAndInstallApi;->access$200(Lcom/oculus/installer/DownloadAndInstallApi;)Lcom/oculus/time/Clock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oculus/time/Clock;->now()J

    move-result-wide v2

    .line 91
    invoke-static {v0, v1, v2, v3}, Lcom/oculus/installer/DownloadAndInstallApi$ExceptionWithInstallerResult;->createException(Lcom/oculus/appmanager/info/model/InstallerResultError;Ljava/lang/String;J)Lcom/oculus/installer/DownloadAndInstallApi$ExceptionWithInstallerResult;

    move-result-object v0

    throw v0

    .line 94
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
