.class Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$5;
.super Ljava/lang/Object;
.source "LiveStreamingSessionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

.field final synthetic val$thisFragment:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$5;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    iput-object p2, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$5;->val$thisFragment:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 269
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$5;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$1200(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/logging/OculusLogger;->reportLiveStreaminSessionJoinInVR()V

    .line 270
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$5;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    .line 271
    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$1300(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)Lcom/oculus/horizon/util/launch/PackageLauncherUtils;

    move-result-object v0

    const-string v1, "com.oculus.rooms"

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/util/launch/PackageLauncherUtils;->getLaunchIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 272
    if-nez v2, :cond_0

    .line 273
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$5;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$1400(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V

    .line 286
    :goto_0
    return-void

    .line 275
    :cond_0
    const-string v0, "ACTION"

    const-string v1, "WATCH_PARTY_LIVE_STREAM"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string v0, "PAYLOAD"

    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$5;->val$thisFragment:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    .line 278
    invoke-static {v1}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$1500(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$5;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$1300(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)Lcom/oculus/horizon/util/launch/PackageLauncherUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$5;->val$thisFragment:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    const-string v3, "com.oculus.rooms"

    const-string v4, "1101959559889232"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/oculus/horizon/util/launch/PackageLauncherUtils;->startActivityAndLogUsage(Landroidx/fragment/app/Fragment;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
