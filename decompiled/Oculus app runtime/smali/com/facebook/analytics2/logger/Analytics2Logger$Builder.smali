.class public Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;
.super Ljava/lang/Object;
.source "Analytics2Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/Analytics2Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static sPreviousDebugStacktrace:Ljava/lang/String;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field mAnalytics2EventSchemaValidationManager:Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mAppBackgroundedProvider:Lcom/facebook/analytics2/logger/AppBackgroundedProvider;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mAppInfoProvider:Lcom/facebook/analytics2/logger/AppInfoProvider;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mBeginWritingBlock:Lcom/facebook/analytics2/logger/BeginWritingBlock;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mBlacklistEventsProvider:Lcom/facebook/analytics2/logger/BlacklistEventsProvider;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field mDeviceIdProvider:Lcom/facebook/analytics2/logger/DeviceIdProvider;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mEventBuilderConfig:Lcom/facebook/analytics2/logger/EventBuilderConfig;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mEventBuilderPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Lcom/facebook/analytics2/logger/EventBuilder;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mEventListenerHighPri:Lcom/facebook/analytics2/logger/EventListener;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mEventListenerNormalPri:Lcom/facebook/analytics2/logger/EventListener;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mFamilyDeviceIdProvider:Lcom/facebook/analytics2/logger/FamilyDeviceIdProvider;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mHandlerThreadFactory:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/analytics2/logger/HandlerThreadFactory;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mHighPriMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mHighPriUploadSchedulerParamsProvider:Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mNetworkTypeProvider:Lcom/facebook/analytics2/logger/NetworkTypeProvider;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mPrivacyPolicy:Ljava/lang/Class;
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

.field mProcessPolicy:Lcom/facebook/analytics2/logger/ProcessPolicy;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mRegularPriMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mRegularPriUploadSchedulerParamsProvider:Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mSamplingPolicy:Lcom/facebook/flexiblesampling/SamplingPolicy;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mSamplingPolicyUpdater:Ljava/lang/Class;
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

.field mSessionManager:Lcom/facebook/analytics2/logger/SessionManager;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mUploadJobInstrumentation:Ljava/lang/Class;
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

.field mUploader:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/analytics2/logger/Uploader;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 338
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mContext:Landroid/content/Context;

    .line 339
    sget-object p1, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->sPreviousDebugStacktrace:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string p1, "currentStack: "

    .line 340
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->getCurrentStacktrace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->sPreviousDebugStacktrace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Analytics2Logger.Builder"

    invoke-static {v0, p1}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "previousStack: "

    .line 343
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->getCurrentStacktrace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->sPreviousDebugStacktrace:Ljava/lang/String;

    return-void

    .line 336
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getCurrentStacktrace(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 347
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A2 is created\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 350
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public analyticsEventSchemaValidationManager(Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;)Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;
    .locals 0

    .line 638
    iput-object p1, p0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mAnalytics2EventSchemaValidationManager:Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;

    return-object p0
.end method

.method public appBackgroundedProvider(Lcom/facebook/analytics2/logger/AppBackgroundedProvider;)Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mAppBackgroundedProvider:Lcom/facebook/analytics2/logger/AppBackgroundedProvider;

    return-object p0
.end method

.method public appInfoProvider(Lcom/facebook/analytics2/logger/AppInfoProvider;)Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mAppInfoProvider:Lcom/facebook/analytics2/logger/AppInfoProvider;

    return-object p0
.end method

.method public beginWritingBlock(Lcom/facebook/analytics2/logger/BeginWritingBlock;)Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mBeginWritingBlock:Lcom/facebook/analytics2/logger/BeginWritingBlock;

    return-object p0
.end method

.method public blacklistEventsProvider(Lcom/facebook/analytics2/logger/BlacklistEventsProvider;)Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mBlacklistEventsProvider:Lcom/facebook/analytics2/logger/BlacklistEventsProvider;

    return-object p0
.end method

.method public build()Lcom/facebook/analytics2/logger/Analytics2Logger;
    .locals 1

    .line 656
    new-instance v0, Lcom/facebook/analytics2/logger/Analytics2Logger;

    invoke-direct {v0, p0}, Lcom/facebook/analytics2/logger/Analytics2Logger;-><init>(Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;)V

    return-object v0
.end method

.method public deviceIdProvider(Lcom/facebook/analytics2/logger/DeviceIdProvider;)Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mDeviceIdProvider:Lcom/facebook/analytics2/logger/DeviceIdProvider;

    return-object p0
.end method

.method public eventBuilderConfig(Lcom/facebook/analytics2/logger/EventBuilderConfig;)Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mEventBuilderConfig:Lcom/facebook/analytics2/logger/EventBuilderConfig;

    return-object p0
.end method

.method public eventBuilderPool(Landroid/support/v4/util/Pools$Pool;)Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Pools$Pool<",
            "Lcom/facebook/analytics2/logger/EventBuilder;",
            ">;)",
            "Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;"
        }
    .end annotation

    .line 372
    iput-object p1, p0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mEventBuilderPool:Landroid/support/v4/util/Pools$Pool;

    return-object p0
