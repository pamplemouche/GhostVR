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

.field public static final PACKAGE_NAME_HORIZON:Ljava/lang/String; = "com.oculus.horizon"

.field public static final PACKAGE_NAME_OCMS:Ljava/lang/String; = "com.oculus.ocms"

.field public static final REFETCH_RESULT_FAILURE:I = 0x1

.field public static final REFETCH_RESULT_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OVRLibrary"


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
    .param p1, "context"    # Landroid/content/Context;

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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "libraryProvider"    # Lcom/oculus/libraryapi/SecureLibraryProvider;
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
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 362
    :try_start_0
    iget-object v1, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 364
    :goto_0
    return-object v1

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized registerObserverForAppChangeUri(Landroid/net/Uri;Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "listener"    # Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;

    .prologue
    .line 539
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/oculus/libraryapi/OVRLibrary;->mEntitlementListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 540
    .local v1, "contentObservers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;>;"
    if-nez v1, :cond_0

    .line 542
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "contentObservers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 543
    .restart local v1    # "contentObservers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;>;"
    iget-object v2, p0, Lcom/oculus/libraryapi/OVRLibrary;->mEntitlementListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;

    .line 547
    .local v0, "contentObserver":Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;
    iget-object v3, v0, Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;->uri:Landroid/net/Uri;

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 557
    :goto_0
    monitor-exit p0

    return-void

    .line 553
    .end local v0    # "contentObserver":Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;
    :cond_2
    :try_start_1
    new-instance v0, Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p1, p2, v2}, Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;-><init>(Landroid/net/Uri;Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;Landroid/os/Handler;)V

    .line 555
    .restart local v0    # "contentObserver":Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;
    iget-object v2, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 556
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 539
    .end local v0    # "contentObserver":Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;
    .end local v1    # "contentObservers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized registerObserverForDownloadUri(Landroid/net/Uri;Lcom/oculus/libraryapi/OVRLibrary$DownloadListener;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "listener"    # Lcom/oculus/libraryapi/OVRLibrary$DownloadListener;

    .prologue
    .line 472
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/oculus/libraryapi/OVRLibrary;->mDownloadListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 473
    .local v1, "contentObservers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;>;"
    if-nez v1, :cond_0

    .line 475
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "contentObservers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .restart local v1    # "contentObservers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;>;"
    iget-object v2, p0, Lcom/oculus/libraryapi/OVRLibrary;->mDownloadListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;

    .line 480
    .local v0, "contentObserver":Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;
    iget-object v3, v0, Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;->uri:Landroid/net/Uri;

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 490
    :goto_0
    monitor-exit p0

    return-void

    .line 486
    .end local v0    # "contentObserver":Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;
    :cond_2
    :try_start_1
    new-instance v0, Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p1, p2, v2}, Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;-><init>(Landroid/net/Uri;Lcom/oculus/libraryapi/OVRLibrary$DownloadListener;Landroid/os/Handler;)V

    .line 488
    .restart local v0    # "contentObserver":Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;
    iget-object v2, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 489
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 472
    .end local v0    # "contentObserver":Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;
    .end local v1    # "contentObservers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized registerObserverForInstallUri(Landroid/net/Uri;Lcom/oculus/libraryapi/OVRLibrary$InstallListener;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "listener"    # Lcom/oculus/libraryapi/OVRLibrary$InstallListener;

    .prologue
    .line 421
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/oculus/libraryapi/OVRLibrary;->mInstallListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 422
    .local v1, "contentObservers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;>;"
    if-nez v1, :cond_0

    .line 424
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "contentObservers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 425
    .restart local v1    # "contentObservers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;>;"
    iget-object v2, p0, Lcom/oculus/libraryapi/OVRLibrary;->mInstallListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;

    .line 429
    .local v0, "contentObserver":Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;
    iget-object v3, v0, Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;->uri:Landroid/net/Uri;

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 439
    :goto_0
    monitor-exit p0

    return-void

    .line 435
    .end local v0    # "contentObserver":Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;
    :cond_2
    :try_start_1
    new-instance v0, Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p1, p2, v2}, Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;-><init>(Landroid/net/Uri;Lcom/oculus/libraryapi/OVRLibrary$InstallListener;Landroid/os/Handler;)V

    .line 437
    .restart local v0    # "contentObserver":Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;
    iget-object v2, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 438
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 421
    .end local v0    # "contentObserver":Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;
    .end local v1    # "contentObservers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private useOCMS()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 197
    const-string v3, "com.oculus.ocms"

    iget-object v4, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    const/4 v2, 0x1

    .line 231
    :goto_0
    return v2

    .line 202
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.oculus.ocms"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :try_start_1
    iget-object v3, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    .line 211
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 213
    invoke-static {}, Lcom/oculus/ocms/library/provider/contract/OCMSLibraryContract;->queryForDeploymentGk()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "deployment_gk"

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 212
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 221
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 222
    const-string v3, "OVRLibrary"

    const-string v4, "Unexpected null bundle when querying for deployment gk"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 203
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "OVRLibrary"

    const-string v4, "OCMS is not installed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "OVRLibrary"

    const-string v4, "Invalid uri"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 225
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    const-string v3, "deployment_gk"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 226
    .local v2, "useOCMS":Z
    if-eqz v2, :cond_2

    .line 227
    const-string v3, "OVRLibrary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " will use OCMS as the library provider"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 229
    :cond_2
    const-string v3, "OVRLibrary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " will use Horizon as the library provider"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addApp(Lcom/oculus/library/model/App;)V
    .locals 0
    .param p1, "app"    # Lcom/oculus/library/model/App;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/oculus/libraryapi/OVRLibrary;->refetch()V

    .line 703
    return-void
