.class public Lcom/facebook/oxygen/preloads/sdk/installer/contract/InstallerApiLevels;
.super Ljava/lang/Object;
.source "InstallerApiLevels.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkApiLevel(Landroid/content/pm/PackageManager;I)Z
    .locals 1

    .prologue
    .line 78
    invoke-static {p0}, Lcom/facebook/oxygen/preloads/sdk/installer/contract/InstallerApiLevels;->getApiLevel(Landroid/content/pm/PackageManager;)I

    move-result v0

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getApiLevel(Landroid/content/pm/PackageInfo;)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 100
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 103
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 104
    const-string v2, "com.facebook.system.api.level"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getApiLevel(Landroid/content/pm/PackageManager;)I
    .locals 2

    .prologue
    .line 84
    :try_start_0
    sget-object v0, Lcom/facebook/oxygen/sdk/common/PreloadSdkConstants;->INSTALLER_PACKAGE_NAME:Ljava/lang/String;

    const/16 v1, 0x80

    .line 85
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/facebook/oxygen/preloads/sdk/installer/contract/InstallerApiLevels;->getApiLevel(Landroid/content/pm/PackageInfo;)I

    move-result v0

    :goto_0
    return v0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    const/4 v0, -0x1

    goto :goto_0
.end method
