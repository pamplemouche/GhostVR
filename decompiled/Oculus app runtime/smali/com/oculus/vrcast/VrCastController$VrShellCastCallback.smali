.class public interface abstract Lcom/oculus/vrcast/VrCastController$VrShellCastCallback;
.super Ljava/lang/Object;
.source "VrCastController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrcast/VrCastController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VrShellCastCallback"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract onBindServiceFailed()V
.end method

.method public abstract onBindServiceSucceeded()V
.end method

.method public abstract onDeviceStateUpdated(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V
.end method

.method public abstract onDevicesFound(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRemoteServiceDied()V
.end method
