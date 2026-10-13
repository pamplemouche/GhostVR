.class public Lcom/facebook/oxygen/sdk/status/impl/AppManagerInfoProvider;
.super Ljava/lang/Object;
.source "AppManagerInfoProvider.java"


# instance fields
.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/facebook/oxygen/sdk/status/impl/AppManagerInfoProvider;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 22
    return-void
.end method


# virtual methods
.method getApiLevel(Landroid/content/pm/PackageInfo;)I
    .locals 1

    .prologue
    .line 71
    invoke-static {p1}, Lcom/facebook/oxygen/sdk/app/appmanager/apilevel/AppManagerApiLevels;->getApiLevel(Landroid/content/pm/PackageInfo;)I

    move-result v0

    return v0
.end method

.method public getAppManagerInfo()Lcom/facebook/oxygen/sdk/status/AppManagerInfo;
    .locals 10
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 28
    const/16 v0, 0xc0

    .line 29
    :try_start_0
    iget-object v2, p0, Lcom/facebook/oxygen/sdk/status/impl/AppManagerInfoProvider;->mPackageManager:Landroid/content/pm/PackageManager;

    sget-object v3, Lcom/facebook/oxygen/sdk/common/PreloadSdkConstants;->APP_MANAGER_PACKAGE_NAME:Ljava/lang/String;

    .line 30
    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 35
    invoke-static {v9}, Lcom/facebook/oxygen/sdk/status/impl/PackageInfoUtil;->detectOrigin$$CLONE(Landroid/content/pm/PackageInfo;)Ljava/lang/Integer;

    move-result-object v4

    .line 36
    invoke-virtual {p0, v9}, Lcom/facebook/oxygen/sdk/status/impl/AppManagerInfoProvider;->getAppManagerType(Landroid/content/pm/PackageInfo;)Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;

    move-result-object v5

    .line 37
    invoke-virtual {p0, v9}, Lcom/facebook/oxygen/sdk/status/impl/AppManagerInfoProvider;->getApiLevel(Landroid/content/pm/PackageInfo;)I

    move-result v8

    .line 39
    new-instance v0, Lcom/facebook/oxygen/sdk/status/AppManagerInfo;

    check-cast v1, Lcom/facebook/annotationprocessors/transformer/api/StubberErasureParameter;

    iget-object v2, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iget v6, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v7, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-direct/range {v0 .. v9}, Lcom/facebook/oxygen/sdk/status/AppManagerInfo;-><init>(Lcom/facebook/annotationprocessors/transformer/api/StubberErasureParameter;Ljava/lang/String;ZLjava/lang/Integer;Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;ILjava/lang/String;II)V

    :goto_0
    return-object v0

    .line 31
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 32
    goto :goto_0
.end method

.method getAppManagerType(Landroid/content/pm/PackageInfo;)Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 53
    :cond_0
    sget-object v0, Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;->APP_MANAGER_UNKNOWN_SIGN:Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;

    .line 66
    :goto_0
    return-object v0

    .line 56
    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 58
    sget-object v1, Lcom/facebook/oxygen/sdk/common/PreloadSdkConstants;->PRELOAD_SDK_OLD_SIGNATURE:Landroid/content/pm/Signature;

    invoke-virtual {v1, v0}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    sget-object v0, Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;->APP_MANAGER_OLD_SIGN:Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;

    goto :goto_0

    .line 62
    :cond_2
    sget-object v1, Lcom/facebook/oxygen/sdk/common/PreloadSdkConstants;->PRELOAD_SDK_NEW_SIGNATURE:Landroid/content/pm/Signature;

    invoke-virtual {v1, v0}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    sget-object v0, Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;->APP_MANAGER_NEW_SIGN:Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;

    goto :goto_0

    .line 66
    :cond_3
    sget-object v0, Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;->APP_MANAGER_UNKNOWN_SIGN:Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;

    goto :goto_0
.end method