.end method

.method public eventListenerHighPri(Lcom/facebook/analytics2/logger/EventListener;)Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;
    .locals 0

    .line 485
    iput-object p1, p0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mEventListenerHighPri:Lcom/facebook/analytics2/logger/EventListener;

    return-object p0
.end method

.method public eventListenerNormalPri(Lcom/facebook/analytics2/logger/EventListener;)Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mEventListenerNormalPri:Lcom/facebook/analytics2/logger/EventListener;

    return-object p0
.end method

.method public familyDeviceIdProvider(Lcom/facebook/analytics2/logger/FamilyDeviceIdProvider;)Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mFamilyDeviceIdProvider:Lcom/facebook/analytics2/logger/FamilyDeviceIdProvider;

    return-object p0
.end method

.method public handlerThreadFactory(Ljava/lang/Class;)Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/analytics2/logger/HandlerThreadFactory;",
            ">;)",
            "Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;"
        }
    .end annotation

    .line 551
    iput-object p1, p0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mHandlerThreadFactory:Ljava/lang/Class;

    return-object p0
.end method

.method public highPriMaxEventsPerBatchProvider(Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;)Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mHighPriMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    return-object p0
.end method

.method public highPriUploadSchedulerParamsProvider(Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;)Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;
    .locals 0

    .line 619
    iput-object p1, p0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mHighPriUploadSchedulerParamsProvider:Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;

    return-object p0
.end method

.method public jobInstrumentationCollector(Ljava/lang/Class;)Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/analytics2/logger/UploadJobInstrumentation;",
            ">;)",
            "Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;"
        }
    .end annotation

    .line 651
    iput-object p1, p0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mUploadJobInstrumentation:Ljava/lang/Class;

    return-object p0
.end method

.method public networkTypeProvider(Lcom/facebook/analytics2/logger/NetworkTypeProvider;)Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mNetworkTypeProvider:Lcom/facebook/analytics2/logger/NetworkTypeProvider;

    return-object p0
.end method

.method public privacyPolicy(Ljava/lang/Class;)Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/analytics2/logger/PrivacyPolicy;",
            ">;)",
            "Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;"
        }
    .end annotation

    .line 538
    iput-object p1, p0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mPrivacyPolicy:Ljava/lang/Class;

    return-object p0
.end method

.method public processPolicy(Lcom/facebook/analytics2/logger/ProcessPolicy;)Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;
    .locals 0

    .line 510
    iput-object p1, p0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mProcessPolicy:Lcom/facebook/analytics2/logger/ProcessPolicy;

    return-object p0
.end method

.method public regularPriMaxEventsPerBatchProvider(Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;)Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mRegularPriMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    return-object p0
.end method

.method public regularPriUploadSchedulerParamsProvider(Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;)Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;
    .locals 0

    .line 600
    iput-object p1, p0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mRegularPriUploadSchedulerParamsProvider:Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;

    return-object p0
.end method

.method public samplingPolicy(Lcom/facebook/flexiblesampling/SamplingPolicy;)Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mSamplingPolicy:Lcom/facebook/flexiblesampling/SamplingPolicy;

    return-object p0
.end method

.method public samplingPolicyUpdater(Ljava/lang/Class;)Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/flexiblesampling/SamplingPolicyConfig;",
            ">;)",
            "Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;"
        }
    .end annotation

    .line 525
    iput-object p1, p0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mSamplingPolicyUpdater:Ljava/lang/Class;

    return-object p0
.end method

.method public sessionManager(Lcom/facebook/analytics2/logger/SessionManager;)Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mSessionManager:Lcom/facebook/analytics2/logger/SessionManager;

    return-object p0
.end method

.method public uploader(Ljava/lang/Class;)Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/analytics2/logger/Uploader;",
            ">;)",
            "Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;"
        }
    .end annotation

    .line 397
    iput-object p1, p0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mUploader:Ljava/lang/Class;

    return-object p0
.end method
