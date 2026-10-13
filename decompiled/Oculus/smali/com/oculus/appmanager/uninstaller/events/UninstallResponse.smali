.class public Lcom/oculus/appmanager/uninstaller/events/UninstallResponse;
.super Ljava/lang/Object;
.source "UninstallResponse.java"


# instance fields
.field public final installerResultError:Lcom/oculus/appmanager/info/model/InstallerResultError;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final packageName:Ljava/lang/String;

.field public final resultReceiver:Landroid/os/ResultReceiver;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final success:Z


# direct methods
.method private constructor <init>(ZLjava/lang/String;Lcom/oculus/appmanager/info/model/InstallerResultError;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p3    # Lcom/oculus/appmanager/info/model/InstallerResultError;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/os/ResultReceiver;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean p1, p0, Lcom/oculus/appmanager/uninstaller/events/UninstallResponse;->success:Z

    .line 33
    iput-object p2, p0, Lcom/oculus/appmanager/uninstaller/events/UninstallResponse;->packageName:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/oculus/appmanager/uninstaller/events/UninstallResponse;->installerResultError:Lcom/oculus/appmanager/info/model/InstallerResultError;

    .line 35
    iput-object p4, p0, Lcom/oculus/appmanager/uninstaller/events/UninstallResponse;->resultReceiver:Landroid/os/ResultReceiver;

    .line 36
    return-void
.end method

.method public static failure(Ljava/lang/String;Lcom/oculus/appmanager/info/model/InstallerResultError;Landroid/os/ResultReceiver;)Lcom/oculus/appmanager/uninstaller/events/UninstallResponse;
    .locals 2
    .param p2    # Landroid/os/ResultReceiver;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 24
    new-instance v0, Lcom/oculus/appmanager/uninstaller/events/UninstallResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/oculus/appmanager/uninstaller/events/UninstallResponse;-><init>(ZLjava/lang/String;Lcom/oculus/appmanager/info/model/InstallerResultError;Landroid/os/ResultReceiver;)V

    return-object v0
.end method

.method public static success(Ljava/lang/String;Landroid/os/ResultReceiver;)Lcom/oculus/appmanager/uninstaller/events/UninstallResponse;
    .locals 3
    .param p1    # Landroid/os/ResultReceiver;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 17
    new-instance v0, Lcom/oculus/appmanager/uninstaller/events/UninstallResponse;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/oculus/appmanager/uninstaller/events/UninstallResponse;-><init>(ZLjava/lang/String;Lcom/oculus/appmanager/info/model/InstallerResultError;Landroid/os/ResultReceiver;)V

    return-object v0
.end method
