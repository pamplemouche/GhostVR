.class Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$1;
.super Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;
.source "LiveStreamingSessionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->registerHeadphoneBroadcastListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;


# direct methods
.method varargs constructor <init>(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$1;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-direct {p0, p2}, Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/secure/receiver/BroadcastReceiverLike;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 157
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 158
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    const-string v2, "state"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 161
    invoke-static {}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ACTION_HEADSET_PLUG broadcast: state=%d"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    iget-object v3, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$1;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    if-eqz v2, :cond_0

    :goto_0
    invoke-static {v3, v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$100(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;Z)V

    .line 167
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 163
    goto :goto_0

    .line 165
    :cond_1
    invoke-static {}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unknown action: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v2, v3, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
