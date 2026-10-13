.class public Lcom/oculus/modules/LibraryModuleImpl;
.super Lcom/oculus/modules/codegen/LibraryModule;
.source "LibraryModuleImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/modules/LibraryModuleImpl$PermissionInfoResponse;
    }
.end annotation


# static fields
.field private static final GSON:Lcom/google/gson/Gson;

.field private static OVR_LIBRARY:Lcom/oculus/libraryapi/OVRLibrary;

.field private static final TAG:Ljava/lang/String;

.field private static final UNKNOWN_SOURCES_BLACKLIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/oculus/modules/LibraryModuleImpl;

.field private static final mInstanceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static mLibrary:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final mLibraryChangeEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mLibraryChangeEventsLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final mLibraryLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static mLibraryResolver:Lcom/oculus/modules/codegen/Resolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 59
    const-class v0, Lcom/oculus/modules/LibraryModuleImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/LibraryModuleImpl;->TAG:Ljava/lang/String;

    .line 60
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/oculus/modules/LibraryModuleImpl;->GSON:Lcom/google/gson/Gson;

    .line 62
    sput-object v5, Lcom/oculus/modules/LibraryModuleImpl;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.oculus.home"

    aput-object v3, v1, v2

    const-string v2, "com.oculus.horizon"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "com.oculus.mediaplayer"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "com.oculus.systemactivities"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "com.oculus.systemutilities"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "com.oculus.systemux"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "com.oculus.vrshell"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "com.oculus.vrshell.home"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "com.samsung.android.app.vrsetupwizard"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "com.samsung.android.app.vrsetupwizardstub"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "com.samsung.android.hmt.vrsvc"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "com.samsung.android.hmt.vrsystem"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/oculus/modules/LibraryModuleImpl;->UNKNOWN_SOURCES_BLACKLIST:Ljava/util/Set;

    .line 79
    sput-object v5, Lcom/oculus/modules/LibraryModuleImpl;->mInstance:Lcom/oculus/modules/LibraryModuleImpl;

    .line 80
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0, v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    sput-object v0, Lcom/oculus/modules/LibraryModuleImpl;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oculus/modules/LibraryModuleImpl;->mLibraryChangeEvents:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    sput-object v0, Lcom/oculus/modules/LibraryModuleImpl;->mLibraryChangeEventsLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 83
    sput-object v5, Lcom/oculus/modules/LibraryModuleImpl;->mLibrary:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    sput-object v0, Lcom/oculus/modules/LibraryModuleImpl;->mLibraryLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 85
    sput-object v5, Lcom/oculus/modules/LibraryModuleImpl;->mLibraryResolver:Lcom/oculus/modules/codegen/Resolver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/oculus/modules/codegen/LibraryModule;-><init>()V

    .line 88
    sput-object p1, Lcom/oculus/modules/LibraryModuleImpl;->mContext:Landroid/content/Context;

    .line 95
    new-instance v0, Lcom/oculus/libraryapi/OVRLibrary;

    invoke-direct {v0, p1}, Lcom/oculus/libraryapi/OVRLibrary;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oculus/modules/LibraryModuleImpl;->OVR_LIBRARY:Lcom/oculus/libraryapi/OVRLibrary;

    .line 97
    sget-object v0, Lcom/oculus/modules/LibraryModuleImpl;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 99
    :try_start_0
    sput-object p0, Lcom/oculus/modules/LibraryModuleImpl;->mInstance:Lcom/oculus/modules/LibraryModuleImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    sget-object v0, Lcom/oculus/modules/LibraryModuleImpl;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 103
    return-void

    .line 101
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/oculus/modules/LibraryModuleImpl;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/oculus/modules/LibraryModuleImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Lcom/oculus/modules/codegen/Resolver;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/oculus/modules/LibraryModuleImpl;->mLibraryResolver:Lcom/oculus/modules/codegen/Resolver;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oculus/modules/LibraryModuleImpl;Ljava/lang/String;)Lcom/oculus/appmanager/info/model/RequestOrigin;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/modules/LibraryModuleImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/oculus/modules/LibraryModuleImpl;->getRequestOriginFromString(Ljava/lang/String;)Lcom/oculus/appmanager/info/model/RequestOrigin;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/oculus/modules/LibraryModuleImpl;->mLibraryLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/List;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/oculus/modules/LibraryModuleImpl;->mLibrary:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Ljava/util/List;

    .prologue
    .line 58
    sput-object p0, Lcom/oculus/modules/LibraryModuleImpl;->mLibrary:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400()Lcom/google/gson/Gson;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/oculus/modules/LibraryModuleImpl;->GSON:Lcom/google/gson/Gson;

    return-object v0
