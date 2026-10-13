.class abstract Lcom/oculus/vrapi/VRManagerInterface;
.super Ljava/lang/Object;
.source "VRManagerInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrapi/VRManagerInterface$DisplayParams;,
        Lcom/oculus/vrapi/VRManagerInterface$DeviceClass;,
        Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract acquirePerformanceLock(II)Z
.end method

.method abstract getCPUClockLevelFrequencies(I)[I
.end method

.method public abstract getCPUMinMaxLevels()[I
.end method

.method public abstract getCalibrationData(Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;)[B
.end method

.method public abstract getDeviceClass()Lcom/oculus/vrapi/VRManagerInterface$DeviceClass;
.end method

.method public abstract getDeviceProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDisplayBrightness()I
.end method

.method public abstract getDisplayParams()Lcom/oculus/vrapi/VRManagerInterface$DisplayParams;
.end method

.method abstract getGPUClockLevelFrequencies()[I
.end method

.method public abstract getGPUMinMaxLevels()[I
.end method

.method public abstract getPowerLevelState()I
.end method

.method abstract getSupportedDisplayRefreshRates(I)[I
.end method

.method abstract getVrServiceVersion()I
.end method

.method public abstract hasVrPermissions()Z
.end method

.method public abstract releasePerformanceLock()V
.end method

.method public abstract setDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setDisplayBrightness(I)V
.end method

.method abstract setDisplayRefreshRate(IF)Z
.end method

.method public abstract setPowerSaveMode(Z)Z
.end method

.method public abstract setSchedFifo(II)Z
.end method
