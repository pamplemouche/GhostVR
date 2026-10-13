.class public Lcom/facebook/acra/customdata/ProxyCustomDataStore;
.super Ljava/lang/Object;
.source "ProxyCustomDataStore.java"

# interfaces
.implements Lcom/facebook/acra/customdata/CustomDataStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/acra/customdata/ProxyCustomDataStore$Holder;
    }
.end annotation


# static fields
.field private static dataStore:Lcom/facebook/acra/customdata/CustomDataStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/facebook/acra/customdata/ACRACustomDataStore;

    invoke-direct {v0}, Lcom/facebook/acra/customdata/ACRACustomDataStore;-><init>()V

    sput-object v0, Lcom/facebook/acra/customdata/ProxyCustomDataStore;->dataStore:Lcom/facebook/acra/customdata/CustomDataStore;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/facebook/acra/customdata/ProxyCustomDataStore;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/facebook/acra/customdata/ProxyCustomDataStore$Holder;->CUSTOM_DATA:Lcom/facebook/acra/customdata/ProxyCustomDataStore;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 29
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/facebook/acra/customdata/ProxyCustomDataStore;->dataStore:Lcom/facebook/acra/customdata/CustomDataStore;

    invoke-interface {v0, p1}, Lcom/facebook/acra/customdata/CustomDataStore;->containsKey(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCustomData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 24
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/facebook/acra/customdata/ProxyCustomDataStore;->dataStore:Lcom/facebook/acra/customdata/CustomDataStore;

    invoke-interface {v0, p1}, Lcom/facebook/acra/customdata/CustomDataStore;->getCustomData(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSnapshot()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/facebook/acra/customdata/ProxyCustomDataStore;->dataStore:Lcom/facebook/acra/customdata/CustomDataStore;

    invoke-interface {v0}, Lcom/facebook/acra/customdata/CustomDataStore;->getSnapshot()Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeCustomData(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 34
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/facebook/acra/customdata/ProxyCustomDataStore;->dataStore:Lcom/facebook/acra/customdata/CustomDataStore;

    invoke-interface {v0, p1}, Lcom/facebook/acra/customdata/CustomDataStore;->removeCustomData(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs declared-synchronized setCustomData(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 19
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/facebook/acra/customdata/ProxyCustomDataStore;->dataStore:Lcom/facebook/acra/customdata/CustomDataStore;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/acra/customdata/CustomDataStore;->setCustomData(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDataStore(Lcom/facebook/acra/customdata/CustomDataStore;)V
    .locals 6
    .param p1, "newStore"    # Lcom/facebook/acra/customdata/CustomDataStore;

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/facebook/acra/customdata/ProxyCustomDataStore;->dataStore:Lcom/facebook/acra/customdata/CustomDataStore;

    invoke-interface {v2}, Lcom/facebook/acra/customdata/CustomDataStore;->getSnapshot()Ljava/util/Map;

    move-result-object v1

    .line 49
    .local v1, "snapshot":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 50
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {p1, v2, v3, v5}, Lcom/facebook/acra/customdata/CustomDataStore;->setCustomData(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 48
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "snapshot":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 52
    .restart local v1    # "snapshot":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    sput-object p1, Lcom/facebook/acra/customdata/ProxyCustomDataStore;->dataStore:Lcom/facebook/acra/customdata/CustomDataStore;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    monitor-exit p0

    return-void
.end method
