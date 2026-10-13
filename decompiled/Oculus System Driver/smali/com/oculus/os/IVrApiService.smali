.class public interface abstract Lcom/oculus/os/IVrApiService;
.super Ljava/lang/Object;
.source "IVrApiService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/os/IVrApiService$Stub;
    }
.end annotation


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

.field public static final INTERFACE_VERSION:I = 0x9

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


# virtual methods
.method public abstract getClockFrequencies(II[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCurrentClockFrequency(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCurrentClockPerfLevel(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDeviceProperty(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDisplayBrightness()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDisplayParams()Lcom/oculus/os/DisplayParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getFrontPanelTemperatureState()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getGpuActiveTime(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getPerformanceRange(I)Lcom/oculus/os/PerfRange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getPowerLevelState()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getServiceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSupportedDisplayRefreshRates()[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract lockVrPerformance(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerIpdChangeClient(Lcom/oculus/os/IIpdChangeClient;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract releasePerformance(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract releaseVrPerformance()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setDeviceProperty(Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setDisplayBrightness(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setDisplayRefreshRate(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setIsForegroundPanelService(ZLjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setPerformance(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setPowerSaveMode(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setThreadPolicy(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterIpdChangeClient(Lcom/oculus/os/IIpdChangeClient;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
