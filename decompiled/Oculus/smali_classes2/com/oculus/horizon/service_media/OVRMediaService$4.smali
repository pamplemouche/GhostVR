.class Lcom/oculus/horizon/service_media/OVRMediaService$4;
.super Ljava/lang/Object;
.source "OVRMediaService.java"

# interfaces
.implements Lcom/oculus/horizon/service_media/vrcast/VrCastDiscoverTask$DiscoverCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/service_media/OVRMediaService;->handleCompanionServerAction(Landroid/content/Intent;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/service_media/OVRMediaService;

.field final synthetic val$resultReceiver:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/service_media/OVRMediaService;Landroid/os/ResultReceiver;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/oculus/horizon/service_media/OVRMediaService$4;->this$0:Lcom/oculus/horizon/service_media/OVRMediaService;

    iput-object p2, p0, Lcom/oculus/horizon/service_media/OVRMediaService$4;->val$resultReceiver:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiscoverError()V
    .locals 3

    .prologue
    .line 472
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService$4;->val$resultReceiver:Landroid/os/ResultReceiver;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 473
    return-void
.end method

.method public onDiscoverResult(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 462
    invoke-static {}, Lcom/oculus/horizon/service_media/OVRMediaService;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VRCAST_DISCOVER_ACTION, sending device callback with devices size=%s"

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 464
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 461
    :goto_0
    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 465
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService$4;->val$resultReceiver:Landroid/os/ResultReceiver;

    const/4 v1, 0x0

    .line 467
    invoke-static {p1}, Lcom/oculus/horizon/service_media/vrcast/VrCastBundleConverter;->devicesToBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v2

    .line 465
    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 468
    return-void

    .line 464
    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method
