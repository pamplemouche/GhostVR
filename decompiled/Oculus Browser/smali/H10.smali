.class public abstract LH10;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LLR0;


# instance fields
.field public a:Z

.field public b:I

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LF01;
    .locals 1

    const/4 v0, 0x1

    .line 29
    invoke-static {v0}, LD01;->a(I)LF01;

    move-result-object v0

    return-object v0
.end method

.method public final a(Z)V
    .locals 5

    .line 30
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v1, 0x476a6000    # 60000.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 31
    sget-object v1, LZ01;->a:LFW;

    new-instance v2, LC10;

    invoke-direct {v2, p0, p1}, LC10;-><init>(LH10;Z)V

    int-to-long v3, v0

    invoke-static {v1, v2, v3, v4}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final a(Landroid/content/Context;LRS0;)Z
    .locals 1

    .line 23
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, LH10;->a:Z

    .line 25
    invoke-virtual {p0}, LH10;->b()V

    .line 26
    invoke-virtual {p0}, LH10;->a()LF01;

    move-result-object v0

    invoke-interface {v0}, LF01;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0, p1, p2}, LH10;->c(Landroid/content/Context;LRS0;)Z

    move-result p1

    return p1

    .line 28
    :cond_0
    invoke-virtual {p0, p1, p2}, LH10;->b(Landroid/content/Context;LRS0;)Z

    move-result p1

    return p1
.end method

.method public final a(Landroid/content/Context;LRS0;LKR0;)Z
    .locals 12

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget v0, p2, LRS0;->a:I

    .line 3
    iput v0, p0, LH10;->b:I

    .line 4
    new-instance v0, LB10;

    invoke-direct {v0, p0, p3}, LB10;-><init>(LH10;LKR0;)V

    .line 5
    invoke-virtual {p0, p1, p2, v0}, LH10;->b(Landroid/content/Context;LRS0;LKR0;)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return v3

    :cond_0
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 6
    sget-object p1, LZ01;->a:LFW;

    .line 7
    new-instance p2, LF10;

    invoke-direct {p2, p0, p3}, LF10;-><init>(LH10;LKR0;)V

    .line 8
    invoke-static {p1, p2, v4, v5}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return v2

    .line 9
    :cond_1
    new-instance p3, LG10;

    invoke-direct {p3, p0, p1, p2, v0}, LG10;-><init>(LH10;Landroid/content/Context;LRS0;LKR0;)V

    .line 10
    new-instance v11, LF10;

    invoke-direct {v11, p0, v0}, LF10;-><init>(LH10;LKR0;)V

    .line 11
    invoke-virtual {p0}, LH10;->a()LF01;

    move-result-object p2

    invoke-interface {p2}, LF01;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 12
    iput-boolean v3, p0, LH10;->c:Z

    .line 13
    iget p1, p0, LH10;->b:I

    invoke-static {p1, v3}, LbS0;->a(IZ)V

    .line 14
    iget-boolean p1, p0, LH10;->c:Z

    invoke-virtual {p0, p1}, LH10;->a(Z)V

    .line 15
    sget-object p1, LZ01;->a:LFW;

    .line 16
    invoke-static {p1, p3, v4, v5}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {p0}, LH10;->a()LF01;

    move-result-object p2

    invoke-interface {p2}, LF01;->b()Z

    move-result v8

    .line 18
    invoke-virtual {p0}, LH10;->c()Z

    move-result p2

    iput-boolean p2, p0, LH10;->c:Z

    .line 19
    iget v0, p0, LH10;->b:I

    invoke-static {v0, p2}, LbS0;->a(IZ)V

    .line 20
    new-instance v10, LD10;

    invoke-direct {v10, p0, p3, v11}, LD10;-><init>(LH10;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 21
    sget-object p2, LZ01;->a:LFW;

    new-instance p3, LE10;

    move-object v6, p3

    move-object v7, p0

    move-object v9, p1

    invoke-direct/range {v6 .. v11}, LE10;-><init>(LH10;ZLandroid/content/Context;LCg0;Ljava/lang/Runnable;)V

    .line 22
    invoke-static {p2, p3, v4, v5}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    :goto_0
    return v2
.end method

.method public abstract b(Landroid/content/Context;LRS0;LKR0;)I
.end method

.method public final b()V
    .locals 4

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-boolean v0, p0, LH10;->d:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, LH10;->d:Z

    .line 4
    iget v0, p0, LH10;->b:I

    iget-boolean v1, p0, LH10;->c:Z

    .line 5
    invoke-static {}, LsS0;->b()LsS0;

    move-result-object v2

    .line 6
    invoke-static {v0}, LsS0;->a(I)I

    move-result v0

    const-string v3, "Android.NativeBackgroundTask.TaskFinished"

    .line 7
    invoke-virtual {v2, v3, v0}, LsS0;->a(Ljava/lang/String;I)V

    if-eqz v1, :cond_0

    const-string v1, "Android.NativeBackgroundTask.TaskFinished.ReducedMode"

    .line 8
    invoke-virtual {v2, v1, v0}, LsS0;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string v1, "Android.NativeBackgroundTask.TaskFinished.FullBrowser"

    .line 9
    invoke-virtual {v2, v1, v0}, LsS0;->a(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract b(Landroid/content/Context;LRS0;)Z
.end method

.method public abstract c(Landroid/content/Context;LRS0;LKR0;)V
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract c(Landroid/content/Context;LRS0;)Z
.end method
