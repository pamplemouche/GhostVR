.class Lcom/oculus/horizon/service_media/OVRMediaService$3;
.super Ljava/lang/Object;
.source "OVRMediaService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/service_media/OVRMediaService;->doStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/service_media/OVRMediaService;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/service_media/OVRMediaService;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/oculus/horizon/service_media/OVRMediaService$3;->this$0:Lcom/oculus/horizon/service_media/OVRMediaService;

    iput-object p2, p0, Lcom/oculus/horizon/service_media/OVRMediaService$3;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService$3;->this$0:Lcom/oculus/horizon/service_media/OVRMediaService;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/OVRMediaService;->access$000(Lcom/oculus/horizon/service_media/OVRMediaService;)Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->createFacebookLivestreamingManager()V

    .line 285
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService$3;->val$intent:Landroid/content/Intent;

    const-string v1, "result_receiver"

    .line 286
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 287
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaService$3;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 288
    iget-object v2, p0, Lcom/oculus/horizon/service_media/OVRMediaService$3;->this$0:Lcom/oculus/horizon/service_media/OVRMediaService;

    .line 289
    invoke-static {v2}, Lcom/oculus/horizon/service_media/OVRMediaService;->access$000(Lcom/oculus/horizon/service_media/OVRMediaService;)Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->handleLivestreamingStartEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 290
    if-eqz v0, :cond_0

    .line 291
    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 293
    :cond_0
    return-void
.end method
