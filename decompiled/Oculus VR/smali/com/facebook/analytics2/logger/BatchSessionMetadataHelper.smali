.class Lcom/facebook/analytics2/logger/BatchSessionMetadataHelper;
.super Ljava/lang/Object;
.source "BatchSessionMetadataHelper.java"


# instance fields
.field private final mBatchSession:Lcom/facebook/analytics2/logger/BatchSession;

.field private final mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;


# direct methods
.method public constructor <init>(Lcom/facebook/crudolib/params/ParamsCollectionPool;Lcom/facebook/analytics2/logger/BatchSession;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/facebook/analytics2/logger/BatchSessionMetadataHelper;->mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    .line 20
    iput-object p2, p0, Lcom/facebook/analytics2/logger/BatchSessionMetadataHelper;->mBatchSession:Lcom/facebook/analytics2/logger/BatchSession;

    .line 21
    return-void
.end method

.method private static addIdentity(Lcom/facebook/crudolib/params/ParamsCollectionMap;Lcom/facebook/analytics2/logger/PigeonIdentity;)V
    .locals 3

    .prologue
    .line 41
    if-nez p1, :cond_1

    .line 42
    const-string v1, "uid"

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    return-void

    .line 44
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/analytics2/logger/PigeonIdentity;->getBatchLevelFields()Ljava/util/Map;

    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 47
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public writeNewSessionData(Ljava/io/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchSessionMetadataHelper;->mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    invoke-virtual {v0}, Lcom/facebook/crudolib/params/ParamsCollectionPool;->acquireMap()Lcom/facebook/crudolib/params/ParamsCollectionMap;

    move-result-object v1

    .line 25
    const-string v0, "writeNewSessionData"

    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 27
    :try_start_0
    const-string v0, "session_id"

    iget-object v2, p0, Lcom/facebook/analytics2/logger/BatchSessionMetadataHelper;->mBatchSession:Lcom/facebook/analytics2/logger/BatchSession;

    invoke-virtual {v2}, Lcom/facebook/analytics2/logger/BatchSession;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v0, "seq"

    iget-object v2, p0, Lcom/facebook/analytics2/logger/BatchSessionMetadataHelper;->mBatchSession:Lcom/facebook/analytics2/logger/BatchSession;

    invoke-virtual {v2}, Lcom/facebook/analytics2/logger/BatchSession;->getNextSequenceId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/Number;)V

    .line 30
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchSessionMetadataHelper;->mBatchSession:Lcom/facebook/analytics2/logger/BatchSession;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/BatchSession;->getPigeonIdentity()Lcom/facebook/analytics2/logger/PigeonIdentity;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/analytics2/logger/BatchSessionMetadataHelper;->addIdentity(Lcom/facebook/crudolib/params/ParamsCollectionMap;Lcom/facebook/analytics2/logger/PigeonIdentity;)V

    .line 32
    invoke-static {}, Lcom/facebook/crudolib/params/ParamsJsonEncoder;->getInstance()Lcom/facebook/crudolib/params/ParamsJsonEncoder;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/facebook/crudolib/params/ParamsJsonEncoder;->encodeBody(Ljava/io/Writer;Lcom/facebook/crudolib/params/ParamsCollection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-virtual {v1}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->release()V

    .line 35
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 37
    return-void

    .line 34
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->release()V

    .line 35
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    throw v0
.end method
