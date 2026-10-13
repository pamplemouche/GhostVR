.class Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CastBroadcastReceiver;
.super Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;
.source "OVRMediaServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/service_media/OVRMediaServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CastBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/service_media/OVRMediaServiceManager;)V
    .locals 3

    .prologue
    .line 137
    iput-object p1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CastBroadcastReceiver;->this$0:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    .line 138
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.oculus.horizon.GET_CAPTURE_STATE_ACTION"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.oculus.horizon.START_CAST_SERVER"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.oculus.horizon.STOP_CAST_SERVER"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 142
    return-void
.end method


# virtual methods
.method protected onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/secure/receiver/BroadcastReceiverLike;)V
    .locals 3

    .prologue
    .line 147
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Capture receiver action %s"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    if-nez v0, :cond_0

    .line 151
    invoke-static {}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Capture receiver got null action!"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :goto_0
    return-void

    .line 152
    :cond_0
    const-string v1, "com.oculus.horizon.GET_CAPTURE_STATE_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CastBroadcastReceiver;->this$0:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->broadcastScreenCapture()V

    goto :goto_0

    .line 154
    :cond_1
    const-string v1, "com.oculus.horizon.START_CAST_SERVER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 155
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CastBroadcastReceiver;->this$0:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    sget-object v1, Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;->BROADCAST:Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;

    invoke-virtual {v0, p2, v1}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->startCastServer(Landroid/content/Intent;Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;)V

    goto :goto_0

    .line 156
    :cond_2
    const-string v1, "com.oculus.horizon.STOP_CAST_SERVER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 157
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CastBroadcastReceiver;->this$0:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->access$300(Lcom/oculus/horizon/service_media/OVRMediaServiceManager;)Lcom/oculus/horizon/cast/CastManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/cast/CastManager;->stop()V

    goto :goto_0

    .line 159
    :cond_3
    invoke-static {}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Capture receiver got unknown action %s"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