.end method

.method public canUninstall(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 370
    :try_start_0
    iget-object v4, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 371
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, "installerPackageName":Ljava/lang/String;
    const-string v4, "com.facebook.system"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.facebook.system.dev"

    .line 375
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 377
    .end local v1    # "installerPackageName":Ljava/lang/String;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    return v3

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public cancelDownload(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0, p1}, Lcom/oculus/libraryapi/LibraryProvider;->cancelDownload(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public customDownloadAndInstall(Lcom/oculus/appmanager/model/UpdateConfig;Lcom/oculus/appmanager/model/UpdateConfig;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallerCallback;)V
    .locals 1
    .param p1, "apkConfig"    # Lcom/oculus/appmanager/model/UpdateConfig;
    .param p2, "obbConfig"    # Lcom/oculus/appmanager/model/UpdateConfig;
    .param p3, "requestOrigin"    # Lcom/oculus/appmanager/info/model/RequestOrigin;
    .param p4, "callback"    # Lcom/oculus/library/model/InstallerCallback;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/oculus/libraryapi/LibraryProvider;->customDownloadAndInstall(Lcom/oculus/appmanager/model/UpdateConfig;Lcom/oculus/appmanager/model/UpdateConfig;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallerCallback;)V

    .line 319
    return-void
.end method

.method public downloadAndInstall(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 583
    sget-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->UNKNOWN:Lcom/oculus/appmanager/info/model/RequestOrigin;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/oculus/libraryapi/OVRLibrary;->downloadAndInstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallerCallback;)V

    .line 584
    return-void
.end method

.method public downloadAndInstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "origin"    # Lcom/oculus/appmanager/info/model/RequestOrigin;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 595
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oculus/libraryapi/OVRLibrary;->downloadAndInstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallerCallback;)V

    .line 596
    return-void
.end method

.method public downloadAndInstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallerCallback;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "origin"    # Lcom/oculus/appmanager/info/model/RequestOrigin;
    .param p3, "callback"    # Lcom/oculus/library/model/InstallerCallback;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0, p1, p2, p3}, Lcom/oculus/libraryapi/LibraryProvider;->downloadAndInstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallerCallback;)V

    .line 303
    return-void
.end method

.method public downloadAndInstallAwait(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)Lcom/oculus/appmanager/info/model/InstallerResult;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "requestOrigin"    # Lcom/oculus/appmanager/info/model/RequestOrigin;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0, p1, p2}, Lcom/oculus/libraryapi/LibraryProvider;->downloadAndInstallAwait(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)Lcom/oculus/appmanager/info/model/InstallerResult;

    move-result-object v0

    return-object v0
.end method

.method public getAllApps()[Lcom/oculus/library/model/App;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0}, Lcom/oculus/libraryapi/LibraryProvider;->getAllApps()[Lcom/oculus/library/model/App;

    move-result-object v0

    return-object v0
.end method

.method public getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0, p1}, Lcom/oculus/libraryapi/LibraryProvider;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v0

    return-object v0
.end method

.method public getAppById(Ljava/lang/String;)Lcom/oculus/library/model/App;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0, p1}, Lcom/oculus/libraryapi/LibraryProvider;->getAppById(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v0

    return-object v0
.end method

.method public varargs getAppsFromDatabase(Ljava/lang/Integer;Ljava/lang/String;[Lcom/oculus/library/model/AppStatus;)[Lcom/oculus/library/model/App;
    .locals 1
    .param p1, "limit"    # Ljava/lang/Integer;
    .param p2, "sortByColumn"    # Ljava/lang/String;
    .param p3, "includedAppStatuses"    # [Lcom/oculus/library/model/AppStatus;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 571
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0}, Lcom/oculus/libraryapi/LibraryProvider;->getAllApps()[Lcom/oculus/library/model/App;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0}, Lcom/oculus/libraryapi/LibraryProvider;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLibraryPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
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
    .line 246
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oculus/libraryapi/OVRLibrary;->refetch(Landroid/os/ResultReceiver;)V

    .line 247
    return-void
.end method

.method public refetch(Landroid/os/ResultReceiver;)V
    .locals 1
    .param p1, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0, p1}, Lcom/oculus/libraryapi/LibraryProvider;->refresh(Landroid/os/ResultReceiver;)V

    .line 260
    return-void
.end method

.method public registerAppChangeListener(Ljava/lang/String;Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;

    .prologue
    .line 514
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0, p1}, Lcom/oculus/libraryapi/LibraryProvider;->getQueryByPackageUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/oculus/libraryapi/OVRLibrary;->registerObserverForAppChangeUri(Landroid/net/Uri;Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;)V

    .line 515
    return-void
.end method

.method public registerAppsChangeListener(Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;

    .prologue
    .line 502
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0}, Lcom/oculus/libraryapi/LibraryProvider;->getQueryAllUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->registerObserverForAppChangeUri(Landroid/net/Uri;Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;)V

    .line 503
    return-void
.end method

.method public registerDownloadListener(Lcom/oculus/libraryapi/OVRLibrary$DownloadListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oculus/libraryapi/OVRLibrary$DownloadListener;

    .prologue
    .line 447
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0}, Lcom/oculus/libraryapi/LibraryProvider;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->registerObserverForDownloadUri(Landroid/net/Uri;Lcom/oculus/libraryapi/OVRLibrary$DownloadListener;)V

    .line 448
    return-void
.end method

.method public registerInstallListener(Lcom/oculus/libraryapi/OVRLibrary$InstallListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oculus/libraryapi/OVRLibrary$InstallListener;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0}, Lcom/oculus/libraryapi/LibraryProvider;->getAllInstallsUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->registerObserverForInstallUri(Landroid/net/Uri;Lcom/oculus/libraryapi/OVRLibrary$InstallListener;)V

    .line 397
    return-void
.end method

.method public save(Lcom/oculus/library/model/App;)V
    .locals 1
    .param p1, "app"    # Lcom/oculus/library/model/App;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0, p1}, Lcom/oculus/libraryapi/LibraryProvider;->save(Lcom/oculus/library/model/App;)V

    .line 293
    return-void
.end method

.method public setBinaryId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "binaryId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 683
    invoke-virtual {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v0

    .line 684
    .local v0, "app":Lcom/oculus/library/model/App;
    if-eqz v0, :cond_0

    .line 685
    new-instance v1, Lcom/oculus/library/model/App$Builder;

    .line 686
    invoke-virtual {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oculus/library/model/App$Builder;-><init>(Lcom/oculus/library/model/App;)V

    .line 687
    invoke-virtual {v1, p2}, Lcom/oculus/library/model/App$Builder;->withInstalledBinaryId(Ljava/lang/String;)Lcom/oculus/library/model/App$Builder;

    move-result-object v1

    .line 688
    invoke-virtual {v1}, Lcom/oculus/library/model/App$Builder;->build()Lcom/oculus/library/model/App;

    move-result-object v1

    .line 685
    invoke-virtual {p0, v1}, Lcom/oculus/libraryapi/OVRLibrary;->save(Lcom/oculus/library/model/App;)V

    .line 692
    :goto_0
    return-void

    .line 690
    :cond_0
    const-string v1, "OVRLibrary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", not in library"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setUnseenBadge(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isUnseen"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 668
    invoke-virtual {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v0

    .line 669
    .local v0, "app":Lcom/oculus/library/model/App;
    if-eqz v0, :cond_0

    .line 670
    new-instance v1, Lcom/oculus/library/model/App$Builder;

    invoke-virtual {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oculus/library/model/App$Builder;-><init>(Lcom/oculus/library/model/App;)V

    invoke-virtual {v1, p2}, Lcom/oculus/library/model/App$Builder;->withUnseen(Z)Lcom/oculus/library/model/App$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/library/model/App$Builder;->build()Lcom/oculus/library/model/App;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oculus/libraryapi/OVRLibrary;->save(Lcom/oculus/library/model/App;)V

    .line 674
    :goto_0
    return-void

    .line 672
    :cond_0
    const-string v1, "OVRLibrary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", not in library"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public uninstall(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 607
    sget-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->UNKNOWN:Lcom/oculus/appmanager/info/model/RequestOrigin;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/oculus/libraryapi/OVRLibrary;->uninstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallerCallback;)V

    .line 608
    return-void
.end method

.method public uninstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallerCallback;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "origin"    # Lcom/oculus/appmanager/info/model/RequestOrigin;
    .param p3, "callback"    # Lcom/oculus/library/model/InstallerCallback;

    .prologue
    .line 330
    invoke-direct {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 331
    if-eqz p3, :cond_0

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/oculus/appmanager/info/model/InstallerResultError;->NOT_INSTALLED:Lcom/oculus/appmanager/info/model/InstallerResultError;

    .line 333
    invoke-static {p1, v0, v1, v2}, Lcom/oculus/appmanager/info/model/InstallerResult;->createForError(Ljava/lang/String;JLcom/oculus/appmanager/info/model/InstallerResultError;)Lcom/oculus/appmanager/info/model/InstallerResult;

    move-result-object v0

    .line 332
    invoke-interface {p3, v0}, Lcom/oculus/library/model/InstallerCallback;->onInstallerResult(Lcom/oculus/appmanager/info/model/InstallerResult;)V

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->canUninstall(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 339
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

    .line 340
    if-eqz p3, :cond_0

    .line 344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/oculus/appmanager/info/model/InstallerResultError;->NOT_MANAGED_BY_OCULUS:Lcom/oculus/appmanager/info/model/InstallerResultError;

    .line 342
    invoke-static {p1, v0, v1, v2}, Lcom/oculus/appmanager/info/model/InstallerResult;->createForError(Ljava/lang/String;JLcom/oculus/appmanager/info/model/InstallerResultError;)Lcom/oculus/appmanager/info/model/InstallerResult;

    move-result-object v0

    .line 341
    invoke-interface {p3, v0}, Lcom/oculus/library/model/InstallerCallback;->onInstallerResult(Lcom/oculus/appmanager/info/model/InstallerResult;)V

    goto :goto_0

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0, p1, p2, p3}, Lcom/oculus/libraryapi/LibraryProvider;->uninstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallerCallback;)V

    goto :goto_0
.end method

.method public uninstallAwait(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)Lcom/oculus/appmanager/info/model/InstallerResult;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "origin"    # Lcom/oculus/appmanager/info/model/RequestOrigin;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0, p1, p2}, Lcom/oculus/libraryapi/LibraryProvider;->uninstallAwait(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)Lcom/oculus/appmanager/info/model/InstallerResult;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized unregisterAppChangeListener(Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;

    .prologue
    .line 524
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 525
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/oculus/libraryapi/OVRLibrary;->mEntitlementListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    .local v1, "contentObservers":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;>;"
    if-nez v1, :cond_1

    .line 535
    :cond_0
    monitor-exit p0

    return-void

    .line 529
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;

    .line 530
    .local v0, "contentObserver":Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;
    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 531
    iget-object v4, v0, Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;->handler:Landroid/os/Handler;

    if-eqz v4, :cond_2

    .line 532
    iget-object v4, v0, Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;->handler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 524
    .end local v0    # "contentObserver":Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;
    .end local v1    # "contentObservers":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;>;"
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized unregisterDownloadListener(Lcom/oculus/libraryapi/OVRLibrary$DownloadListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/oculus/libraryapi/OVRLibrary$DownloadListener;

    .prologue
    .line 457
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 458
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/oculus/libraryapi/OVRLibrary;->mDownloadListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    .local v1, "contentObservers":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;>;"
    if-nez v1, :cond_1

    .line 468
    :cond_0
    monitor-exit p0

    return-void

    .line 462
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;

    .line 463
    .local v0, "contentObserver":Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;
    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 464
    iget-object v4, v0, Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;->handler:Landroid/os/Handler;

    if-eqz v4, :cond_2

    .line 465
    iget-object v4, v0, Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;->handler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 457
    .end local v0    # "contentObserver":Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;
    .end local v1    # "contentObservers":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;>;"
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized unregisterInstallListener(Lcom/oculus/libraryapi/OVRLibrary$InstallListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/oculus/libraryapi/OVRLibrary$InstallListener;

    .prologue
    .line 406
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/oculus/libraryapi/OVRLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 407
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/oculus/libraryapi/OVRLibrary;->mInstallListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    .local v1, "contentObservers":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;>;"
    if-nez v1, :cond_1

    .line 417
    :cond_0
    monitor-exit p0

    return-void

    .line 411
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;

    .line 412
    .local v0, "contentObserver":Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;
    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 413
    iget-object v4, v0, Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;->handler:Landroid/os/Handler;

    if-eqz v4, :cond_2

    .line 414
    iget-object v4, v0, Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;->handler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 406
    .end local v0    # "contentObserver":Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;
    .end local v1    # "contentObservers":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;>;"
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public updateLatestActivityMs(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 617
    invoke-virtual {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v0

    .line 618
    .local v0, "app":Lcom/oculus/library/model/App;
    if-eqz v0, :cond_0

    .line 619
    new-instance v1, Lcom/oculus/library/model/App$Builder;

    .line 620
    invoke-virtual {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oculus/library/model/App$Builder;-><init>(Lcom/oculus/library/model/App;)V

    .line 621
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/oculus/library/model/App$Builder;->withRecentActivityMs(J)Lcom/oculus/library/model/App$Builder;

    move-result-object v1

    .line 622
    invoke-virtual {v1}, Lcom/oculus/library/model/App$Builder;->build()Lcom/oculus/library/model/App;

    move-result-object v1

    .line 619
    invoke-virtual {p0, v1}, Lcom/oculus/libraryapi/OVRLibrary;->save(Lcom/oculus/library/model/App;)V

    .line 626
    :goto_0
    return-void

    .line 624
    :cond_0
    const-string v1, "OVRLibrary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", not in library"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateStatus(Ljava/lang/String;Lcom/oculus/library/model/AppStatus;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/oculus/library/model/AppStatus;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 653
    invoke-virtual {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v0

    .line 654
    .local v0, "app":Lcom/oculus/library/model/App;
    if-eqz v0, :cond_0

    .line 655
    new-instance v1, Lcom/oculus/library/model/App$Builder;

    invoke-virtual {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oculus/library/model/App$Builder;-><init>(Lcom/oculus/library/model/App;)V

    invoke-virtual {v1, p2}, Lcom/oculus/library/model/App$Builder;->withStatus(Lcom/oculus/library/model/AppStatus;)Lcom/oculus/library/model/App$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/library/model/App$Builder;->build()Lcom/oculus/library/model/App;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oculus/libraryapi/OVRLibrary;->save(Lcom/oculus/library/model/App;)V

    .line 659
    :goto_0
    return-void

    .line 657
    :cond_0
    const-string v1, "OVRLibrary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", not in library"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateUserQualityRating(Ljava/lang/String;J)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "qualityRating"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 635
    invoke-virtual {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v0

    .line 636
    .local v0, "app":Lcom/oculus/library/model/App;
    if-eqz v0, :cond_0

    .line 637
    new-instance v1, Lcom/oculus/library/model/App$Builder;

    .line 638
    invoke-virtual {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oculus/library/model/App$Builder;-><init>(Lcom/oculus/library/model/App;)V

    .line 639
    invoke-virtual {v1, p2, p3}, Lcom/oculus/library/model/App$Builder;->withUserQualityRating(J)Lcom/oculus/library/model/App$Builder;

    move-result-object v1

    .line 640
    invoke-virtual {v1}, Lcom/oculus/library/model/App$Builder;->build()Lcom/oculus/library/model/App;

    move-result-object v1

    .line 637
    invoke-virtual {p0, v1}, Lcom/oculus/libraryapi/OVRLibrary;->save(Lcom/oculus/library/model/App;)V

    .line 644
    :goto_0
    return-void

    .line 642
    :cond_0
    const-string v1, "OVRLibrary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", not in library"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
