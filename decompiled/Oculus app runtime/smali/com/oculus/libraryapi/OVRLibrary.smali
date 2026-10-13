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


# static fields
.field public static final FACEBOOK_SYSTEM_INSTALLER:Ljava/lang/String; = "com.facebook.system"

.field public static final FACEBOOK_SYSTEM_INSTALLER_DEV:Ljava/lang/String; = "com.facebook.system.dev"

.field public static final PACKAGE_NAME_OCMS:Ljava/lang/String; = "com.oculus.ocms"

.field public static final REFETCH_RESULT_FAILURE:I = 0x1

.field public static final REFETCH_RESULT_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OVRLibrary"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private final mDownloadListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/oculus/libraryapi/OVRLibrary$DownloadListener;",
            "Ljava/util/ArrayList<",
            "Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mEntitlementListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;",
            "Ljava/util/ArrayList<",
            "Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mInstallListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/oculus/libraryapi/OVRLibrary$InstallListener;",
            "Ljava/util/ArrayList<",
            "Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLibrary:Lcom/oculus/libraryapi/LibraryProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 176
    new-instance v0, Lcom/oculus/libraryapi/SecureLibraryProvider;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/pm/Signature;

    sget-object v2, Lcom/oculus/library/provider/contract/LibraryProviderContract;->OCULUS_SIGNATURE:Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/oculus/libraryapi/SecureLibraryProvider;-><init>([Landroid/content/pm/Signature;)V

    invoke-direct {p0, p1, v0}, Lcom/oculus/libraryapi/OVRLibrary;-><init>(Landroid/content/Context;Lcom/oculus/libraryapi/SecureLibraryProvider;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/oculus/libraryapi/SecureLibraryProvider;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mEntitlementListeners:Ljava/util/HashMap;

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mInstallListeners:Ljava/util/HashMap;

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mDownloadListeners:Ljava/util/HashMap;

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    .line 188
    invoke-direct {p0}, Lcom/oculus/libraryapi/OVRLibrary;->useOCMS()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 189
    new-instance p1, Lcom/oculus/libraryapi/OCMSLibrary;

    iget-object p2, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/oculus/libraryapi/OCMSLibrary;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    goto :goto_0

    .line 191
    :cond_0
    new-instance p1, Lcom/oculus/libraryapi/HorizonLibrary;

    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/oculus/libraryapi/HorizonLibrary;-><init>(Landroid/content/Context;Lcom/oculus/libraryapi/SecureLibraryProvider;)V

    iput-object p1, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    :goto_0
    return-void
.end method

.method private getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 2

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private declared-synchronized registerObserverForAppChangeUri(Landroid/net/Uri;Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;)V
    .locals 3

    monitor-enter p0

    .line 522
    :try_start_0
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mEntitlementListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 526
    iget-object v1, p0, Lcom/oculus/libraryapi/OVRLibrary;->mEntitlementListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;

    .line 530
    iget-object v2, v2, Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;->uri:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 532
    monitor-exit p0

    return-void

    .line 536
    :cond_2
    :try_start_1
    new-instance v1, Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p1, p2, v2}, Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;-><init>(Landroid/net/Uri;Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;Landroid/os/Handler;)V

    .line 538
    iget-object p2, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v2, 0x1

    invoke-virtual {p2, p1, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 539
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 540
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized registerObserverForDownloadUri(Landroid/net/Uri;Lcom/oculus/libraryapi/OVRLibrary$DownloadListener;)V
    .locals 3

    monitor-enter p0

    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mDownloadListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 459
    iget-object v1, p0, Lcom/oculus/libraryapi/OVRLibrary;->mDownloadListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;

    .line 463
    iget-object v2, v2, Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;->uri:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 465
    monitor-exit p0

    return-void

    .line 469
    :cond_2
    :try_start_1
    new-instance v1, Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p1, p2, v2}, Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;-><init>(Landroid/net/Uri;Lcom/oculus/libraryapi/OVRLibrary$DownloadListener;Landroid/os/Handler;)V

    .line 471
    iget-object p2, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v2, 0x1

    invoke-virtual {p2, p1, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 472
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 473
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized registerObserverForInstallUri(Landroid/net/Uri;Lcom/oculus/libraryapi/OVRLibrary$InstallListener;)V
    .locals 3

    monitor-enter p0

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mInstallListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 408
    iget-object v1, p0, Lcom/oculus/libraryapi/OVRLibrary;->mInstallListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;

    .line 412
    iget-object v2, v2, Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;->uri:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 414
    monitor-exit p0

    return-void

    .line 418
    :cond_2
    :try_start_1
    new-instance v1, Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p1, p2, v2}, Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;-><init>(Landroid/net/Uri;Lcom/oculus/libraryapi/OVRLibrary$InstallListener;Landroid/os/Handler;)V

    .line 420
    iget-object p2, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v2, 0x1

    invoke-virtual {p2, p1, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 421
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 422
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private useOCMS()Z
    .locals 6

    const-string v0, "deployment_gk"

    const-string v1, "OVRLibrary"

    .line 197
    iget-object v2, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.oculus.ocms"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v2, 0x0

    .line 202
    :try_start_0
    iget-object v4, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 209
    :try_start_1
    iget-object v3, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    .line 211
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 213
    invoke-static {}, Lcom/oculus/ocms/library/provider/contract/OCMSLibraryContract;->queryForDeploymentGk()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    .line 212
    invoke-virtual {v3, v4, v0, v5, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v3, :cond_1

    const-string v0, "Unexpected null bundle when querying for deployment gk"

    .line 222
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 225
    :cond_1
    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " will use OCMS as the library provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 229
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " will use Horizon as the library provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v3, "Invalid uri"

    .line 218
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :catch_1
    const-string v0, "OCMS is not installed"

    .line 204
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method


# virtual methods
.method public addApp(Lcom/oculus/library/model/App;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 685
    invoke-virtual {p0}, Lcom/oculus/libraryapi/OVRLibrary;->refetch()V

    return-void
.end method

.method public canUninstall(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 362
    :try_start_0
    iget-object v1, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 363
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.facebook.system"

    .line 366
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.facebook.system.dev"

    .line 367
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method

.method public cancelDownload(Ljava/lang/String;)Z
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0, p1}, Lcom/oculus/libraryapi/LibraryProvider;->cancelDownload(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public customDownloadAndInstall(Lcom/oculus/appmanager/model/UpdateConfig;Lcom/oculus/appmanager/model/UpdateConfig;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallCallback;)V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/oculus/libraryapi/LibraryProvider;->customDownloadAndInstall(Lcom/oculus/appmanager/model/UpdateConfig;Lcom/oculus/appmanager/model/UpdateConfig;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallCallback;)V

    return-void
.end method

.method public downloadAndInstall(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 566
    sget-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->UNKNOWN:Lcom/oculus/appmanager/info/model/RequestOrigin;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/oculus/libraryapi/OVRLibrary;->downloadAndInstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallCallback;)V

    return-void
.end method

.method public downloadAndInstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 578
    invoke-virtual {p0, p1, p2, v0}, Lcom/oculus/libraryapi/OVRLibrary;->downloadAndInstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallCallback;)V

    return-void
.end method

.method public downloadAndInstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallCallback;)V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0, p1, p2, p3}, Lcom/oculus/libraryapi/LibraryProvider;->downloadAndInstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallCallback;)V

    return-void
.end method

.method public downloadAndInstallAwait(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)Lcom/oculus/appmanager/info/model/InstallResult;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0, p1, p2}, Lcom/oculus/libraryapi/LibraryProvider;->downloadAndInstallAwait(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)Lcom/oculus/appmanager/info/model/InstallResult;

    move-result-object p1

    return-object p1
