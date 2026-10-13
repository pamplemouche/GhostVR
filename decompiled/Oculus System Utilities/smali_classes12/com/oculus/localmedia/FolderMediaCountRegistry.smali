.class public Lcom/oculus/localmedia/FolderMediaCountRegistry;
.super Ljava/lang/Object;
.source "FolderMediaCountRegistry.java"


# static fields
.field private static sFolderMediaCountRegistry:Lcom/oculus/localmedia/FolderMediaCountRegistry;


# instance fields
.field private mCounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/oculus/localmedia/MediaType;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/oculus/localmedia/FolderMediaCount;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/localmedia/FolderMediaCountRegistry;->mCounts:Ljava/util/HashMap;

    .line 20
    return-void
.end method

.method public static declared-synchronized getSingleton()Lcom/oculus/localmedia/FolderMediaCountRegistry;
    .locals 2

    .prologue
    .line 23
    const-class v1, Lcom/oculus/localmedia/FolderMediaCountRegistry;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/oculus/localmedia/FolderMediaCountRegistry;->sFolderMediaCountRegistry:Lcom/oculus/localmedia/FolderMediaCountRegistry;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/oculus/localmedia/FolderMediaCountRegistry;

    invoke-direct {v0}, Lcom/oculus/localmedia/FolderMediaCountRegistry;-><init>()V

    sput-object v0, Lcom/oculus/localmedia/FolderMediaCountRegistry;->sFolderMediaCountRegistry:Lcom/oculus/localmedia/FolderMediaCountRegistry;

    .line 26
    :cond_0
    sget-object v0, Lcom/oculus/localmedia/FolderMediaCountRegistry;->sFolderMediaCountRegistry:Lcom/oculus/localmedia/FolderMediaCountRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public get(Ljava/lang/String;I)Lcom/oculus/localmedia/FolderMediaCount;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mediaTypes"    # I

    .prologue
    .line 59
    new-instance v0, Lcom/oculus/localmedia/FolderMediaCount;

    invoke-direct {v0}, Lcom/oculus/localmedia/FolderMediaCount;-><init>()V

    .line 60
    .local v0, "count":Lcom/oculus/localmedia/FolderMediaCount;
    invoke-virtual {p0, p1}, Lcom/oculus/localmedia/FolderMediaCountRegistry;->get(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 61
    .local v1, "counts":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/oculus/localmedia/MediaType;Lcom/oculus/localmedia/FolderMediaCount;>;"
    sget-object v2, Lcom/oculus/localmedia/MediaType;->IMAGE:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v2, p2}, Lcom/oculus/localmedia/MediaType;->match(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/oculus/localmedia/MediaType;->IMAGE:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    sget-object v2, Lcom/oculus/localmedia/MediaType;->IMAGE:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/localmedia/FolderMediaCount;

    invoke-virtual {v0, v2}, Lcom/oculus/localmedia/FolderMediaCount;->add(Lcom/oculus/localmedia/FolderMediaCount;)V

    .line 64
    :cond_0
    sget-object v2, Lcom/oculus/localmedia/MediaType;->VIDEO:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v2, p2}, Lcom/oculus/localmedia/MediaType;->match(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/oculus/localmedia/MediaType;->VIDEO:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    sget-object v2, Lcom/oculus/localmedia/MediaType;->VIDEO:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/localmedia/FolderMediaCount;

    invoke-virtual {v0, v2}, Lcom/oculus/localmedia/FolderMediaCount;->add(Lcom/oculus/localmedia/FolderMediaCount;)V

    .line 67
    :cond_1
    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Lcom/oculus/localmedia/MediaType;",
            "Lcom/oculus/localmedia/FolderMediaCount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 37
    .local v1, "counts":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/oculus/localmedia/MediaType;Lcom/oculus/localmedia/FolderMediaCount;>;"
    invoke-static {}, Lcom/oculus/localmedia/MediaType;->values()[Lcom/oculus/localmedia/MediaType;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v3, v5, v4

    .line 38
    .local v3, "t":Lcom/oculus/localmedia/MediaType;
    sget-object v7, Lcom/oculus/localmedia/MediaType;->UNKNOWN:Lcom/oculus/localmedia/MediaType;

    if-ne v3, v7, :cond_1

    .line 37
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 41
    :cond_1
    iget-object v7, p0, Lcom/oculus/localmedia/FolderMediaCountRegistry;->mCounts:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 42
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/oculus/localmedia/FolderMediaCount;>;"
    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/localmedia/FolderMediaCount;

    .line 44
    .local v0, "c":Lcom/oculus/localmedia/FolderMediaCount;
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 49
    .end local v0    # "c":Lcom/oculus/localmedia/FolderMediaCount;
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/oculus/localmedia/FolderMediaCount;>;"
    .end local v3    # "t":Lcom/oculus/localmedia/MediaType;
    :cond_2
    return-object v1
.end method

.method public getFoldersWithMedia(I)Ljava/util/List;
    .locals 6
    .param p1, "mediaTypes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v3, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Lcom/oculus/localmedia/MediaType;->IMAGE:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v4, p1}, Lcom/oculus/localmedia/MediaType;->match(I)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/oculus/localmedia/MediaType;->VIDEO:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v4, p1}, Lcom/oculus/localmedia/MediaType;->match(I)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v1, 0x1

    .line 80
    .local v1, "includeAll":Z
    :goto_0
    sget-object v4, Lcom/oculus/localmedia/MediaType;->IMAGE:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v4, p1}, Lcom/oculus/localmedia/MediaType;->match(I)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v1, :cond_3

    .line 81
    :cond_0
    iget-object v4, p0, Lcom/oculus/localmedia/FolderMediaCountRegistry;->mCounts:Ljava/util/HashMap;

    sget-object v5, Lcom/oculus/localmedia/MediaType;->IMAGE:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 82
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/oculus/localmedia/FolderMediaCount;>;"
    if-eqz v2, :cond_3

    .line 83
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 84
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oculus/localmedia/FolderMediaCount;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oculus/localmedia/FolderMediaCount;

    invoke-virtual {v4}, Lcom/oculus/localmedia/FolderMediaCount;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 85
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 79
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oculus/localmedia/FolderMediaCount;>;"
    .end local v1    # "includeAll":Z
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/oculus/localmedia/FolderMediaCount;>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 90
    .restart local v1    # "includeAll":Z
    :cond_3
    sget-object v4, Lcom/oculus/localmedia/MediaType;->VIDEO:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v4, p1}, Lcom/oculus/localmedia/MediaType;->match(I)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v1, :cond_6

    .line 91
    :cond_4
    iget-object v4, p0, Lcom/oculus/localmedia/FolderMediaCountRegistry;->mCounts:Ljava/util/HashMap;

    sget-object v5, Lcom/oculus/localmedia/MediaType;->VIDEO:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 92
    .restart local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/oculus/localmedia/FolderMediaCount;>;"
    if-eqz v2, :cond_6

    .line 93
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 94
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oculus/localmedia/FolderMediaCount;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oculus/localmedia/FolderMediaCount;

    invoke-virtual {v4}, Lcom/oculus/localmedia/FolderMediaCount;->getCount()I

    move-result v4

    if-lez v4, :cond_5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 95
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 100
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oculus/localmedia/FolderMediaCount;>;"
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/oculus/localmedia/FolderMediaCount;>;"
    :cond_6
    return-object v3
