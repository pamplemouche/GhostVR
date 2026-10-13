.class public Lcom/oculus/os/Controllers;
.super Ljava/lang/Object;
.source "Controllers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/os/Controllers$ControllerScanAndPairResult;,
        Lcom/oculus/os/Controllers$ControllerStatus;,
        Lcom/oculus/os/Controllers$VerifyConnectableResult;,
        Lcom/oculus/os/Controllers$ControllerStatusObserver;,
        Lcom/oculus/os/Controllers$ControllerInfo;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/oculus/os/Controllers$ControllerStatusObserver;)V
    .locals 2
    .param p1, "callback"    # Lcom/oculus/os/Controllers$ControllerStatusObserver;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDeviceTypes()[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPairedDeviceStatus(I)Lcom/oculus/os/Controllers$ControllerStatus;
    .locals 2
    .param p1, "deviceType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scanAndPairDevice(II)Lcom/oculus/os/Controllers$ControllerScanAndPairResult;
    .locals 2
    .param p1, "deviceType"    # I
    .param p2, "timeoutMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifyConnectable([II)[Lcom/oculus/os/Controllers$VerifyConnectableResult;
    .locals 2
    .param p1, "deviceTypes"    # [I
    .param p2, "timeoutMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
