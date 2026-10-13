.class public Lxc1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic a:Lzc1;


# direct methods
.method public constructor <init>(Lzc1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxc1;->a:Lzc1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 8

    const/4 v0, 0x0

    const-string v1, "VSync"

    .line 1
    invoke-static {v1, v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v2, p0, Lxc1;->a:Lzc1;

    .line 3
    iget-boolean v3, v2, Lzc1;->e:Z

    if-eqz v3, :cond_0

    .line 4
    iget-boolean v3, v2, Lzc1;->b:Z

    if-eqz v3, :cond_0

    .line 5
    iget-wide v3, v2, Lzc1;->i:J

    sub-long v3, p1, v3

    const v5, 0x3dcccccd    # 0.1f

    .line 6
    iget-wide v6, v2, Lzc1;->d:J

    sub-long/2addr v3, v6

    long-to-float v3, v3

    mul-float v3, v3, v5

    float-to-long v3, v3

    add-long/2addr v6, v3

    .line 7
    iput-wide v6, v2, Lzc1;->d:J

    .line 8
    :cond_0
    iget-object v2, p0, Lxc1;->a:Lzc1;

    .line 9
    iput-wide p1, v2, Lzc1;->i:J

    if-eqz v2, :cond_2

    .line 10
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, v2, Lzc1;->a:Z

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, v2, Lzc1;->f:Z

    .line 13
    :try_start_0
    iget-object v3, v2, Lzc1;->c:Lyc1;

    if-eqz v3, :cond_1

    .line 14
    iget-object v3, v2, Lzc1;->c:Lyc1;

    const-wide/16 v4, 0x3e8

    div-long/2addr p1, v4

    invoke-interface {v3, v2, p1, p2}, Lyc1;->a(Lzc1;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :cond_1
    iput-boolean v0, v2, Lzc1;->a:Z

    .line 16
    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 17
    iput-boolean v0, v2, Lzc1;->a:Z

    throw p1

    .line 18
    :cond_2
    throw v0
.end method
