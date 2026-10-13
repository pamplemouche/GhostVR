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

.field private static final DEFAULT_EVENT_BUILDER_POOL_SIZE:I = 0x6

.field private static final DEFAULT_FOREGROUND_HIGH_PRI_UPLOADER_PARAMS:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

.field private static final DEFAULT_FOREGROUND_REGULAR_PRI_UPLOADER_PARAMS:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

.field private static final HIGH_PRI_DEFAULT_HARD_MAX_EVENTS_PER_BATCH:I = 0x32

.field private static final HIGH_PRI_DEFAULT_SOFT_MAX_EVENTS_PER_BATCH:I = 0x1

.field private static final NOOP_EVENT_BUILDER:Lcom/facebook/analytics2/logger/EventBuilder;

.field private static final REGULAR_PRI_DEFAULT_HARD_MAX_EVENTS_PER_BATCH:I = 0x32

.field private static final REGULAR_PRI_DEFAULT_SOFT_MAX_EVENTS_PER_BATCH:I = 0x32


# instance fields
.field final mAppBackgroundedProvider:Lcom/facebook/analytics2/logger/AppBackgroundedProvider;

.field mBlacklistEventsProvider:Lcom/facebook/analytics2/logger/BlacklistEventsProvider;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mEventBuilderConfig:Lcom/facebook/analytics2/logger/EventBuilderConfig;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final mEventBuilderPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Lcom/facebook/analytics2/logger/EventBuilder;",
            ">;"
        }
    .end annotation
.end field

.field final mEventProcessorManager:Lcom/facebook/analytics2/logger/EventProcessorManager;

.field final mFlexibleSamplingUpdater:Ljava/lang/Class;
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

.field final mNetworkTypeProvider:Lcom/facebook/analytics2/logger/NetworkTypeProvider;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

.field final mProcessPolicy:Lcom/facebook/analytics2/logger/ProcessPolicy;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final mSamplingPolicy:Lcom/facebook/flexiblesampling/SamplingPolicy;

.field final mSessionManager:Lcom/facebook/analytics2/logger/SessionManager;

