.class public Lcom/oculus/horizon/bluetooth/ControllerCalibrator;
.super Ljava/lang/Object;
.source "ControllerCalibrator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native calibrateGyro([F[F)Z
.end method

.method public static native calibrateMag([F[F)Z
.end method

.method public static native resetGyroCalibration()V
.end method

.method public static native resetMagCalibration()V
.end method