.end method

.method static synthetic access$500()Landroid/content/Context;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/oculus/modules/LibraryModuleImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600()Lcom/oculus/libraryapi/OVRLibrary;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/oculus/modules/LibraryModuleImpl;->OVR_LIBRARY:Lcom/oculus/libraryapi/OVRLibrary;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oculus/modules/LibraryModuleImpl;Landroid/content/pm/ApplicationInfo;Ljava/util/HashSet;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oculus/modules/LibraryModuleImpl;
    .param p1, "x1"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "x2"    # Ljava/util/HashSet;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/oculus/modules/LibraryModuleImpl;->isUnknownSource(Landroid/content/pm/ApplicationInfo;Ljava/util/HashSet;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/oculus/modules/LibraryModuleImpl;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/modules/LibraryModuleImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/oculus/modules/LibraryModuleImpl;->createUnknownSourceEntry(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/oculus/modules/LibraryModuleImpl;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/oculus/modules/LibraryModuleImpl;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/oculus/modules/LibraryModuleImpl;->fetchSideloadedApps(Ljava/util/List;)V

    return-void
.end method

.method private createUnknownSourceEntry(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "applicationName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 289
    .local v0, "unknownSource":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "packageName"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v1, "applicationName"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    return-object v0
.end method

.method private emitLibraryUpdate(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 210
    new-instance v0, Lcom/oculus/modules/codegen/LibraryModule$LibraryUpdate;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/LibraryModule$LibraryUpdate;-><init>()V

    .line 211
    .local v0, "update":Lcom/oculus/modules/codegen/LibraryModule$LibraryUpdate;
    iput-object p1, v0, Lcom/oculus/modules/codegen/LibraryModule$LibraryUpdate;->packageName:Ljava/lang/String;

    .line 212
    invoke-virtual {p0, v0}, Lcom/oculus/modules/LibraryModuleImpl;->emitOnLibraryUpdated(Lcom/oculus/modules/codegen/LibraryModule$LibraryUpdate;)V

    .line 213
    return-void
.end method

.method public static fetchLibraryAsync(Lcom/oculus/libraryapi/OVRLibrary;)V
    .locals 3
    .param p0, "ovrLibrary"    # Lcom/oculus/libraryapi/OVRLibrary;

    .prologue
    .line 115
    invoke-static {}, Lcom/oculus/panellib/ThreadExecutor;->getInstance()Lcom/oculus/panellib/ThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/oculus/modules/LibraryModuleImpl$1;

    invoke-direct {v1, p0}, Lcom/oculus/modules/LibraryModuleImpl$1;-><init>(Lcom/oculus/libraryapi/OVRLibrary;)V

    new-instance v2, Lcom/oculus/modules/LibraryModuleImpl$2;

    invoke-direct {v2}, Lcom/oculus/modules/LibraryModuleImpl$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/oculus/panellib/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;Lcom/google/common/util/concurrent/FutureCallback;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    .line 160
    return-void
.end method

.method private fetchSideloadedApps(Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 646
    .local p1, "unknownSources":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    sget-object v16, Lcom/oculus/modules/LibraryModuleImpl;->mContext:Landroid/content/Context;

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 648
    .local v15, "pm":Landroid/content/pm/PackageManager;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v14, v0, [Ljava/lang/Class;

    .line 649
    .local v14, "paramsTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/16 v16, 0x0

    const-class v17, Landroid/content/Context;

    aput-object v17, v14, v16

    .line 650
    const/16 v16, 0x1

    const-class v17, Ljava/lang/String;

    aput-object v17, v14, v16

    .line 652
    :try_start_0
    const-string v16, "oculus.internal.app.OculusGoPackageTypeHelper"

    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 653
    .local v7, "c":Ljava/lang/Class;
    const-string v16, "getPackageType"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 654
    .local v10, "method":Ljava/lang/reflect/Method;
    const-string v16, "SIDE_LOADED_NON_VR_APP"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v7, v1}, Lcom/oculus/modules/LibraryModuleImpl;->getDeclaredIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v2

    .line 655
    .local v2, "SIDE_LOADED_NON_VR_APP":I
    const-string v16, "SIDE_LOADED_VR_APP"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v7, v1}, Lcom/oculus/modules/LibraryModuleImpl;->getDeclaredIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v3

    .line 656
    .local v3, "SIDE_LOADED_VR_APP":I
    const-string v16, "WHITE_LISTED_NON_VR_APP"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v7, v1}, Lcom/oculus/modules/LibraryModuleImpl;->getDeclaredIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v4

    .line 657
    .local v4, "WHITE_LISTED_NON_VR_APP":I
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v13, v0, [Ljava/lang/Object;

    .line 658
    .local v13, "parameters":[Ljava/lang/Object;
    const/16 v16, 0x0

    sget-object v17, Lcom/oculus/modules/LibraryModuleImpl;->mContext:Landroid/content/Context;

    aput-object v17, v13, v16

    .line 659
    const/16 v16, 0x80

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 660
    .local v5, "application":Landroid/content/pm/ApplicationInfo;
    const/16 v17, 0x1

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v13, v17

    .line 661
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 662
    .local v11, "oPackageType":Ljava/lang/Object;
    check-cast v11, Ljava/lang/Integer;

    .end local v11    # "oPackageType":Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 663
    .local v12, "packageType":I
    if-eq v12, v2, :cond_1

    if-eq v12, v3, :cond_1

    if-ne v12, v4, :cond_3

    :cond_1
    const/4 v9, 0x1

    .line 666
    .local v9, "isUnknown":Z
    :goto_1
    if-eqz v9, :cond_0

    .line 667
    invoke-virtual {v15, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 668
    .local v6, "applicationLabel":Ljava/lang/String;
    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v6}, Lcom/oculus/modules/LibraryModuleImpl;->createUnknownSourceEntry(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 671
    .end local v2    # "SIDE_LOADED_NON_VR_APP":I
    .end local v3    # "SIDE_LOADED_VR_APP":I
    .end local v4    # "WHITE_LISTED_NON_VR_APP":I
    .end local v5    # "application":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "applicationLabel":Ljava/lang/String;
    .end local v7    # "c":Ljava/lang/Class;
    .end local v9    # "isUnknown":Z
    .end local v10    # "method":Ljava/lang/reflect/Method;
    .end local v12    # "packageType":I
    .end local v13    # "parameters":[Ljava/lang/Object;
    :catch_0
    move-exception v8

    .line 672
    .local v8, "e":Ljava/lang/Exception;
    sget-object v16, Lcom/oculus/modules/LibraryModuleImpl;->TAG:Ljava/lang/String;

    const-string v17, "Exception: "

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 674
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_2
    return-void

    .line 663
    .restart local v2    # "SIDE_LOADED_NON_VR_APP":I
    .restart local v3    # "SIDE_LOADED_VR_APP":I
    .restart local v4    # "WHITE_LISTED_NON_VR_APP":I
    .restart local v5    # "application":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "c":Ljava/lang/Class;
    .restart local v10    # "method":Ljava/lang/reflect/Method;
    .restart local v12    # "packageType":I
    .restart local v13    # "parameters":[Ljava/lang/Object;
    :cond_3
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private getDeclaredIntField(Ljava/lang/Class;Ljava/lang/String;)I
    .locals 2
    .param p1, "c"    # Ljava/lang/Class;
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 677
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 678
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static getPermissionInfoResponse(Ljava/lang/String;)Lcom/oculus/modules/LibraryModuleImpl$PermissionInfoResponse;
    .locals 6
    .param p0, "permissionName"    # Ljava/lang/String;

    .prologue
    .line 694
    sget-object v4, Lcom/oculus/modules/LibraryModuleImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 696
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Lcom/oculus/modules/LibraryModuleImpl$PermissionInfoResponse;

    invoke-direct {v3}, Lcom/oculus/modules/LibraryModuleImpl$PermissionInfoResponse;-><init>()V

    .line 697
    .local v3, "response":Lcom/oculus/modules/LibraryModuleImpl$PermissionInfoResponse;
    iput-object p0, v3, Lcom/oculus/modules/LibraryModuleImpl$PermissionInfoResponse;->name:Ljava/lang/String;

    .line 700
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p0, v4}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v1

    .line 701
    .local v1, "permissionInfo":Landroid/content/pm/PermissionInfo;
    iget-object v4, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    iput-object v4, v3, Lcom/oculus/modules/LibraryModuleImpl$PermissionInfoResponse;->groupName:Ljava/lang/String;

    .line 702
    iget-object v4, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v4, v3, Lcom/oculus/modules/LibraryModuleImpl$PermissionInfoResponse;->packageName:Ljava/lang/String;

    .line 703
    invoke-virtual {v1, v2}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Lcom/oculus/modules/LibraryModuleImpl$PermissionInfoResponse;->label:Ljava/lang/CharSequence;

    .line 704
    invoke-virtual {v1, v2}, Landroid/content/pm/PermissionInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Lcom/oculus/modules/LibraryModuleImpl$PermissionInfoResponse;->description:Ljava/lang/CharSequence;

    .line 705
    iget v4, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iput v4, v3, Lcom/oculus/modules/LibraryModuleImpl$PermissionInfoResponse;->protectionLevel:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    :try_start_1
    iget-object v4, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v0

    .line 709
    .local v0, "groupInfo":Landroid/content/pm/PermissionGroupInfo;
    iget v4, v0, Landroid/content/pm/PermissionGroupInfo;->priority:I

    iput v4, v3, Lcom/oculus/modules/LibraryModuleImpl$PermissionInfoResponse;->groupPriority:I

    .line 710
    invoke-virtual {v0, v2}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Lcom/oculus/modules/LibraryModuleImpl$PermissionInfoResponse;->groupLabel:Ljava/lang/CharSequence;

    .line 711
    invoke-virtual {v0, v2}, Landroid/content/pm/PermissionGroupInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Lcom/oculus/modules/LibraryModuleImpl$PermissionInfoResponse;->groupDescription:Ljava/lang/CharSequence;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 714
    .end local v0    # "groupInfo":Landroid/content/pm/PermissionGroupInfo;
    .end local v1    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    :goto_0
    return-object v3

    .line 713
    :catch_0
    move-exception v4

    goto :goto_0

    .line 712
    .restart local v1    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private getRequestOriginFromString(Ljava/lang/String;)Lcom/oculus/appmanager/info/model/RequestOrigin;
    .locals 5
    .param p1, "requestOrigin"    # Ljava/lang/String;

    .prologue
    .line 387
    :try_start_0
    invoke-static {p1}, Lcom/oculus/appmanager/info/model/RequestOrigin;->valueOf(Ljava/lang/String;)Lcom/oculus/appmanager/info/model/RequestOrigin;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 392
    .local v1, "source":Lcom/oculus/appmanager/info/model/RequestOrigin;
    :goto_0
    return-object v1

    .line 388
    .end local v1    # "source":Lcom/oculus/appmanager/info/model/RequestOrigin;
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/oculus/modules/LibraryModuleImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal request origin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    sget-object v1, Lcom/oculus/appmanager/info/model/RequestOrigin;->UNKNOWN:Lcom/oculus/appmanager/info/model/RequestOrigin;

    .restart local v1    # "source":Lcom/oculus/appmanager/info/model/RequestOrigin;
    goto :goto_0
.end method

.method private isUnknownSource(Landroid/content/pm/ApplicationInfo;Ljava/util/HashSet;)Z
    .locals 5
    .param p1, "application"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "libraryPackageNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 276
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 277
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 278
    sget-object v2, Lcom/oculus/modules/LibraryModuleImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load meta-data for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    :goto_0
    return v1

    .line 282
    :cond_1
    const-string v2, "com.samsung.android.vr.application.mode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 283
    invoke-virtual {p2, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/oculus/modules/LibraryModuleImpl;->UNKNOWN_SOURCES_BLACKLIST:Ljava/util/Set;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 284
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static notifyLibraryChanged(Ljava/lang/String;)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 163
    sget-object v0, Lcom/oculus/modules/LibraryModuleImpl;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 165
    :try_start_0
    sget-object v0, Lcom/oculus/modules/LibraryModuleImpl;->mInstance:Lcom/oculus/modules/LibraryModuleImpl;

    if-eqz v0, :cond_0

    .line 166
    sget-object v0, Lcom/oculus/modules/LibraryModuleImpl;->mInstance:Lcom/oculus/modules/LibraryModuleImpl;

    invoke-direct {v0, p0}, Lcom/oculus/modules/LibraryModuleImpl;->emitLibraryUpdate(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :goto_0
    sget-object v0, Lcom/oculus/modules/LibraryModuleImpl;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 178
    return-void

    .line 168
    :cond_0
    :try_start_1
    sget-object v0, Lcom/oculus/modules/LibraryModuleImpl;->mLibraryChangeEventsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    :try_start_2
    sget-object v0, Lcom/oculus/modules/LibraryModuleImpl;->mLibraryChangeEvents:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 172
    :try_start_3
    sget-object v0, Lcom/oculus/modules/LibraryModuleImpl;->mLibraryChangeEventsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/oculus/modules/LibraryModuleImpl;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0

    .line 172
    :catchall_1
    move-exception v0

    :try_start_4
    sget-object v1, Lcom/oculus/modules/LibraryModuleImpl;->mLibraryChangeEventsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method


# virtual methods
.method protected addLibraryItemImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 2
    .param p1, "libraryItemJson"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 362
    .local p2, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/oculus/panellib/ThreadExecutor;->getInstance()Lcom/oculus/panellib/ThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/oculus/modules/LibraryModuleImpl$9;

    invoke-direct {v1, p0, p2}, Lcom/oculus/modules/LibraryModuleImpl$9;-><init>(Lcom/oculus/modules/LibraryModuleImpl;Lcom/oculus/modules/codegen/Resolver;)V

    invoke-virtual {v0, v1}, Lcom/oculus/panellib/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    .line 382
    return-void
.end method

.method public cancelDownloadImpl(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 435
    invoke-static {}, Lcom/oculus/panellib/ThreadExecutor;->getInstance()Lcom/oculus/panellib/ThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/oculus/modules/LibraryModuleImpl$13;

    invoke-direct {v1, p0, p1}, Lcom/oculus/modules/LibraryModuleImpl$13;-><init>(Lcom/oculus/modules/LibraryModuleImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oculus/panellib/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    .line 442
    return-void
.end method

.method public downloadAndInstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "requestOrigin"    # Lcom/oculus/appmanager/info/model/RequestOrigin;

    .prologue
    .line 402
    invoke-static {}, Lcom/oculus/panellib/ThreadExecutor;->getInstance()Lcom/oculus/panellib/ThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/oculus/modules/LibraryModuleImpl$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/oculus/modules/LibraryModuleImpl$10;-><init>(Lcom/oculus/modules/LibraryModuleImpl;Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)V

    invoke-virtual {v0, v1}, Lcom/oculus/panellib/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    .line 409
    return-void
.end method

.method protected downloadAndInstallAsyncImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "requestOrigin"    # Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 413
    .local p3, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    new-instance v0, Lcom/oculus/modules/LibraryModuleImpl$11;

    invoke-direct {v0, p0, p3}, Lcom/oculus/modules/LibraryModuleImpl$11;-><init>(Lcom/oculus/modules/LibraryModuleImpl;Lcom/oculus/modules/codegen/Resolver;)V

    .line 424
    .local v0, "callback":Lcom/oculus/library/model/InstallerCallback;
    invoke-static {}, Lcom/oculus/panellib/ThreadExecutor;->getInstance()Lcom/oculus/panellib/ThreadExecutor;

    move-result-object v1

    new-instance v2, Lcom/oculus/modules/LibraryModuleImpl$12;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/oculus/modules/LibraryModuleImpl$12;-><init>(Lcom/oculus/modules/LibraryModuleImpl;Ljava/lang/String;Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;Lcom/oculus/library/model/InstallerCallback;)V

    invoke-virtual {v1, v2}, Lcom/oculus/panellib/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    .line 431
    return-void
.end method

.method protected downloadAndInstallImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "requestOrigin"    # Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;

    .prologue
    .line 397
    invoke-virtual {p2}, Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oculus/modules/LibraryModuleImpl;->getRequestOriginFromString(Ljava/lang/String;)Lcom/oculus/appmanager/info/model/RequestOrigin;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/oculus/modules/LibraryModuleImpl;->downloadAndInstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)V

    .line 398
    return-void
.end method

.method protected fetchLibraryAsyncImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p1, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/util/List<Lorg/json/JSONObject;>;>;"
    invoke-static {}, Lcom/oculus/panellib/ThreadExecutor;->getInstance()Lcom/oculus/panellib/ThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/oculus/modules/LibraryModuleImpl$5;

    invoke-direct {v1, p0}, Lcom/oculus/modules/LibraryModuleImpl$5;-><init>(Lcom/oculus/modules/LibraryModuleImpl;)V

    new-instance v2, Lcom/oculus/modules/LibraryModuleImpl$6;

    invoke-direct {v2, p0, p1}, Lcom/oculus/modules/LibraryModuleImpl$6;-><init>(Lcom/oculus/modules/LibraryModuleImpl;Lcom/oculus/modules/codegen/Resolver;)V

    invoke-virtual {v0, v1, v2}, Lcom/oculus/panellib/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;Lcom/google/common/util/concurrent/FutureCallback;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    .line 327
    return-void
.end method

.method protected fetchLibraryItemAsyncImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 331
    .local p2, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lorg/json/JSONObject;>;"
    invoke-static {}, Lcom/oculus/panellib/ThreadExecutor;->getInstance()Lcom/oculus/panellib/ThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/oculus/modules/LibraryModuleImpl$7;

    invoke-direct {v1, p0, p1}, Lcom/oculus/modules/LibraryModuleImpl$7;-><init>(Lcom/oculus/modules/LibraryModuleImpl;Ljava/lang/String;)V

    new-instance v2, Lcom/oculus/modules/LibraryModuleImpl$8;

    invoke-direct {v2, p0, p2}, Lcom/oculus/modules/LibraryModuleImpl$8;-><init>(Lcom/oculus/modules/LibraryModuleImpl;Lcom/oculus/modules/codegen/Resolver;)V

    invoke-virtual {v0, v1, v2}, Lcom/oculus/panellib/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;Lcom/google/common/util/concurrent/FutureCallback;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    .line 358
    return-void
.end method

.method protected fetchUnknownSourcesAsyncImpl(ZLcom/oculus/modules/codegen/Resolver;)V
    .locals 3
    .param p1, "displaySideloadedAppsEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p2, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/util/List<Lorg/json/JSONObject;>;>;"
    invoke-static {}, Lcom/oculus/panellib/ThreadExecutor;->getInstance()Lcom/oculus/panellib/ThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/oculus/modules/LibraryModuleImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/oculus/modules/LibraryModuleImpl$3;-><init>(Lcom/oculus/modules/LibraryModuleImpl;Z)V

    new-instance v2, Lcom/oculus/modules/LibraryModuleImpl$4;

    invoke-direct {v2, p0, p2}, Lcom/oculus/modules/LibraryModuleImpl$4;-><init>(Lcom/oculus/modules/LibraryModuleImpl;Lcom/oculus/modules/codegen/Resolver;)V

    invoke-virtual {v0, v1, v2}, Lcom/oculus/panellib/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;Lcom/google/common/util/concurrent/FutureCallback;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    .line 273
    return-void
.end method

.method protected getInitialLibraryImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/util/List<Lorg/json/JSONObject;>;>;"
    sget-object v1, Lcom/oculus/modules/LibraryModuleImpl;->mLibraryLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 186
    :try_start_0
    sget-object v1, Lcom/oculus/modules/LibraryModuleImpl;->mLibrary:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 188
    sget-object v1, Lcom/oculus/modules/LibraryModuleImpl;->mLibrary:Ljava/util/List;

    invoke-interface {p1, v1}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 189
    const/4 v1, 0x0

    sput-object v1, Lcom/oculus/modules/LibraryModuleImpl;->mLibrary:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 196
    :goto_0
    sget-object v1, Lcom/oculus/modules/LibraryModuleImpl;->mLibraryLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 198
    sget-object v1, Lcom/oculus/modules/LibraryModuleImpl;->mLibraryChangeEventsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 200
    :try_start_1
    sget-object v1, Lcom/oculus/modules/LibraryModuleImpl;->mLibraryChangeEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 201
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/oculus/modules/LibraryModuleImpl;->emitLibraryUpdate(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 205
    .end local v0    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    sget-object v2, Lcom/oculus/modules/LibraryModuleImpl;->mLibraryChangeEventsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 193
    :cond_0
    :try_start_2
    sput-object p1, Lcom/oculus/modules/LibraryModuleImpl;->mLibraryResolver:Lcom/oculus/modules/codegen/Resolver;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 196
    :catchall_1
    move-exception v1

    sget-object v2, Lcom/oculus/modules/LibraryModuleImpl;->mLibraryLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 203
    :cond_1
    :try_start_3
    sget-object v1, Lcom/oculus/modules/LibraryModuleImpl;->mLibraryChangeEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 205
    sget-object v1, Lcom/oculus/modules/LibraryModuleImpl;->mLibraryChangeEventsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 207
    return-void
.end method

.method protected getInstalledAppPermissionsImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 531
    .local p2, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/util/List<Lorg/json/JSONObject;>;>;"
    invoke-static {}, Lcom/oculus/panellib/ThreadExecutor;->getInstance()Lcom/oculus/panellib/ThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/oculus/modules/LibraryModuleImpl$20;

    invoke-direct {v1, p0, p1}, Lcom/oculus/modules/LibraryModuleImpl$20;-><init>(Lcom/oculus/modules/LibraryModuleImpl;Ljava/lang/String;)V

    new-instance v2, Lcom/oculus/modules/LibraryModuleImpl$21;

    invoke-direct {v2, p0, p2}, Lcom/oculus/modules/LibraryModuleImpl$21;-><init>(Lcom/oculus/modules/LibraryModuleImpl;Lcom/oculus/modules/codegen/Resolver;)V

    invoke-virtual {v0, v1, v2}, Lcom/oculus/panellib/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;Lcom/google/common/util/concurrent/FutureCallback;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    .line 574
    return-void
.end method

.method protected getPermissionInfoAsyncImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 3
    .param p1, "permissionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 578
    .local p2, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lorg/json/JSONObject;>;"
    invoke-static {}, Lcom/oculus/panellib/ThreadExecutor;->getInstance()Lcom/oculus/panellib/ThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/oculus/modules/LibraryModuleImpl$22;

    invoke-direct {v1, p0, p1}, Lcom/oculus/modules/LibraryModuleImpl$22;-><init>(Lcom/oculus/modules/LibraryModuleImpl;Ljava/lang/String;)V

    new-instance v2, Lcom/oculus/modules/LibraryModuleImpl$23;

    invoke-direct {v2, p0, p2}, Lcom/oculus/modules/LibraryModuleImpl$23;-><init>(Lcom/oculus/modules/LibraryModuleImpl;Lcom/oculus/modules/codegen/Resolver;)V

    invoke-virtual {v0, v1, v2}, Lcom/oculus/panellib/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;Lcom/google/common/util/concurrent/FutureCallback;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    .line 606
    return-void
.end method

.method protected isInstalledAsyncImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 610
    .local p2, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/oculus/panellib/ThreadExecutor;->getInstance()Lcom/oculus/panellib/ThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/oculus/modules/LibraryModuleImpl$24;

    invoke-direct {v1, p0, p1}, Lcom/oculus/modules/LibraryModuleImpl$24;-><init>(Lcom/oculus/modules/LibraryModuleImpl;Ljava/lang/String;)V

    new-instance v2, Lcom/oculus/modules/LibraryModuleImpl$25;

    invoke-direct {v2, p0, p2}, Lcom/oculus/modules/LibraryModuleImpl$25;-><init>(Lcom/oculus/modules/LibraryModuleImpl;Lcom/oculus/modules/codegen/Resolver;)V

    invoke-virtual {v0, v1, v2}, Lcom/oculus/panellib/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;Lcom/google/common/util/concurrent/FutureCallback;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    .line 638
    return-void
.end method

.method protected networkRefreshAsyncImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 507
    .local p1, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/oculus/panellib/ThreadExecutor;->getInstance()Lcom/oculus/panellib/ThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/oculus/modules/LibraryModuleImpl$19;

    invoke-direct {v1, p0, p1}, Lcom/oculus/modules/LibraryModuleImpl$19;-><init>(Lcom/oculus/modules/LibraryModuleImpl;Lcom/oculus/modules/codegen/Resolver;)V

    invoke-virtual {v0, v1}, Lcom/oculus/panellib/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    .line 527
    return-void
.end method

.method public shutdownModule()V
    .locals 2

    .prologue
    .line 106
    sget-object v0, Lcom/oculus/modules/LibraryModuleImpl;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 108
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/oculus/modules/LibraryModuleImpl;->mInstance:Lcom/oculus/modules/LibraryModuleImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    sget-object v0, Lcom/oculus/modules/LibraryModuleImpl;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 112
    return-void

    .line 110
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/oculus/modules/LibraryModuleImpl;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method protected toggleOffUnseenAsyncImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 483
    .local p2, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/oculus/panellib/ThreadExecutor;->getInstance()Lcom/oculus/panellib/ThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/oculus/modules/LibraryModuleImpl$17;

    invoke-direct {v1, p0, p1}, Lcom/oculus/modules/LibraryModuleImpl$17;-><init>(Lcom/oculus/modules/LibraryModuleImpl;Ljava/lang/String;)V

    new-instance v2, Lcom/oculus/modules/LibraryModuleImpl$18;

    invoke-direct {v2, p0, p2}, Lcom/oculus/modules/LibraryModuleImpl$18;-><init>(Lcom/oculus/modules/LibraryModuleImpl;Lcom/oculus/modules/codegen/Resolver;)V

    invoke-virtual {v0, v1, v2}, Lcom/oculus/panellib/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;Lcom/google/common/util/concurrent/FutureCallback;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    .line 503
    return-void
.end method

.method protected uninstallImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "requestOrigin"    # Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 446
    .local p3, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    new-instance v0, Lcom/oculus/modules/LibraryModuleImpl$14;

    invoke-direct {v0, p0, p3}, Lcom/oculus/modules/LibraryModuleImpl$14;-><init>(Lcom/oculus/modules/LibraryModuleImpl;Lcom/oculus/modules/codegen/Resolver;)V

    .line 458
    .local v0, "callback":Lcom/oculus/library/model/InstallerCallback;
    invoke-static {}, Lcom/oculus/panellib/ThreadExecutor;->getInstance()Lcom/oculus/panellib/ThreadExecutor;

    move-result-object v1

    new-instance v2, Lcom/oculus/modules/LibraryModuleImpl$15;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/oculus/modules/LibraryModuleImpl$15;-><init>(Lcom/oculus/modules/LibraryModuleImpl;Ljava/lang/String;Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;Lcom/oculus/library/model/InstallerCallback;)V

    invoke-virtual {v1, v2}, Lcom/oculus/panellib/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    .line 465
    return-void
.end method

.method protected updateRecentActivityImpl(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 469
    invoke-static {}, Lcom/oculus/panellib/ThreadExecutor;->getInstance()Lcom/oculus/panellib/ThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/oculus/modules/LibraryModuleImpl$16;

    invoke-direct {v1, p0, p1}, Lcom/oculus/modules/LibraryModuleImpl$16;-><init>(Lcom/oculus/modules/LibraryModuleImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oculus/panellib/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    .line 479
    return-void
.end method
