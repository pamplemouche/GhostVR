.class Lcom/oculus/horizon/service/OVRService$3;
.super Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;
.source "OVRService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/service/OVRService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/service/OVRService;


# direct methods
.method varargs constructor <init>(Lcom/oculus/horizon/service/OVRService;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/oculus/horizon/service/OVRService$3;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-direct {p0, p2}, Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/secure/receiver/BroadcastReceiverLike;)V
    .locals 2

    .prologue
    .line 218
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_0

    const-string v1, "com.samsung.intent.action.HMT_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$3;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$3;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->disconnect(Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;)V

    .line 222
    :cond_0
    return-void
.end method
