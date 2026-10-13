.class Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;
.super Ljava/lang/Object;
.source "EventBatchStoreManagerFactory.java"


# instance fields
.field private final mAppBackgroundedProvider:Lcom/facebook/analytics2/logger/AppBackgroundedProvider;

.field private final mBatchFixedMetadataHelper:Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;

.field private final mCommonUploadSchedulerParams:Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;

.field private final mContext:Landroid/content/Context;

.field private final mHandlerThreadFactory:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/analytics2/logger/HandlerThreadFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final mJobId:I

.field private final mMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

.field private final mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

.field private final mPriorityDirName:Ljava/lang/String;

.field private final mUploadSchedulerParamsProvider:Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;Lcom/facebook/crudolib/params/ParamsCollectionPool;Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;Lcom/facebook/analytics2/logger/AppBackgroundedProvider;Ljava/lang/Class;Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;",
            "Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;",
            "Lcom/facebook/crudolib/params/ParamsCollectionPool;",
            "Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;",
            "Lcom/facebook/analytics2/logger/AppBackgroundedProvider;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/analytics2/logger/HandlerThreadFactory;",
            ">;",
            "Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;->mContext:Landroid/content/Context;

    .line 34
    iput-object p4, p0, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;->mMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    .line 35
    iput-object p5, p0, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;->mBatchFixedMetadataHelper:Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;

    .line 36
    iput-object p6, p0, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;->mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    .line 37
    iput-object p8, p0, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;->mAppBackgroundedProvider:Lcom/facebook/analytics2/logger/AppBackgroundedProvider;

    .line 38
    iput-object p9, p0, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;->mHandlerThreadFactory:Ljava/lang/Class;

    .line 39
    iput-object p7, p0, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;->mCommonUploadSchedulerParams:Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;

    .line 40
    iput p2, p0, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;->mJobId:I

    .line 41
    iput-object p3, p0, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;->mPriorityDirName:Ljava/lang/String;

    .line 42
    iput-object p10, p0, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;->mUploadSchedulerParamsProvider:Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;

    return-void
.end method


# virtual methods
.method public createNewFileStoreManager()Lcom/facebook/analytics2/logger/EventBatchStoreManager;
    .locals 20

    move-object/from16 v0, p0

    .line 46
    iget-object v1, v0, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;->mContext:Landroid/content/Context;

    .line 48
    invoke-static {v1}, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->isCurrentProcessHostOfService()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 47
    invoke-static {v1}, Lcom/facebook/analytics2/logger/BatchLockState;->getInstance(Z)Lcom/facebook/analytics2/logger/BatchLockState;

    move-result-object v9

    .line 49
    iget-object v1, v0, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;->mPriorityDirName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->getPriorityDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 50
    new-instance v10, Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    new-instance v11, Lcom/facebook/analytics2/logger/EventBatchFileStore;

    iget-object v2, v0, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;->mMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    .line 52
    invoke-interface {v2}, Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;->getSoftLimit()I

    move-result v3

    iget-object v2, v0, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;->mMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    .line 53
    invoke-interface {v2}, Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;->getHardLimit()I

    move-result v4

    iget-object v2, v0, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;->mMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    .line 54
    invoke-interface {v2}, Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;->getBufferSize()I

    move-result v5

    iget-object v6, v0, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;->mBatchFixedMetadataHelper:Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;

    iget-object v7, v0, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;->mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    .line 57
    invoke-static {v1}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->getMyProcessDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v8

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lcom/facebook/analytics2/logger/EventBatchFileStore;-><init>(IIILcom/facebook/analytics2/logger/BatchFixedMetadataHelper;Lcom/facebook/crudolib/params/ParamsCollectionPool;Ljava/io/File;Lcom/facebook/analytics2/logger/BatchLockState;)V

    new-instance v2, Lcom/facebook/analytics2/logger/UploadManager;

    iget-object v13, v0, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;->mContext:Landroid/content/Context;

    iget v14, v0, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;->mJobId:I

    new-instance v15, Lcom/facebook/analytics2/logger/UploadJobConfig;

    iget-object v3, v0, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;->mCommonUploadSchedulerParams:Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;

    invoke-direct {v15, v1, v3}, Lcom/facebook/analytics2/logger/UploadJobConfig;-><init>(Ljava/io/File;Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;)V

    iget-object v1, v0, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;->mAppBackgroundedProvider:Lcom/facebook/analytics2/logger/AppBackgroundedProvider;

    iget-object v3, v0, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;->mHandlerThreadFactory:Ljava/lang/Class;

    iget-object v4, v0, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;->mUploadSchedulerParamsProvider:Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;

    .line 65
    invoke-interface {v4}, Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;->getForegroundParams()Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    move-result-object v18

    iget-object v4, v0, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;->mUploadSchedulerParamsProvider:Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;

    .line 66
    invoke-interface {v4}, Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;->getBackgroundParams()Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    move-result-object v19

    move-object v12, v2

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    invoke-direct/range {v12 .. v19}, Lcom/facebook/analytics2/logger/UploadManager;-><init>(Landroid/content/Context;ILcom/facebook/analytics2/logger/UploadJobConfig;Lcom/facebook/analytics2/logger/AppBackgroundedProvider;Ljava/lang/Class;Lcom/facebook/analytics2/logger/UploadSchedulerParams;Lcom/facebook/analytics2/logger/UploadSchedulerParams;)V

    invoke-direct {v10, v11, v2}, Lcom/facebook/analytics2/logger/EventBatchStoreManager;-><init>(Lcom/facebook/analytics2/logger/EventBatchStore;Lcom/facebook/analytics2/logger/UploadBatchNotifier;)V

    return-object v10
.end method

.method public createNewInMemoryEventManager()Lcom/facebook/analytics2/logger/EventBatchStoreManager;
    .locals 8

    .line 70
    new-instance v0, Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    new-instance v7, Lcom/facebook/analytics2/logger/EventBatchMemoryStore;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;->mMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    .line 72
    invoke-interface {v1}, Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;->getSoftLimit()I

    move-result v2

    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;->mMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    .line 73
    invoke-interface {v1}, Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;->getHardLimit()I

    move-result v3

    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;->mMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    .line 74
    invoke-interface {v1}, Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;->getBufferSize()I

    move-result v4

    iget-object v5, p0, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;->mBatchFixedMetadataHelper:Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;

    iget-object v6, p0, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;->mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/facebook/analytics2/logger/EventBatchMemoryStore;-><init>(IIILcom/facebook/analytics2/logger/BatchFixedMetadataHelper;Lcom/facebook/crudolib/params/ParamsCollectionPool;)V

    new-instance v1, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;

    iget-object v2, p0, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;->mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    iget-object v4, p0, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;->mCommonUploadSchedulerParams:Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;-><init>(Landroid/content/Context;Lcom/facebook/crudolib/params/ParamsCollectionPool;Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;)V

    invoke-direct {v0, v7, v1}, Lcom/facebook/analytics2/logger/EventBatchStoreManager;-><init>(Lcom/facebook/analytics2/logger/EventBatchStore;Lcom/facebook/analytics2/logger/UploadBatchNotifier;)V

    return-object v0
.end method
