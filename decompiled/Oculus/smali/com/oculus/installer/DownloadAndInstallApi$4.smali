.class Lcom/oculus/installer/DownloadAndInstallApi$4;
.super Ljava/lang/Object;
.source "DownloadAndInstallApi.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/installer/DownloadAndInstallApi;->installPackage(Lcom/oculus/installer/DownloadAndInstallApi$UrlFetchResult;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)Lbolts/Task;
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
        "Lcom/oculus/appmanager/info/model/InstallerResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/installer/DownloadAndInstallApi;

.field final synthetic val$taskCompletionSource:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/oculus/installer/DownloadAndInstallApi;Lbolts/TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/oculus/installer/DownloadAndInstallApi$4;->this$0:Lcom/oculus/installer/DownloadAndInstallApi;

    iput-object p2, p0, Lcom/oculus/installer/DownloadAndInstallApi$4;->val$taskCompletionSource:Lbolts/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/oculus/installer/DownloadAndInstallApi$4;->val$taskCompletionSource:Lbolts/TaskCompletionSource;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 493
    return-void
.end method

.method public onSuccess(Lcom/oculus/appmanager/info/model/InstallerResult;)V
    .locals 1
    .param p1    # Lcom/oculus/appmanager/info/model/InstallerResult;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 487
    iget-object v0, p0, Lcom/oculus/installer/DownloadAndInstallApi$4;->val$taskCompletionSource:Lbolts/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 488
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 484
    check-cast p1, Lcom/oculus/appmanager/info/model/InstallerResult;

    invoke-virtual {p0, p1}, Lcom/oculus/installer/DownloadAndInstallApi$4;->onSuccess(Lcom/oculus/appmanager/info/model/InstallerResult;)V

    return-void
.end method
