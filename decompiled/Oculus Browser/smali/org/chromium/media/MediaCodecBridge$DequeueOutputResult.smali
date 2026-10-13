.class public Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:J

.field public final f:I


# direct methods
.method public synthetic constructor <init>(IIIIJILv41;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->a:I

    .line 3
    iput p2, p0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->b:I

    .line 4
    iput p3, p0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->c:I

    .line 5
    iput p4, p0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->d:I

    .line 6
    iput-wide p5, p0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->e:J

    .line 7
    iput p7, p0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->f:I

    return-void
.end method

.method public static synthetic a(Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->status()I

    move-result p0

    return p0
.end method

.method private flags()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->c:I

    return v0
.end method

.method private index()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->b:I

    return v0
.end method

.method private numBytes()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->f:I

    return v0
.end method

.method private offset()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->d:I

    return v0
.end method

.method private presentationTimeMicroseconds()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->e:J

    return-wide v0
.end method

.method private status()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->a:I

    return v0
.end method
