.class Lcom/oculus/horizon/platformplugin/PlatformPluginManager$1;
.super Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;
.source "PlatformPluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/platformplugin/PlatformPluginManager;
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
    .line 231
    iput-object p1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$1;->this$0:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-direct {p0, p2}, Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/secure/receiver/BroadcastReceiverLike;)V
    .locals 2

    .prologue
    .line 235
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 236
    const-string v1, "com.oculus.horizon.RUN_PARTY_CHAT_ENFORCER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$1;->this$0:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->enforcePartyChatStateConsistency()V

    .line 239
    :cond_0
    return-void
.end method
