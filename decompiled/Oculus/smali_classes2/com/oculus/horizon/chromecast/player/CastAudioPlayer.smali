.class public Lcom/oculus/horizon/chromecast/player/CastAudioPlayer;
.super Ljava/lang/Object;
.source "CastAudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/chromecast/player/CastAudioPlayer$AudioReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAudioReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

.field private final mAudioTrack:Landroid/media/AudioTrack;

.field private mOriginalSpeakerphone:Z

.field private mOriginalVoiceCallVolume:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/oculus/horizon/chromecast/player/CastAudioPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/chromecast/player/CastAudioPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-ne p3, v4, :cond_1

    move v3, v7

    .line 36
    :goto_0
    const/16 v0, 0x10

    if-ne p4, v0, :cond_2

    .line 44
    :goto_1
    invoke-static {p2, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v2

    .line 46
    new-instance v0, Landroid/media/AudioTrack;

    mul-int/lit8 v5, v2, 0x4

    move v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/oculus/horizon/chromecast/player/CastAudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    .line 55
    new-instance v0, Lcom/oculus/horizon/chromecast/player/CastAudioPlayer$AudioReceiver;

    iget-object v2, p0, Lcom/oculus/horizon/chromecast/player/CastAudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-direct {v0, v2}, Lcom/oculus/horizon/chromecast/player/CastAudioPlayer$AudioReceiver;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lcom/oculus/horizon/chromecast/player/CastAudioPlayer;->mAudioReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    .line 57
    iget-object v0, p0, Lcom/oculus/horizon/chromecast/player/CastAudioPlayer;->mAudioReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    iget-object v2, p0, Lcom/oculus/horizon/chromecast/player/CastAudioPlayer;->mAudioReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    invoke-virtual {v2}, Lcom/facebook/secure/receiver/SecureBroadcastReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 60
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v2

    iput-boolean v2, p0, Lcom/oculus/horizon/chromecast/player/CastAudioPlayer;->mOriginalSpeakerphone:Z

    .line 61
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    iput v2, p0, Lcom/oculus/horizon/chromecast/player/CastAudioPlayer;->mOriginalVoiceCallVolume:I

    .line 63
    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 64
    invoke-virtual {v0, v1, v2, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 65
    if-lez v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/oculus/horizon/chromecast/player/CastAudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->play()V

    .line 69
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 70
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 74
    :goto_2
    return-void

    :cond_1
    move v3, v4

    .line 31
    goto :goto_0

    .line 38
    :cond_2
    const/16 v0, 0x8

    if-ne p4, v0, :cond_3

    move v4, v7

    .line 39
    goto :goto_1

    .line 41
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bits per sample must be 8 or 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_4
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_2
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/oculus/horizon/chromecast/player/CastAudioPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public shutdown(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    iget-object v0, p0, Lcom/oculus/horizon/chromecast/player/CastAudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 78
    iget-object v0, p0, Lcom/oculus/horizon/chromecast/player/CastAudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 79
    iget-object v0, p0, Lcom/oculus/horizon/chromecast/player/CastAudioPlayer;->mAudioReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 81
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 82
    iget-boolean v1, p0, Lcom/oculus/horizon/chromecast/player/CastAudioPlayer;->mOriginalSpeakerphone:Z

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 83
    iget v1, p0, Lcom/oculus/horizon/chromecast/player/CastAudioPlayer;->mOriginalVoiceCallVolume:I

    invoke-virtual {v0, v2, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 84
    return-void
.end method

.method public update([SI)V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/oculus/horizon/chromecast/player/CastAudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/media/AudioTrack;->write([SII)I

    .line 88
    return-void
.end method
