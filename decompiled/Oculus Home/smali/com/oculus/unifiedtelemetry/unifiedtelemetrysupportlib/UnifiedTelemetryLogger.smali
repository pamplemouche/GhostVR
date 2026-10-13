.class public Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;
.super Ljava/lang/Object;
.source "UnifiedTelemetryLogger.java"


# static fields
.field private static final REQUIRED_OS_SDK_VERSION:I = 0xf

.field private static final SYSTEM_FEATURE_OVR_STANDALONE:Ljava/lang/String; = "oculus.hardware.standalone_vr"

.field private static final TAG:Ljava/lang/String;

.field private static mUnifiedTelemetryLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;


# instance fields
.field private volatile mGearVRLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

.field private volatile mIsInitialized:Z

.field private volatile mIsStandAloneDevice:Z

.field private volatile mStandAloneUnifiedTelemetryLogger:Lcom/oculus/os/UnifiedTelemetryLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;
    .locals 3

    .prologue
    .line 35
    const-class v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mUnifiedTelemetryLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;

    if-nez v0, :cond_0

    .line 36
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->TAG:Ljava/lang/String;

    const-string v2, "UnifiedTelemetryLogger instance created."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;

    invoke-direct {v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;-><init>()V

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mUnifiedTelemetryLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;

    .line 39
    :cond_0
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mUnifiedTelemetryLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isOsSdkCompatible()Z
    .locals 2

    .prologue
    .line 31
    sget v0, Lcom/oculus/os/Version;->CURRENT_SDK_VERSION:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isStandAloneDevice(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oculus.hardware.standalone_vr"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public endFunnel(Ljava/lang/String;)V
    .locals 4
    .param p1, "funnelName"    # Ljava/lang/String;

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsInitialized:Z

    .line 275
    .local v0, "initialized":Z
    if-nez v0, :cond_0

    .line 276
    sget-object v2, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->TAG:Ljava/lang/String;

    const-string v3, "Not initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-boolean v1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsStandAloneDevice:Z

    .line 280
    .local v1, "isStandAloneDevice":Z
    iget-boolean v2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsStandAloneDevice:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->isOsSdkCompatible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 281
    iget-object v2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mStandAloneUnifiedTelemetryLogger:Lcom/oculus/os/UnifiedTelemetryLogger;

    invoke-virtual {v2, p1}, Lcom/oculus/os/UnifiedTelemetryLogger;->endFunnel(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_1
    iget-object v2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mGearVRLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-virtual {v2, p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->endFunnel(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public endFunnel(Ljava/lang/String;J)V
    .locals 4
    .param p1, "funnelName"    # Ljava/lang/String;
    .param p2, "instanceId"    # J

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsInitialized:Z

    .line 289
    .local v0, "initialized":Z
    if-nez v0, :cond_0

    .line 290
    sget-object v2, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->TAG:Ljava/lang/String;

    const-string v3, "Not initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-boolean v1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsStandAloneDevice:Z

    .line 294
    .local v1, "isStandAloneDevice":Z
    iget-boolean v2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsStandAloneDevice:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->isOsSdkCompatible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 295
    iget-object v2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mStandAloneUnifiedTelemetryLogger:Lcom/oculus/os/UnifiedTelemetryLogger;

    invoke-virtual {v2, p1, p2, p3}, Lcom/oculus/os/UnifiedTelemetryLogger;->endFunnel(Ljava/lang/String;J)V

    goto :goto_0

    .line 297
    :cond_1
    iget-object v2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mGearVRLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-virtual {v2, p1, p2, p3}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->endFunnel(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public declared-synchronized init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->TAG:Ljava/lang/String;

    const-string v1, "Already initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :goto_0
    monitor-exit p0

    return-void

    .line 48
    :cond_0
    if-nez p1, :cond_1

    .line 49
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 52
    :cond_1
    :try_start_2
    invoke-static {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->isStandAloneDevice(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsStandAloneDevice:Z

    .line 53
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnifiedTelemetryLogger mIsStandAloneDevice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsStandAloneDevice:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-boolean v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsStandAloneDevice:Z

    if-eqz v0, :cond_3

    .line 55
    invoke-static {}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->isOsSdkCompatible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    invoke-static {}, Lcom/oculus/os/UnifiedTelemetryLogger;->getInstance()Lcom/oculus/os/UnifiedTelemetryLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mStandAloneUnifiedTelemetryLogger:Lcom/oculus/os/UnifiedTelemetryLogger;

    .line 57
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mStandAloneUnifiedTelemetryLogger:Lcom/oculus/os/UnifiedTelemetryLogger;

    invoke-virtual {v0, p1}, Lcom/oculus/os/UnifiedTelemetryLogger;->init(Landroid/content/Context;)V

    .line 70
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsInitialized:Z

    goto :goto_0

    .line 59
    :cond_2
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Defaulting to GearVRLogger because ossdk is not compatible. Required 15 found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/oculus/os/Version;->CURRENT_SDK_VERSION:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-direct {v0, p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mGearVRLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    goto :goto_1

    .line 68
    :cond_3
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-direct {v0, p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mGearVRLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public logExposure(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;Z)V
    .locals 8
    .param p1, "analyticsEvent"    # Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;
    .param p2, "lowLatency"    # Z

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsInitialized:Z

    .line 137
    .local v0, "initialized":Z
    if-nez v0, :cond_0

    .line 138
    sget-object v2, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->TAG:Ljava/lang/String;

    const-string v3, "Not initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-boolean v1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsStandAloneDevice:Z

    .line 142
    .local v1, "isStandAloneDevice":Z
    iget-boolean v2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsStandAloneDevice:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->isOsSdkCompatible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    iget-object v2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mStandAloneUnifiedTelemetryLogger:Lcom/oculus/os/UnifiedTelemetryLogger;

    new-instance v3, Lcom/oculus/os/AnalyticsEvent;

    .line 145
    invoke-virtual {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->getModuleName()Ljava/lang/String;

    move-result-object v4

    .line 146
    invoke-virtual {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->getName()Ljava/lang/String;

    move-result-object v5

    .line 147
    invoke-virtual {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v6

    .line 148
    invoke-virtual {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->getInternalUseParams()Landroid/os/PersistableBundle;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/oculus/os/AnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)V

    .line 143
    invoke-virtual {v2, v3, p2}, Lcom/oculus/os/UnifiedTelemetryLogger;->logExposure(Lcom/oculus/os/AnalyticsEvent;Z)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object v2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mGearVRLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-virtual {v2, p1, p2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->logExposure(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;Z)V

    goto :goto_0
.end method

.method public registerFunnel(Ljava/lang/String;I)V
    .locals 4
    .param p1, "funnelName"    # Ljava/lang/String;
    .param p2, "secondsToEndSinceLastUpdate"    # I

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsInitialized:Z

    .line 198
    .local v0, "initialized":Z
    if-nez v0, :cond_0

    .line 199
    sget-object v2, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->TAG:Ljava/lang/String;

    const-string v3, "Not initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-boolean v1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsStandAloneDevice:Z

    .line 203
    .local v1, "isStandAloneDevice":Z
    iget-boolean v2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsStandAloneDevice:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->isOsSdkCompatible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    iget-object v2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mStandAloneUnifiedTelemetryLogger:Lcom/oculus/os/UnifiedTelemetryLogger;

    invoke-virtual {v2, p1, p2}, Lcom/oculus/os/UnifiedTelemetryLogger;->registerFunnel(Ljava/lang/String;I)V

    goto :goto_0

    .line 206
    :cond_1
    iget-object v2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mGearVRLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-virtual {v2, p1, p2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->registerFunnel(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public reportEvent(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;Z)V
    .locals 5
    .param p1, "analyticsEvent"    # Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;
    .param p2, "lowLatency"    # Z

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsInitialized:Z

    .line 102
    .local v0, "initialized":Z
    if-nez v0, :cond_0

    .line 103
    sget-object v3, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->TAG:Ljava/lang/String;

    const-string v4, "Not initialized."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-boolean v1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsStandAloneDevice:Z

    .line 107
    .local v1, "isStandAloneDevice":Z
    iget-boolean v3, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsStandAloneDevice:Z

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->isOsSdkCompatible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    new-instance v2, Lcom/oculus/os/AnalyticsEvent;

    .line 109
    invoke-virtual {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/oculus/os/AnalyticsEvent;-><init>(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 110
    .local v2, "switchToSDKEvent":Lcom/oculus/os/AnalyticsEvent;
    iget-object v3, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mStandAloneUnifiedTelemetryLogger:Lcom/oculus/os/UnifiedTelemetryLogger;

    invoke-virtual {v3, v2, p2}, Lcom/oculus/os/UnifiedTelemetryLogger;->reportEvent(Lcom/oculus/os/AnalyticsEvent;Z)V

    goto :goto_0

    .line 112
    .end local v2    # "switchToSDKEvent":Lcom/oculus/os/AnalyticsEvent;
    :cond_1
    iget-object v3, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mGearVRLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-virtual {v3, p1, p2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->reportEvent(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;Z)V

    goto :goto_0
.end method

.method public reportEvents(Ljava/util/List;Z)V
    .locals 8
    .param p2, "lowLatency"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "analyticsEvents":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;>;"
    iget-boolean v1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsInitialized:Z

    .line 118
    .local v1, "initialized":Z
    if-nez v1, :cond_0

    .line 119
    sget-object v4, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->TAG:Ljava/lang/String;

    const-string v5, "Not initialized."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-boolean v2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsStandAloneDevice:Z

    .line 123
    .local v2, "isStandAloneDevice":Z
    iget-boolean v4, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsStandAloneDevice:Z

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->isOsSdkCompatible()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 124
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v3, "switchToSDKEvents":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/os/AnalyticsEvent;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    .line 126
    .local v0, "analyticsEvent":Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;
    new-instance v5, Lcom/oculus/os/AnalyticsEvent;

    .line 127
    invoke-virtual {v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/oculus/os/AnalyticsEvent;-><init>(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 126
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 129
    .end local v0    # "analyticsEvent":Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;
    :cond_1
    iget-object v4, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mStandAloneUnifiedTelemetryLogger:Lcom/oculus/os/UnifiedTelemetryLogger;

    invoke-virtual {v4, v3, p2}, Lcom/oculus/os/UnifiedTelemetryLogger;->reportEvents(Ljava/util/List;Z)V

    goto :goto_0

    .line 131
    .end local v3    # "switchToSDKEvents":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/os/AnalyticsEvent;>;"
    :cond_2
    iget-object v4, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mGearVRLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-virtual {v4, p1, p2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->reportEvents(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public reportFunnelAction(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 10
    .param p1, "funnelName"    # Ljava/lang/String;
    .param p2, "instanceId"    # J
    .param p4, "actionName"    # Ljava/lang/String;
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "actionData"    # Landroid/os/PersistableBundle;

    .prologue
    .line 259
    iget-boolean v7, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsInitialized:Z

    .line 260
    .local v7, "initialized":Z
    if-nez v7, :cond_0

    .line 261
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->TAG:Ljava/lang/String;

    const-string v1, "Not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-boolean v8, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsStandAloneDevice:Z

    .line 265
    .local v8, "isStandAloneDevice":Z
    iget-boolean v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsStandAloneDevice:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->isOsSdkCompatible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mStandAloneUnifiedTelemetryLogger:Lcom/oculus/os/UnifiedTelemetryLogger;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/oculus/os/UnifiedTelemetryLogger;->reportFunnelAction(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    goto :goto_0

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mGearVRLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->reportFunnelAction(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    goto :goto_0
.end method

.method public reportFunnelAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 4
    .param p1, "funnelName"    # Ljava/lang/String;
    .param p2, "actionName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "actionData"    # Landroid/os/PersistableBundle;

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsInitialized:Z

    .line 241
    .local v0, "initialized":Z
    if-nez v0, :cond_0

    .line 242
    sget-object v2, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->TAG:Ljava/lang/String;

    const-string v3, "Not initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-boolean v1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsStandAloneDevice:Z

    .line 246
    .local v1, "isStandAloneDevice":Z
    iget-boolean v2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsStandAloneDevice:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->isOsSdkCompatible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    iget-object v2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mStandAloneUnifiedTelemetryLogger:Lcom/oculus/os/UnifiedTelemetryLogger;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/oculus/os/UnifiedTelemetryLogger;->reportFunnelAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    goto :goto_0

    .line 249
    :cond_1
    iget-object v2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mGearVRLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->reportFunnelAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    goto :goto_0
.end method

.method public reportFunnelEvent(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;)V
    .locals 7
    .param p1, "funnelEvent"    # Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;

    .prologue
    const-wide/16 v4, 0x0

    .line 157
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger$1;->$SwitchMap$com$oculus$unifiedtelemetry$unifiedtelemetrysupportlib$FunnelEvent$Type:[I

    invoke-static {}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;->values()[Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->getType()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 194
    :goto_0
    return-void

    .line 159
    :pswitch_0
    invoke-virtual {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->getFunnelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->getSecondsToEndSinceLastUpdate()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->registerFunnel(Ljava/lang/String;I)V

    goto :goto_0

    .line 162
    :pswitch_1
    invoke-virtual {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->getInstanceId()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 163
    invoke-virtual {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->getFunnelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->startFunnel(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->getFunnelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->getInstanceId()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->startFunnel(Ljava/lang/String;J)V

    goto :goto_0

    .line 169
    :pswitch_2
    invoke-virtual {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->getInstanceId()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    .line 171
    invoke-virtual {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->getFunnelName()Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-virtual {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->getActionName()Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-virtual {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-virtual {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->getActionData()Landroid/os/PersistableBundle;

    move-result-object v3

    .line 170
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->reportFunnelAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->getFunnelName()Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-virtual {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->getInstanceId()J

    move-result-wide v2

    .line 179
    invoke-virtual {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->getActionName()Ljava/lang/String;

    move-result-object v4

    .line 180
    invoke-virtual {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->getTag()Ljava/lang/String;

    move-result-object v5

    .line 181
    invoke-virtual {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->getActionData()Landroid/os/PersistableBundle;

    move-result-object v6

    move-object v0, p0

    .line 176
    invoke-virtual/range {v0 .. v6}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->reportFunnelAction(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    goto :goto_0

    .line 185
    :pswitch_3
    invoke-virtual {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->getInstanceId()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    .line 186
    invoke-virtual {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->getFunnelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->endFunnel(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_2
    invoke-virtual {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->getFunnelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->getInstanceId()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->endFunnel(Ljava/lang/String;J)V

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public shouldDuplicateLogging()Z
    .locals 3

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsInitialized:Z

    .line 75
    .local v0, "initialized":Z
    if-nez v0, :cond_0

    .line 76
    const/4 v2, 0x0

    .line 82
    :goto_0
    return v2

    .line 78
    :cond_0
    iget-boolean v1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsStandAloneDevice:Z

    .line 79
    .local v1, "isStandAloneDevice":Z
    iget-boolean v2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsStandAloneDevice:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->isOsSdkCompatible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mStandAloneUnifiedTelemetryLogger:Lcom/oculus/os/UnifiedTelemetryLogger;

    invoke-virtual {v2}, Lcom/oculus/os/UnifiedTelemetryLogger;->shouldDuplicateLogging()Z

    move-result v2

    goto :goto_0

    .line 82
    :cond_1
    iget-object v2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mGearVRLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-virtual {v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->shouldDuplicateLogging()Z

    move-result v2

    goto :goto_0
.end method

.method public shouldUseUnifiedTelemetryService()Z
    .locals 4

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsInitialized:Z

    .line 88
    .local v0, "initialized":Z
    if-nez v0, :cond_0

    .line 89
    sget-object v2, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->TAG:Ljava/lang/String;

    const-string v3, "Not initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v2, 0x0

    .line 96
    :goto_0
    return v2

    .line 92
    :cond_0
    iget-boolean v1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsStandAloneDevice:Z

    .line 93
    .local v1, "isStandAloneDevice":Z
    iget-boolean v2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsStandAloneDevice:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->isOsSdkCompatible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mStandAloneUnifiedTelemetryLogger:Lcom/oculus/os/UnifiedTelemetryLogger;

    invoke-virtual {v2}, Lcom/oculus/os/UnifiedTelemetryLogger;->shouldUseUnifiedTelemetryService()Z

    move-result v2

    goto :goto_0

    .line 96
    :cond_1
    iget-object v2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mGearVRLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-virtual {v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->shouldUseUnifiedTelemetryService()Z

    move-result v2

    goto :goto_0
.end method

.method public startFunnel(Ljava/lang/String;)V
    .locals 4
    .param p1, "funnelName"    # Ljava/lang/String;

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsInitialized:Z

    .line 212
    .local v0, "initialized":Z
    if-nez v0, :cond_0

    .line 213
    sget-object v2, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->TAG:Ljava/lang/String;

    const-string v3, "Not initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-boolean v1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsStandAloneDevice:Z

    .line 217
    .local v1, "isStandAloneDevice":Z
    iget-boolean v2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsStandAloneDevice:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->isOsSdkCompatible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    iget-object v2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mStandAloneUnifiedTelemetryLogger:Lcom/oculus/os/UnifiedTelemetryLogger;

    invoke-virtual {v2, p1}, Lcom/oculus/os/UnifiedTelemetryLogger;->startFunnel(Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_1
    iget-object v2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mGearVRLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-virtual {v2, p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->startFunnel(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startFunnel(Ljava/lang/String;J)V
    .locals 4
    .param p1, "funnelName"    # Ljava/lang/String;
    .param p2, "instanceId"    # J

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsInitialized:Z

    .line 226
    .local v0, "initialized":Z
    if-nez v0, :cond_0

    .line 227
    sget-object v2, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->TAG:Ljava/lang/String;

    const-string v3, "Not initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-boolean v1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsStandAloneDevice:Z

    .line 231
    .local v1, "isStandAloneDevice":Z
    iget-boolean v2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsStandAloneDevice:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->isOsSdkCompatible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    iget-object v2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mStandAloneUnifiedTelemetryLogger:Lcom/oculus/os/UnifiedTelemetryLogger;

    invoke-virtual {v2, p1, p2, p3}, Lcom/oculus/os/UnifiedTelemetryLogger;->startFunnel(Ljava/lang/String;J)V

    goto :goto_0

    .line 234
    :cond_1
    iget-object v2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mGearVRLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-virtual {v2, p1, p2, p3}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->startFunnel(Ljava/lang/String;J)V

    goto :goto_0
.end method
