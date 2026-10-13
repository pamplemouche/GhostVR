.class public Lcom/oculus/os/VrApiManager;
.super Ljava/lang/Object;
.source "VrApiManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final CLOCK_DOMAIN_COUNT:I = 0x4

.field public static final CLOCK_DOMAIN_CPU:I = 0x0

.field public static final CLOCK_DOMAIN_CPUBW:I = 0x2

.field public static final CLOCK_DOMAIN_GPU:I = 0x1

.field public static final CLOCK_DOMAIN_GPUBW:I = 0x3

.field public static final DVFS_POLICY_COUNT:I = 0x3

.field public static final DVFS_POLICY_DYNAMIC:I = 0x0

.field public static final DVFS_POLICY_MAX:I = 0x2

.field public static final DVFS_POLICY_STATIC:I = 0x1

.field public static final FP_TEMP_DANGER:I = 0x2

.field public static final FP_TEMP_ELEVATED:I = 0x1

.field public static final FP_TEMP_NORMAL:I = 0x0

.field public static final POWER_LEVEL_MINIMAL:I = 0x2

.field public static final POWER_LEVEL_NORMAL:I = 0x0

.field public static final POWER_LEVEL_POWERSAVE:I = 0x1

.field public static final THREAD_POLICY_BACKGROUND:I = 0x0

.field public static final THREAD_POLICY_COMPUTE:I = 0x1

.field public static final THREAD_POLICY_COUNT:I = 0x6

.field public static final THREAD_POLICY_ELEVATED:I = 0x3

.field public static final THREAD_POLICY_ISOCHRONOUS:I = 0x4

.field public static final THREAD_POLICY_LATENCY_CRITICAL:I = 0x5

.field public static final THREAD_POLICY_LEVEL_COUNT:I = 0x3

.field public static final THREAD_POLICY_LEVEL_HIGH:I = 0x2

.field public static final THREAD_POLICY_LEVEL_LOW:I = 0x0

.field public static final THREAD_POLICY_LEVEL_MEDIUM:I = 0x1

.field public static final THREAD_POLICY_NORMAL:I = 0x2


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance()Lcom/oculus/os/VrApiManager;
    .locals 2

    .prologue
    .line 6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getClockFrequencies(II)[I
    .locals 2
    .param p1, "clockDomain"    # I
    .param p2, "coreId"    # I

    .prologue
    .line 17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCurrentClockFrequency(II)I
    .locals 2
    .param p1, "clockDomain"    # I
    .param p2, "coreId"    # I

    .prologue
    .line 24
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCurrentClockPerfLevel(II)I
    .locals 2
    .param p1, "clockDomain"    # I
    .param p2, "coreId"    # I

    .prologue
    .line 25
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDeviceProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDisplayBrightness()I
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDisplayParams()Lcom/oculus/os/DisplayParams;
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFrontPanelTemperatureState()I
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPerformanceRange(I)Lcom/oculus/os/PerfRange;
    .locals 2
    .param p1, "clockDomain"    # I

    .prologue
    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPowerLevelState()I
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSupportedDisplayRefreshRates()[I
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public lockVrPerformance(II)Z
    .locals 2
    .param p1, "cpuLevel"    # I
    .param p2, "gpuLevel"    # I

    .prologue
    .line 10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public releaseVrPerformance()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDisplayBrightness(I)Z
    .locals 2
    .param p1, "brightness"    # I

    .prologue
    .line 16
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDisplayRefreshRate(I)Z
    .locals 2
    .param p1, "refreshRate"    # I

    .prologue
    .line 21
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIsForegroundPanelService(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Z
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPowerSaveMode(Z)Z
    .locals 2
    .param p1, "mode"    # Z

    .prologue
    .line 22
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setThreadPolicy(III)Z
    .locals 2
    .param p1, "policy"    # I
    .param p2, "level"    # I
    .param p3, "threadId"    # I

    .prologue
    .line 8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
