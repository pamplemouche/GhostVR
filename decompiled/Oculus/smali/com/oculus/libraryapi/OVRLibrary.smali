.class public Lcom/oculus/libraryapi/OVRLibrary;
.super Ljava/lang/Object;
.source "OVRLibrary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;,
        Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;,
        Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;,
        Lcom/oculus/libraryapi/OVRLibrary$DownloadListener;,
        Lcom/oculus/libraryapi/OVRLibrary$InstallListener;,
        Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private final mDownloadListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/oculus/libraryapi/OVRLibrary$DownloadListener;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mEntitlementListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mInstallListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/oculus/libraryapi/OVRLibrary$InstallListener;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

.field protected final mUseOCMS:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 175
    new-instance v0, Lcom/oculus/libraryapi/SecureLibraryProvider;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/pm/Signature;

    const/4 v2, 0x0

    sget-object v3, Lcom/oculus/library/provider/contract/LibraryProviderContract;->OCULUS_SIGNATURE:Landroid/content/pm/Signature;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/oculus/libraryapi/SecureLibraryProvider;-><init>([Landroid/content/pm/Signature;)V

    invoke-direct {p0, p1, v0}, Lcom/oculus/libraryapi/OVRLibrary;-><init>(Landroid/content/Context;Lcom/oculus/libraryapi/SecureLibraryProvider;)V

    .line 178
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/oculus/libraryapi/SecureLibraryProvider;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mEntitlementListeners:Ljava/util/HashMap;

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mInstallListeners:Ljava/util/HashMap;

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mDownloadListeners:Ljava/util/HashMap;

    .line 186
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    .line 187
    invoke-direct {p0}, Lcom/oculus/libraryapi/OVRLibrary;->useOCMS()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mUseOCMS:Z

    .line 188
    iget-boolean v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mUseOCMS:Z

    if-eqz v0, :cond_0

    .line 189
    new-instance v0, Lcom/oculus/libraryapi/OCMSLibrary;

    iget-object v1, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oculus/libraryapi/OCMSLibrary;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    new-instance v0, Lcom/oculus/libraryapi/HorizonLibrary;

    iget-object v1, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/oculus/libraryapi/HorizonLibrary;-><init>(Landroid/content/Context;Lcom/oculus/libraryapi/SecureLibraryProvider;)V

    iput-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    goto :goto_0
.end method

.method private getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 2

    .prologue
    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 334
    :goto_0
    return-object v0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized registerObserverForAppChangeUri(Landroid/net/Uri;Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;)V
    .locals 4

    .prologue
    .line 509
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mEntitlementListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 510
    if-nez v0, :cond_2

    .line 512
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 513
    iget-object v1, p0, Lcom/oculus/libraryapi/OVRLibrary;->mEntitlementListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 516
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;

    .line 517
    iget-object v0, v0, Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;->uri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    :goto_1
    monitor-exit p0

    return-void

    .line 523
    :cond_1
    :try_start_1
    new-instance v0, Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p1, p2, v2}, Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;-><init>(Landroid/net/Uri;Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;Landroid/os/Handler;)V

    .line 525
    iget-object v2, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 526
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 509
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method private declared-synchronized registerObserverForDownloadUri(Landroid/net/Uri;Lcom/oculus/libraryapi/OVRLibrary$DownloadListener;)V
    .locals 4

    .prologue
    .line 442
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mDownloadListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 443
    if-nez v0, :cond_2

    .line 445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 446
    iget-object v1, p0, Lcom/oculus/libraryapi/OVRLibrary;->mDownloadListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 449
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;

    .line 450
    iget-object v0, v0, Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;->uri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    :goto_1
    monitor-exit p0

    return-void

    .line 456
    :cond_1
    :try_start_1
    new-instance v0, Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p1, p2, v2}, Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;-><init>(Landroid/net/Uri;Lcom/oculus/libraryapi/OVRLibrary$DownloadListener;Landroid/os/Handler;)V

    .line 458
    iget-object v2, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 459
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method private declared-synchronized registerObserverForInstallUri(Landroid/net/Uri;Lcom/oculus/libraryapi/OVRLibrary$InstallListener;)V
    .locals 4

    .prologue
    .line 391
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mInstallListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 392
    if-nez v0, :cond_2

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 395
    iget-object v1, p0, Lcom/oculus/libraryapi/OVRLibrary;->mInstallListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 398
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;

    .line 399
    iget-object v0, v0, Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;->uri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    :goto_1
    monitor-exit p0

    return-void

    .line 405
    :cond_1
    :try_start_1
    new-instance v0, Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p1, p2, v2}, Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;-><init>(Landroid/net/Uri;Lcom/oculus/libraryapi/OVRLibrary$InstallListener;Landroid/os/Handler;)V

    .line 407
    iget-object v2, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 408
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method private useOCMS()Z
    .locals 2

    .prologue
    .line 197
    const-string v0, "com.oculus.ocms"

    iget-object v1, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    const/4 v0, 0x1

    .line 201
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canUninstall(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 340
    :try_start_0
    iget-object v1, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 341
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 344
    const-string v2, "com.facebook.system"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.facebook.system.dev"

    .line 345
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 347
    :cond_1
    :goto_0
    return v0

    .line 346
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public cancelDownload(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0, p1}, Lcom/oculus/libraryapi/LibraryProvider;->cancelDownload(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public customDownloadAndInstall(Lcom/oculus/appmanager/model/UpdateConfig;Lcom/oculus/appmanager/model/UpdateConfig;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallerCallback;)V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/oculus/libraryapi/LibraryProvider;->customDownloadAndInstall(Lcom/oculus/appmanager/model/UpdateConfig;Lcom/oculus/appmanager/model/UpdateConfig;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallerCallback;)V

    .line 289
    return-void
.end method

.method public downloadAndInstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallerCallback;)V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0, p1, p2, p3}, Lcom/oculus/libraryapi/LibraryProvider;->downloadAndInstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallerCallback;)V

    .line 273
    return-void
