.class public LyV0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lyc1;


# instance fields
.field public final synthetic a:Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;


# direct methods
.method public constructor <init>(Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;)V
    .locals 0

    .line 1
    iput-object p1, p0, LyV0;->a:Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lzc1;J)V
    .locals 7

    .line 1
    iget-object v2, p0, LyV0;->a:Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;

    .line 2
    iget-boolean p1, v2, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->b:Z

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-wide v0, v2, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->a:J

    .line 4
    iget-object p1, v2, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->c:Lzc1;

    .line 5
    invoke-virtual {p1}, Lzc1;->a()J

    move-result-wide v5

    move-wide v3, p2

    .line 6
    invoke-static/range {v0 .. v6}, LJ/N;->Mhc_M_H$(JLjava/lang/Object;JJ)V

    .line 7
    iget-object p1, p0, LyV0;->a:Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;

    .line 8
    iget-object p1, p1, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->c:Lzc1;

    .line 9
    invoke-virtual {p1}, Lzc1;->b()V

    return-void
.end method
