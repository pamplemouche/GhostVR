.class Lcom/facebook/analytics2/logger/EventProcessorManager;
.super Ljava/lang/Object;
.source "EventProcessorManager.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field public static final MARAUDER_TIER_ADS:Ljava/lang/String; = "ads"

.field public static final MARAUDER_TIER_REGULAR:Ljava/lang/String; = "regular"


# instance fields
.field private final mAnalytics2EventSchemaValidationManager:Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mAppBackgroundedProvider:Lcom/facebook/analytics2/logger/AppBackgroundedProvider;

.field private final mBatchFixedMetadataHelper:Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;

.field private final mBeginWritingBlock:Lcom/facebook/analytics2/logger/BeginWritingBlock;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mEventListenerHighPri:Lcom/facebook/analytics2/logger/EventListener;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mEventListenerNormalPri:Lcom/facebook/analytics2/logger/EventListener;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mFlexibleSamplingUpdater:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/flexiblesampling/SamplingPolicyConfig;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

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
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/analytics2/logger/PrivacyPolicy;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
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
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/analytics2/logger/UploadJobInstrumentation;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mUploader:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/analytics2/logger/Uploader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/facebook/analytics2/logger/EventListener;Lcom/facebook/analytics2/logger/EventListener;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;Lcom/facebook/analytics2/logger/SessionManager;Lcom/facebook/crudolib/params/ParamsCollectionPool;Lcom/facebook/analytics2/logger/AppBackgroundedProvider;Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;Lcom/facebook/analytics2/logger/BeginWritingBlock;Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;Ljava/lang/Class;)V
    .locals 2
    .param p3    # Lcom/facebook/analytics2/logger/EventListener;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/analytics2/logger/EventListener;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Class;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Class;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p16    # Lcom/facebook/analytics2/logger/BeginWritingBlock;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p17    # Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/lang/Class;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/analytics2/logger/Uploader;",
            ">;",
            "Lcom/facebook/analytics2/logger/EventListener;",
            "Lcom/facebook/analytics2/logger/EventListener;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/flexiblesampling/SamplingPolicyConfig;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/analytics2/logger/PrivacyPolicy;",
            ">;",
            "Ljava/lang/Class<",
            "+",
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
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/analytics2/logger/UploadJobInstrumentation;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 71
    iput-object v1, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mContext:Landroid/content/Context;

    move-object v1, p2

    .line 72
    iput-object v1, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mUploader:Ljava/lang/Class;

    move-object v1, p3

    .line 73
    iput-object v1, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mEventListenerNormalPri:Lcom/facebook/analytics2/logger/EventListener;

    move-object v1, p4

    .line 74
    iput-object v1, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mEventListenerHighPri:Lcom/facebook/analytics2/logger/EventListener;

    move-object v1, p5

    .line 75
    iput-object v1, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mFlexibleSamplingUpdater:Ljava/lang/Class;

    move-object v1, p6

    .line 76
    iput-object v1, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mPrivacyPolicy:Ljava/lang/Class;

    move-object v1, p7

    .line 77
    iput-object v1, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mHandlerThreadFactory:Ljava/lang/Class;

    move-object v1, p8

    .line 78
    iput-object v1, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mBatchFixedMetadataHelper:Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;

    move-object v1, p9

    .line 79
    iput-object v1, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mSessionManager:Lcom/facebook/analytics2/logger/SessionManager;

    move-object v1, p10

    .line 80
    iput-object v1, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    move-object v1, p11

    .line 81
    iput-object v1, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mAppBackgroundedProvider:Lcom/facebook/analytics2/logger/AppBackgroundedProvider;

    move-object v1, p12

    .line 82
    iput-object v1, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mNormalPriUploadSchedulerParamsProvider:Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;

    move-object v1, p13

    .line 83
    iput-object v1, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mHighPriUploadSchedulerParamsProvider:Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;

    move-object/from16 v1, p14

    .line 84
    iput-object v1, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mNormalPriMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    move-object/from16 v1, p15

    .line 85
    iput-object v1, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mHighPriMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    move-object/from16 v1, p16

    .line 86
    iput-object v1, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mBeginWritingBlock:Lcom/facebook/analytics2/logger/BeginWritingBlock;

    move-object/from16 v1, p17

    .line 87
    iput-object v1, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mAnalytics2EventSchemaValidationManager:Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;

    move-object/from16 v1, p18

    .line 88
    iput-object v1, v0, Lcom/facebook/analytics2/logger/EventProcessorManager;->mUploadJobInstrumentation:Ljava/lang/Class;

    return-void
.end method