.end method

.method public downloadAndInstallAwait(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)Lcom/oculus/appmanager/info/model/InstallerResult;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0, p1, p2}, Lcom/oculus/libraryapi/LibraryProvider;->downloadAndInstallAwait(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)Lcom/oculus/appmanager/info/model/InstallerResult;

    move-result-object v0

    return-object v0
.end method

.method public getAllApps()[Lcom/oculus/library/model/App;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0}, Lcom/oculus/libraryapi/LibraryProvider;->getAllApps()[Lcom/oculus/library/model/App;

    move-result-object v0

    return-object v0
.end method

.method public getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0, p1}, Lcom/oculus/libraryapi/LibraryProvider;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v0

    return-object v0
.end method

.method public getAppById(Ljava/lang/String;)Lcom/oculus/library/model/App;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0, p1}, Lcom/oculus/libraryapi/LibraryProvider;->getAppById(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0}, Lcom/oculus/libraryapi/LibraryProvider;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLibraryPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mUseOCMS:Z

    if-eqz v0, :cond_0

    const-string v0, "com.oculus.ocms"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.oculus.horizon"

    goto :goto_0
.end method

.method public refetch()V
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oculus/libraryapi/OVRLibrary;->refetch(Landroid/os/ResultReceiver;)V

    .line 217
    return-void
.end method

.method public refetch(Landroid/os/ResultReceiver;)V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0, p1}, Lcom/oculus/libraryapi/LibraryProvider;->refresh(Landroid/os/ResultReceiver;)V

    .line 230
    return-void
.end method

.method public registerAppChangeListener(Ljava/lang/String;Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;)V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0, p1}, Lcom/oculus/libraryapi/LibraryProvider;->getQueryByPackageUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/oculus/libraryapi/OVRLibrary;->registerObserverForAppChangeUri(Landroid/net/Uri;Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;)V

    .line 485
    return-void
.end method

.method public registerAppsChangeListener(Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;)V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0}, Lcom/oculus/libraryapi/LibraryProvider;->getQueryAllUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->registerObserverForAppChangeUri(Landroid/net/Uri;Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;)V

    .line 473
    return-void
.end method

.method public registerDownloadListener(Lcom/oculus/libraryapi/OVRLibrary$DownloadListener;)V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0}, Lcom/oculus/libraryapi/LibraryProvider;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->registerObserverForDownloadUri(Landroid/net/Uri;Lcom/oculus/libraryapi/OVRLibrary$DownloadListener;)V

    .line 418
    return-void
