.class public Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/TosAcceptedSetter;
.super Ljava/lang/Object;
.source "TosAcceptedSetter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isAppManagerPresent(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 58
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/facebook/oxygen/sdk/common/PreloadSdkConstants;->APP_MANAGER_PACKAGE_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 59
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setTosAccepted(Landroid/content/Context;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/AppmanagerRemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 33
    invoke-static {p0}, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/TosAcceptedSetter;->isAppManagerPresent(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 39
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/TosAcceptedFlag;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    .line 42
    if-eq v4, v5, :cond_0

    .line 43
    invoke-virtual {v0, v3, v5, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 48
    new-instance v0, Lcom/facebook/oxygen/sdk/status/PreloadSdkStatus;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/facebook/oxygen/sdk/status/PreloadSdkStatus;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    .line 49
    if-eqz p1, :cond_0

    const/4 v3, 0x2

    .line 50
    invoke-virtual {v0, v3}, Lcom/facebook/oxygen/sdk/status/PreloadSdkStatus;->checkAppManagerApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {v2, v1, v5}, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->pushTosAcceptedSetting(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0
.end method
