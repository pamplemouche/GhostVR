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
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field mAnalytics2EventSchemaValidationManager:Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mAppBackgroundedProvider:Lcom/facebook/analytics2/logger/AppBackgroundedProvider;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mAppInfoProvider:Lcom/facebook/analytics2/logger/AppInfoProvider;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mBeginWritingBlock:Lcom/facebook/analytics2/logger/BeginWritingBlock;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mBlacklistEventsProvider:Lcom/facebook/analytics2/logger/BlacklistEventsProvider;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field mDeviceIdProvider:Lcom/facebook/analytics2/logger/DeviceIdProvider;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mEventBuilderConfig:Lcom/facebook/analytics2/logger/EventBuilderConfig;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mEventBuilderPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool",
            "<",
            "Lcom/facebook/analytics2/logger/EventBuilder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mEventListenerHighPri:Lcom/facebook/analytics2/logger/EventListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mEventListenerNormalPri:Lcom/facebook/analytics2/logger/EventListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mEventThrottlingProvider:Lcom/facebook/analytics2/logger/EventThrottlingProvider;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mFamilyDeviceIdProvider:Lcom/facebook/analytics2/logger/FamilyDeviceIdProvider;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mHandlerThreadFactory:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/analytics2/logger/HandlerThreadFactory;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mHighPriMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mHighPriUploadSchedulerParamsProvider:Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mNetworkTypeProvider:Lcom/facebook/analytics2/logger/NetworkTypeProvider;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mPrivacyPolicy:Ljava/lang/Class;
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

.field mProcessPolicy:Lcom/facebook/analytics2/logger/ProcessPolicy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mRegularPriMaxEventsPerBatchProvider:Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mRegularPriUploadSchedulerParamsProvider:Lcom/facebook/analytics2/logger/UploadSchedulerParamsProvider;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mSamplingPolicy:Lcom/facebook/flexiblesampling/SamplingPolicy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mSamplingPolicyUpdater:Ljava/lang/Class;
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

.field mSessionManager:Lcom/facebook/analytics2/logger/SessionManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mStartupStatusProvider:Lcom/facebook/analytics2/logger/StartupStatusProvider;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mUploadJobInstrumentation:Ljava/lang/Class;
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

.field mUploader:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/analytics2/logger/Uploader;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    if-nez p1, :cond_0

    .line 404
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mContext:Landroid/content/Context;

    .line 407
    sget-object v0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->sPreviousDebugStacktrace:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 408
    const-string v0, "currentStack: "

    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->getCurrentStacktrace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    const-string v1, "Analytics2Logger.Builder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->sPreviousDebugStacktrace:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_1
    const-string v0, "previousStack: "

    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->getCurrentStacktrace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->sPreviousDebugStacktrace:Ljava/lang/String;

    .line 412
    return-void
.end method

.method private getCurrentStacktrace(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 415
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 416
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "A2 is created\n"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 417
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v1, v0

    .line 418
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 420
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public appBackgroundedProvider(Lcom/facebook/analytics2/logger/AppBackgroundedProvider;)Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mAppBackgroundedProvider:Lcom/facebook/analytics2/logger/AppBackgroundedProvider;

    .line 454
    return-object p0
.end method

.method public appInfoProvider(Lcom/facebook/analytics2/logger/AppInfoProvider;)Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mAppInfoProvider:Lcom/facebook/analytics2/logger/AppInfoProvider;

    .line 479
    return-object p0
.end method

.method public build()Lcom/facebook/analytics2/logger/Analytics2Logger;
    .locals 1

    .prologue
    .line 734
    new-instance v0, Lcom/facebook/analytics2/logger/Analytics2Logger;

    invoke-direct {v0, p0}, Lcom/facebook/analytics2/logger/Analytics2Logger;-><init>(Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;)V

    return-object v0
.end method

.method public deviceIdProvider(Lcom/facebook/analytics2/logger/DeviceIdProvider;)Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mDeviceIdProvider:Lcom/facebook/analytics2/logger/DeviceIdProvider;

    .line 493
    return-object p0
.end method

.method public samplingPolicy(Lcom/facebook/flexiblesampling/SamplingPolicy;)Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mSamplingPolicy:Lcom/facebook/flexiblesampling/SamplingPolicy;

    .line 568
    return-object p0
.end method

.method public sessionManager(Lcom/facebook/analytics2/logger/SessionManager;)Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mSessionManager:Lcom/facebook/analytics2/logger/SessionManager;

    .line 531
    return-object p0
.end method

.method public uploader(Ljava/lang/Class;)Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/analytics2/logger/Uploader;",
            ">;)",
            "Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;"
        }
    .end annotation

    .prologue
    .line 465
    iput-object p1, p0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->mUploader:Ljava/lang/Class;

    .line 466
    return-object p0
.end method