.end method

.method public registerInstallListener(Lcom/oculus/libraryapi/OVRLibrary$InstallListener;)V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0}, Lcom/oculus/libraryapi/LibraryProvider;->getAllInstallsUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->registerObserverForInstallUri(Landroid/net/Uri;Lcom/oculus/libraryapi/OVRLibrary$InstallListener;)V

    .line 367
    return-void
.end method

.method public save(Lcom/oculus/library/model/App;)V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0, p1}, Lcom/oculus/libraryapi/LibraryProvider;->save(Lcom/oculus/library/model/App;)V

    .line 263
    return-void
.end method

.method public setUnseenBadge(Ljava/lang/String;Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 638
    invoke-virtual {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v0

    .line 639
    if-eqz v0, :cond_0

    .line 640
    new-instance v0, Lcom/oculus/library/model/App$Builder;

    invoke-virtual {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/library/model/App$Builder;-><init>(Lcom/oculus/library/model/App;)V

    invoke-virtual {v0, p2}, Lcom/oculus/library/model/App$Builder;->withUnseen(Z)Lcom/oculus/library/model/App$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/library/model/App$Builder;->build()Lcom/oculus/library/model/App;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oculus/libraryapi/OVRLibrary;->save(Lcom/oculus/library/model/App;)V

    .line 644
    :goto_0
    return-void

    .line 642
    :cond_0
    const-string v0, "OVRLibrary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unable to update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", not in library"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public uninstall(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 577
    sget-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->UNKNOWN:Lcom/oculus/appmanager/info/model/RequestOrigin;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/oculus/libraryapi/OVRLibrary;->uninstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallerCallback;)V

    .line 578
    return-void
.end method

.method public uninstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallerCallback;)V
    .locals 3

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 301
    if-eqz p3, :cond_0

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/oculus/appmanager/info/model/InstallerResultError;->NOT_INSTALLED:Lcom/oculus/appmanager/info/model/InstallerResultError;

    .line 303
    invoke-static {p1, v0, v1, v2}, Lcom/oculus/appmanager/info/model/InstallerResult;->createForError(Ljava/lang/String;JLcom/oculus/appmanager/info/model/InstallerResultError;)Lcom/oculus/appmanager/info/model/InstallerResult;

    move-result-object v0

    .line 302
    invoke-interface {p3, v0}, Lcom/oculus/library/model/InstallerCallback;->onInstallerResult(Lcom/oculus/appmanager/info/model/InstallerResult;)V

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->canUninstall(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 309
    const-string v0, "OVRLibrary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot uninstall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", it is not managed by Oculus."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    if-eqz p3, :cond_0

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/oculus/appmanager/info/model/InstallerResultError;->NOT_MANAGED_BY_OCULUS:Lcom/oculus/appmanager/info/model/InstallerResultError;

    .line 312
    invoke-static {p1, v0, v1, v2}, Lcom/oculus/appmanager/info/model/InstallerResult;->createForError(Ljava/lang/String;JLcom/oculus/appmanager/info/model/InstallerResultError;)Lcom/oculus/appmanager/info/model/InstallerResult;

    move-result-object v0

    .line 311
    invoke-interface {p3, v0}, Lcom/oculus/library/model/InstallerCallback;->onInstallerResult(Lcom/oculus/appmanager/info/model/InstallerResult;)V

    goto :goto_0

    .line 319
    :cond_2
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0, p1, p2, p3}, Lcom/oculus/libraryapi/LibraryProvider;->uninstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallerCallback;)V

    goto :goto_0
.end method

