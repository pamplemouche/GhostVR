.class Lcom/oculus/horizon/chromecast/PresentationService$1;
.super Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;
.source "PresentationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/chromecast/PresentationService;->createPresentation(Landroid/view/Display;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/chromecast/PresentationService;


# direct methods
.method varargs constructor <init>(Lcom/oculus/horizon/chromecast/PresentationService;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/oculus/horizon/chromecast/PresentationService$1;->this$0:Lcom/oculus/horizon/chromecast/PresentationService;

    invoke-direct {p0, p2}, Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/secure/receiver/BroadcastReceiverLike;)V
    .locals 4

    .prologue
    .line 80
    const-string v0, "PresentationService"

    const-string v1, "onReceive %s"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 83
    const-string v1, "package_name"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    const-string v2, "com.oculus.chromecast_start_streaming"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oculus/horizon/chromecast/PresentationService$1;->this$0:Lcom/oculus/horizon/chromecast/PresentationService;

    .line 85
    invoke-static {v2}, Lcom/oculus/horizon/chromecast/PresentationService;->access$000(Lcom/oculus/horizon/chromecast/PresentationService;)Lcom/oculus/horizon/chromecast/PresentationService$FirstScreenPresentation;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 88
    iget-object v2, p0, Lcom/oculus/horizon/chromecast/PresentationService$1;->this$0:Lcom/oculus/horizon/chromecast/PresentationService;

    invoke-static {v2}, Lcom/oculus/horizon/chromecast/PresentationService;->access$000(Lcom/oculus/horizon/chromecast/PresentationService;)Lcom/oculus/horizon/chromecast/PresentationService$FirstScreenPresentation;

    move-result-object v2

    iget-object v2, v2, Lcom/oculus/horizon/chromecast/PresentationService$FirstScreenPresentation;->mCaptureSurface:Landroid/view/Surface;

    .line 89
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 90
    iget-object v3, p0, Lcom/oculus/horizon/chromecast/PresentationService$1;->this$0:Lcom/oculus/horizon/chromecast/PresentationService;

    invoke-static {v3, p1, v1, v2}, Lcom/oculus/horizon/chromecast/PresentationService;->access$100(Lcom/oculus/horizon/chromecast/PresentationService;Landroid/content/Context;Ljava/lang/String;Landroid/view/Surface;)V

    .line 91
    iget-object v2, p0, Lcom/oculus/horizon/chromecast/PresentationService$1;->this$0:Lcom/oculus/horizon/chromecast/PresentationService;

    invoke-static {v2}, Lcom/oculus/horizon/chromecast/PresentationService;->access$200(Lcom/oculus/horizon/chromecast/PresentationService;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportChromecastAppSwitch(Ljava/lang/String;)V

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/chromecast/PresentationService$1;->this$0:Lcom/oculus/horizon/chromecast/PresentationService;

    invoke-static {v1}, Lcom/oculus/horizon/chromecast/PresentationService;->access$000(Lcom/oculus/horizon/chromecast/PresentationService;)Lcom/oculus/horizon/chromecast/PresentationService$FirstScreenPresentation;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/oculus/horizon/chromecast/PresentationService$1;->this$0:Lcom/oculus/horizon/chromecast/PresentationService;

    invoke-static {v1}, Lcom/oculus/horizon/chromecast/PresentationService;->access$000(Lcom/oculus/horizon/chromecast/PresentationService;)Lcom/oculus/horizon/chromecast/PresentationService$FirstScreenPresentation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/chromecast/PresentationService$FirstScreenPresentation;->updateVisibility(Ljava/lang/String;)V

    .line 98
    :cond_1
    return-void
.end method
