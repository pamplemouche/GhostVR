.class public Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:J

.field public b:Z

.field public final c:Lzc1;

.field public final d:Lyc1;


# direct methods
.method public constructor <init>(JF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LyV0;

    invoke-direct {v0, p0}, LyV0;-><init>(Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;)V

    iput-object v0, p0, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->d:Lyc1;

    .line 3
    iput-wide p1, p0, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->a:J

    .line 4
    new-instance p1, Lzc1;

    .line 5
    invoke-direct {p1, v0, p3}, Lzc1;-><init>(Lyc1;F)V

    iput-object p1, p0, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->c:Lzc1;

    return-void
.end method

.method private setEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->b:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->b:Z

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->c:Lzc1;

    invoke-virtual {p1}, Lzc1;->b()V

    :cond_1
    return-void
.end method

.method private updateRefreshRate(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->c:Lzc1;

    invoke-virtual {v0, p1}, Lzc1;->a(F)V

    return-void
.end method
