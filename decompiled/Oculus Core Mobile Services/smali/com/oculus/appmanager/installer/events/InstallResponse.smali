.class public Lcom/oculus/appmanager/installer/events/InstallResponse;
.super Ljava/lang/Object;
.source "InstallResponse.java"


# instance fields
.field private final mErrorMsg:Ljava/lang/String;

.field private mInstallerResult:Lcom/oculus/appmanager/info/model/InstallerResult;

.field private final mPackageName:Ljava/lang/String;

.field private final mSuccess:Z

.field private final mUpdateId:J

.field private final mVersionCode:I

.field private final misUpdate:Z


# direct methods
.method public constructor <init>(JZZLjava/lang/String;ILjava/lang/String;Lcom/oculus/appmanager/info/model/InstallerResult;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/oculus/appmanager/installer/events/InstallResponse;->mUpdateId:J

    .line 26
    iput-boolean p3, p0, Lcom/oculus/appmanager/installer/events/InstallResponse;->mSuccess:Z

    .line 27
    iput-boolean p4, p0, Lcom/oculus/appmanager/installer/events/InstallResponse;->misUpdate:Z

    .line 28
    iput-object p5, p0, Lcom/oculus/appmanager/installer/events/InstallResponse;->mPackageName:Ljava/lang/String;

    .line 29
    iput p6, p0, Lcom/oculus/appmanager/installer/events/InstallResponse;->mVersionCode:I

    .line 30
    iput-object p7, p0, Lcom/oculus/appmanager/installer/events/InstallResponse;->mErrorMsg:Ljava/lang/String;

    .line 31
    iput-object p8, p0, Lcom/oculus/appmanager/installer/events/InstallResponse;->mInstallerResult:Lcom/oculus/appmanager/info/model/InstallerResult;

    .line 32
    return-void
.end method


# virtual methods
.method public getInstallerResult()Lcom/oculus/appmanager/info/model/InstallerResult;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/oculus/appmanager/installer/events/InstallResponse;->mInstallerResult:Lcom/oculus/appmanager/info/model/InstallerResult;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oculus/appmanager/installer/events/InstallResponse;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateId()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/oculus/appmanager/installer/events/InstallResponse;->mUpdateId:J

    return-wide v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/oculus/appmanager/installer/events/InstallResponse;->mVersionCode:I

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/oculus/appmanager/installer/events/InstallResponse;->mSuccess:Z

    return v0
.end method

.method public isUpdate()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/oculus/appmanager/installer/events/InstallResponse;->misUpdate:Z

    return v0
.end method