.method public uninstallAwait(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)Lcom/oculus/appmanager/info/model/InstallerResult;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0, p1, p2}, Lcom/oculus/libraryapi/LibraryProvider;->uninstallAwait(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)Lcom/oculus/appmanager/info/model/InstallerResult;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized unregisterAppChangeListener(Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;)V
    .locals 4

    .prologue
    .line 494
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 495
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mEntitlementListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    if-nez v0, :cond_1

    .line 505
    :cond_0
    monitor-exit p0

    return-void

    .line 499
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;

    .line 500
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 501
    iget-object v3, v0, Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;->handler:Landroid/os/Handler;

    if-eqz v3, :cond_2

    .line 502
    iget-object v0, v0, Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;->handler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 494
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterDownloadListener(Lcom/oculus/libraryapi/OVRLibrary$DownloadListener;)V
    .locals 4

    .prologue
    .line 427
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 428
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mDownloadListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    if-nez v0, :cond_1

    .line 438
    :cond_0
    monitor-exit p0

    return-void

    .line 432
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;

    .line 433
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 434
    iget-object v3, v0, Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;->handler:Landroid/os/Handler;

    if-eqz v3, :cond_2

    .line 435
    iget-object v0, v0, Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;->handler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterInstallListener(Lcom/oculus/libraryapi/OVRLibrary$InstallListener;)V
    .locals 4

    .prologue
    .line 376
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 377
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mInstallListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    if-nez v0, :cond_1

    .line 387
    :cond_0
    monitor-exit p0

    return-void

    .line 381
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;

    .line 382
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 383
    iget-object v3, v0, Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;->handler:Landroid/os/Handler;

    if-eqz v3, :cond_2

    .line 384
    iget-object v0, v0, Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;->handler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateLatestActivityMs(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 587
    invoke-virtual {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v0

    .line 588
    if-eqz v0, :cond_0

    .line 589
    new-instance v0, Lcom/oculus/library/model/App$Builder;

    .line 590
    invoke-virtual {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/library/model/App$Builder;-><init>(Lcom/oculus/library/model/App;)V

    .line 591
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/oculus/library/model/App$Builder;->withRecentActivityMs(J)Lcom/oculus/library/model/App$Builder;

    move-result-object v0

    .line 592
    invoke-virtual {v0}, Lcom/oculus/library/model/App$Builder;->build()Lcom/oculus/library/model/App;

    move-result-object v0

    .line 589
    invoke-virtual {p0, v0}, Lcom/oculus/libraryapi/OVRLibrary;->save(Lcom/oculus/library/model/App;)V

    .line 596
    :goto_0
    return-void

    .line 594
    :cond_0
    const-string v0, "OVRLibrary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unable to update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", not in library"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateStatus(Ljava/lang/String;Lcom/oculus/library/model/AppStatus;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 623
    invoke-virtual {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v0

    .line 624
    if-eqz v0, :cond_0

    .line 625
    new-instance v0, Lcom/oculus/library/model/App$Builder;

    invoke-virtual {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/library/model/App$Builder;-><init>(Lcom/oculus/library/model/App;)V

    invoke-virtual {v0, p2}, Lcom/oculus/library/model/App$Builder;->withStatus(Lcom/oculus/library/model/AppStatus;)Lcom/oculus/library/model/App$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/library/model/App$Builder;->build()Lcom/oculus/library/model/App;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oculus/libraryapi/OVRLibrary;->save(Lcom/oculus/library/model/App;)V

    .line 629
    :goto_0
    return-void

    .line 627
    :cond_0
    const-string v0, "OVRLibrary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unable to update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", not in library"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateUserQualityRating(Ljava/lang/String;J)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 605
    invoke-virtual {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v0

    .line 606
    if-eqz v0, :cond_0

    .line 607
    new-instance v0, Lcom/oculus/library/model/App$Builder;

    .line 608
    invoke-virtual {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/library/model/App$Builder;-><init>(Lcom/oculus/library/model/App;)V

    .line 609
    invoke-virtual {v0, p2, p3}, Lcom/oculus/library/model/App$Builder;->withUserQualityRating(J)Lcom/oculus/library/model/App$Builder;

    move-result-object v0

    .line 610
    invoke-virtual {v0}, Lcom/oculus/library/model/App$Builder;->build()Lcom/oculus/library/model/App;

    move-result-object v0

    .line 607
    invoke-virtual {p0, v0}, Lcom/oculus/libraryapi/OVRLibrary;->save(Lcom/oculus/library/model/App;)V

    .line 614
    :goto_0
    return-void

    .line 612
    :cond_0
    const-string v0, "OVRLibrary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unable to update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", not in library"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
