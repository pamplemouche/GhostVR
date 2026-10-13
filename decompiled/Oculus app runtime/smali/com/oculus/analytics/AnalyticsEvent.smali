.class public Lcom/oculus/analytics/AnalyticsEvent;
.super Ljava/lang/Object;
.source "AnalyticsEvent.java"


# static fields
.field private static final EXPOSURE_EVENT:Lcom/facebook/analytics2/logger/Analytics2EventConfig;

.field private static final TAG:Ljava/lang/String;

.field private static eventQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/oculus/analytics/AnalyticsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static mUnifiedTelemetryLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static sAnalyticsLogger:Lcom/facebook/analytics2/logger/Analytics2Logger;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static sInterceptors:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/oculus/analytics/AnalyticsLoggingInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private static sUserId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private mAnalytic2EventBuilder:Lcom/facebook/analytics2/logger/EventBuilder;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mAnalyticsEvent:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mHaveInterceptorsBeenCalled:Z

.field private final mIsSampled:Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "analytics"

    .line 89
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/oculus/analytics/AnalyticsEvent;->nativeInit()V

    .line 93
    const-class v0, Lcom/oculus/analytics/AnalyticsEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/analytics/AnalyticsEvent;->TAG:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/oculus/analytics/AnalyticsEvent;->sInterceptors:Ljava/util/Vector;

    .line 98
    sget-object v0, Lcom/facebook/analytics2/logger/EventLogType;->EXPERIMENT:Lcom/facebook/analytics2/logger/EventLogType;

    const-string v1, "VrShell"

    const-string v2, "quick_experiment_event"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v0, v4}, Lcom/facebook/analytics2/logger/Analytics2EventConfig;->create(Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/analytics2/logger/EventLogType;Z)Lcom/facebook/analytics2/logger/Analytics2EventConfig;

    move-result-object v0

    sput-object v0, Lcom/oculus/analytics/AnalyticsEvent;->EXPOSURE_EVENT:Lcom/facebook/analytics2/logger/Analytics2EventConfig;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/oculus/analytics/AnalyticsEvent;->mHaveInterceptorsBeenCalled:Z

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 167
    sget-object v3, Lcom/oculus/analytics/AnalyticsEvent;->mUnifiedTelemetryLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;

    const-string v4, "real_timestamp"

    if-eqz v3, :cond_1

    .line 168
    invoke-virtual {v3}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->shouldDuplicateLogging()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/oculus/analytics/AnalyticsEvent;->mUnifiedTelemetryLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;

    .line 169
    invoke-virtual {v3}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->shouldUseUnifiedTelemetryService()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    :cond_0
    new-instance v3, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    invoke-direct {v3, p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/oculus/analytics/AnalyticsEvent;->mAnalyticsEvent:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    .line 172
    iget-object v3, p0, Lcom/oculus/analytics/AnalyticsEvent;->mAnalyticsEvent:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    .line 173
    sget-object v3, Lcom/oculus/analytics/AnalyticsEvent;->mUnifiedTelemetryLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;

    invoke-virtual {v3}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->shouldUseUnifiedTelemetryService()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 174
    iput-boolean v0, p0, Lcom/oculus/analytics/AnalyticsEvent;->mHaveInterceptorsBeenCalled:Z

    .line 175
    iput-boolean v0, p0, Lcom/oculus/analytics/AnalyticsEvent;->mIsSampled:Z

    return-void

    .line 180
    :cond_1
    sget-object v5, Lcom/oculus/analytics/AnalyticsEvent;->sAnalyticsLogger:Lcom/facebook/analytics2/logger/Analytics2Logger;

    if-nez v5, :cond_2

    .line 181
    sget-object p1, Lcom/oculus/analytics/AnalyticsEvent;->TAG:Ljava/lang/String;

    const-string p2, "Attempt to create native analytics event but analyticsLogger is not initialized"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v8, 0x1

    .line 186
    sget-object v9, Lcom/facebook/analytics2/logger/EventLogType;->CLIENT_EVENT:Lcom/facebook/analytics2/logger/EventLogType;

    const/4 v10, 0x0

    move-object v6, p2

    move-object v7, p1

    invoke-virtual/range {v5 .. v10}, Lcom/facebook/analytics2/logger/Analytics2Logger;->acquireEventBuilderLegacy(Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/analytics2/logger/EventLogType;Z)Lcom/facebook/analytics2/logger/EventBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/analytics/AnalyticsEvent;->mAnalytic2EventBuilder:Lcom/facebook/analytics2/logger/EventBuilder;

    .line 193
    iget-object p1, p0, Lcom/oculus/analytics/AnalyticsEvent;->mAnalytic2EventBuilder:Lcom/facebook/analytics2/logger/EventBuilder;

    invoke-virtual {p1}, Lcom/facebook/analytics2/logger/EventBuilder;->isSampled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 194
    iget-object p1, p0, Lcom/oculus/analytics/AnalyticsEvent;->mAnalytic2EventBuilder:Lcom/facebook/analytics2/logger/EventBuilder;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Lcom/facebook/analytics2/logger/EventBuilder;->addExtra(Ljava/lang/String;Ljava/lang/Number;)Lcom/facebook/analytics2/logger/EventBuilder;

    .line 197
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/oculus/analytics/AnalyticsEvent;->mAnalytic2EventBuilder:Lcom/facebook/analytics2/logger/EventBuilder;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/facebook/analytics2/logger/EventBuilder;->isSampled()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/oculus/analytics/AnalyticsEvent;->mIsSampled:Z

    .line 199
    iput-boolean v0, p0, Lcom/oculus/analytics/AnalyticsEvent;->mHaveInterceptorsBeenCalled:Z

    return-void
.end method

.method public static addInterceptor(Lcom/oculus/analytics/AnalyticsLoggingInterceptor;)V
    .locals 1

    .line 158
    sget-object v0, Lcom/oculus/analytics/AnalyticsEvent;->sInterceptors:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static flushAnalytics2(Landroid/content/Context;)V
    .locals 2

    .line 294
    new-instance v0, Lcom/facebook/analytics2/logger/DumperBridgeForTool;

    sget-object v1, Lcom/oculus/analytics/AnalyticsEvent;->sAnalyticsLogger:Lcom/facebook/analytics2/logger/Analytics2Logger;

    invoke-direct {v0, p0, v1}, Lcom/facebook/analytics2/logger/DumperBridgeForTool;-><init>(Landroid/content/Context;Lcom/facebook/analytics2/logger/Analytics2Logger;)V

    const/4 p0, 0x1

    .line 295
    invoke-virtual {v0, p0}, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->scheduleUploadNow(I)Z

    return-void
.end method

.method public static init(Landroid/app/Application;Lcom/oculus/analytics/AnalyticsConfig;)V
    .locals 2

    .line 117
    invoke-static {}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->getInstance()Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;

    move-result-object v0

    sput-object v0, Lcom/oculus/analytics/AnalyticsEvent;->mUnifiedTelemetryLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;

    .line 118
    sget-object v0, Lcom/oculus/analytics/AnalyticsEvent;->mUnifiedTelemetryLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->init(Landroid/content/Context;)V

    .line 120
    invoke-static {}, Lcom/oculus/analytics/SimpleSessionManager;->init()V

    .line 122
    invoke-virtual {p1}, Lcom/oculus/analytics/AnalyticsConfig;->isAnalytics2LoggerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;

    invoke-direct {v0, p0}, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;-><init>(Landroid/content/Context;)V

    .line 125
    invoke-static {}, Lcom/oculus/analytics/SimpleSessionManager;->getInstance()Lcom/oculus/analytics/SimpleSessionManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->appBackgroundedProvider(Lcom/facebook/analytics2/logger/AppBackgroundedProvider;)Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;

    move-result-object v0

    .line 126
    invoke-static {}, Lcom/oculus/analytics/SimpleSessionManager;->getInstance()Lcom/oculus/analytics/SimpleSessionManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->sessionManager(Lcom/facebook/analytics2/logger/SessionManager;)Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;

    move-result-object v0

    .line 127
    invoke-virtual {p1}, Lcom/oculus/analytics/AnalyticsConfig;->getFbAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/facebook/analytics2/logger/ManifestAppInfoProvider;->fromApplicationTag(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/analytics2/logger/ManifestAppInfoProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->appInfoProvider(Lcom/facebook/analytics2/logger/AppInfoProvider;)Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;

    move-result-object v0

    new-instance v1, Lcom/oculus/analytics/SecureAndroidDeviceIdProvider;

    .line 128
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/oculus/analytics/SecureAndroidDeviceIdProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->deviceIdProvider(Lcom/facebook/analytics2/logger/DeviceIdProvider;)Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;

    move-result-object p0

    iget-object p1, p1, Lcom/oculus/analytics/AnalyticsConfig;->uploader:Ljava/lang/Class;

    .line 129
    invoke-virtual {p0, p1}, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->uploader(Ljava/lang/Class;)Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;

    move-result-object p0

    new-instance p1, Lcom/facebook/analytics2/logger/AlwaysOnSamplingPolicy;

    invoke-direct {p1}, Lcom/facebook/analytics2/logger/AlwaysOnSamplingPolicy;-><init>()V

    .line 130
    invoke-virtual {p0, p1}, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->samplingPolicy(Lcom/facebook/flexiblesampling/SamplingPolicy;)Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;

    move-result-object p0

    .line 131
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/Analytics2Logger$Builder;->build()Lcom/facebook/analytics2/logger/Analytics2Logger;

    move-result-object p0

    sput-object p0, Lcom/oculus/analytics/AnalyticsEvent;->sAnalyticsLogger:Lcom/facebook/analytics2/logger/Analytics2Logger;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 133
    sput-object p0, Lcom/oculus/analytics/AnalyticsEvent;->sAnalyticsLogger:Lcom/facebook/analytics2/logger/Analytics2Logger;

    .line 135
    :goto_0
    new-instance p0, Ljava/util/Vector;

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    sput-object p0, Lcom/oculus/analytics/AnalyticsEvent;->eventQueue:Ljava/util/Vector;

    return-void
.end method

.method public static logExposure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 299
    sget-object v0, Lcom/oculus/analytics/AnalyticsEvent;->mUnifiedTelemetryLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;

    const-string v1, "EXPOSURE"

    const-string v2, "event"

    const-string v3, "group"

    const-string v4, "1"

    const-string v5, "oculus_sessionless"

    const-string v6, "unit_id"

    const-string v7, "__qe__"

    const-string v8, "exprID"

    if-eqz v0, :cond_1

    .line 300
    invoke-virtual {v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->shouldDuplicateLogging()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/analytics/AnalyticsEvent;->mUnifiedTelemetryLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;

    .line 301
    invoke-virtual {v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->shouldUseUnifiedTelemetryService()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    :cond_0
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    const-string v9, "VrShell"

    const-string v10, "quick_experiment_event"

    invoke-direct {v0, v9, v10}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setInternalUseParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    move-result-object v9

    sget-object v10, Lcom/oculus/analytics/AnalyticsEvent;->sUserId:Ljava/lang/String;

    .line 306
    invoke-virtual {v9, v6, v10}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setInternalUseParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    move-result-object v9

    .line 307
    invoke-virtual {v9, v5, v4}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setInternalUseParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    move-result-object v9

    .line 308
    invoke-virtual {v9, v3, p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    move-result-object v9

    .line 309
    invoke-virtual {v9, v2, v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    .line 310
    sget-object v9, Lcom/oculus/analytics/AnalyticsEvent;->mUnifiedTelemetryLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;

    const/4 v10, 0x0

    invoke-virtual {v9, v0, v10}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->logExposure(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;Z)V

    .line 311
    sget-object v0, Lcom/oculus/analytics/AnalyticsEvent;->mUnifiedTelemetryLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;

    invoke-virtual {v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->shouldUseUnifiedTelemetryService()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 316
    :cond_1
    sget-object v0, Lcom/oculus/analytics/AnalyticsEvent;->sAnalyticsLogger:Lcom/facebook/analytics2/logger/Analytics2Logger;

    sget-object v9, Lcom/oculus/analytics/AnalyticsEvent;->EXPOSURE_EVENT:Lcom/facebook/analytics2/logger/Analytics2EventConfig;

    invoke-virtual {v0, v9}, Lcom/facebook/analytics2/logger/Analytics2Logger;->acquireEventBuilder_DEPRECATED(Lcom/facebook/analytics2/logger/Analytics2EventConfig;)Lcom/facebook/analytics2/logger/EventBuilder;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventBuilder;->isSampled()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 318
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v8, v7}, Lcom/facebook/analytics2/logger/EventBuilder;->addBaseParameterForInternalUseOnly(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics2/logger/EventBuilder;

    .line 319
    sget-object v7, Lcom/oculus/analytics/AnalyticsEvent;->sUserId:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lcom/facebook/analytics2/logger/EventBuilder;->addBaseParameterForInternalUseOnly(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics2/logger/EventBuilder;

    .line 320
    invoke-virtual {v0, v5, v4}, Lcom/facebook/analytics2/logger/EventBuilder;->addBaseParameterForInternalUseOnly(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics2/logger/EventBuilder;

    .line 321
    invoke-virtual {v0, v3, p1}, Lcom/facebook/analytics2/logger/EventBuilder;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics2/logger/EventBuilder;

    .line 322
    invoke-virtual {v0, v2, v1}, Lcom/facebook/analytics2/logger/EventBuilder;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics2/logger/EventBuilder;

    .line 323
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventBuilder;->logAndRelease()V

    .line 325
    sget-object v0, Lcom/oculus/analytics/AnalyticsEvent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Logged Exposure to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' in group \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " for unit_id "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/oculus/analytics/AnalyticsEvent;->sUserId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private static native nativeInit()V
.end method

.method private setExtraAndShouldContinueAfterUsingUnifiedTelemetry(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation

    .line 207
    sget-object v0, Lcom/oculus/analytics/AnalyticsEvent;->mUnifiedTelemetryLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->shouldDuplicateLogging()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/analytics/AnalyticsEvent;->mUnifiedTelemetryLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;

    .line 209
    invoke-virtual {v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->shouldUseUnifiedTelemetryService()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/oculus/analytics/AnalyticsEvent;->mAnalyticsEvent:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    .line 211
    sget-object p1, Lcom/oculus/analytics/AnalyticsEvent;->mUnifiedTelemetryLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;

    invoke-virtual {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->shouldUseUnifiedTelemetryService()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_1
    return v1
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 3

    .line 139
    sget-object v0, Lcom/oculus/analytics/AnalyticsEvent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using Oculus userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sput-object p0, Lcom/oculus/analytics/AnalyticsEvent;->sUserId:Ljava/lang/String;

    .line 142
    invoke-static {}, Lcom/oculus/analytics/SimpleSessionManager;->getInstance()Lcom/oculus/analytics/SimpleSessionManager;

    move-result-object v0

    .line 143
    invoke-static {p0}, Lcom/oculus/logging/analytics2/OculusPigeonIdentity;->forOculusUser(Ljava/lang/String;)Lcom/oculus/logging/analytics2/OculusPigeonIdentity;

    move-result-object p0

    .line 142
    invoke-virtual {v0, p0}, Lcom/oculus/analytics/SimpleSessionManager;->notifyOnUserLoggedIn(Lcom/facebook/analytics2/logger/PigeonIdentity;)V

    .line 145
    sget-object p0, Lcom/oculus/analytics/AnalyticsEvent;->sUserId:Ljava/lang/String;

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 148
    sget-object v0, Lcom/oculus/analytics/AnalyticsEvent;->eventQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/analytics/AnalyticsEvent;

    .line 149
    invoke-virtual {v1}, Lcom/oculus/analytics/AnalyticsEvent;->log()V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 152
    :cond_0
    sget-object v0, Lcom/oculus/analytics/AnalyticsEvent;->eventQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 153
    sget-object v0, Lcom/oculus/analytics/AnalyticsEvent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " queued analytics events"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public addExtraBool(Ljava/lang/String;Z)Lcom/oculus/analytics/AnalyticsEvent;
    .locals 1

    .line 228
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oculus/analytics/AnalyticsEvent;->setExtraAndShouldContinueAfterUsingUnifiedTelemetry(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/oculus/analytics/AnalyticsEvent;->mAnalytic2EventBuilder:Lcom/facebook/analytics2/logger/EventBuilder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventBuilder;->isSampled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/oculus/analytics/AnalyticsEvent;->mAnalytic2EventBuilder:Lcom/facebook/analytics2/logger/EventBuilder;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/facebook/analytics2/logger/EventBuilder;->addExtra(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/facebook/analytics2/logger/EventBuilder;

    :cond_1
    return-object p0
.end method

.method public addExtraDouble(Ljava/lang/String;D)Lcom/oculus/analytics/AnalyticsEvent;
    .locals 1

    .line 250
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oculus/analytics/AnalyticsEvent;->setExtraAndShouldContinueAfterUsingUnifiedTelemetry(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/oculus/analytics/AnalyticsEvent;->mAnalytic2EventBuilder:Lcom/facebook/analytics2/logger/EventBuilder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventBuilder;->isSampled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/oculus/analytics/AnalyticsEvent;->mAnalytic2EventBuilder:Lcom/facebook/analytics2/logger/EventBuilder;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/facebook/analytics2/logger/EventBuilder;->addExtra(Ljava/lang/String;Ljava/lang/Number;)Lcom/facebook/analytics2/logger/EventBuilder;

    :cond_1
    return-object p0
.end method

.method public addExtraInt(Ljava/lang/String;I)Lcom/oculus/analytics/AnalyticsEvent;
    .locals 1

    .line 239
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oculus/analytics/AnalyticsEvent;->setExtraAndShouldContinueAfterUsingUnifiedTelemetry(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/oculus/analytics/AnalyticsEvent;->mAnalytic2EventBuilder:Lcom/facebook/analytics2/logger/EventBuilder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventBuilder;->isSampled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/oculus/analytics/AnalyticsEvent;->mAnalytic2EventBuilder:Lcom/facebook/analytics2/logger/EventBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/facebook/analytics2/logger/EventBuilder;->addExtra(Ljava/lang/String;Ljava/lang/Number;)Lcom/facebook/analytics2/logger/EventBuilder;

    :cond_1
    return-object p0
.end method

.method public addExtraString(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/analytics/AnalyticsEvent;
    .locals 1

    .line 217
    invoke-direct {p0, p1, p2}, Lcom/oculus/analytics/AnalyticsEvent;->setExtraAndShouldContinueAfterUsingUnifiedTelemetry(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/oculus/analytics/AnalyticsEvent;->mAnalytic2EventBuilder:Lcom/facebook/analytics2/logger/EventBuilder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventBuilder;->isSampled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/oculus/analytics/AnalyticsEvent;->mAnalytic2EventBuilder:Lcom/facebook/analytics2/logger/EventBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/analytics2/logger/EventBuilder;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics2/logger/EventBuilder;

    :cond_1
    return-object p0
.end method

.method public getIsSampled()Z
    .locals 1

    .line 203
    iget-boolean v0, p0, Lcom/oculus/analytics/AnalyticsEvent;->mIsSampled:Z

    return v0
.end method

.method public log()V
    .locals 4

    .line 261
    iget-boolean v0, p0, Lcom/oculus/analytics/AnalyticsEvent;->mHaveInterceptorsBeenCalled:Z

    if-nez v0, :cond_1

    .line 262
    sget-object v0, Lcom/oculus/analytics/AnalyticsEvent;->sInterceptors:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/analytics/AnalyticsLoggingInterceptor;

    .line 263
    invoke-interface {v1, p0}, Lcom/oculus/analytics/AnalyticsLoggingInterceptor;->onLog(Lcom/oculus/analytics/AnalyticsEvent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 265
    iput-boolean v0, p0, Lcom/oculus/analytics/AnalyticsEvent;->mHaveInterceptorsBeenCalled:Z

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/oculus/analytics/AnalyticsEvent;->mAnalyticsEvent:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/oculus/analytics/AnalyticsEvent;->mUnifiedTelemetryLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;

    if-eqz v0, :cond_3

    .line 269
    invoke-virtual {v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->shouldDuplicateLogging()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/oculus/analytics/AnalyticsEvent;->mUnifiedTelemetryLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;

    .line 270
    invoke-virtual {v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->shouldUseUnifiedTelemetryService()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    :cond_2
    sget-object v0, Lcom/oculus/analytics/AnalyticsEvent;->mUnifiedTelemetryLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;

    iget-object v2, p0, Lcom/oculus/analytics/AnalyticsEvent;->mAnalyticsEvent:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->reportEvent(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;Z)V

    .line 272
    sget-object v0, Lcom/oculus/analytics/AnalyticsEvent;->mUnifiedTelemetryLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;

    invoke-virtual {v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->shouldUseUnifiedTelemetryService()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 273
    iput-object v1, p0, Lcom/oculus/analytics/AnalyticsEvent;->mAnalyticsEvent:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    return-void

    .line 278
    :cond_3
    sget-object v0, Lcom/oculus/analytics/AnalyticsEvent;->sUserId:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 280
    sget-object v0, Lcom/oculus/analytics/AnalyticsEvent;->eventQueue:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void

    .line 284
    :cond_4
    iget-object v0, p0, Lcom/oculus/analytics/AnalyticsEvent;->mAnalytic2EventBuilder:Lcom/facebook/analytics2/logger/EventBuilder;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventBuilder;->isSampled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 285
    iget-object v0, p0, Lcom/oculus/analytics/AnalyticsEvent;->mAnalytic2EventBuilder:Lcom/facebook/analytics2/logger/EventBuilder;

    sget-object v2, Lcom/oculus/analytics/AnalyticsEvent;->sUserId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/facebook/analytics2/logger/EventBuilder;->setUUID(Ljava/lang/String;)Lcom/facebook/analytics2/logger/EventBuilder;

    .line 286
    iget-object v0, p0, Lcom/oculus/analytics/AnalyticsEvent;->mAnalytic2EventBuilder:Lcom/facebook/analytics2/logger/EventBuilder;

    sget-object v2, Lcom/oculus/analytics/AnalyticsEvent;->sUserId:Ljava/lang/String;

    const-string v3, "id"

    invoke-virtual {v0, v3, v2}, Lcom/facebook/analytics2/logger/EventBuilder;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics2/logger/EventBuilder;

    .line 287
    iget-object v0, p0, Lcom/oculus/analytics/AnalyticsEvent;->mAnalytic2EventBuilder:Lcom/facebook/analytics2/logger/EventBuilder;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventBuilder;->logAndRelease()V

    .line 289
    :cond_5
    iput-object v1, p0, Lcom/oculus/analytics/AnalyticsEvent;->mAnalytic2EventBuilder:Lcom/facebook/analytics2/logger/EventBuilder;

    return-void
.end method
