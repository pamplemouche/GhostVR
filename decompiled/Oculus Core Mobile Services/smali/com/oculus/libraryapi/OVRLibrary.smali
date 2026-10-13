.class public Lcom/oculus/libraryapi/OVRLibrary;
.super Ljava/lang/Object;
.source "OVRLibrary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;,
        Lcom/oculus/libraryapi/OVRLibrary$InstallListener;
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private final mDownloadListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mEntitlementListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
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
.method public downloadAndInstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallerCallback;)V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibrary;->mLibrary:Lcom/oculus/libraryapi/LibraryProvider;

    invoke-interface {v0, p1, p2, p3}, Lcom/oculus/libraryapi/LibraryProvider;->downloadAndInstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallerCallback;)V

    .line 273
    return-void
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