.field final mUploadJobInstrumentation:Ljava/lang/Class;
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


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 55
    new-instance v9, Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0xf

    .line 57
    invoke-virtual {v0, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v12, 0x2d

    .line 58
    invoke-virtual {v0, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v14, 0x1e

    .line 60
    invoke-virtual {v0, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    const-wide/16 v5, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/facebook/analytics2/logger/UploadSchedulerParams;-><init>(JJJJ)V

    sput-object v9, Lcom/facebook/analytics2/logger/Analytics2Logger;->DEFAULT_FOREGROUND_REGULAR_PRI_UPLOADER_PARAMS:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    .line 62
    new-instance v0, Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v24}, Lcom/facebook/analytics2/logger/UploadSchedulerParams;-><init>(JJJJ)V

    sput-object v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->DEFAULT_FOREGROUND_HIGH_PRI_UPLOADER_PARAMS:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    .line 69
    new-instance v0, Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 71
    invoke-virtual {v1, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 72
    invoke-virtual {v1, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 74
    invoke-virtual {v1, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    const-wide/16 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/facebook/analytics2/logger/UploadSchedulerParams;-><init>(JJJJ)V

    sput-object v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->DEFAULT_BACKGROUND_REGULAR_PRI_UPLOADER_PARAMS:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    .line 76
    new-instance v0, Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/facebook/analytics2/logger/UploadSchedulerParams;-><init>(JJJJ)V

    sput-object v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->DEFAULT_BACKGROUND_HIGH_PRI_UPLOADER_PARAMS:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    .line 83
    new-instance v0, Lcom/facebook/analytics2/logger/EventBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/analytics2/logger/EventBuilder;-><init>(Z)V

    sput-object v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->NOOP_EVENT_BUILDER:Lcom/facebook/analytics2/logger/EventBuilder;

    return-void
.end method

.method constructor <init>(Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 98
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iget-object v2, v1, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mEventBuilderPool:Landroid/support/v4/util/Pools$Pool;

    invoke-static {v2}, Lcom/facebook/analytics2/logger/Analytics2Logger;->resolveEventBuilderPool(Landroid/support/v4/util/Pools$Pool;)Landroid/support/v4/util/Pools$Pool;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mEventBuilderPool:Landroid/support/v4/util/Pools$Pool;

    .line 100
    iget-object v2, v1, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mAppBackgroundedProvider:Lcom/facebook/analytics2/logger/AppBackgroundedProvider;

    invoke-static {v2}, Lcom/facebook/analytics2/logger/Analytics2Logger;->resolveNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/analytics2/logger/AppBackgroundedProvider;

    iput-object v2, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mAppBackgroundedProvider:Lcom/facebook/analytics2/logger/AppBackgroundedProvider;

    .line 101
    iget-object v2, v1, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mSamplingPolicy:Lcom/facebook/flexiblesampling/SamplingPolicy;

    invoke-static {v2}, Lcom/facebook/analytics2/logger/Analytics2Logger;->resolveNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/flexiblesampling/SamplingPolicy;

    iput-object v2, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mSamplingPolicy:Lcom/facebook/flexiblesampling/SamplingPolicy;

    .line 102
    iget-object v2, v1, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mProcessPolicy:Lcom/facebook/analytics2/logger/ProcessPolicy;

    iput-object v2, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mProcessPolicy:Lcom/facebook/analytics2/logger/ProcessPolicy;

    .line 103
    invoke-static {}, Lcom/facebook/crudolib/params/ParamsCollectionPool;->newDefaultInstance()Lcom/facebook/crudolib/params/ParamsCollectionPool;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    .line 104
    iget-object v2, v1, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mNetworkTypeProvider:Lcom/facebook/analytics2/logger/NetworkTypeProvider;

    iput-object v2, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mNetworkTypeProvider:Lcom/facebook/analytics2/logger/NetworkTypeProvider;

    .line 105
    iget-object v2, v1, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mSessionManager:Lcom/facebook/analytics2/logger/SessionManager;

    invoke-static {v2}, Lcom/facebook/analytics2/logger/Analytics2Logger;->resolveNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/analytics2/logger/SessionManager;

    iput-object v2, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mSessionManager:Lcom/facebook/analytics2/logger/SessionManager;

    .line 106
    iget-object v2, v1, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mSamplingPolicyUpdater:Ljava/lang/Class;

    iput-object v2, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mFlexibleSamplingUpdater:Ljava/lang/Class;

    .line 107
    iget-object v2, v1, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mUploadJobInstrumentation:Ljava/lang/Class;

    iput-object v2, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mUploadJobInstrumentation:Ljava/lang/Class;

    .line 108
    iget-object v2, v1, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mBlacklistEventsProvider:Lcom/facebook/analytics2/logger/BlacklistEventsProvider;

    iput-object v2, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mBlacklistEventsProvider:Lcom/facebook/analytics2/logger/BlacklistEventsProvider;

    .line 109
    iget-object v2, v1, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mEventBuilderConfig:Lcom/facebook/analytics2/logger/EventBuilderConfig;

    iput-object v2, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mEventBuilderConfig:Lcom/facebook/analytics2/logger/EventBuilderConfig;

    .line 111
    new-instance v2, Lcom/facebook/analytics2/logger/EventProcessorManager;

    iget-object v3, v1, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mContext:Landroid/content/Context;

    .line 113
    invoke-static {v3}, Lcom/facebook/analytics2/logger/Analytics2Logger;->resolveNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/content/Context;

    iget-object v3, v1, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mUploader:Ljava/lang/Class;

    .line 114
    invoke-static {v3}, Lcom/facebook/analytics2/logger/Analytics2Logger;->resolveNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/Class;

    iget-object v6, v1, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mEventListenerNormalPri:Lcom/facebook/analytics2/logger/EventListener;

    iget-object v7, v1, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mEventListenerHighPri:Lcom/facebook/analytics2/logger/EventListener;

    iget-object v8, v1, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mSamplingPolicyUpdater:Ljava/lang/Class;

    iget-object v9, v1, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mPrivacyPolicy:Ljava/lang/Class;

    iget-object v3, v1, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mHandlerThreadFactory:Ljava/lang/Class;

    .line 119
    invoke-static {v3}, Lcom/facebook/analytics2/logger/Analytics2Logger;->resolveHandlerThreadFactory(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v10

    new-instance v11, Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;

    iget-object v3, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    iget-object v12, v1, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mAppInfoProvider:Lcom/facebook/analytics2/logger/AppInfoProvider;

    .line 122
    invoke-static {v12}, Lcom/facebook/analytics2/logger/Analytics2Logger;->resolveNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/facebook/analytics2/logger/AppInfoProvider;

    iget-object v13, v1, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mDeviceIdProvider:Lcom/facebook/analytics2/logger/DeviceIdProvider;

    .line 123
    invoke-static {v13}, Lcom/facebook/analytics2/logger/Analytics2Logger;->resolveNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/facebook/analytics2/logger/DeviceIdProvider;

    iget-object v14, v1, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mFamilyDeviceIdProvider:Lcom/facebook/analytics2/logger/FamilyDeviceIdProvider;

    invoke-direct {v11, v3, v12, v13, v14}, Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;-><init>(Lcom/facebook/crudolib/params/ParamsCollectionPool;Lcom/facebook/analytics2/logger/AppInfoProvider;Lcom/facebook/analytics2/logger/DeviceIdProvider;Lcom/facebook/analytics2/logger/FamilyDeviceIdProvider;)V

    iget-object v12, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mSessionManager:Lcom/facebook/analytics2/logger/SessionManager;

    iget-object v13, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    iget-object v14, v1, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mAppBackgroundedProvider:Lcom/facebook/analytics2/logger/AppBackgroundedProvider;

    iget-object v3, v1, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mRegularPriUploadSchedulerParamsProvider:Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mRegularPriUploadSchedulerParamsProvider:Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/facebook/analytics2/logger/SimpleUploadSchedulerParamsProvider;

    sget-object v15, Lcom/facebook/analytics2/logger/Analytics2Logger;->DEFAULT_FOREGROUND_REGULAR_PRI_UPLOADER_PARAMS:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    sget-object v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->DEFAULT_BACKGROUND_REGULAR_PRI_UPLOADER_PARAMS:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    invoke-direct {v3, v15, v0}, Lcom/facebook/analytics2/logger/SimpleUploadSchedulerParamsProvider;-><init>(Lcom/facebook/analytics2/logger/UploadSchedulerParams;Lcom/facebook/analytics2/logger/UploadSchedulerParams;)V

    :goto_0
    move-object v15, v3

    iget-object v0, v1, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mHighPriUploadSchedulerParamsProvider:Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mHighPriUploadSchedulerParamsProvider:Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;

    move-object/from16 v16, v15

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/facebook/analytics2/logger/SimpleUploadSchedulerParamsProvider;

    sget-object v3, Lcom/facebook/analytics2/logger/Analytics2Logger;->DEFAULT_FOREGROUND_HIGH_PRI_UPLOADER_PARAMS:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    move-object/from16 v16, v15

    sget-object v15, Lcom/facebook/analytics2/logger/Analytics2Logger;->DEFAULT_BACKGROUND_HIGH_PRI_UPLOADER_PARAMS:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    invoke-direct {v0, v3, v15}, Lcom/facebook/analytics2/logger/SimpleUploadSchedulerParamsProvider;-><init>(Lcom/facebook/analytics2/logger/UploadSchedulerParams;Lcom/facebook/analytics2/logger/UploadSchedulerParams;)V

    :goto_1
    iget-object v3, v1, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mRegularPriMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    const/16 v15, 0x32

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mRegularPriMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    goto :goto_2

    :cond_2
    new-instance v3, Lcom/facebook/analytics2/logger/SimpleMaxEventsPerBatchProvider;

    invoke-direct {v3, v15, v15}, Lcom/facebook/analytics2/logger/SimpleMaxEventsPerBatchProvider;-><init>(II)V

    :goto_2
    move-object/from16 v17, v3

    iget-object v3, v1, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mHighPriMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mHighPriMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    move-object/from16 v18, v0

    goto :goto_3

    :cond_3
    new-instance v3, Lcom/facebook/analytics2/logger/SimpleMaxEventsPerBatchProvider;

    move-object/from16 v18, v0

    const/4 v0, 0x1

    invoke-direct {v3, v0, v15}, Lcom/facebook/analytics2/logger/SimpleMaxEventsPerBatchProvider;-><init>(II)V

    :goto_3
    move-object v0, v3

    iget-object v3, v1, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mBeginWritingBlock:Lcom/facebook/analytics2/logger/BeginWritingBlock;

    move-object/from16 v19, v3

    iget-object v3, v1, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mAnalytics2EventSchemaValidationManager:Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;

    move-object/from16 v20, v3

    iget-object v1, v1, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mUploadJobInstrumentation:Ljava/lang/Class;

    move-object/from16 v21, v1

    move-object v3, v2

    move-object/from16 v15, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v0

    invoke-direct/range {v3 .. v21}, Lcom/facebook/analytics2/logger/EventProcessorManager;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/facebook/analytics2/logger/EventListener;Lcom/facebook/analytics2/logger/EventListener;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;Lcom/facebook/analytics2/logger/SessionManager;Lcom/facebook/crudolib/params/ParamsCollectionPool;Lcom/facebook/analytics2/logger/AppBackgroundedProvider;Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;Lcom/facebook/analytics2/logger/BeginWritingBlock;Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mEventProcessorManager:Lcom/facebook/analytics2/logger/EventProcessorManager;

    return-void
.end method

.method private doAcquireEventBuilder(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/analytics2/logger/EventLogType;Z)Lcom/facebook/analytics2/logger/EventBuilder;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 290
    iget-object v0, p0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mEventBuilderPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/EventBuilder;

    if-nez v0, :cond_0

    .line 292
    new-instance v0, Lcom/facebook/analytics2/logger/EventBuilder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/facebook/analytics2/logger/EventBuilder;-><init>(Z)V

    :cond_0
    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    .line 294
    invoke-virtual/range {v2 .. v7}, Lcom/facebook/analytics2/logger/EventBuilder;->acquire(Lcom/facebook/analytics2/logger/Analytics2Logger;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/analytics2/logger/EventLogType;Z)V

    return-object v0
.end method

.method private isEventBlacklisted(Ljava/lang/String;)Z
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mBlacklistEventsProvider:Lcom/facebook/analytics2/logger/BlacklistEventsProvider;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 243
    :cond_0
    invoke-interface {v0, p1}, Lcom/facebook/analytics2/logger/BlacklistEventsProvider;->isBlacklisted(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private static resolveEventBuilderPool(Landroid/support/v4/util/Pools$Pool;)Landroid/support/v4/util/Pools$Pool;
    .locals 1
    .param p0    # Landroid/support/v4/util/Pools$Pool;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Pools$Pool<",
            "Lcom/facebook/analytics2/logger/EventBuilder;",
            ">;)",
            "Landroid/support/v4/util/Pools$Pool<",
            "Lcom/facebook/analytics2/logger/EventBuilder;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nonnull;
    .end annotation

    if-eqz p0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    new-instance p0, Landroid/support/v4/util/Pools$SynchronizedPool;

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    :goto_0
    return-object p0
.end method

.method private static resolveHandlerThreadFactory(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .param p0    # Ljava/lang/Class;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/analytics2/logger/HandlerThreadFactory;",
            ">;)",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/analytics2/logger/HandlerThreadFactory;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 168
    const-class p0, Lcom/facebook/analytics2/logger/DefaultHandlerThreadFactory;

    :cond_0
    return-object p0
.end method

.method private static resolveNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nonnull;
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 176
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method private static resolveNotNullWithDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nonnull;
    .end annotation

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method


# virtual methods
.method public acquireEventBuilderLegacy(Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/analytics2/logger/EventLogType;Z)Lcom/facebook/analytics2/logger/EventBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 223
    invoke-direct {p0, p2}, Lcom/facebook/analytics2/logger/Analytics2Logger;->isEventBlacklisted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    sget-object p1, Lcom/facebook/analytics2/logger/Analytics2Logger;->NOOP_EVENT_BUILDER:Lcom/facebook/analytics2/logger/EventBuilder;

    return-object p1

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mSamplingPolicy:Lcom/facebook/flexiblesampling/SamplingPolicy;

    invoke-interface {v0, p2, p3}, Lcom/facebook/flexiblesampling/SamplingPolicy;->shouldLog(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/facebook/analytics2/logger/Analytics2Logger;->doAcquireEventBuilder(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/analytics2/logger/EventLogType;Z)Lcom/facebook/analytics2/logger/EventBuilder;

    move-result-object p1

    .line 228
    iget-object p4, p0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mSamplingPolicy:Lcom/facebook/flexiblesampling/SamplingPolicy;

    invoke-interface {p4, p2, p3}, Lcom/facebook/flexiblesampling/SamplingPolicy;->getEventSampleRate(Ljava/lang/String;Z)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/facebook/analytics2/logger/EventBuilder;->setEventSampleRate(I)V

    return-object p1

    .line 231
    :cond_1
    sget-object p1, Lcom/facebook/analytics2/logger/Analytics2Logger;->NOOP_EVENT_BUILDER:Lcom/facebook/analytics2/logger/EventBuilder;

    return-object p1
.end method

.method public acquireEventBuilderLegacyUnsampled(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/analytics2/logger/EventLogType;Z)Lcom/facebook/analytics2/logger/EventBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 264
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/analytics2/logger/Analytics2Logger;->doAcquireEventBuilder(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/analytics2/logger/EventLogType;Z)Lcom/facebook/analytics2/logger/EventBuilder;

    move-result-object p1

    .line 266
    invoke-virtual {p1}, Lcom/facebook/analytics2/logger/EventBuilder;->isSampled()Z

    return-object p1
.end method

.method public acquireEventBuilder_DEPRECATED(Lcom/facebook/analytics2/logger/Analytics2EventConfig;)Lcom/facebook/analytics2/logger/EventBuilder;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    iget-object v1, p1, Lcom/facebook/analytics2/logger/Analytics2EventConfig;->moduleName:Ljava/lang/String;

    iget-object v2, p1, Lcom/facebook/analytics2/logger/Analytics2EventConfig;->eventName:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/facebook/analytics2/logger/Analytics2EventConfig;->isCoreEvent:Z

    iget-object v4, p1, Lcom/facebook/analytics2/logger/Analytics2EventConfig;->eventLogType:Lcom/facebook/analytics2/logger/EventLogType;

    iget-boolean v5, p1, Lcom/facebook/analytics2/logger/Analytics2EventConfig;->deliverImmediately:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/analytics2/logger/Analytics2Logger;->acquireEventBuilderLegacy(Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/analytics2/logger/EventLogType;Z)Lcom/facebook/analytics2/logger/EventBuilder;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentSessionId()Ljava/lang/String;
    .locals 1
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mEventProcessorManager:Lcom/facebook/analytics2/logger/EventProcessorManager;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventProcessorManager;->getCurrentSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getEventMaxSize()J
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mEventBuilderConfig:Lcom/facebook/analytics2/logger/EventBuilderConfig;

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 250
    :cond_0
    invoke-interface {v0}, Lcom/facebook/analytics2/logger/EventBuilderConfig;->getEventMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public shouldLog(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mSamplingPolicy:Lcom/facebook/flexiblesampling/SamplingPolicy;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {v0, p1, p2}, Lcom/facebook/flexiblesampling/SamplingPolicy;->shouldLog(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public waitForPendingWrites()V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mEventProcessorManager:Lcom/facebook/analytics2/logger/EventProcessorManager;

    .line 273
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventProcessorManager;->getNormalPriEventProcessorOrNull()Lcom/facebook/analytics2/logger/EventProcessor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->waitForPendingWrites()V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mEventProcessorManager:Lcom/facebook/analytics2/logger/EventProcessorManager;

    .line 279
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventProcessorManager;->getHighPriEventProcessorOrNull()Lcom/facebook/analytics2/logger/EventProcessor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 281
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->waitForPendingWrites()V

    :cond_1
    return-void
.end method
