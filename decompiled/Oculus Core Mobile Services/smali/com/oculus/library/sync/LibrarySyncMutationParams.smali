.class public Lcom/oculus/library/sync/LibrarySyncMutationParams;
.super Ljava/lang/Object;
.source "LibrarySyncMutationParams.java"


# instance fields
.field private final mParams:Lcom/google/common/collect/ImmutableMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ImmutableMap;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/oculus/library/sync/LibrarySyncMutationParams;->mParams:Lcom/google/common/collect/ImmutableMap;

    .line 51
    return-void
.end method

.method public static getParamsForLibrarySync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/oculus/library/sync/LibrarySyncMutationParams;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/library/model/App;",
            ">;)",
            "Lcom/oculus/library/sync/LibrarySyncMutationParams;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/model/App;

    .line 37
    invoke-static {v0}, Lcom/oculus/library/sync/LibrarySyncMutationParams;->serializeApp(Lcom/oculus/library/model/App;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v2, "device_id"

    .line 41
    invoke-virtual {v0, v2, p0}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v2, "device_serial"

    .line 42
    invoke-virtual {v0, v2, p1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v2, "device_name"

    .line 43
    invoke-virtual {v0, v2, p2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v2, "user_agent"

    .line 44
    invoke-virtual {v0, v2, p3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v2, "app_library"

    .line 45
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 46
    new-instance v1, Lcom/oculus/library/sync/LibrarySyncMutationParams;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/oculus/library/sync/LibrarySyncMutationParams;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-object v1
.end method

.method private static serializeApp(Lcom/oculus/library/model/App;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 55
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "appID"

    iget-object v2, p0, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    .line 56
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "versionCode"

    iget-wide v2, p0, Lcom/oculus/library/model/App;->versionCode:J

    .line 57
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "appStatus"

    iget-object v2, p0, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "lastUsedTime"

    iget-wide v2, p0, Lcom/oculus/library/model/App;->recentActivityMs:J

    .line 59
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "playTime"

    iget-wide v2, p0, Lcom/oculus/library/model/App;->totalActivityMs:J

    .line 60
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "progress"

    iget-wide v2, p0, Lcom/oculus/library/model/App;->downloadedSizeBytes:J

    .line 61
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v2

    const-string v3, "progressMax"

    iget-wide v0, p0, Lcom/oculus/library/model/App;->patchSizeBytes:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/oculus/library/model/App;->patchSizeBytes:J

    .line 64
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 62
    invoke-virtual {v2, v3, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/http/common/graphql/GraphQLParamsHelper;->encodeParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    iget-wide v0, p0, Lcom/oculus/library/model/App;->apkFullSizeBytes:J

    iget-wide v4, p0, Lcom/oculus/library/model/App;->obbFullSizeBytes:J

    add-long/2addr v0, v4

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oculus/library/sync/LibrarySyncMutationParams;->mParams:Lcom/google/common/collect/ImmutableMap;

    invoke-static {v0}, Lcom/oculus/http/common/graphql/GraphQLParamsHelper;->encodeMutationParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
