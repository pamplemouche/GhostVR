.class public Lcom/oculus/appmanager/installer/events/DownloadResponse;
.super Ljava/lang/Object;
.source "DownloadResponse.java"


# instance fields
.field private final mErrorCode:I

.field private mInstallerResult:Lcom/oculus/appmanager/info/model/InstallerResult;

.field private final mIsUpdate:Z

.field private final mPackageName:Ljava/lang/String;

.field private final mSuccess:Z

.field private final mUpdateId:J


# direct methods
.method public constructor <init>(JZZLjava/lang/String;ILcom/oculus/appmanager/info/model/InstallerResult;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p1, p0, Lcom/oculus/appmanager/installer/events/DownloadResponse;->mUpdateId:J

    .line 28
    iput-boolean p3, p0, Lcom/oculus/appmanager/installer/events/DownloadResponse;->mSuccess:Z

    .line 29
    iput-boolean p4, p0, Lcom/oculus/appmanager/installer/events/DownloadResponse;->mIsUpdate:Z

    .line 30
    iput-object p5, p0, Lcom/oculus/appmanager/installer/events/DownloadResponse;->mPackageName:Ljava/lang/String;

    .line 31
    iput p6, p0, Lcom/oculus/appmanager/installer/events/DownloadResponse;->mErrorCode:I

    .line 32
    iput-object p7, p0, Lcom/oculus/appmanager/installer/events/DownloadResponse;->mInstallerResult:Lcom/oculus/appmanager/info/model/InstallerResult;

    .line 33
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/oculus/appmanager/installer/events/DownloadResponse;->mErrorCode:I

    return v0
.end method

.method public getInstallerResult()Lcom/oculus/appmanager/info/model/InstallerResult;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oculus/appmanager/installer/events/DownloadResponse;->mInstallerResult:Lcom/oculus/appmanager/info/model/InstallerResult;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oculus/appmanager/installer/events/DownloadResponse;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateId()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/oculus/appmanager/installer/events/DownloadResponse;->mUpdateId:J

    return-wide v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/oculus/appmanager/installer/events/DownloadResponse;->mSuccess:Z

    return v0
.end method

.method public isUpdate()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/oculus/appmanager/installer/events/DownloadResponse;->mIsUpdate:Z

    return v0
.end method
