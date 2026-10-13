.class public Lcom/facebook/crudolib/prefs/LightSharedPreferencesFactory;
.super Ljava/lang/Object;
.source "LightSharedPreferencesFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/crudolib/prefs/LightSharedPreferencesFactory$Builder;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final mCommitOnMainThreadPolicy:I

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/crudolib/prefs/LightSharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrivateDir:Ljava/io/File;


# direct methods
.method protected constructor <init>(Ljava/util/concurrent/Executor;Ljava/io/File;I)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesFactory;->mInstances:Ljava/util/Map;

    .line 44
    iput-object p1, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesFactory;->mExecutor:Ljava/util/concurrent/Executor;

    .line 45
    iput-object p2, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesFactory;->mPrivateDir:Ljava/io/File;

    .line 46
    iput p3, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesFactory;->mCommitOnMainThreadPolicy:I

    .line 47
    return-void
.end method

.method static synthetic access$000(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 24
    invoke-static {p0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesFactory;->resolveExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method static createProcessPrivateDir(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    .prologue
    .line 58
    invoke-static {}, Lcom/facebook/crudolib/processname/ProcessNameHelper;->getMyFullProcessName()Ljava/lang/String;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    :goto_0
    new-instance v1, Ljava/io/File;

    const-string v2, "light_prefs"

    const/4 v3, 0x0

    .line 61
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 65
    return-object v1

    .line 59
    :cond_0
    const-string v0, "default"

    goto :goto_0
.end method

.method private maybeCreateBaseDir(Ljava/io/File;)V
    .locals 6

    .prologue
    .line 70
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    const-string v1, "LightSharedPreferencesFactory"

    const-string v2, "cannot create directory %s, a file already exists with that name"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 75
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 72
    invoke-static {v1, v2, v3}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 81
    :cond_1
    return-void
.end method

.method private static resolveExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 0
    .param p0    # Ljava/util/concurrent/Executor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 50
    if-eqz p0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getSharedPreferences(Ljava/lang/String;)Lcom/facebook/crudolib/prefs/LightSharedPreferences;
    .locals 4

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesFactory;->mInstances:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/crudolib/prefs/LightSharedPreferences;

    .line 96
    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0, p1}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesFactory;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 98
    invoke-direct {p0, v1}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesFactory;->maybeCreateBaseDir(Ljava/io/File;)V

    .line 99
    new-instance v0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;

    iget-object v2, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesFactory;->mExecutor:Ljava/util/concurrent/Executor;

    iget v3, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesFactory;->mCommitOnMainThreadPolicy:I

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;-><init>(Ljava/io/File;Ljava/util/concurrent/Executor;I)V

    .line 100
    iget-object v1, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesFactory;->mInstances:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_0
    monitor-exit p0

    return-object v0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 166
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesFactory;->mPrivateDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
