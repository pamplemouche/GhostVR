.class public Lcom/oculus/installer/DownloadAndInstallApi$ExceptionWithInstallerResult;
.super Ljava/lang/RuntimeException;
.source "DownloadAndInstallApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/installer/DownloadAndInstallApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExceptionWithInstallerResult"
.end annotation


# instance fields
.field public final mAppId:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final mDisplayName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final mInstallerResult:Lcom/oculus/appmanager/info/model/InstallerResult;


# direct methods
.method public constructor <init>(Lcom/oculus/appmanager/info/model/InstallerResult;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception while preparing install: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/oculus/appmanager/info/model/InstallerResult;->error:Lcom/oculus/appmanager/info/model/InstallerResultError;

    invoke-virtual {v1}, Lcom/oculus/appmanager/info/model/InstallerResultError;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 652
    iput-object p1, p0, Lcom/oculus/installer/DownloadAndInstallApi$ExceptionWithInstallerResult;->mInstallerResult:Lcom/oculus/appmanager/info/model/InstallerResult;

    .line 653
    iput-object p2, p0, Lcom/oculus/installer/DownloadAndInstallApi$ExceptionWithInstallerResult;->mAppId:Ljava/lang/String;

    .line 654
    iput-object p3, p0, Lcom/oculus/installer/DownloadAndInstallApi$ExceptionWithInstallerResult;->mDisplayName:Ljava/lang/String;

    .line 655
    return-void
.end method

.method public static createException(Lcom/oculus/appmanager/info/model/InstallerResultError;Ljava/lang/String;J)Lcom/oculus/installer/DownloadAndInstallApi$ExceptionWithInstallerResult;
    .locals 6

    .prologue
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    move-wide v4, p2

    .line 669
    invoke-static/range {v0 .. v5}, Lcom/oculus/installer/DownloadAndInstallApi$ExceptionWithInstallerResult;->createException(Lcom/oculus/appmanager/info/model/InstallerResultError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/oculus/installer/DownloadAndInstallApi$ExceptionWithInstallerResult;

    move-result-object v0

    return-object v0
.end method

.method public static createException(Lcom/oculus/appmanager/info/model/InstallerResultError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/oculus/installer/DownloadAndInstallApi$ExceptionWithInstallerResult;
    .locals 2

    .prologue
    .line 663
    new-instance v0, Lcom/oculus/installer/DownloadAndInstallApi$ExceptionWithInstallerResult;

    .line 664
    invoke-static {p2, p4, p5, p0}, Lcom/oculus/appmanager/info/model/InstallerResult;->createForError(Ljava/lang/String;JLcom/oculus/appmanager/info/model/InstallerResultError;)Lcom/oculus/appmanager/info/model/InstallerResult;

    move-result-object v1

    invoke-direct {v0, v1, p1, p3}, Lcom/oculus/installer/DownloadAndInstallApi$ExceptionWithInstallerResult;-><init>(Lcom/oculus/appmanager/info/model/InstallerResult;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