.end method

.method public getAllApps()[Lcom/oculus/library/model/App;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0}, Lcom/oculus/libraryapi/LibraryProvider;->getAllApps()[Lcom/oculus/library/model/App;

    move-result-object v0

    return-object v0
.end method

.method public getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0, p1}, Lcom/oculus/libraryapi/LibraryProvider;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object p1

    return-object p1
.end method

.method public getAppById(Ljava/lang/String;)Lcom/oculus/library/model/App;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0, p1}, Lcom/oculus/libraryapi/LibraryProvider;->getAppById(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object p1

    return-object p1
.end method

.method public varargs getAppsFromDatabase(Ljava/lang/Integer;Ljava/lang/String;[Lcom/oculus/library/model/AppStatus;)[Lcom/oculus/library/model/App;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 554
    iget-object p1, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {p1}, Lcom/oculus/libraryapi/LibraryProvider;->getAllApps()[Lcom/oculus/library/model/App;

    move-result-object p1

    return-object p1
.end method

.method public refetch()V
    .locals 1

    const/4 v0, 0x0

    .line 242
    invoke-virtual {p0, v0}, Lcom/oculus/libraryapi/OVRLibrary;->refetch(Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public refetch(Landroid/os/ResultReceiver;)V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0, p1}, Lcom/oculus/libraryapi/LibraryProvider;->refresh(Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public registerAppChangeListener(Ljava/lang/String;Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;)V
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0, p1}, Lcom/oculus/libraryapi/LibraryProvider;->getQueryByPackageUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/oculus/libraryapi/OVRLibrary;->registerObserverForAppChangeUri(Landroid/net/Uri;Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;)V

    return-void
.end method

.method public registerAppsChangeListener(Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;)V
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0}, Lcom/oculus/libraryapi/LibraryProvider;->getQueryAllUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->registerObserverForAppChangeUri(Landroid/net/Uri;Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;)V

    return-void
.end method

.method public registerDownloadListener(Lcom/oculus/libraryapi/OVRLibrary$DownloadListener;)V
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0}, Lcom/oculus/libraryapi/LibraryProvider;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->registerObserverForDownloadUri(Landroid/net/Uri;Lcom/oculus/libraryapi/OVRLibrary$DownloadListener;)V

    return-void
.end method

.method public registerInstallListener(Lcom/oculus/libraryapi/OVRLibrary$InstallListener;)V
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0}, Lcom/oculus/libraryapi/LibraryProvider;->getAllInstallsUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->registerObserverForInstallUri(Landroid/net/Uri;Lcom/oculus/libraryapi/OVRLibrary$InstallListener;)V

    return-void
.end method

.method public save(Lcom/oculus/library/model/App;)V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0, p1}, Lcom/oculus/libraryapi/LibraryProvider;->save(Lcom/oculus/library/model/App;)V

    return-void
