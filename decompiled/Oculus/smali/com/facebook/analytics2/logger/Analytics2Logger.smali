.class public Lcom/facebook/analytics2/logger/Analytics2Logger;
.super Ljava/lang/Object;
.source "Analytics2Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_BACKGROUND_HIGH_PRI_UPLOADER_PARAMS:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

.field private static final DEFAULT_BACKGROUND_REGULAR_PRI_UPLOADER_PARAMS:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

.field private static final DEFAULT_FOREGROUND_HIGH_PRI_UPLOADER_PARAMS:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

.field private static final DEFAULT_FOREGROUND_REGULAR_PRI_UPLOADER_PARAMS:Lcom/facebook/analytics2/logger/UploadSchedulerParams;


# instance fields
.field private final NOOP_EVENT_BUILDER:Lcom/facebook/analytics2/logger/EventBuilder;

.field final mAppBackgroundedProvider:Lcom/facebook/analytics2/logger/AppBackgroundedProvider;

.field mBlacklistEventsProvider:Lcom/facebook/analytics2/logger/BlacklistEventsProvider;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mEventBuilderConfig:Lcom/facebook/analytics2/logger/EventBuilderConfig;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final mEventBuilderPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool",
            "<",
            "Lcom/facebook/analytics2/logger/EventBuilder;",
            ">;"
        }
    .end annotation
.end field

.field final mEventProcessorManager:Lcom/facebook/analytics2/logger/EventProcessorManager;

.field mEventThrottlingProvider:Lcom/facebook/analytics2/logger/EventThrottlingProvider;

.field final mFlexibleSamplingUpdater:Ljava/lang/Class;
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

.field final mNetworkTypeProvider:Lcom/facebook/analytics2/logger/NetworkTypeProvider;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

.field final mProcessPolicy:Lcom/facebook/analytics2/logger/ProcessPolicy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final mSamplingPolicy:Lcom/facebook/flexiblesampling/SamplingPolicy;

.field final mSessionManager:Lcom/facebook/analytics2/logger/SessionManager;

.field mStartupStatusProvider:Lcom/facebook/analytics2/logger/StartupStatusProvider;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final mUploadJobInstrumentation:Ljava/lang/Class;
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


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 56
    new-instance v1, Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    .line 58
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x2d

    .line 59
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1e

    .line 61
    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-direct/range {v1 .. v9}, Lcom/facebook/analytics2/logger/UploadSchedulerParams;-><init>(JJJJ)V

    sput-object v1, Lcom/facebook/analytics2/logger/Analytics2Logger;->DEFAULT_FOREGROUND_REGULAR_PRI_UPLOADER_PARAMS:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    .line 63
    new-instance v1, Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/facebook/analytics2/logger/UploadSchedulerParams;-><init>(JJJJ)V

    sput-object v1, Lcom/facebook/analytics2/logger/Analytics2Logger;->DEFAULT_FOREGROUND_HIGH_PRI_UPLOADER_PARAMS:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    .line 70
    new-instance v1, Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    .line 72
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x2d

    .line 73
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1e

    .line 75
    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-direct/range {v1 .. v9}, Lcom/facebook/analytics2/logger/UploadSchedulerParams;-><init>(JJJJ)V

    sput-object v1, Lcom/facebook/analytics2/logger/Analytics2Logger;->DEFAULT_BACKGROUND_REGULAR_PRI_UPLOADER_PARAMS:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    .line 77
    new-instance v1, Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/facebook/analytics2/logger/UploadSchedulerParams;-><init>(JJJJ)V

    sput-object v1, Lcom/facebook/analytics2/logger/Analytics2Logger;->DEFAULT_BACKGROUND_HIGH_PRI_UPLOADER_PARAMS:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    return-void
.end method

