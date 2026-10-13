.class Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;
.super Ljava/lang/Object;
.source "BatchDynamicMetadataHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper$Config;,
        Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper$RequestInfo;
    }
.end annotation


# instance fields
.field private final mConfig:Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper$Config;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

.field private final mRequestInfo:Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper$RequestInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/crudolib/params/ParamsCollectionPool;Ljava/lang/String;Lcom/facebook/flexiblesampling/SamplingPolicyConfig;)V
    .locals 0
    .param p4    # Lcom/facebook/flexiblesampling/SamplingPolicyConfig;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;->mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    .line 30
    new-instance p2, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper$RequestInfo;

    invoke-direct {p2, p1, p3}, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper$RequestInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;->mRequestInfo:Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper$RequestInfo;

    if-eqz p4, :cond_0

    .line 31
    new-instance p1, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper$Config;

    invoke-direct {p1, p4}, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper$Config;-><init>(Lcom/facebook/flexiblesampling/SamplingPolicyConfig;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;->mConfig:Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper$Config;

    return-void
.end method


# virtual methods
.method public getEstimatedSizeOfDynamicData()I
    .locals 1

    const/16 v0, 0x100

    return v0
.end method

.method public writeMultiBatchCase(Ljava/io/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;->mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    invoke-virtual {v0}, Lcom/facebook/crudolib/params/ParamsCollectionPool;->acquireMap()Lcom/facebook/crudolib/params/ParamsCollectionMap;

    move-result-object v0

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;->mRequestInfo:Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper$RequestInfo;

    const-string v2, "request_info"

    invoke-virtual {v0, v2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->acquireMapThenAdd(Ljava/lang/String;)Lcom/facebook/crudolib/params/ParamsCollectionMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper$RequestInfo;->collectRequestInfo(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V

    .line 51
    iget-object v1, p0, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;->mConfig:Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper$Config;

    if-eqz v1, :cond_0

    const-string v1, "config"

    .line 52
    invoke-virtual {v0, v1}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->acquireMapThenAdd(Ljava/lang/String;)Lcom/facebook/crudolib/params/ParamsCollectionMap;

    move-result-object v1

    .line 53
    iget-object v2, p0, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;->mConfig:Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper$Config;

    invoke-virtual {v2, v1}, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper$Config;->collectConfigInfo(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V

    .line 54
    iget-object v2, p0, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;->mConfig:Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper$Config;

    invoke-virtual {v2, v1}, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper$Config;->collectConfigUserAndApp(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V

    .line 56
    :cond_0
    invoke-static {}, Lcom/facebook/crudolib/params/ParamsJsonEncoder;->getInstance()Lcom/facebook/crudolib/params/ParamsJsonEncoder;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/facebook/crudolib/params/ParamsJsonEncoder;->encodeBody(Ljava/io/Writer;Lcom/facebook/crudolib/params/ParamsCollection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-virtual {v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->release()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->release()V

    throw p1
.end method

.method public writeSingleBatchCase(Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;->mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    invoke-virtual {v0}, Lcom/facebook/crudolib/params/ParamsCollectionPool;->acquireMap()Lcom/facebook/crudolib/params/ParamsCollectionMap;

    move-result-object v0

    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;->mRequestInfo:Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper$RequestInfo;

    invoke-virtual {v1, v0}, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper$RequestInfo;->collectRequestInfo(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V

    .line 38
    iget-object v1, p0, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;->mConfig:Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper$Config;

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;->mConfig:Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper$Config;

    invoke-virtual {v1, v0}, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper$Config;->collectConfigInfo(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V

    .line 41
    :cond_0
    invoke-static {}, Lcom/facebook/crudolib/params/ParamsJsonEncoder;->getInstance()Lcom/facebook/crudolib/params/ParamsJsonEncoder;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/facebook/crudolib/params/ParamsJsonEncoder;->encodeBody(Ljava/io/Writer;Lcom/facebook/crudolib/params/ParamsCollection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-virtual {v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->release()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->release()V

    throw p1
.end method
