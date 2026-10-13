.class public final Lcom/oculus/osupdaterapi/OsUpdater;
.super Ljava/lang/Object;
.source "OsUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/osupdaterapi/OsUpdater$OtaUpdateProgressCallback;,
        Lcom/oculus/osupdaterapi/OsUpdater$UpdaterOtaAvailabilityCallback;,
        Lcom/oculus/osupdaterapi/OsUpdater$UpdaterStatusCallback;,
        Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;
    }
.end annotation


# instance fields
.field private final mOsUpdaterImpl:Lcom/oculus/osupdaterapi/OsUpdaterImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    if-nez p1, :cond_0

    .line 24
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Received Null Context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_0
    new-instance v0, Lcom/oculus/osupdaterapi/OsUpdaterImpl;

    invoke-direct {v0, p1}, Lcom/oculus/osupdaterapi/OsUpdaterImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oculus/osupdaterapi/OsUpdater;->mOsUpdaterImpl:Lcom/oculus/osupdaterapi/OsUpdaterImpl;

    .line 27
    return-void
.end method


# virtual methods
.method public checkIfUpdatesAreAvailable(ZLandroid/os/Handler;Lcom/oculus/osupdaterapi/OsUpdater$UpdaterOtaAvailabilityCallback;)V
    .locals 1
    .param p1, "isFullUpdate"    # Z
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "otaAvailabilityCallback"    # Lcom/oculus/osupdaterapi/OsUpdater$UpdaterOtaAvailabilityCallback;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oculus/osupdaterapi/OsUpdater;->mOsUpdaterImpl:Lcom/oculus/osupdaterapi/OsUpdaterImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/osupdaterapi/OsUpdaterImpl;->checkIfUpdatesAreAvailable(ZLandroid/os/Handler;Lcom/oculus/osupdaterapi/OsUpdater$UpdaterOtaAvailabilityCallback;)V

    .line 62
    return-void
.end method

.method public downloadUpdateIfAvailable(ZLandroid/os/Handler;Lcom/oculus/osupdaterapi/OsUpdater$UpdaterOtaAvailabilityCallback;Lcom/oculus/osupdaterapi/OsUpdater$OtaUpdateProgressCallback;)V
    .locals 1
    .param p1, "isFullUpdate"    # Z
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "otaAvailabilityCallback"    # Lcom/oculus/osupdaterapi/OsUpdater$UpdaterOtaAvailabilityCallback;
    .param p4, "updateProgressCallback"    # Lcom/oculus/osupdaterapi/OsUpdater$OtaUpdateProgressCallback;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oculus/osupdaterapi/OsUpdater;->mOsUpdaterImpl:Lcom/oculus/osupdaterapi/OsUpdaterImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oculus/osupdaterapi/OsUpdaterImpl;->downloadUpdateIfAvailable(ZLandroid/os/Handler;Lcom/oculus/osupdaterapi/OsUpdater$UpdaterOtaAvailabilityCallback;Lcom/oculus/osupdaterapi/OsUpdater$OtaUpdateProgressCallback;)V

    .line 88
    return-void
.end method

.method public getUpdaterStatus(Lcom/oculus/osupdaterapi/OsUpdater$UpdaterStatusCallback;Landroid/os/Handler;)V
    .locals 1
    .param p1, "updaterStatusCallback"    # Lcom/oculus/osupdaterapi/OsUpdater$UpdaterStatusCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/oculus/osupdaterapi/OsUpdater;->mOsUpdaterImpl:Lcom/oculus/osupdaterapi/OsUpdaterImpl;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/osupdaterapi/OsUpdaterImpl;->getUpdaterStatus(Lcom/oculus/osupdaterapi/OsUpdater$UpdaterStatusCallback;Landroid/os/Handler;)V

    .line 42
    return-void
.end method

.method public rebootAndApplyUpdate()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oculus/osupdaterapi/OsUpdater;->mOsUpdaterImpl:Lcom/oculus/osupdaterapi/OsUpdaterImpl;

    invoke-virtual {v0}, Lcom/oculus/osupdaterapi/OsUpdaterImpl;->rebootAndApplyUpdate()V

    .line 93
    return-void
.end method

.method public setUpdaterEnabled(Z)V
    .locals 0
    .param p1, "enableUpdates"    # Z

    .prologue
    .line 98
    return-void
.end method
