.class Lcom/oculus/video/VideoInfoExtractor$1$2;
.super Ljava/lang/Object;
.source "VideoInfoExtractor.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/util/MediaClock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/VideoInfoExtractor$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/VideoInfoExtractor$1;


# direct methods
.method constructor <init>(Lcom/oculus/video/VideoInfoExtractor$1;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/oculus/video/VideoInfoExtractor$1$2;->this$0:Lcom/oculus/video/VideoInfoExtractor$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlaybackParameters()Lcom/oculus/android/exoplayer2/PlaybackParameters;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPositionUs()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public setPlaybackParameters(Lcom/oculus/android/exoplayer2/PlaybackParameters;)Lcom/oculus/android/exoplayer2/PlaybackParameters;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
