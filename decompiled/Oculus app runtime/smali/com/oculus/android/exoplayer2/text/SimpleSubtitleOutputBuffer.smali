.class final Lcom/oculus/android/exoplayer2/text/SimpleSubtitleOutputBuffer;
.super Lcom/oculus/android/exoplayer2/text/SubtitleOutputBuffer;
.source "SimpleSubtitleOutputBuffer.java"


# instance fields
.field private final owner:Lcom/oculus/android/exoplayer2/text/SimpleSubtitleDecoder;


# direct methods
.method public constructor <init>(Lcom/oculus/android/exoplayer2/text/SimpleSubtitleDecoder;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/oculus/android/exoplayer2/text/SubtitleOutputBuffer;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/oculus/android/exoplayer2/text/SimpleSubtitleOutputBuffer;->owner:Lcom/oculus/android/exoplayer2/text/SimpleSubtitleDecoder;

    return-void
.end method


# virtual methods
.method public final release()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/text/SimpleSubtitleOutputBuffer;->owner:Lcom/oculus/android/exoplayer2/text/SimpleSubtitleDecoder;

    invoke-virtual {v0, p0}, Lcom/oculus/android/exoplayer2/text/SimpleSubtitleDecoder;->releaseOutputBuffer(Lcom/oculus/android/exoplayer2/text/SubtitleOutputBuffer;)V

    return-void
.end method
