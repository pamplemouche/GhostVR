.class public Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerApi;
.super Ljava/lang/Object;
.source "InstallerApi.java"


# instance fields
.field private final mAuthority:Ljava/lang/String;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/ContentResolver;)V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerApi;->mAuthority:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerApi;->mUri:Landroid/net/Uri;

    .line 57
    iput-object p2, p0, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerApi;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 58
    iput-object p3, p0, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerApi;->mContentResolver:Landroid/content/ContentResolver;

    .line 59
    return-void
.end method

.method private acquireClient()Landroid/content/ContentProviderClient;
    .locals 4

    .prologue
    .line 556
    iget-object v0, p0, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerApi;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerApi;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 557
    if-nez v0, :cond_0

    .line 558
    sget-object v0, Lcom/facebook/oxygen/sdk/common/PreloadSdkConstants;->INSTALLER_PACKAGE_NAME:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerApi;->mAuthority:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerApi;->diagnoseProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 559
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to acquire provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerApi;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 563
    :cond_0
    return-object v0
.end method

.method private callMethod(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 506
    invoke-direct {p0}, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerApi;->acquireClient()Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 508
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v0, p2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 509
    invoke-static {v0}, Lcom/facebook/oxygen/preloads/sdk/installer/contract/InstallerContract;->getException(Landroid/os/Bundle;)Ljava/lang/Throwable;

    move-result-object v2

    .line 510
    if-eqz v2, :cond_0

    .line 511
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    throw v0

    :cond_0
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    return-object v0
.end method

.method private diagnoseProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 568
    :try_start_0
    iget-object v0, p0, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerApi;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x8

    .line 569
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 571
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_0

    .line 572
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    const-string v2, "Package %s is disabled."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v0, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 605
    :goto_0
    return-object v0

    .line 576
    :cond_0
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v0, :cond_4

    .line 577
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    array-length v6, v5

    move v2, v3

    :goto_1
    if-ge v2, v6, :cond_4

    aget-object v0, v5, v2

    .line 578
    iget-object v7, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 585
    :goto_2
    if-nez v0, :cond_2

    .line 586
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    const-string v2, "Provider %s not found in package %s with version %d."

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 591
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v6

    .line 586
    invoke-static {v0, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 577
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 594
    :cond_2
    iget-boolean v0, v0, Landroid/content/pm/ProviderInfo;->enabled:Z

    if-nez v0, :cond_3

    .line 595
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    const-string v2, "Provider %s is disabled in package %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v0, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 599
    :cond_3
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    const-string v2, "Package %s is present and enabled; provider %s is present and enabled."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {v0, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 604
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 605
    check-cast v0, Ljava/util/Locale;

    const-string v1, "Package %s is not present"

    new-array v2, v8, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method private writeFile(Landroid/net/Uri;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 520
    const/4 v2, 0x0

    .line 522
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    :try_start_1
    invoke-direct {p0, p1, v1}, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerApi;->writeStream(Landroid/net/Uri;Ljava/io/FileInputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 525
    invoke-static {v1, v3}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 527
    return-void

    .line 525
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v1, v3}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private writeStream(Landroid/net/Uri;Ljava/io/FileInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 540
    invoke-direct {p0}, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerApi;->acquireClient()Landroid/content/ContentProviderClient;

    move-result-object v4

    .line 545
    :try_start_0
    const-string v0, "rw"

    invoke-virtual {v4, p1, v0}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 546
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 547
    :try_start_2
    invoke-static {p2, v1}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 549
    invoke-static {v1, v5}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 550
    invoke-static {v3, v5}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 551
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->release()Z

    .line 553
    return-void

    .line 549
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v1, v5}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 550
    invoke-static {v2, v5}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 551
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->release()Z

    throw v0

    .line 549
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_0
.end method


# virtual methods
.method public acquireApkStagingUri()Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 148
    const-string v0, "acquire_apk_staging_uri"

    const/4 v1, 0x0

    .line 149
    invoke-direct {p0, v0, v1}, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerApi;->callMethod(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 151
    const-string v1, "apk_staging_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public cancelApkStagingUri(Landroid/net/Uri;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 173
    const-string v1, "apk_staging_uri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v1, "cancel_apk_staging_uri"

    invoke-direct {p0, v1, v0}, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerApi;->callMethod(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 175
    return-void
.end method

.method public checkApiLevel(I)Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerApi;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v0, p1}, Lcom/facebook/oxygen/preloads/sdk/installer/contract/InstallerApiLevels;->checkApiLevel(Landroid/content/pm/PackageManager;I)Z

    move-result v0

    return v0
.end method

.method public delete(Ljava/lang/String;Landroid/content/IntentSender;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 275
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 276
    const-string v1, "package_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v1, "completion_callback"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 280
    const-string v1, "delete"

    invoke-direct {p0, v1, v0}, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerApi;->callMethod(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 281
    return-void
.end method

.method public deleteLegacy(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 290
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 291
    const-string v1, "package_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v1, "delete_legacy"

    .line 294
    invoke-direct {p0, v1, v0}, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerApi;->callMethod(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 296
    const-string v1, "error_code"

    const/16 v2, -0x2711

    .line 297
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 300
    return v0
.end method

.method public install(Landroid/net/Uri;Lcom/facebook/oxygen/appmanager/installer/proxy/InstallConfig;Landroid/content/IntentSender;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 190
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p2}, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallConfig;->asBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 191
    const-string v1, "apk_staging_uri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v1, "completion_callback"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 194
    const-string v1, "install"

    invoke-direct {p0, v1, v0}, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerApi;->callMethod(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 196
    const-string v1, "session_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 197
    return v0
.end method

.method public writeApk(Landroid/net/Uri;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerApi;->writeFile(Landroid/net/Uri;Ljava/io/File;)V

    .line 164
    return-void
.end method
