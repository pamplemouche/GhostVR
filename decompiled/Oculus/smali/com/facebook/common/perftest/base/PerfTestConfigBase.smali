.class public Lcom/facebook/common/perftest/base/PerfTestConfigBase;
.super Ljava/lang/Object;
.source "PerfTestConfigBase.java"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/perftest/base/PerfTestConfigBase$LazyInstanceHolder;
    }
.end annotation


# static fields
.field private static sAllowMainTabActivityKillingOnBackPress:Z

.field private static sAlwaysLogComponentsMemory:Z

.field private static sAlwaysLogComponentsPerf:Z

.field private static sAlwaysLogDraweePerf:Z

.field private static sAlwaysLogImagePipelinePerf:Z

.field private static sDisableAnalyticsLogging:Z

.field private static sDisableFeedImagePreloader:Z

.field private static sDisableNewsFeedAutoRefresh:Z

.field private static sDisablePerfLogging:Z

.field private static sDisablePrefetchControllerMemoryCacheFastpath:Z

.field private static sForceRefreshNewsFeedOnResume:Z

.field private static sForcedPerfTest:Z

.field private static sPerfModeSetExplicitly:Z

.field private static sPerfTestInfo:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static sPlacePickerFlowsEnabled:Z

.field private static sPlacePickerForceMockedLocation:Z

.field private static sPlacePickerSuppressLocationSourceDialog:Z

.field private static sPlacePickerTimeoutMs:J

.field private static sSychronousPerfLoggerEvents:Z

.field private static sUseApiRequestCache:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    sput-boolean v1, Lcom/facebook/common/perftest/base/PerfTestConfigBase;->sDisableAnalyticsLogging:Z

    .line 51
    sput-boolean v1, Lcom/facebook/common/perftest/base/PerfTestConfigBase;->sForceRefreshNewsFeedOnResume:Z

    .line 52
    sput-boolean v1, Lcom/facebook/common/perftest/base/PerfTestConfigBase;->sAllowMainTabActivityKillingOnBackPress:Z

    .line 53
    sput-boolean v1, Lcom/facebook/common/perftest/base/PerfTestConfigBase;->sDisableNewsFeedAutoRefresh:Z

    .line 55
    sput-boolean v1, Lcom/facebook/common/perftest/base/PerfTestConfigBase;->sUseApiRequestCache:Z

    .line 56
    sput-boolean v1, Lcom/facebook/common/perftest/base/PerfTestConfigBase;->sDisableFeedImagePreloader:Z

    .line 57
    sput-boolean v1, Lcom/facebook/common/perftest/base/PerfTestConfigBase;->sPlacePickerForceMockedLocation:Z

    .line 58
    sput-boolean v1, Lcom/facebook/common/perftest/base/PerfTestConfigBase;->sPlacePickerSuppressLocationSourceDialog:Z

    .line 59
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/common/perftest/base/PerfTestConfigBase;->sPlacePickerFlowsEnabled:Z

    .line 62
    sput-boolean v1, Lcom/facebook/common/perftest/base/PerfTestConfigBase;->sAlwaysLogDraweePerf:Z

    .line 63
    sput-boolean v1, Lcom/facebook/common/perftest/base/PerfTestConfigBase;->sAlwaysLogImagePipelinePerf:Z

    .line 64
    sput-boolean v1, Lcom/facebook/common/perftest/base/PerfTestConfigBase;->sAlwaysLogComponentsMemory:Z

    .line 65
    sput-boolean v1, Lcom/facebook/common/perftest/base/PerfTestConfigBase;->sAlwaysLogComponentsPerf:Z

    .line 66
    sput-boolean v1, Lcom/facebook/common/perftest/base/PerfTestConfigBase;->sDisablePrefetchControllerMemoryCacheFastpath:Z

    .line 67
    sput-boolean v1, Lcom/facebook/common/perftest/base/PerfTestConfigBase;->sDisablePerfLogging:Z

    .line 70
    sput-boolean v1, Lcom/facebook/common/perftest/base/PerfTestConfigBase;->sSychronousPerfLoggerEvents:Z

    .line 72
    sput-boolean v1, Lcom/facebook/common/perftest/base/PerfTestConfigBase;->sPerfModeSetExplicitly:Z

    .line 73
    sput-boolean v1, Lcom/facebook/common/perftest/base/PerfTestConfigBase;->sForcedPerfTest:Z

    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/common/perftest/base/PerfTestConfigBase;->sPerfTestInfo:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/facebook/common/perftest/base/PerfTestConfigBase;
    .locals 1
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 85
    invoke-static {}, Lcom/facebook/common/perftest/base/PerfTestConfigBase$LazyInstanceHolder;->access$000()Lcom/facebook/common/perftest/base/PerfTestConfigBase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public setAllowMainTabActivityKillingOnBackPressHandler(Z)V
    .locals 0
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 204
    sput-boolean p1, Lcom/facebook/common/perftest/base/PerfTestConfigBase;->sAllowMainTabActivityKillingOnBackPress:Z

    .line 205
    return-void
