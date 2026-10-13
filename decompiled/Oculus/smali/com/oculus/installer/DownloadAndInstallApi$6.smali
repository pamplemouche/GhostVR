.class Lcom/oculus/installer/DownloadAndInstallApi$6;
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
        "Ljava/lang/Void;",
        "Lbolts/Task",
        "<",
        "Lcom/oculus/appmanager/info/model/InstallerResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/installer/DownloadAndInstallApi;

.field final synthetic val$callingPackage:Ljava/lang/String;

.field final synthetic val$fakeFetchResult:Lcom/oculus/installer/DownloadAndInstallApi$UrlFetchResult;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$requestOrigin:Lcom/oculus/appmanager/info/model/RequestOrigin;


# direct methods
.method constructor <init>(Lcom/oculus/installer/DownloadAndInstallApi;Lcom/oculus/installer/DownloadAndInstallApi$UrlFetchResult;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/oculus/installer/DownloadAndInstallApi$6;->this$0:Lcom/oculus/installer/DownloadAndInstallApi;

    iput-object p2, p0, Lcom/oculus/installer/DownloadAndInstallApi$6;->val$fakeFetchResult:Lcom/oculus/installer/DownloadAndInstallApi$UrlFetchResult;

    iput-object p3, p0, Lcom/oculus/installer/DownloadAndInstallApi$6;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/oculus/installer/DownloadAndInstallApi$6;->val$callingPackage:Ljava/lang/String;

    iput-object p5, p0, Lcom/oculus/installer/DownloadAndInstallApi$6;->val$requestOrigin:Lcom/oculus/appmanager/info/model/RequestOrigin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 5
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.WRITE_EXTERNAL_STORAGE"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Lcom/oculus/appmanager/info/model/InstallerResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 519
    iget-object v0, p0, Lcom/oculus/installer/DownloadAndInstallApi$6;->this$0:Lcom/oculus/installer/DownloadAndInstallApi;

    iget-object v1, p0, Lcom/oculus/installer/DownloadAndInstallApi$6;->val$fakeFetchResult:Lcom/oculus/installer/DownloadAndInstallApi$UrlFetchResult;

    iget-object v2, p0, Lcom/oculus/installer/DownloadAndInstallApi$6;->val$packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/installer/DownloadAndInstallApi$6;->val$callingPackage:Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/installer/DownloadAndInstallApi$6;->val$requestOrigin:Lcom/oculus/appmanager/info/model/RequestOrigin;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oculus/installer/DownloadAndInstallApi;->access$900(Lcom/oculus/installer/DownloadAndInstallApi;Lcom/oculus/installer/DownloadAndInstallApi$UrlFetchResult;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)Lbolts/Task;

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
    .line 515
    invoke-virtual {p0, p1}, Lcom/oculus/installer/DownloadAndInstallApi$6;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
