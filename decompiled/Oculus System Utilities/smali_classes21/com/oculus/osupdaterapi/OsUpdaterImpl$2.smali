.class Lcom/oculus/osupdaterapi/OsUpdaterImpl$2;
.super Landroid/os/ResultReceiver;
.source "OsUpdaterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/osupdaterapi/OsUpdaterImpl;->checkIfUpdatesAreAvailable(ZLandroid/os/Handler;Lcom/oculus/osupdaterapi/OsUpdater$UpdaterOtaAvailabilityCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/osupdaterapi/OsUpdaterImpl;

.field final synthetic val$otaAvailabilityCallback:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterOtaAvailabilityCallback;


# direct methods
.method constructor <init>(Lcom/oculus/osupdaterapi/OsUpdaterImpl;Landroid/os/Handler;Lcom/oculus/osupdaterapi/OsUpdater$UpdaterOtaAvailabilityCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/osupdaterapi/OsUpdaterImpl;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/oculus/osupdaterapi/OsUpdaterImpl$2;->this$0:Lcom/oculus/osupdaterapi/OsUpdaterImpl;

    iput-object p3, p0, Lcom/oculus/osupdaterapi/OsUpdaterImpl$2;->val$otaAvailabilityCallback:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterOtaAvailabilityCallback;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "resultBundle"    # Landroid/os/Bundle;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/oculus/osupdaterapi/OsUpdaterImpl$2;->val$otaAvailabilityCallback:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterOtaAvailabilityCallback;

    new-instance v1, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;

    invoke-direct {v1, p1, p2}, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;-><init>(ILandroid/os/Bundle;)V

    invoke-interface {v0, v1}, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterOtaAvailabilityCallback;->onReceive(Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;)V

    .line 95
    return-void
.end method