.end method

.method public setAlwaysLogComponentsMemory(Z)V
    .locals 0
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 136
    sput-boolean p1, Lcom/facebook/common/perftest/base/PerfTestConfigBase;->sAlwaysLogComponentsMemory:Z

    .line 137
    return-void
.end method

.method public setAlwaysLogComponentsPerf(Z)V
    .locals 0
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 145
    sput-boolean p1, Lcom/facebook/common/perftest/base/PerfTestConfigBase;->sAlwaysLogComponentsPerf:Z

    .line 146
    return-void
.end method

.method public setAlwaysLogDraweePerf(Z)V
    .locals 0
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 127
    sput-boolean p1, Lcom/facebook/common/perftest/base/PerfTestConfigBase;->sAlwaysLogDraweePerf:Z

    .line 128
    return-void
.end method

.method public setAlwaysLogImagePipelinePerf(Z)V
    .locals 0
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 118
    sput-boolean p1, Lcom/facebook/common/perftest/base/PerfTestConfigBase;->sAlwaysLogImagePipelinePerf:Z

    .line 119
    return-void
.end method

.method public setDisableAnalyticsLogging(Z)V
    .locals 0
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 190
    sput-boolean p1, Lcom/facebook/common/perftest/base/PerfTestConfigBase;->sDisableAnalyticsLogging:Z

    .line 191
    return-void
.end method

.method public setDisableNewsFeedAutoRefresh(Z)V
    .locals 0
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 222
    sput-boolean p1, Lcom/facebook/common/perftest/base/PerfTestConfigBase;->sDisableNewsFeedAutoRefresh:Z

    .line 223
    return-void
.end method

.method public setDisablePerfLogging(Z)V
    .locals 0
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 270
    sput-boolean p1, Lcom/facebook/common/perftest/base/PerfTestConfigBase;->sDisablePerfLogging:Z

    .line 271
    return-void
.end method

.method public setDisablePrefetchControllerMemoryCacheFastpath(Z)V
    .locals 0
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 248
    sput-boolean p1, Lcom/facebook/common/perftest/base/PerfTestConfigBase;->sDisablePrefetchControllerMemoryCacheFastpath:Z

    .line 249
    return-void
.end method

.method public setFeedImagePreloaderDisabled(Z)V
    .locals 0
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 213
    sput-boolean p1, Lcom/facebook/common/perftest/base/PerfTestConfigBase;->sDisableFeedImagePreloader:Z

    .line 214
    return-void
.end method

.method public setForceRefreshNewsFeedOnResume(Z)V
    .locals 0
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 199
    sput-boolean p1, Lcom/facebook/common/perftest/base/PerfTestConfigBase;->sForceRefreshNewsFeedOnResume:Z

    .line 200
    return-void
.end method

.method public setPerfTestInfo(Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 279
    sput-object p1, Lcom/facebook/common/perftest/base/PerfTestConfigBase;->sPerfTestInfo:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public setPlacePickerFlowsEnabled(Z)V
    .locals 0
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 172
    sput-boolean p1, Lcom/facebook/common/perftest/base/PerfTestConfigBase;->sPlacePickerFlowsEnabled:Z

    .line 173
    return-void
.end method

.method public setPlacePickerForceMockedLocation(Z)V
    .locals 0
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 163
    sput-boolean p1, Lcom/facebook/common/perftest/base/PerfTestConfigBase;->sPlacePickerForceMockedLocation:Z

    .line 164
    return-void
.end method

.method public setPlacePickerSuppressLocationSourceDialog(Z)V
    .locals 0
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 154
    sput-boolean p1, Lcom/facebook/common/perftest/base/PerfTestConfigBase;->sPlacePickerSuppressLocationSourceDialog:Z

    .line 155
    return-void
.end method

.method public setPlacePickerTimeoutMs(J)V
    .locals 1
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 181
    sput-wide p1, Lcom/facebook/common/perftest/base/PerfTestConfigBase;->sPlacePickerTimeoutMs:J

    .line 182
    return-void
.end method

.method public setSychronousPerfLoggerEvents(Z)V
    .locals 0
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 261
    sput-boolean p1, Lcom/facebook/common/perftest/base/PerfTestConfigBase;->sSychronousPerfLoggerEvents:Z

    .line 262
    return-void
.end method

.method public setUseApiRequestCache(Z)V
    .locals 0
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 239
    sput-boolean p1, Lcom/facebook/common/perftest/base/PerfTestConfigBase;->sUseApiRequestCache:Z

    .line 240
    return-void
.end method
