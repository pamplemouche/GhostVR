.class public Lcom/oculus/localmedia/metadata/CachedMetadataManager;
.super Ljava/lang/Object;
.source "CachedMetadataManager.java"


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

.field private mType:Lcom/oculus/localmedia/MediaType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oculus/localmedia/MediaType;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v2, p0, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->mType:Lcom/oculus/localmedia/MediaType;

    .line 20
    iput-object v2, p0, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->mCachedMetadataDatabase:Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;

    .line 21
    iput-object v2, p0, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->mCachedMetadataMemoryCache:Ljava/util/Map;

    .line 24
    new-instance v0, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;

    new-instance v1, Lcom/oculus/localmedia/database/LocalMediaSQLHelper;

    invoke-direct {v1, p1, v2}, Lcom/oculus/localmedia/database/LocalMediaSQLHelper;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    invoke-direct {v0, v1}, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;-><init>(Lcom/oculus/localmedia/database/LocalMediaSQLHelper;)V

    iput-object v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->mCachedMetadataDatabase:Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;

    .line 25
    iput-object p2, p0, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->mType:Lcom/oculus/localmedia/MediaType;

    .line 26
    return-void
.end method

.method private loadAllFromDatabase()V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->mCachedMetadataDatabase:Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;

    iget-object v1, p0, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->mType:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v0, v1}, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->getByType(Lcom/oculus/localmedia/MediaType;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->mCachedMetadataMemoryCache:Ljava/util/Map;

    .line 30
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/CachedMetadata;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->mCachedMetadataMemoryCache:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 34
    invoke-direct {p0}, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->loadAllFromDatabase()V

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->mCachedMetadataMemoryCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/localmedia/metadata/CachedMetadata;

    return-object v0
.end method

.method public set(Ljava/lang/String;Lcom/oculus/localmedia/metadata/CachedMetadata;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->mCachedMetadataMemoryCache:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 41
    invoke-direct {p0}, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->loadAllFromDatabase()V

    .line 45
    :cond_0
    if-eqz p2, :cond_1

    .line 46
    iget-object v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->mCachedMetadataMemoryCache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->mCachedMetadataDatabase:Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->put(Ljava/lang/String;Lcom/oculus/localmedia/metadata/CachedMetadata;)V

    .line 49
    :cond_1
    return-void
.end method
