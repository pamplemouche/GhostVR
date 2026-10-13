.class Lcom/facebook/analytics2/logger/EventProcessorManager;
.super Ljava/lang/Object;
.source "EventProcessorManager.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final mAnalytics2EventSchemaValidationManager:Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mAppBackgroundedProvider:Lcom/facebook/analytics2/logger/AppBackgroundedProvider;

.field private final mBatchFixedMetadataHelper:Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;

.field private final mBeginWritingBlock:Lcom/facebook/analytics2/logger/BeginWritingBlock;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mEventListenerHighPri:Lcom/facebook/analytics2/logger/EventListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mEventListenerNormalPri:Lcom/facebook/analytics2/logger/EventListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mFlexibleSamplingUpdater:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/flexiblesampling/SamplingPolicyConfig;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mHandlerThreadFactory:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/analytics2/logger/HandlerThreadFactory;",
            ">;"
        }
    .end annotation
.end field

.field private mHighPriEventProcessor:Lcom/facebook/analytics2/logger/EventProcessor;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mHighPriMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

.field private final mHighPriUploadSchedulerParamsProvider:Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;

.field private mNormalPriEventProcessor:Lcom/facebook/analytics2/logger/EventProcessor;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mNormalPriMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

.field private final mNormalPriUploadSchedulerParamsProvider:Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;

.field private final mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

.field private final mPrivacyPolicy:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/analytics2/logger/PrivacyPolicy;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mSessionDelegate:Lcom/facebook/analytics2/logger/SessionDelegate;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mSessionManager:Lcom/facebook/analytics2/logger/SessionManager;

.field private final mUploadJobInstrumentation:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/analytics2/logger/UploadJobInstrumentation;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mUploader:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/analytics2/logger/Uploader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/facebook/analytics2/logger/EventListener;Lcom/facebook/analytics2/logger/EventListener;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;Lcom/facebook/analytics2/logger/SessionManager;Lcom/facebook/crudolib/params/ParamsCollectionPool;Lcom/facebook/analytics2/logger/AppBackgroundedProvider;Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;Lcom/facebook/analytics2/logger/BeginWritingBlock;Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;Ljava/lang/Class;)V
    .locals 1
    .param p3    # Lcom/facebook/analytics2/logger/EventListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/analytics2/logger/EventListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Class;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Class;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p16    # Lcom/facebook/analytics2/logger/BeginWritingBlock;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p17    # Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/lang/Class;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/analytics2/logger/Uploader;",
            ">;",
            "Lcom/facebook/analytics2/logger/EventListener;",
            "Lcom/facebook/analytics2/logger/EventListener;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/flexiblesampling/SamplingPolicyConfig;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/analytics2/logger/PrivacyPolicy;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/analytics2/logger/HandlerThreadFactory;",
            ">;",
            "Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;",
            "Lcom/facebook/analytics2/logger/SessionManager;",
            "Lcom/facebook/crudolib/params/ParamsCollectionPool;",
            "Lcom/facebook/analytics2/logger/AppBackgroundedProvider;",
            "Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;",
            "Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;",
            "Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;",
            "Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;",
            "Lcom/facebook/analytics2/logger/BeginWritingBlock;",
            "Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/analytics2/logger/UploadJobInstrumentation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mUploader:Ljava/lang/Class;

    .line 73
    iput-object p3, p0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mEventListenerNormalPri:Lcom/facebook/analytics2/logger/EventListener;

    .line 74
    iput-object p4, p0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mEventListenerHighPri:Lcom/facebook/analytics2/logger/EventListener;

    .line 75
    iput-object p5, p0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mFlexibleSamplingUpdater:Ljava/lang/Class;

    .line 76
    iput-object p6, p0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mPrivacyPolicy:Ljava/lang/Class;

    .line 77
    iput-object p7, p0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mHandlerThreadFactory:Ljava/lang/Class;

    .line 78
    iput-object p8, p0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mBatchFixedMetadataHelper:Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;

    .line 79
    iput-object p9, p0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mSessionManager:Lcom/facebook/analytics2/logger/SessionManager;

    .line 80
    iput-object p10, p0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    .line 81
    iput-object p11, p0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mAppBackgroundedProvider:Lcom/facebook/analytics2/logger/AppBackgroundedProvider;

    .line 82
    iput-object p12, p0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mNormalPriUploadSchedulerParamsProvider:Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;

    .line 83
    iput-object p13, p0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mHighPriUploadSchedulerParamsProvider:Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;

    .line 84
    iput-object p14, p0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mNormalPriMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    .line 85
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mHighPriMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    .line 86
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mBeginWritingBlock:Lcom/facebook/analytics2/logger/BeginWritingBlock;

    .line 87
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mAnalytics2EventSchemaValidationManager:Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;

    .line 88
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mUploadJobInstrumentation:Ljava/lang/Class;

    .line 89
    return-void
