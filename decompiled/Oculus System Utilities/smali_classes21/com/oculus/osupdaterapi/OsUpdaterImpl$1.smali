.class Lcom/oculus/osupdaterapi/OsUpdaterImpl$1;
.super Landroid/os/ResultReceiver;
.source "OsUpdaterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/osupdaterapi/OsUpdaterImpl;->getUpdaterStatus(Lcom/oculus/osupdaterapi/OsUpdater$UpdaterStatusCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/osupdaterapi/OsUpdaterImpl;

.field final synthetic val$updaterStatusCallback:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterStatusCallback;


# direct methods
.method constructor <init>(Lcom/oculus/osupdaterapi/OsUpdaterImpl;Landroid/os/Handler;Lcom/oculus/osupdaterapi/OsUpdater$UpdaterStatusCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/osupdaterapi/OsUpdaterImpl;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/oculus/osupdaterapi/OsUpdaterImpl$1;->this$0:Lcom/oculus/osupdaterapi/OsUpdaterImpl;

    iput-object p3, p0, Lcom/oculus/osupdaterapi/OsUpdaterImpl$1;->val$updaterStatusCallback:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterStatusCallback;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "resultBundle"    # Landroid/os/Bundle;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oculus/osupdaterapi/OsUpdaterImpl$1;->val$updaterStatusCallback:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterStatusCallback;

    new-instance v1, Lcom/oculus/osupdaterapi/UpdaterStatus;

    invoke-direct {v1, p2}, Lcom/oculus/osupdaterapi/UpdaterStatus;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterStatusCallback;->onReceive(Lcom/oculus/osupdaterapi/UpdaterStatus;)V

    .line 73
    return-void
.end method
