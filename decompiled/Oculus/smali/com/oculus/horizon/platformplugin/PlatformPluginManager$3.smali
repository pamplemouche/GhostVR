.class Lcom/oculus/horizon/platformplugin/PlatformPluginManager$3;
.super Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;
.source "PlatformPluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->init(Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;


# direct methods
.method varargs constructor <init>(Lcom/oculus/horizon/platformplugin/PlatformPluginManager;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 607
    iput-object p1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$3;->this$0:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-direct {p0, p2}, Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/secure/receiver/BroadcastReceiverLike;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 611
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 612
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 613
    const-string/jumbo v1, "state"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 614
    const-string v2, "microphone"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 615
    const-string v3, "name"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 618
    invoke-static {}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ACTION_HEADSET_PLUG broadcast: state=%d microphone=%d name=%s"

    .line 620
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 621
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 617
    invoke-static {v4, v5, v6, v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 624
    iget-object v2, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$3;->this$0:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v2, v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->access$100(Lcom/oculus/horizon/platformplugin/PlatformPluginManager;Z)V

    .line 626
    :cond_1
    return-void
.end method