.end method

.method private declared-synchronized getSessionDelegate()Lcom/facebook/analytics2/logger/SessionDelegate;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mSessionDelegate:Lcom/facebook/analytics2/logger/SessionDelegate;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Lcom/facebook/analytics2/logger/SessionDelegate;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mSessionManager:Lcom/facebook/analytics2/logger/SessionManager;

    iget-object v2, p0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/facebook/analytics2/logger/SessionDelegate;-><init>(Lcom/facebook/analytics2/logger/SessionManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mSessionDelegate:Lcom/facebook/analytics2/logger/SessionDelegate;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mSessionDelegate:Lcom/facebook/analytics2/logger/SessionDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startHandlerThread(Ljava/lang/String;I)Landroid/os/HandlerThread;
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mContext:Landroid/content/Context;

    .line 190
    invoke-static {v0}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/ContextConstructorHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mHandlerThreadFactory:Ljava/lang/Class;

    .line 191
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->getProvidedHandlerThreadFactory(Ljava/lang/String;)Lcom/facebook/analytics2/logger/HandlerThreadFactory;

    move-result-object v0

    .line 193
    invoke-interface {v0, p1, p2}, Lcom/facebook/analytics2/logger/HandlerThreadFactory;->createAndStartHandlerThread(Ljava/lang/String;I)Landroid/os/HandlerThread;

    move-result-object v0

    .line 194
    return-object v0
.end method


# virtual methods
.method public declared-synchronized getHighPriEventProcessorOrNull()Lcom/facebook/analytics2/logger/EventProcessor;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mHighPriEventProcessor:Lcom/facebook/analytics2/logger/EventProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHighPriPriEventDispatcher()Lcom/facebook/analytics2/logger/EventProcessor;
    .locals 17
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mHighPriEventProcessor:Lcom/facebook/analytics2/logger/EventProcessor;

    if-nez v1, :cond_0

    .line 146
    new-instance v1, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mUploader:Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mFlexibleSamplingUpdater:Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mPrivacyPolicy:Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mHandlerThreadFactory:Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mUploadJobInstrumentation:Ljava/lang/Class;

    sget-object v7, Lcom/facebook/analytics2/logger/UploadJob$Priority;->HIGH:Lcom/facebook/analytics2/logger/UploadJob$Priority;

    const-string v8, "ads"

    invoke-direct/range {v1 .. v8}, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/facebook/analytics2/logger/UploadJob$Priority;Ljava/lang/String;)V

    .line 155
    new-instance v13, Lcom/facebook/analytics2/logger/EventProcessor;

    const-string v2, "Analytics-HighPri-Proc"

    const/4 v3, 0x0

    .line 157
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/facebook/analytics2/logger/EventProcessorManager;->startHandlerThread(Ljava/lang/String;I)Landroid/os/HandlerThread;

    move-result-object v14

    sget-object v15, Lcom/facebook/analytics2/logger/ProcessorPriority;->HIGH:Lcom/facebook/analytics2/logger/ProcessorPriority;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mEventListenerHighPri:Lcom/facebook/analytics2/logger/EventListener;

    move-object/from16 v16, v0

    new-instance v2, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mContext:Landroid/content/Context;

    sget v4, Lcom/facebook/R$id;->jobscheduler_analytics2_high_pri:I

    const-string v5, "high"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mHighPriMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mBatchFixedMetadataHelper:Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mAppBackgroundedProvider:Lcom/facebook/analytics2/logger/AppBackgroundedProvider;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mHandlerThreadFactory:Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mHighPriUploadSchedulerParamsProvider:Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;

    move-object v9, v1

    invoke-direct/range {v2 .. v12}, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;Lcom/facebook/crudolib/params/ParamsCollectionPool;Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;Lcom/facebook/analytics2/logger/AppBackgroundedProvider;Ljava/lang/Class;Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mBeginWritingBlock:Lcom/facebook/analytics2/logger/BeginWritingBlock;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mAnalytics2EventSchemaValidationManager:Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mHighPriMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    move-object v7, v2

    move-object/from16 v8, p0

    invoke-direct/range {v3 .. v11}, Lcom/facebook/analytics2/logger/EventProcessor;-><init>(Landroid/os/HandlerThread;Lcom/facebook/analytics2/logger/ProcessorPriority;Lcom/facebook/analytics2/logger/EventListener;Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;Lcom/facebook/analytics2/logger/EventProcessorManager;Lcom/facebook/analytics2/logger/BeginWritingBlock;Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mHighPriEventProcessor:Lcom/facebook/analytics2/logger/EventProcessor;

    .line 175
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mHighPriEventProcessor:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-direct/range {p0 .. p0}, Lcom/facebook/analytics2/logger/EventProcessorManager;->getSessionDelegate()Lcom/facebook/analytics2/logger/SessionDelegate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/analytics2/logger/EventProcessor;->bootstrapSession(Lcom/facebook/analytics2/logger/SessionDelegate;)V

    .line 177
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mHighPriEventProcessor:Lcom/facebook/analytics2/logger/EventProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 145
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getNormalPriEventDispatcher()Lcom/facebook/analytics2/logger/EventProcessor;
    .locals 17
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mNormalPriEventProcessor:Lcom/facebook/analytics2/logger/EventProcessor;

    if-nez v1, :cond_0

    .line 104
    new-instance v1, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mUploader:Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mFlexibleSamplingUpdater:Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mPrivacyPolicy:Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mHandlerThreadFactory:Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mUploadJobInstrumentation:Ljava/lang/Class;

    sget-object v7, Lcom/facebook/analytics2/logger/UploadJob$Priority;->NORMAL:Lcom/facebook/analytics2/logger/UploadJob$Priority;

    const-string v8, "regular"

    invoke-direct/range {v1 .. v8}, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/facebook/analytics2/logger/UploadJob$Priority;Ljava/lang/String;)V

    .line 113
    new-instance v13, Lcom/facebook/analytics2/logger/EventProcessor;

    const-string v2, "Analytics-NormalPri-Proc"

    const/16 v3, 0xa

    .line 115
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/facebook/analytics2/logger/EventProcessorManager;->startHandlerThread(Ljava/lang/String;I)Landroid/os/HandlerThread;

    move-result-object v14

    sget-object v15, Lcom/facebook/analytics2/logger/ProcessorPriority;->NORMAL:Lcom/facebook/analytics2/logger/ProcessorPriority;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mEventListenerNormalPri:Lcom/facebook/analytics2/logger/EventListener;

    move-object/from16 v16, v0

    new-instance v2, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mContext:Landroid/content/Context;

    sget v4, Lcom/facebook/R$id;->jobscheduler_analytics2_normal_pri:I

    const-string v5, "normal"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mNormalPriMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mBatchFixedMetadataHelper:Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mAppBackgroundedProvider:Lcom/facebook/analytics2/logger/AppBackgroundedProvider;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mHandlerThreadFactory:Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mNormalPriUploadSchedulerParamsProvider:Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;

    move-object v9, v1

    invoke-direct/range {v2 .. v12}, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;Lcom/facebook/crudolib/params/ParamsCollectionPool;Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;Lcom/facebook/analytics2/logger/AppBackgroundedProvider;Ljava/lang/Class;Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mBeginWritingBlock:Lcom/facebook/analytics2/logger/BeginWritingBlock;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mAnalytics2EventSchemaValidationManager:Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mNormalPriMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    move-object v7, v2

    move-object/from16 v8, p0

    invoke-direct/range {v3 .. v11}, Lcom/facebook/analytics2/logger/EventProcessor;-><init>(Landroid/os/HandlerThread;Lcom/facebook/analytics2/logger/ProcessorPriority;Lcom/facebook/analytics2/logger/EventListener;Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;Lcom/facebook/analytics2/logger/EventProcessorManager;Lcom/facebook/analytics2/logger/BeginWritingBlock;Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mNormalPriEventProcessor:Lcom/facebook/analytics2/logger/EventProcessor;

    .line 133
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mNormalPriEventProcessor:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-direct/range {p0 .. p0}, Lcom/facebook/analytics2/logger/EventProcessorManager;->getSessionDelegate()Lcom/facebook/analytics2/logger/SessionDelegate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/analytics2/logger/EventProcessor;->bootstrapSession(Lcom/facebook/analytics2/logger/SessionDelegate;)V

    .line 135
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mNormalPriEventProcessor:Lcom/facebook/analytics2/logger/EventProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getNormalPriEventProcessorOrNull()Lcom/facebook/analytics2/logger/EventProcessor;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mNormalPriEventProcessor:Lcom/facebook/analytics2/logger/EventProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
