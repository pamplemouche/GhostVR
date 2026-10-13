.class public abstract Lcom/oculus/vrcast/VrCastController$VrCastCallback;
.super Ljava/lang/Object;
.source "VrCastController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrcast/VrCastController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VrCastCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract onBindServiceFailed()V
.end method

.method public abstract onBindServiceSucceeded(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V
.end method

.method public abstract onDeviceStateUpdated(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V
.end method

.method public abstract onDevicesFound(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;",
            ">;)V"
        }
    .end annotation
.end method

.method public onError(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract onRemoteServiceDied()V
.end method