.end method

.method public setBinaryId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 666
    invoke-virtual {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 668
    new-instance v0, Lcom/oculus/library/model/App$Builder;

    .line 669
    invoke-virtual {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/oculus/library/model/App$Builder;-><init>(Lcom/oculus/library/model/App;)V

    .line 670
    invoke-virtual {v0, p2}, Lcom/oculus/library/model/App$Builder;->withInstalledBinaryId(Ljava/lang/String;)Lcom/oculus/library/model/App$Builder;

    move-result-object p1

    .line 671
    invoke-virtual {p1}, Lcom/oculus/library/model/App$Builder;->build()Lcom/oculus/library/model/App;

    move-result-object p1

    .line 668
    invoke-virtual {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->save(Lcom/oculus/library/model/App;)V

    goto :goto_0

    .line 673
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unable to update "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", not in library"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OVRLibrary"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setUnseenBadge(Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 651
    invoke-virtual {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 653
    new-instance v0, Lcom/oculus/library/model/App$Builder;

    invoke-virtual {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/oculus/library/model/App$Builder;-><init>(Lcom/oculus/library/model/App;)V

    invoke-virtual {v0, p2}, Lcom/oculus/library/model/App$Builder;->withUnseen(Z)Lcom/oculus/library/model/App$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oculus/library/model/App$Builder;->build()Lcom/oculus/library/model/App;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->save(Lcom/oculus/library/model/App;)V

    goto :goto_0

    .line 655
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unable to update "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", not in library"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OVRLibrary"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public uninstall(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 590
    sget-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->UNKNOWN:Lcom/oculus/appmanager/info/model/RequestOrigin;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/oculus/libraryapi/OVRLibrary;->uninstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/UninstallCallback;)V

    return-void
.end method

.method public uninstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/UninstallCallback;)V
    .locals 1

    .line 326
    invoke-direct {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    .line 328
    sget-object p2, Lcom/oculus/appmanager/info/model/UninstallResultError;->NOT_INSTALLED:Lcom/oculus/appmanager/info/model/UninstallResultError;

    .line 329
    invoke-static {p1, p2}, Lcom/oculus/appmanager/info/model/UninstallResult;->creatForError(Ljava/lang/String;Lcom/oculus/appmanager/info/model/UninstallResultError;)Lcom/oculus/appmanager/info/model/UninstallResult;

    move-result-object p1

    .line 328
    invoke-interface {p3, p1}, Lcom/oculus/library/model/UninstallCallback;->onUninstallResult(Lcom/oculus/appmanager/info/model/UninstallResult;)V

    :cond_0
    return-void

    .line 333
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->canUninstall(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 334
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot uninstall "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", it is not managed by Oculus."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OVRLibrary"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_2

    .line 336
    sget-object p2, Lcom/oculus/appmanager/info/model/UninstallResultError;->NOT_MANAGED_BY_OCULUS:Lcom/oculus/appmanager/info/model/UninstallResultError;

    .line 337
    invoke-static {p1, p2}, Lcom/oculus/appmanager/info/model/UninstallResult;->creatForError(Ljava/lang/String;Lcom/oculus/appmanager/info/model/UninstallResultError;)Lcom/oculus/appmanager/info/model/UninstallResult;

    move-result-object p1

    .line 336
    invoke-interface {p3, p1}, Lcom/oculus/library/model/UninstallCallback;->onUninstallResult(Lcom/oculus/appmanager/info/model/UninstallResult;)V

    :cond_2
    return-void

    .line 341
    :cond_3
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0, p1, p2, p3}, Lcom/oculus/libraryapi/LibraryProvider;->uninstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/UninstallCallback;)V

    return-void
.end method

.method public uninstallAwait(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)Lcom/oculus/appmanager/info/model/UninstallResult;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0, p1, p2}, Lcom/oculus/libraryapi/LibraryProvider;->uninstallAwait(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)Lcom/oculus/appmanager/info/model/UninstallResult;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized unregisterAppChangeListener(Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;)V
    .locals 3

    monitor-enter p0

    .line 507
    :try_start_0
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 508
    iget-object v1, p0, Lcom/oculus/libraryapi/OVRLibrary;->mEntitlementListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 510
    monitor-exit p0

    return-void

    .line 512
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;

    .line 513
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 514
    iget-object v2, v1, Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 515
    iget-object v1, v1, Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 518
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterDownloadListener(Lcom/oculus/libraryapi/OVRLibrary$DownloadListener;)V
    .locals 3

    monitor-enter p0

    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 441
    iget-object v1, p0, Lcom/oculus/libraryapi/OVRLibrary;->mDownloadListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 443
    monitor-exit p0

    return-void

    .line 445
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;

    .line 446
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 447
    iget-object v2, v1, Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 448
    iget-object v1, v1, Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 451
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterInstallListener(Lcom/oculus/libraryapi/OVRLibrary$InstallListener;)V
    .locals 3

    monitor-enter p0

    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lcom/oculus/libraryapi/OVRLibrary;->mInstallListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 392
    monitor-exit p0

    return-void

    .line 394
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;

    .line 395
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 396
    iget-object v2, v1, Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 397
    iget-object v1, v1, Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 400
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateLatestActivityMs(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 600
    invoke-virtual {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 602
    new-instance v0, Lcom/oculus/library/model/App$Builder;

    .line 603
    invoke-virtual {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/oculus/library/model/App$Builder;-><init>(Lcom/oculus/library/model/App;)V

    .line 604
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/oculus/library/model/App$Builder;->withRecentActivityMs(J)Lcom/oculus/library/model/App$Builder;

    move-result-object p1

    .line 605
    invoke-virtual {p1}, Lcom/oculus/library/model/App$Builder;->build()Lcom/oculus/library/model/App;

    move-result-object p1

    .line 602
    invoke-virtual {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->save(Lcom/oculus/library/model/App;)V

    goto :goto_0

    .line 607
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", not in library"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OVRLibrary"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public updateStatus(Ljava/lang/String;Lcom/oculus/library/model/AppStatus;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 636
    invoke-virtual {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 638
    new-instance v0, Lcom/oculus/library/model/App$Builder;

    invoke-virtual {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/oculus/library/model/App$Builder;-><init>(Lcom/oculus/library/model/App;)V

    invoke-virtual {v0, p2}, Lcom/oculus/library/model/App$Builder;->withStatus(Lcom/oculus/library/model/AppStatus;)Lcom/oculus/library/model/App$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oculus/library/model/App$Builder;->build()Lcom/oculus/library/model/App;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->save(Lcom/oculus/library/model/App;)V

    goto :goto_0

    .line 640
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unable to update "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", not in library"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OVRLibrary"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public updateUserQualityRating(Ljava/lang/String;J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 618
    invoke-virtual {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 620
    new-instance v0, Lcom/oculus/library/model/App$Builder;

    .line 621
    invoke-virtual {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/oculus/library/model/App$Builder;-><init>(Lcom/oculus/library/model/App;)V

    .line 622
    invoke-virtual {v0, p2, p3}, Lcom/oculus/library/model/App$Builder;->withUserQualityRating(J)Lcom/oculus/library/model/App$Builder;

    move-result-object p1

    .line 623
    invoke-virtual {p1}, Lcom/oculus/library/model/App$Builder;->build()Lcom/oculus/library/model/App;

    move-result-object p1

    .line 620
    invoke-virtual {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->save(Lcom/oculus/library/model/App;)V

    goto :goto_0

    .line 625
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unable to update "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", not in library"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OVRLibrary"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
