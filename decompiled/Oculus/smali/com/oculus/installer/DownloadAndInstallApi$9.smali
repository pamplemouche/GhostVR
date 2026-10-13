.class Lcom/oculus/installer/DownloadAndInstallApi$9;
.super Ljava/lang/Object;
.source "DownloadAndInstallApi.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/installer/DownloadAndInstallApi;->downloadAndInstallAsync(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)Lbolts/Task;
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
        "Lcom/oculus/installer/DownloadAndInstallApi$UrlFetchResult;",
        "Lbolts/Task",
        "<",
        "Lcom/oculus/installer/DownloadAndInstallApi$UrlFetchResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/installer/DownloadAndInstallApi;


# direct methods
.method constructor <init>(Lcom/oculus/installer/DownloadAndInstallApi;)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lcom/oculus/installer/DownloadAndInstallApi$9;->this$0:Lcom/oculus/installer/DownloadAndInstallApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 2
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.WRITE_EXTERNAL_STORAGE"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/oculus/installer/DownloadAndInstallApi$UrlFetchResult;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Lcom/oculus/installer/DownloadAndInstallApi$UrlFetchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 552
    iget-object v1, p0, Lcom/oculus/installer/DownloadAndInstallApi$9;->this$0:Lcom/oculus/installer/DownloadAndInstallApi;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/installer/DownloadAndInstallApi$UrlFetchResult;

    invoke-static {v1, v0}, Lcom/oculus/installer/DownloadAndInstallApi;->access$1000(Lcom/oculus/installer/DownloadAndInstallApi;Lcom/oculus/installer/DownloadAndInstallApi$UrlFetchResult;)Lbolts/Task;

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
    .line 548
    invoke-virtual {p0, p1}, Lcom/oculus/installer/DownloadAndInstallApi$9;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
