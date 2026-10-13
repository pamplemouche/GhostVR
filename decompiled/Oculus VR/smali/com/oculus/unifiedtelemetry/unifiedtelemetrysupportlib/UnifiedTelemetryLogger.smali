.class public Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;
.super Ljava/lang/Object;
.source "UnifiedTelemetryLogger.java"


# static fields
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
.method public declared-synchronized init(Landroid/content/Context;)V
    .locals 3

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

.method public reportEvent(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;Z)V
    .locals 3

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsInitialized:Z

    .line 102
    if-nez v0, :cond_0

    .line 103
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->TAG:Ljava/lang/String;

    const-string v1, "Not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-boolean v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsStandAloneDevice:Z

    .line 107
    iget-boolean v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsStandAloneDevice:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->isOsSdkCompatible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    new-instance v0, Lcom/oculus/os/AnalyticsEvent;

    .line 109
    invoke-virtual {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oculus/os/AnalyticsEvent;-><init>(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 110
    iget-object v1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mStandAloneUnifiedTelemetryLogger:Lcom/oculus/os/UnifiedTelemetryLogger;

    invoke-virtual {v1, v0, p2}, Lcom/oculus/os/UnifiedTelemetryLogger;->reportEvent(Lcom/oculus/os/AnalyticsEvent;Z)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mGearVRLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->reportEvent(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;Z)V

    goto :goto_0
.end method

.method public shouldDuplicateLogging()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsInitialized:Z

    .line 75
    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 82
    :goto_0
    return v0

    .line 78
    :cond_0
    iget-boolean v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsStandAloneDevice:Z

    .line 79
    iget-boolean v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsStandAloneDevice:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->isOsSdkCompatible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mStandAloneUnifiedTelemetryLogger:Lcom/oculus/os/UnifiedTelemetryLogger;

    invoke-virtual {v0}, Lcom/oculus/os/UnifiedTelemetryLogger;->shouldDuplicateLogging()Z

    move-result v0

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mGearVRLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-virtual {v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->shouldDuplicateLogging()Z

    move-result v0

    goto :goto_0
.end method

.method public shouldUseUnifiedTelemetryService()Z
    .locals 2

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsInitialized:Z

    .line 88
    if-nez v0, :cond_0

    .line 89
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->TAG:Ljava/lang/String;

    const-string v1, "Not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v0, 0x0

    .line 96
    :goto_0
    return v0

    .line 92
    :cond_0
    iget-boolean v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsStandAloneDevice:Z

    .line 93
    iget-boolean v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mIsStandAloneDevice:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->isOsSdkCompatible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mStandAloneUnifiedTelemetryLogger:Lcom/oculus/os/UnifiedTelemetryLogger;

    invoke-virtual {v0}, Lcom/oculus/os/UnifiedTelemetryLogger;->shouldUseUnifiedTelemetryService()Z

    move-result v0

    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->mGearVRLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-virtual {v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->shouldUseUnifiedTelemetryService()Z

    move-result v0

    goto :goto_0
.end method
