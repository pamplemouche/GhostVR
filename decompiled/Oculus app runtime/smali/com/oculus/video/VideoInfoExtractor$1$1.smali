.class Lcom/oculus/video/VideoInfoExtractor$1$1;
.super Ljava/lang/Object;
.source "VideoInfoExtractor.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/RendererCapabilities;


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

    .line 130
    iput-object p1, p0, Lcom/oculus/video/VideoInfoExtractor$1$1;->this$0:Lcom/oculus/video/VideoInfoExtractor$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTrackType()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public supportsFormat(Lcom/oculus/android/exoplayer2/Format;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public supportsMixedMimeTypeAdaptation()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
