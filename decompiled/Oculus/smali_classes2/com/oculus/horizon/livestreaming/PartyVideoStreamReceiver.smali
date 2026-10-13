.class public Lcom/oculus/horizon/livestreaming/PartyVideoStreamReceiver;
.super Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;
.source "PartyVideoStreamReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/livestreaming/PartyVideoStreamReceiver$Listener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/oculus/horizon/livestreaming/PartyVideoStreamReceiver$Listener;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/livestreaming/PartyVideoStreamReceiver$Listener;)V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.oculus.horizon.livestreaming.action.PARTY_VIDEO_STREAM_START"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.oculus.horizon.livestreaming.action.PARTY_VIDEO_STREAM_STOP"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/PartyVideoStreamReceiver;->mListener:Lcom/oculus/horizon/livestreaming/PartyVideoStreamReceiver$Listener;

    .line 31
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/secure/receiver/BroadcastReceiverLike;)V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    .line 35
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oculus.horizon.livestreaming.action.PARTY_VIDEO_STREAM_START"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    const-string v0, "USER_ID"

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 41
    const-string v0, "SURFACE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    .line 42
    const-string v0, "SURFACE_WIDTH"

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 43
    const-string v0, "SURFACE_HEIGHT"

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 44
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/PartyVideoStreamReceiver;->mListener:Lcom/oculus/horizon/livestreaming/PartyVideoStreamReceiver$Listener;

    invoke-interface/range {v1 .. v6}, Lcom/oculus/horizon/livestreaming/PartyVideoStreamReceiver$Listener;->onReceiveStreamStart(JLandroid/view/Surface;II)V

    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oculus.horizon.livestreaming.action.PARTY_VIDEO_STREAM_STOP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const-string v0, "USER_ID"

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 47
    iget-object v2, p0, Lcom/oculus/horizon/livestreaming/PartyVideoStreamReceiver;->mListener:Lcom/oculus/horizon/livestreaming/PartyVideoStreamReceiver$Listener;

    invoke-interface {v2, v0, v1}, Lcom/oculus/horizon/livestreaming/PartyVideoStreamReceiver$Listener;->onReceiveStreamStop(J)V

    goto :goto_0
.end method
