.class public Lcom/oculus/localmedia/metadata/CachedMetadataManager;
.super Ljava/lang/Object;
.source "CachedMetadataManager.java"


# static fields
.field private static sCachedMetadataManager:Lcom/oculus/localmedia/metadata/CachedMetadataManager;


# instance fields
.field private mCachedMetadataDatabase:Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;

.field private mCachedMetadataMemoryCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/oculus/localmedia/metadata/CachedMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->sCachedMetadataManager:Lcom/oculus/localmedia/metadata/CachedMetadataManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v2, p0, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->mCachedMetadataDatabase:Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;

    .line 20
    iput-object v2, p0, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->mCachedMetadataMemoryCache:Ljava/util/Map;

    .line 38
    new-instance v0, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;

    new-instance v1, Lcom/oculus/localmedia/database/LocalMediaSQLHelper;

    invoke-direct {v1, p1, v2}, Lcom/oculus/localmedia/database/LocalMediaSQLHelper;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    invoke-direct {v0, v1}, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;-><init>(Lcom/oculus/localmedia/database/LocalMediaSQLHelper;)V

    iput-object v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->mCachedMetadataDatabase:Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;

    .line 39
    return-void
.end method

.method public static getSingleton()Lcom/oculus/localmedia/metadata/CachedMetadataManager;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->sCachedMetadataManager:Lcom/oculus/localmedia/metadata/CachedMetadataManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    sget-object v0, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->sCachedMetadataManager:Lcom/oculus/localmedia/metadata/CachedMetadataManager;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/oculus/localmedia/metadata/CachedMetadataManager;

    invoke-direct {v0, p0}, Lcom/oculus/localmedia/metadata/CachedMetadataManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->sCachedMetadataManager:Lcom/oculus/localmedia/metadata/CachedMetadataManager;

    .line 31
    :cond_0
    return-void
.end method

.method private declared-synchronized loadAllFromDatabase()V
    .locals 1

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->mCachedMetadataMemoryCache:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->mCachedMetadataDatabase:Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;

    invoke-virtual {v0}, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->loadAllFromDatabase()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->mCachedMetadataMemoryCache:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_0
    monitor-exit p0

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/CachedMetadata;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->loadAllFromDatabase()V

    .line 49
    iget-object v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->mCachedMetadataMemoryCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/localmedia/metadata/CachedMetadata;

    return-object v0
.end method

.method public set(Ljava/lang/String;Lcom/oculus/localmedia/metadata/CachedMetadata;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "metadata"    # Lcom/oculus/localmedia/metadata/CachedMetadata;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->loadAllFromDatabase()V

    .line 56
    if-eqz p2, :cond_0

    .line 57
    iget-object v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->mCachedMetadataMemoryCache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->mCachedMetadataDatabase:Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->put(Ljava/lang/String;Lcom/oculus/localmedia/metadata/CachedMetadata;)V

    .line 60
    :cond_0
    return-void
.end method
