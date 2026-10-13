.class public Lzc1;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lyc1;

.field public d:J

.field public e:Z

.field public f:Z

.field public final g:Landroid/view/Choreographer;

.field public final h:Landroid/view/Choreographer$FrameCallback;

.field public i:J

.field public final j:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lyc1;F)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lzc1;->j:Landroid/os/Handler;

    .line 3
    iput-object p1, p0, Lzc1;->c:Lyc1;

    .line 4
    invoke-virtual {p0, p2}, Lzc1;->a(F)V

    .line 5
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Lzc1;->g:Landroid/view/Choreographer;

    .line 6
    new-instance p1, Lxc1;

    invoke-direct {p1, p0}, Lxc1;-><init>(Lzc1;)V

    iput-object p1, p0, Lzc1;->h:Landroid/view/Choreographer$FrameCallback;

    .line 7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    .line 8
    iput-wide p1, p0, Lzc1;->i:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .line 3
    iget-wide v0, p0, Lzc1;->d:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public a(F)V
    .locals 2

    const/high16 v0, 0x41f00000    # 30.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    iput-boolean v0, p0, Lzc1;->e:Z

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    const/high16 p1, 0x42700000    # 60.0f

    :cond_1
    const v0, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, p1

    float-to-long v0, v0

    .line 2
    iput-wide v0, p0, Lzc1;->d:J

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lzc1;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lzc1;->f:Z

    .line 3
    iget-boolean v0, p0, Lzc1;->a:Z

    iput-boolean v0, p0, Lzc1;->b:Z

    .line 4
    iget-object v0, p0, Lzc1;->g:Landroid/view/Choreographer;

    iget-object v1, p0, Lzc1;->h:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :goto_0
    return-void
.end method
