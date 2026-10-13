.class public interface abstract Lcom/oculus/horizon/bluetooth/CalibrationManager$Callbacks;
.super Ljava/lang/Object;
.source "CalibrationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/bluetooth/CalibrationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract onConnectionStateChanged(II)V
.end method

.method public abstract onGyroCalibrated()V
.end method

.method public abstract onMagCalibrated()V
.end method
