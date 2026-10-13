.class Lcom/oculus/vrshell/home/module/audio/SpeakerPlayer$1;
.super Ljava/lang/Object;
.source "SpeakerPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/home/module/audio/SpeakerPlayer;->startPlayback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/home/module/audio/SpeakerPlayer;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/home/module/audio/SpeakerPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/vrshell/home/module/audio/SpeakerPlayer;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/audio/SpeakerPlayer$1;->this$0:Lcom/oculus/vrshell/home/module/audio/SpeakerPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/audio/SpeakerPlayer$1;->this$0:Lcom/oculus/vrshell/home/module/audio/SpeakerPlayer;

    invoke-virtual {v0}, Lcom/oculus/vrshell/home/module/audio/SpeakerPlayer;->stopPlayback()V

    .line 54
    return-void
.end method