.method private declared-synchronized getSessionDelegate()Lcom/facebook/analytics2/logger/SessionDelegate;
    .locals 3
    .annotation build Ljavax/annotation/Nonnull;
    .end annotation

    monitor-enter p0

    .line 182
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

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startHandlerThread(Ljava/lang/String;I)Landroid/os/HandlerThread;
    .locals 2

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

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getCurrentSessionId()Ljava/lang/String;
    .locals 1
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .line 93
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessorManager;->getSessionDelegate()Lcom/facebook/analytics2/logger/SessionDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/SessionDelegate;->getCurrentSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getHighPriEventProcessorOrNull()Lcom/facebook/analytics2/logger/EventProcessor;
    .locals 1
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 140
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
    .locals 22
    .annotation build Ljavax/annotation/Nonnull;
    .end annotation

    move-object/from16 v10, p0

    monitor-enter p0

    .line 145
    :try_start_0
    iget-object v0, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mHighPriEventProcessor:Lcom/facebook/analytics2/logger/EventProcessor;

    if-nez v0, :cond_0

    .line 146
    new-instance v18, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;

    iget-object v2, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mUploader:Ljava/lang/Class;

    iget-object v3, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mFlexibleSamplingUpdater:Ljava/lang/Class;

    iget-object v4, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mPrivacyPolicy:Ljava/lang/Class;

    iget-object v5, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mHandlerThreadFactory:Ljava/lang/Class;

    iget-object v6, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mUploadJobInstrumentation:Ljava/lang/Class;

    sget-object v7, Lcom/facebook/analytics2/logger/UploadJob$Priority;->HIGH:Lcom/facebook/analytics2/logger/UploadJob$Priority;

    const-string v8, "ads"

    move-object/from16 v1, v18

    invoke-direct/range {v1 .. v8}, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/facebook/analytics2/logger/UploadJob$Priority;Ljava/lang/String;)V

    .line 155
    new-instance v0, Lcom/facebook/analytics2/logger/EventProcessor;

    const-string v1, "Analytics-HighPri-Proc"

    const/4 v2, 0x0

    .line 157
    invoke-direct {v10, v1, v2}, Lcom/facebook/analytics2/logger/EventProcessorManager;->startHandlerThread(Ljava/lang/String;I)Landroid/os/HandlerThread;

    move-result-object v2

    sget-object v3, Lcom/facebook/analytics2/logger/ProcessorPriority;->HIGH:Lcom/facebook/analytics2/logger/ProcessorPriority;

    iget-object v4, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mEventListenerHighPri:Lcom/facebook/analytics2/logger/EventListener;

    new-instance v5, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;

    iget-object v12, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mContext:Landroid/content/Context;

    sget v13, Lcom/facebook/R$id;->jobscheduler_analytics2_high_pri:I

    const-string v14, "high"

    iget-object v15, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mHighPriMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    iget-object v1, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mBatchFixedMetadataHelper:Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;

    iget-object v6, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    iget-object v7, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mAppBackgroundedProvider:Lcom/facebook/analytics2/logger/AppBackgroundedProvider;

    iget-object v8, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mHandlerThreadFactory:Ljava/lang/Class;

    iget-object v9, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mHighPriUploadSchedulerParamsProvider:Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;

    move-object v11, v5

    move-object/from16 v16, v1

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    invoke-direct/range {v11 .. v21}, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;Lcom/facebook/crudolib/params/ParamsCollectionPool;Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;Lcom/facebook/analytics2/logger/AppBackgroundedProvider;Ljava/lang/Class;Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;)V

    iget-object v7, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mBeginWritingBlock:Lcom/facebook/analytics2/logger/BeginWritingBlock;

    iget-object v8, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mAnalytics2EventSchemaValidationManager:Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;

    iget-object v9, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mHighPriMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    move-object v1, v0

    move-object/from16 v6, p0

    invoke-direct/range {v1 .. v9}, Lcom/facebook/analytics2/logger/EventProcessor;-><init>(Landroid/os/HandlerThread;Lcom/facebook/analytics2/logger/ProcessorPriority;Lcom/facebook/analytics2/logger/EventListener;Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;Lcom/facebook/analytics2/logger/EventProcessorManager;Lcom/facebook/analytics2/logger/BeginWritingBlock;Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;)V

    iput-object v0, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mHighPriEventProcessor:Lcom/facebook/analytics2/logger/EventProcessor;

    .line 175
    iget-object v0, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mHighPriEventProcessor:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-direct/range {p0 .. p0}, Lcom/facebook/analytics2/logger/EventProcessorManager;->getSessionDelegate()Lcom/facebook/analytics2/logger/SessionDelegate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/EventProcessor;->bootstrapSession(Lcom/facebook/analytics2/logger/SessionDelegate;)V

    .line 177
    :cond_0
    iget-object v0, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mHighPriEventProcessor:Lcom/facebook/analytics2/logger/EventProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNormalPriEventDispatcher()Lcom/facebook/analytics2/logger/EventProcessor;
    .locals 22
    .annotation build Ljavax/annotation/Nonnull;
    .end annotation

    move-object/from16 v10, p0

    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mNormalPriEventProcessor:Lcom/facebook/analytics2/logger/EventProcessor;

    if-nez v0, :cond_0

    .line 104
    new-instance v18, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;

    iget-object v2, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mUploader:Ljava/lang/Class;

    iget-object v3, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mFlexibleSamplingUpdater:Ljava/lang/Class;

    iget-object v4, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mPrivacyPolicy:Ljava/lang/Class;

    iget-object v5, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mHandlerThreadFactory:Ljava/lang/Class;

    iget-object v6, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mUploadJobInstrumentation:Ljava/lang/Class;

    sget-object v7, Lcom/facebook/analytics2/logger/UploadJob$Priority;->NORMAL:Lcom/facebook/analytics2/logger/UploadJob$Priority;

    const-string v8, "regular"

    move-object/from16 v1, v18

    invoke-direct/range {v1 .. v8}, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/facebook/analytics2/logger/UploadJob$Priority;Ljava/lang/String;)V

    .line 113
    new-instance v0, Lcom/facebook/analytics2/logger/EventProcessor;

    const-string v1, "Analytics-NormalPri-Proc"

    const/16 v2, 0xa

    .line 115
    invoke-direct {v10, v1, v2}, Lcom/facebook/analytics2/logger/EventProcessorManager;->startHandlerThread(Ljava/lang/String;I)Landroid/os/HandlerThread;

    move-result-object v2

    sget-object v3, Lcom/facebook/analytics2/logger/ProcessorPriority;->NORMAL:Lcom/facebook/analytics2/logger/ProcessorPriority;

    iget-object v4, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mEventListenerNormalPri:Lcom/facebook/analytics2/logger/EventListener;

    new-instance v5, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;

    iget-object v12, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mContext:Landroid/content/Context;

    sget v13, Lcom/facebook/R$id;->jobscheduler_analytics2_normal_pri:I

    const-string v14, "normal"

    iget-object v15, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mNormalPriMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    iget-object v1, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mBatchFixedMetadataHelper:Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;

    iget-object v6, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    iget-object v7, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mAppBackgroundedProvider:Lcom/facebook/analytics2/logger/AppBackgroundedProvider;

    iget-object v8, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mHandlerThreadFactory:Ljava/lang/Class;

    iget-object v9, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mNormalPriUploadSchedulerParamsProvider:Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;

    move-object v11, v5

    move-object/from16 v16, v1

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    invoke-direct/range {v11 .. v21}, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;Lcom/facebook/crudolib/params/ParamsCollectionPool;Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;Lcom/facebook/analytics2/logger/AppBackgroundedProvider;Ljava/lang/Class;Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;)V

    iget-object v7, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mBeginWritingBlock:Lcom/facebook/analytics2/logger/BeginWritingBlock;

    iget-object v8, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mAnalytics2EventSchemaValidationManager:Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;

    iget-object v9, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mNormalPriMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    move-object v1, v0

    move-object/from16 v6, p0

    invoke-direct/range {v1 .. v9}, Lcom/facebook/analytics2/logger/EventProcessor;-><init>(Landroid/os/HandlerThread;Lcom/facebook/analytics2/logger/ProcessorPriority;Lcom/facebook/analytics2/logger/EventListener;Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;Lcom/facebook/analytics2/logger/EventProcessorManager;Lcom/facebook/analytics2/logger/BeginWritingBlock;Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;)V

    iput-object v0, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mNormalPriEventProcessor:Lcom/facebook/analytics2/logger/EventProcessor;

    .line 133
    iget-object v0, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mNormalPriEventProcessor:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-direct/range {p0 .. p0}, Lcom/facebook/analytics2/logger/EventProcessorManager;->getSessionDelegate()Lcom/facebook/analytics2/logger/SessionDelegate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/EventProcessor;->bootstrapSession(Lcom/facebook/analytics2/logger/SessionDelegate;)V

    .line 135
    :cond_0
    iget-object v0, v10, Lcom/facebook/analytics2/logger/EventProcessorManager;->mNormalPriEventProcessor:Lcom/facebook/analytics2/logger/EventProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNormalPriEventProcessorOrNull()Lcom/facebook/analytics2/logger/EventProcessor;
    .locals 1
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 98
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
