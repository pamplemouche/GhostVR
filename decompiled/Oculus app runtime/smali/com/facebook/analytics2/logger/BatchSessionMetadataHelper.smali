.class Lcom/facebook/analytics2/logger/BatchSessionMetadataHelper;
.super Ljava/lang/Object;
.source "BatchSessionMetadataHelper.java"


# instance fields
.field private final mBatchSession:Lcom/facebook/analytics2/logger/BatchSession;

.field private final mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;


# direct methods
.method public constructor <init>(Lcom/facebook/crudolib/params/ParamsCollectionPool;Lcom/facebook/analytics2/logger/BatchSession;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/facebook/analytics2/logger/BatchSessionMetadataHelper;->mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    .line 20
    iput-object p2, p0, Lcom/facebook/analytics2/logger/BatchSessionMetadataHelper;->mBatchSession:Lcom/facebook/analytics2/logger/BatchSession;

    return-void
.end method

.method private static addIdentity(Lcom/facebook/crudolib/params/ParamsCollectionMap;Lcom/facebook/analytics2/logger/PigeonIdentity;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 42
    check-cast p1, Ljava/lang/String;

    const-string v0, "uid"

    invoke-virtual {p0, v0, p1}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 44
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/analytics2/logger/PigeonIdentity;->getBatchLevelFields()Ljava/util/Map;

    move-result-object p1

    .line 46
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

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

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public writeNewSessionData(Ljava/io/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchSessionMetadataHelper;->mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    invoke-virtual {v0}, Lcom/facebook/crudolib/params/ParamsCollectionPool;->acquireMap()Lcom/facebook/crudolib/params/ParamsCollectionMap;

    move-result-object v0

    const-string v1, "writeNewSessionData"

    .line 25
    invoke-static {v1}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    :try_start_0
    const-string v1, "session_id"

    .line 27
    iget-object v2, p0, Lcom/facebook/analytics2/logger/BatchSessionMetadataHelper;->mBatchSession:Lcom/facebook/analytics2/logger/BatchSession;

    invoke-virtual {v2}, Lcom/facebook/analytics2/logger/BatchSession;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "seq"

    .line 28
    iget-object v2, p0, Lcom/facebook/analytics2/logger/BatchSessionMetadataHelper;->mBatchSession:Lcom/facebook/analytics2/logger/BatchSession;

    invoke-virtual {v2}, Lcom/facebook/analytics2/logger/BatchSession;->getNextSequenceId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/Number;)V

    .line 30
    iget-object v1, p0, Lcom/facebook/analytics2/logger/BatchSessionMetadataHelper;->mBatchSession:Lcom/facebook/analytics2/logger/BatchSession;

    invoke-virtual {v1}, Lcom/facebook/analytics2/logger/BatchSession;->getPigeonIdentity()Lcom/facebook/analytics2/logger/PigeonIdentity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/analytics2/logger/BatchSessionMetadataHelper;->addIdentity(Lcom/facebook/crudolib/params/ParamsCollectionMap;Lcom/facebook/analytics2/logger/PigeonIdentity;)V

    .line 32
    invoke-static {}, Lcom/facebook/crudolib/params/ParamsJsonEncoder;->getInstance()Lcom/facebook/crudolib/params/ParamsJsonEncoder;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/facebook/crudolib/params/ParamsJsonEncoder;->encodeBody(Ljava/io/Writer;Lcom/facebook/crudolib/params/ParamsCollection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-virtual {v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->release()V

    .line 35
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    .line 34
    invoke-virtual {v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->release()V

    .line 35
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    throw p1
.end method
