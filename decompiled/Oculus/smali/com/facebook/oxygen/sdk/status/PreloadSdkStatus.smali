.class public Lcom/facebook/oxygen/sdk/status/PreloadSdkStatus;
.super Ljava/lang/Object;
.source "PreloadSdkStatus.java"


# instance fields
.field private final mAppManagerInfoProvider:Lcom/facebook/oxygen/sdk/status/impl/AppManagerInfoProvider;

.field private final mDeviceOwnerInstallerInfoProvider:Lcom/facebook/oxygen/sdk/status/impl/DeviceOwnerInstallerInfoProvider;

.field private final mFacebookInstallerInfoProvider:Lcom/facebook/oxygen/sdk/status/impl/FacebookInstallerInfoProvider;

.field private final mFacebookServicesInfoProvider:Lcom/facebook/oxygen/sdk/status/impl/FacebookServicesInfoProvider;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPreloadSdkInfoProvider:Lcom/facebook/oxygen/sdk/status/impl/PreloadSdkInfoProvider;

.field private final mTritiumInstallerInfoProvider:Lcom/facebook/oxygen/sdk/status/impl/TritiumInstallerInfoProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/facebook/oxygen/sdk/status/PreloadSdkStatus;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 36
    new-instance v0, Lcom/facebook/oxygen/sdk/status/impl/FacebookInstallerInfoProvider;

    iget-object v1, p0, Lcom/facebook/oxygen/sdk/status/PreloadSdkStatus;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, v1}, Lcom/facebook/oxygen/sdk/status/impl/FacebookInstallerInfoProvider;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/facebook/oxygen/sdk/status/PreloadSdkStatus;->mFacebookInstallerInfoProvider:Lcom/facebook/oxygen/sdk/status/impl/FacebookInstallerInfoProvider;

    .line 37
    new-instance v0, Lcom/facebook/oxygen/sdk/status/impl/TritiumInstallerInfoProvider;

    iget-object v1, p0, Lcom/facebook/oxygen/sdk/status/PreloadSdkStatus;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, v1}, Lcom/facebook/oxygen/sdk/status/impl/TritiumInstallerInfoProvider;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/facebook/oxygen/sdk/status/PreloadSdkStatus;->mTritiumInstallerInfoProvider:Lcom/facebook/oxygen/sdk/status/impl/TritiumInstallerInfoProvider;

    .line 38
    new-instance v0, Lcom/facebook/oxygen/sdk/status/impl/DeviceOwnerInstallerInfoProvider;

    iget-object v1, p0, Lcom/facebook/oxygen/sdk/status/PreloadSdkStatus;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, p1, v1}, Lcom/facebook/oxygen/sdk/status/impl/DeviceOwnerInstallerInfoProvider;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/facebook/oxygen/sdk/status/PreloadSdkStatus;->mDeviceOwnerInstallerInfoProvider:Lcom/facebook/oxygen/sdk/status/impl/DeviceOwnerInstallerInfoProvider;

    .line 40
    new-instance v0, Lcom/facebook/oxygen/sdk/status/impl/AppManagerInfoProvider;

    iget-object v1, p0, Lcom/facebook/oxygen/sdk/status/PreloadSdkStatus;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, v1}, Lcom/facebook/oxygen/sdk/status/impl/AppManagerInfoProvider;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/facebook/oxygen/sdk/status/PreloadSdkStatus;->mAppManagerInfoProvider:Lcom/facebook/oxygen/sdk/status/impl/AppManagerInfoProvider;

    .line 41
    new-instance v0, Lcom/facebook/oxygen/sdk/status/impl/FacebookServicesInfoProvider;

    iget-object v1, p0, Lcom/facebook/oxygen/sdk/status/PreloadSdkStatus;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, p1, v1}, Lcom/facebook/oxygen/sdk/status/impl/FacebookServicesInfoProvider;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/facebook/oxygen/sdk/status/PreloadSdkStatus;->mFacebookServicesInfoProvider:Lcom/facebook/oxygen/sdk/status/impl/FacebookServicesInfoProvider;

    .line 42
    new-instance v0, Lcom/facebook/oxygen/sdk/status/impl/PreloadSdkInfoProvider;

    invoke-direct {v0}, Lcom/facebook/oxygen/sdk/status/impl/PreloadSdkInfoProvider;-><init>()V

    iput-object v0, p0, Lcom/facebook/oxygen/sdk/status/PreloadSdkStatus;->mPreloadSdkInfoProvider:Lcom/facebook/oxygen/sdk/status/impl/PreloadSdkInfoProvider;

    .line 43
    return-void
.end method


# virtual methods
.method public checkAppManagerApiLevel(I)Z
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/facebook/oxygen/sdk/status/PreloadSdkStatus;->getAppManagerInfo()Lcom/facebook/oxygen/sdk/status/AppManagerInfo;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0, p1}, Lcom/facebook/oxygen/sdk/status/AppManagerInfo;->checkApiLevel(I)Z

    move-result v0

    .line 78
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppManagerInfo()Lcom/facebook/oxygen/sdk/status/AppManagerInfo;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/oxygen/sdk/status/PreloadSdkStatus;->mAppManagerInfoProvider:Lcom/facebook/oxygen/sdk/status/impl/AppManagerInfoProvider;

    invoke-virtual {v0}, Lcom/facebook/oxygen/sdk/status/impl/AppManagerInfoProvider;->getAppManagerInfo()Lcom/facebook/oxygen/sdk/status/AppManagerInfo;

    move-result-object v0

    return-object v0
.end method