.method constructor <init>(Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;)V
    .locals 20

    .prologue
    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static/range {p0 .. p0}, Lcom/facebook/analytics2/logger/SampledOutEventBuilder;->newInstance(Lcom/facebook/analytics2/logger/Analytics2Logger;)Lcom/facebook/analytics2/logger/SampledOutEventBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->NOOP_EVENT_BUILDER:Lcom/facebook/analytics2/logger/EventBuilder;

    .line 102
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mEventBuilderPool:Landroidx/core/util/Pools$Pool;

    invoke-static {v1}, Lcom/facebook/analytics2/logger/Analytics2Logger;->resolveEventBuilderPool(Landroidx/core/util/Pools$Pool;)Landroidx/core/util/Pools$Pool;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mEventBuilderPool:Landroidx/core/util/Pools$Pool;

    .line 103
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mAppBackgroundedProvider:Lcom/facebook/analytics2/logger/AppBackgroundedProvider;

    invoke-static {v1}, Lcom/facebook/analytics2/logger/Analytics2Logger;->resolveNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/analytics2/logger/AppBackgroundedProvider;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mAppBackgroundedProvider:Lcom/facebook/analytics2/logger/AppBackgroundedProvider;

    .line 104
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mSamplingPolicy:Lcom/facebook/flexiblesampling/SamplingPolicy;

    invoke-static {v1}, Lcom/facebook/analytics2/logger/Analytics2Logger;->resolveNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/flexiblesampling/SamplingPolicy;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mSamplingPolicy:Lcom/facebook/flexiblesampling/SamplingPolicy;

    .line 105
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mProcessPolicy:Lcom/facebook/analytics2/logger/ProcessPolicy;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mProcessPolicy:Lcom/facebook/analytics2/logger/ProcessPolicy;

    .line 106
    invoke-static {}, Lcom/facebook/crudolib/params/ParamsCollectionPool;->newDefaultInstance()Lcom/facebook/crudolib/params/ParamsCollectionPool;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    .line 107
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mNetworkTypeProvider:Lcom/facebook/analytics2/logger/NetworkTypeProvider;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mNetworkTypeProvider:Lcom/facebook/analytics2/logger/NetworkTypeProvider;

    .line 108
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mSessionManager:Lcom/facebook/analytics2/logger/SessionManager;

    invoke-static {v1}, Lcom/facebook/analytics2/logger/Analytics2Logger;->resolveNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/analytics2/logger/SessionManager;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mSessionManager:Lcom/facebook/analytics2/logger/SessionManager;

    .line 109
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mSamplingPolicyUpdater:Ljava/lang/Class;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mFlexibleSamplingUpdater:Ljava/lang/Class;

    .line 110
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mUploadJobInstrumentation:Ljava/lang/Class;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mUploadJobInstrumentation:Ljava/lang/Class;

    .line 111
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mBlacklistEventsProvider:Lcom/facebook/analytics2/logger/BlacklistEventsProvider;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mBlacklistEventsProvider:Lcom/facebook/analytics2/logger/BlacklistEventsProvider;

    .line 112
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mEventBuilderConfig:Lcom/facebook/analytics2/logger/EventBuilderConfig;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mEventBuilderConfig:Lcom/facebook/analytics2/logger/EventBuilderConfig;

    .line 113
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mStartupStatusProvider:Lcom/facebook/analytics2/logger/StartupStatusProvider;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mStartupStatusProvider:Lcom/facebook/analytics2/logger/StartupStatusProvider;

    .line 114
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mEventThrottlingProvider:Lcom/facebook/analytics2/logger/EventThrottlingProvider;

    invoke-static {v1}, Lcom/facebook/analytics2/logger/Analytics2Logger;->resolveEventThrottlingProvider(Lcom/facebook/analytics2/logger/EventThrottlingProvider;)Lcom/facebook/analytics2/logger/EventThrottlingProvider;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mEventThrottlingProvider:Lcom/facebook/analytics2/logger/EventThrottlingProvider;

    .line 115
    new-instance v1, Lcom/facebook/analytics2/logger/EventProcessorManager;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mContext:Landroid/content/Context;

    .line 117
    invoke-static {v2}, Lcom/facebook/analytics2/logger/Analytics2Logger;->resolveNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mUploader:Ljava/lang/Class;

    .line 118
    invoke-static {v3}, Lcom/facebook/analytics2/logger/Analytics2Logger;->resolveNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mEventListenerNormalPri:Lcom/facebook/analytics2/logger/EventListener;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mEventListenerHighPri:Lcom/facebook/analytics2/logger/EventListener;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mSamplingPolicyUpdater:Ljava/lang/Class;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mPrivacyPolicy:Ljava/lang/Class;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mHandlerThreadFactory:Ljava/lang/Class;

    .line 123
    invoke-static {v8}, Lcom/facebook/analytics2/logger/Analytics2Logger;->resolveHandlerThreadFactory(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v8

    new-instance v9, Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mAppInfoProvider:Lcom/facebook/analytics2/logger/AppInfoProvider;

    .line 126
    invoke-static {v10}, Lcom/facebook/analytics2/logger/Analytics2Logger;->resolveNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/facebook/analytics2/logger/AppInfoProvider;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mDeviceIdProvider:Lcom/facebook/analytics2/logger/DeviceIdProvider;

    .line 127
    invoke-static {v11}, Lcom/facebook/analytics2/logger/Analytics2Logger;->resolveNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/analytics2/logger/DeviceIdProvider;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mFamilyDeviceIdProvider:Lcom/facebook/analytics2/logger/FamilyDeviceIdProvider;

    invoke-direct {v9, v12, v10, v11, v13}, Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;-><init>(Lcom/facebook/crudolib/params/ParamsCollectionPool;Lcom/facebook/analytics2/logger/AppInfoProvider;Lcom/facebook/analytics2/logger/DeviceIdProvider;Lcom/facebook/analytics2/logger/FamilyDeviceIdProvider;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mSessionManager:Lcom/facebook/analytics2/logger/SessionManager;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mAppBackgroundedProvider:Lcom/facebook/analytics2/logger/AppBackgroundedProvider;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mRegularPriUploadSchedulerParamsProvider:Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;

    if-eqz v13, :cond_1

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mRegularPriUploadSchedulerParamsProvider:Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;

    :goto_0
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mHighPriUploadSchedulerParamsProvider:Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;

    if-eqz v14, :cond_2

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mHighPriUploadSchedulerParamsProvider:Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;

    :goto_1
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mRegularPriMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    if-eqz v15, :cond_3

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mRegularPriMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mHighPriMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mHighPriMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    move-object/from16 v16, v0

    :goto_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mBeginWritingBlock:Lcom/facebook/analytics2/logger/BeginWritingBlock;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mAnalytics2EventSchemaValidationManager:Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mUploadJobInstrumentation:Ljava/lang/Class;

    move-object/from16 v19, v0

    invoke-direct/range {v1 .. v19}, Lcom/facebook/analytics2/logger/EventProcessorManager;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/facebook/analytics2/logger/EventListener;Lcom/facebook/analytics2/logger/EventListener;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;Lcom/facebook/analytics2/logger/SessionManager;Lcom/facebook/crudolib/params/ParamsCollectionPool;Lcom/facebook/analytics2/logger/AppBackgroundedProvider;Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;Lcom/facebook/analytics2/logger/BeginWritingBlock;Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mEventProcessorManager:Lcom/facebook/analytics2/logger/EventProcessorManager;

    .line 155
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mFlexibleSamplingUpdater:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 156
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mSessionManager:Lcom/facebook/analytics2/logger/SessionManager;

    new-instance v2, Lcom/facebook/analytics2/logger/SamplingPolicyConfigDelegate;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mFlexibleSamplingUpdater:Ljava/lang/Class;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/facebook/analytics2/logger/SamplingPolicyConfigDelegate;-><init>(Ljava/lang/Class;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/facebook/analytics2/logger/SessionManager;->registerCallback(Lcom/facebook/analytics2/logger/SessionManagerCallback;)V

    .line 159
    :cond_0
    return-void

    .line 127
    :cond_1
    new-instance v13, Lcom/facebook/analytics2/logger/SimpleUploadSchedulerParamsProvider;

    sget-object v14, Lcom/facebook/analytics2/logger/Analytics2Logger;->DEFAULT_FOREGROUND_REGULAR_PRI_UPLOADER_PARAMS:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    sget-object v15, Lcom/facebook/analytics2/logger/Analytics2Logger;->DEFAULT_BACKGROUND_REGULAR_PRI_UPLOADER_PARAMS:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    invoke-direct {v13, v14, v15}, Lcom/facebook/analytics2/logger/SimpleUploadSchedulerParamsProvider;-><init>(Lcom/facebook/analytics2/logger/UploadSchedulerParams;Lcom/facebook/analytics2/logger/UploadSchedulerParams;)V

    goto :goto_0

    :cond_2
    new-instance v14, Lcom/facebook/analytics2/logger/SimpleUploadSchedulerParamsProvider;

    sget-object v15, Lcom/facebook/analytics2/logger/Analytics2Logger;->DEFAULT_FOREGROUND_HIGH_PRI_UPLOADER_PARAMS:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    sget-object v16, Lcom/facebook/analytics2/logger/Analytics2Logger;->DEFAULT_BACKGROUND_HIGH_PRI_UPLOADER_PARAMS:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    invoke-direct/range {v14 .. v16}, Lcom/facebook/analytics2/logger/SimpleUploadSchedulerParamsProvider;-><init>(Lcom/facebook/analytics2/logger/UploadSchedulerParams;Lcom/facebook/analytics2/logger/UploadSchedulerParams;)V

    goto :goto_1

    :cond_3
    new-instance v15, Lcom/facebook/analytics2/logger/SimpleMaxEventsPerBatchProvider;

    const/16 v16, 0x32

    const/16 v17, 0x32

    invoke-direct/range {v15 .. v17}, Lcom/facebook/analytics2/logger/SimpleMaxEventsPerBatchProvider;-><init>(II)V

    goto :goto_2

    :cond_4
    new-instance v16, Lcom/facebook/analytics2/logger/SimpleMaxEventsPerBatchProvider;

    const/16 v17, 0x1

    const/16 v18, 0x32

    invoke-direct/range {v16 .. v18}, Lcom/facebook/analytics2/logger/SimpleMaxEventsPerBatchProvider;-><init>(II)V

    goto :goto_3
.end method

.method private doAcquireEventBuilder(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/analytics2/logger/EventLogType;Z)Lcom/facebook/analytics2/logger/EventBuilder;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 356
    iget-object v0, p0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mEventBuilderPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/EventBuilder;

    .line 357
    if-nez v0, :cond_0

    .line 358
    new-instance v0, Lcom/facebook/analytics2/logger/EventBuilder;

    invoke-direct {v0}, Lcom/facebook/analytics2/logger/EventBuilder;-><init>()V

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 360
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/analytics2/logger/EventBuilder;->acquire(Lcom/facebook/analytics2/logger/Analytics2Logger;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/analytics2/logger/EventLogType;Z)V

    .line 362
    return-object v0
.end method

.method private doAcquireEventBuilderWithSampling(Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/analytics2/logger/EventLogType;Z)Lcom/facebook/analytics2/logger/EventBuilder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 241
    invoke-direct {p0, p2}, Lcom/facebook/analytics2/logger/Analytics2Logger;->isEventBlacklisted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/facebook/analytics2/logger/Analytics2Logger;->NOOP_EVENT_BUILDER:Lcom/facebook/analytics2/logger/EventBuilder;

    .line 251
    :goto_0
    return-object v0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mSamplingPolicy:Lcom/facebook/flexiblesampling/SamplingPolicy;

    invoke-interface {v0, p2, p3}, Lcom/facebook/flexiblesampling/SamplingPolicy;->shouldLog(Ljava/lang/String;Z)Lcom/facebook/flexiblesampling/SamplingResult;

    move-result-object v1

    .line 245
    invoke-virtual {v1}, Lcom/facebook/flexiblesampling/SamplingResult;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mEventThrottlingProvider:Lcom/facebook/analytics2/logger/EventThrottlingProvider;

    invoke-interface {v0, p2}, Lcom/facebook/analytics2/logger/EventThrottlingProvider;->isThrottled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/facebook/analytics2/logger/Analytics2Logger;->doAcquireEventBuilder(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/analytics2/logger/EventLogType;Z)Lcom/facebook/analytics2/logger/EventBuilder;

    move-result-object v0

    .line 247
    invoke-static {v0, v1}, Lcom/facebook/analytics2/logger/Analytics2Logger;->tagEventSamplingInfo(Lcom/facebook/analytics2/logger/EventBuilder;Lcom/facebook/flexiblesampling/SamplingResult;)V

    .line 248
    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/Analytics2Logger;->tagEventIfLoggedDuringStartup(Lcom/facebook/analytics2/logger/EventBuilder;)V

    goto :goto_0

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/facebook/analytics2/logger/Analytics2Logger;->NOOP_EVENT_BUILDER:Lcom/facebook/analytics2/logger/EventBuilder;

    goto :goto_0
.end method

.method private isEventBlacklisted(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mBlacklistEventsProvider:Lcom/facebook/analytics2/logger/BlacklistEventsProvider;

    if-nez v0, :cond_0

    .line 282
    const/4 v0, 0x0

    .line 284
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mBlacklistEventsProvider:Lcom/facebook/analytics2/logger/BlacklistEventsProvider;

    invoke-interface {v0, p1}, Lcom/facebook/analytics2/logger/BlacklistEventsProvider;->isBlacklisted(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static resolveEventBuilderPool(Landroidx/core/util/Pools$Pool;)Landroidx/core/util/Pools$Pool;
    .locals 1
    .param p0    # Landroidx/core/util/Pools$Pool;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Pools$Pool",
            "<",
            "Lcom/facebook/analytics2/logger/EventBuilder;",
            ">;)",
            "Landroidx/core/util/Pools$Pool",
            "<",
            "Lcom/facebook/analytics2/logger/EventBuilder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 174
    if-eqz p0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance p0, Landroidx/core/util/Pools$SynchronizedPool;

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    goto :goto_0
.end method

.method private static resolveEventThrottlingProvider(Lcom/facebook/analytics2/logger/EventThrottlingProvider;)Lcom/facebook/analytics2/logger/EventThrottlingProvider;
    .locals 0
    .param p0    # Lcom/facebook/analytics2/logger/EventThrottlingProvider;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 163
    if-eqz p0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance p0, Lcom/facebook/analytics2/logger/NeverOnEventThrottler;

    invoke-direct {p0}, Lcom/facebook/analytics2/logger/NeverOnEventThrottler;-><init>()V

    goto :goto_0
.end method

.method private static resolveHandlerThreadFactory(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .param p0    # Ljava/lang/Class;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/analytics2/logger/HandlerThreadFactory;",
            ">;)",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/analytics2/logger/HandlerThreadFactory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    if-nez p0, :cond_0

    const-class p0, Lcom/facebook/analytics2/logger/DefaultHandlerThreadFactory;

    :cond_0
    return-object p0
.end method

.method private static resolveNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 188
    if-nez p0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 191
    :cond_0
    return-object p0
.end method

.method private tagEventIfLoggedDuringStartup(Lcom/facebook/analytics2/logger/EventBuilder;)V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mStartupStatusProvider:Lcom/facebook/analytics2/logger/StartupStatusProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mStartupStatusProvider:Lcom/facebook/analytics2/logger/StartupStatusProvider;

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/StartupStatusProvider;->isDuringColdStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-static {p1}, Lcom/facebook/analytics2/logger/EventTagManager;->tagIsEventLoggedDuringStartup(Lcom/facebook/analytics2/logger/EventBuilder;)V

    .line 259
    :cond_0
    return-void
.end method

.method private static tagEventSamplingInfo(Lcom/facebook/analytics2/logger/EventBuilder;Lcom/facebook/flexiblesampling/SamplingResult;)V
    .locals 1

    .prologue
    .line 263
    invoke-virtual {p1}, Lcom/facebook/flexiblesampling/SamplingResult;->getSamplingRate()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/analytics2/logger/EventBuilder;->setEventSampleRate(I)V

    .line 264
    invoke-virtual {p1}, Lcom/facebook/flexiblesampling/SamplingResult;->hasUserConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-static {p0}, Lcom/facebook/analytics2/logger/EventTagManager;->tagHasDownloadedSamplingConfig(Lcom/facebook/analytics2/logger/EventBuilder;)V

    .line 267
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/flexiblesampling/SamplingResult;->isInUserConfig()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    invoke-static {p0}, Lcom/facebook/analytics2/logger/EventTagManager;->tagIsEventInDownloadedSamplingConfig(Lcom/facebook/analytics2/logger/EventBuilder;)V

    .line 270
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/flexiblesampling/SamplingResult;->isInSessionlessConfig()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    invoke-static {p0}, Lcom/facebook/analytics2/logger/EventTagManager;->tagIsEventInSessionlessSamplingConfig(Lcom/facebook/analytics2/logger/EventBuilder;)V

    .line 273
    :cond_2
    return-void
.end method


# virtual methods
.method public acquireEventBuilder_DEPRECATED(Lcom/facebook/analytics2/logger/Analytics2EventConfig;)Lcom/facebook/analytics2/logger/EventBuilder;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 214
    iget-object v1, p1, Lcom/facebook/analytics2/logger/Analytics2EventConfig;->moduleName:Ljava/lang/String;

    iget-object v2, p1, Lcom/facebook/analytics2/logger/Analytics2EventConfig;->eventName:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/facebook/analytics2/logger/Analytics2EventConfig;->isCoreEvent:Z

    iget-object v4, p1, Lcom/facebook/analytics2/logger/Analytics2EventConfig;->eventLogType:Lcom/facebook/analytics2/logger/EventLogType;

    iget-boolean v5, p1, Lcom/facebook/analytics2/logger/Analytics2EventConfig;->deliverImmediately:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/analytics2/logger/Analytics2Logger;->doAcquireEventBuilderWithSampling(Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/analytics2/logger/EventLogType;Z)Lcom/facebook/analytics2/logger/EventBuilder;

    move-result-object v0

    return-object v0
.end method

.method getEventMaxSize()J
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mEventBuilderConfig:Lcom/facebook/analytics2/logger/EventBuilderConfig;

    if-nez v0, :cond_0

    .line 289
    const-wide v0, 0x7fffffffffffffffL

    .line 291
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mEventBuilderConfig:Lcom/facebook/analytics2/logger/EventBuilderConfig;

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/EventBuilderConfig;->getEventMaxSize()J

    move-result-wide v0

    goto :goto_0
.end method
