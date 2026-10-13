.class public Lcom/facebook/rti/common/util/RtiBuildInfoUtil;
.super Ljava/lang/Object;
.source "RtiBuildInfoUtil.java"


# static fields
.field private static INSTANCE:Lcom/facebook/rti/common/util/RtiBuildInfoUtil;


# instance fields
.field private final mBuildNumber:Ljava/lang/String;

.field private final mIsDebuggable:Z

.field private final mVersionName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->NO_REPORT:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    .line 28
    invoke-static {p1, v0, v1, v2}, Lcom/facebook/rti/common/util/PackageInfoUtil;->getFbnsPackageInfo(Landroid/content/Context;Ljava/lang/String;ILcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;)Lcom/facebook/rti/common/util/FbnsPackageInfo;

    move-result-object v2

    .line 30
    iget-object v0, v2, Lcom/facebook/rti/common/util/FbnsPackageInfo;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_2

    .line 31
    iget-object v0, v2, Lcom/facebook/rti/common/util/FbnsPackageInfo;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 32
    invoke-static {v0}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "unknown"

    :goto_0
    iput-object v0, p0, Lcom/facebook/rti/common/util/RtiBuildInfoUtil;->mVersionName:Ljava/lang/String;

    .line 35
    iget-object v0, v2, Lcom/facebook/rti/common/util/FbnsPackageInfo;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-gtz v0, :cond_1

    const-string v0, "1"

    .line 38
    :goto_1
    iput-object v0, p0, Lcom/facebook/rti/common/util/RtiBuildInfoUtil;->mBuildNumber:Ljava/lang/String;

    .line 43
    :goto_2
    sget-object v0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->NO_REPORT:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    .line 44
    invoke-static {p1, v0}, Lcom/facebook/rti/common/util/PackageInfoUtil;->getApplicationInfo(Landroid/content/Context;Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_3

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/facebook/rti/common/util/RtiBuildInfoUtil;->mIsDebuggable:Z

    .line 48
    return-void

    .line 32
    :cond_0
    iget-object v0, v2, Lcom/facebook/rti/common/util/FbnsPackageInfo;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, v2, Lcom/facebook/rti/common/util/FbnsPackageInfo;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 38
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 40
    :cond_2
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/facebook/rti/common/util/RtiBuildInfoUtil;->mVersionName:Ljava/lang/String;

    .line 41
    const-string v0, "1"

    iput-object v0, p0, Lcom/facebook/rti/common/util/RtiBuildInfoUtil;->mBuildNumber:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move v0, v1

    .line 45
    goto :goto_3
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/facebook/rti/common/util/RtiBuildInfoUtil;
    .locals 2

    .prologue
    .line 20
    const-class v1, Lcom/facebook/rti/common/util/RtiBuildInfoUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/rti/common/util/RtiBuildInfoUtil;->INSTANCE:Lcom/facebook/rti/common/util/RtiBuildInfoUtil;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/facebook/rti/common/util/RtiBuildInfoUtil;

    invoke-direct {v0, p0}, Lcom/facebook/rti/common/util/RtiBuildInfoUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/rti/common/util/RtiBuildInfoUtil;->INSTANCE:Lcom/facebook/rti/common/util/RtiBuildInfoUtil;

    .line 23
    :cond_0
    sget-object v0, Lcom/facebook/rti/common/util/RtiBuildInfoUtil;->INSTANCE:Lcom/facebook/rti/common/util/RtiBuildInfoUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getBuildNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/rti/common/util/RtiBuildInfoUtil;->mBuildNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/rti/common/util/RtiBuildInfoUtil;->mVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public isProdBuild()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/facebook/rti/common/util/RtiBuildInfoUtil;->mIsDebuggable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