.end method

.method public index(Lcom/oculus/localmedia/MediaType;Ljava/util/List;)V
    .locals 7
    .param p1, "type"    # Lcom/oculus/localmedia/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/localmedia/MediaType;",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/localmedia/MediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/localmedia/MediaItem;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 111
    .local v4, "pathToFolderCounts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/oculus/localmedia/FolderMediaCount;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/localmedia/MediaItem;

    .line 112
    .local v1, "item":Lcom/oculus/localmedia/MediaItem;
    invoke-virtual {v1}, Lcom/oculus/localmedia/MediaItem;->getFolderPath()Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "path":Ljava/lang/String;
    const/4 v0, 0x1

    .line 114
    .local v0, "isImmediateParent":Z
    :goto_0
    if-eqz v3, :cond_0

    .line 115
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/localmedia/FolderMediaCount;

    .line 116
    .local v2, "metadata":Lcom/oculus/localmedia/FolderMediaCount;
    if-nez v2, :cond_1

    .line 117
    new-instance v2, Lcom/oculus/localmedia/FolderMediaCount;

    .end local v2    # "metadata":Lcom/oculus/localmedia/FolderMediaCount;
    invoke-direct {v2}, Lcom/oculus/localmedia/FolderMediaCount;-><init>()V

    .line 118
    .restart local v2    # "metadata":Lcom/oculus/localmedia/FolderMediaCount;
    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_1
    if-eqz v0, :cond_2

    .line 121
    invoke-virtual {v2}, Lcom/oculus/localmedia/FolderMediaCount;->increaseCount()V

    .line 123
    :cond_2
    invoke-virtual {v2}, Lcom/oculus/localmedia/FolderMediaCount;->increaseAggregateCount()V

    .line 124
    invoke-static {v3}, Lcom/oculus/localmedia/MediaProviderUtils;->getFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 125
    const/4 v0, 0x0

    .line 126
    goto :goto_0

    .line 128
    .end local v0    # "isImmediateParent":Z
    .end local v1    # "item":Lcom/oculus/localmedia/MediaItem;
    .end local v2    # "metadata":Lcom/oculus/localmedia/FolderMediaCount;
    .end local v3    # "path":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/oculus/localmedia/FolderMediaCountRegistry;->mCounts:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-void
.end method
