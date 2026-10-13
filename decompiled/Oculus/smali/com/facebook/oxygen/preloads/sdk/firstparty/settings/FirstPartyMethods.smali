.class public Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartyMethods;
.super Ljava/lang/Object;
.source "FirstPartyMethods.java"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mPreloadSdkStatus:Lcom/facebook/oxygen/sdk/status/PreloadSdkStatus;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/facebook/oxygen/sdk/status/PreloadSdkStatus;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/facebook/oxygen/sdk/status/PreloadSdkStatus;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartyMethods;-><init>(Lcom/facebook/oxygen/sdk/status/PreloadSdkStatus;Landroid/content/ContentResolver;)V

    .line 26
    return-void
.end method

.method constructor <init>(Lcom/facebook/oxygen/sdk/status/PreloadSdkStatus;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartyMethods;->mPreloadSdkStatus:Lcom/facebook/oxygen/sdk/status/PreloadSdkStatus;

    .line 30
    iput-object p2, p0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartyMethods;->mContentResolver:Landroid/content/ContentResolver;

    .line 31
    return-void
.end method

.method private makeCall(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/AppmanagerRemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 89
    :try_start_0
    iget-object v2, p0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartyMethods;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract;->URI:Landroid/net/Uri;

    .line 90
    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 91
    if-nez v1, :cond_1

    .line 105
    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    :cond_0
    :goto_0
    return v0

    .line 95
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, p1, v0, p2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 96
    if-nez v0, :cond_3

    .line 97
    new-instance v0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/AppmanagerRemoteException;

    const/4 v2, 0x2

    const-string v3, "No results were returned."

    invoke-direct {v0, v2, v3}, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/AppmanagerRemoteException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    :try_start_2
    new-instance v2, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/AppmanagerRemoteException;

    const/4 v3, 0x0

    const-string v4, "Remote exception."

    invoke-direct {v2, v3, v4, v0}, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/AppmanagerRemoteException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 106
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    :cond_2
    throw v0

    .line 100
    :cond_3
    const/4 v0, 0x1

    .line 105
    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0
.end method


# virtual methods
.method public forceSyncCheck(Ljava/lang/String;JZ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/AppmanagerRemoteException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartyMethods;->mPreloadSdkStatus:Lcom/facebook/oxygen/sdk/status/PreloadSdkStatus;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/facebook/oxygen/sdk/status/PreloadSdkStatus;->checkAppManagerApiLevel(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 81
    :goto_0
    return v0

    .line 74
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    const-string/jumbo v1, "request_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v1, "force_max_delay"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 79
    const-string/jumbo v1, "wakeup_device"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 81
    const-string v1, "force_sync_check"

    invoke-direct {p0, v1, v0}, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartyMethods;->makeCall(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method
