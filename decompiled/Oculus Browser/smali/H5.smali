.class public abstract LH5;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Ljava/lang/ref/WeakReference;

.field public c:LD5;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LH5;->c:LD5;

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 4
    new-instance v0, LG5;

    invoke-direct {v0, p0}, LG5;-><init>(LH5;)V

    .line 5
    new-instance v1, LY5;

    invoke-direct {v1, v0}, LY5;-><init>(LX5;)V

    .line 6
    iput-object v1, p0, LH5;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 7
    new-instance v0, LF5;

    invoke-direct {v0, p0}, LF5;-><init>(LH5;)V

    .line 8
    new-instance v1, LW5;

    invoke-direct {v1, v0}, LW5;-><init>(LV5;)V

    .line 9
    iput-object v1, p0, LH5;->a:Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_1
    new-instance v0, LE5;

    invoke-direct {v0, p0}, LE5;-><init>(LH5;)V

    .line 11
    new-instance v1, LU5;

    invoke-direct {v1, v0}, LU5;-><init>(LT5;)V

    .line 12
    iput-object v1, p0, LH5;->a:Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(J)V
    .locals 0

    return-void
.end method

.method public a(LI5;Landroid/os/Handler;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LH5;->b:Ljava/lang/ref/WeakReference;

    .line 2
    iget-object p1, p0, LH5;->c:LD5;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    :cond_0
    new-instance p1, LD5;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, LD5;-><init>(LH5;Landroid/os/Looper;)V

    iput-object p1, p0, LH5;->c:LD5;

    return-void
.end method

.method public a(LR4;)V
    .locals 11

    .line 25
    iget-boolean v0, p0, LH5;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, LH5;->d:Z

    .line 27
    iget-object v1, p0, LH5;->c:LD5;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 28
    iget-object v1, p0, LH5;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LI5;

    if-nez v1, :cond_1

    return-void

    .line 29
    :cond_1
    invoke-interface {v1}, LI5;->a()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_2

    move-wide v6, v4

    goto :goto_0

    .line 30
    :cond_2
    iget-wide v6, v3, Landroid/support/v4/media/session/PlaybackStateCompat;->A:J

    :goto_0
    if-eqz v3, :cond_3

    .line 31
    iget v3, v3, Landroid/support/v4/media/session/PlaybackStateCompat;->w:I

    const/4 v8, 0x3

    if-ne v3, v8, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    const-wide/16 v8, 0x204

    and-long/2addr v8, v6

    cmp-long v10, v8, v4

    if-eqz v10, :cond_4

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    const-wide/16 v9, 0x202

    and-long/2addr v6, v9

    cmp-long v9, v6, v4

    if-eqz v9, :cond_5

    const/4 v0, 0x1

    .line 32
    :cond_5
    invoke-interface {v1, p1}, LI5;->a(LR4;)V

    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    .line 33
    invoke-virtual {p0}, LH5;->b()V

    goto :goto_3

    :cond_6
    if-nez v3, :cond_7

    if-eqz v8, :cond_7

    .line 34
    invoke-virtual {p0}, LH5;->c()V

    :cond_7
    :goto_3
    const/4 p1, 0x0

    .line 35
    invoke-interface {v1, p1}, LI5;->a(LR4;)V

    return-void
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 8

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    .line 6
    :cond_0
    iget-object v0, p0, LH5;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LI5;

    if-eqz v0, :cond_8

    .line 7
    iget-object v1, p0, LH5;->c:LD5;

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    const-string v1, "android.intent.extra.KEY_EVENT"

    .line 8
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/KeyEvent;

    if-eqz p1, :cond_8

    .line 9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    invoke-interface {v0}, LI5;->g()LR4;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x4f

    if-eq v3, v4, :cond_3

    const/16 v4, 0x55

    if-eq v3, v4, :cond_3

    .line 12
    invoke-virtual {p0, v1}, LH5;->a(LR4;)V

    return v2

    .line 13
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    const/4 v3, 0x1

    if-lez p1, :cond_4

    .line 14
    invoke-virtual {p0, v1}, LH5;->a(LR4;)V

    goto :goto_1

    .line 15
    :cond_4
    iget-boolean p1, p0, LH5;->d:Z

    if-eqz p1, :cond_6

    .line 16
    iget-object p1, p0, LH5;->c:LD5;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    iput-boolean v2, p0, LH5;->d:Z

    .line 18
    invoke-interface {v0}, LI5;->a()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_5

    move-wide v4, v0

    goto :goto_0

    .line 19
    :cond_5
    iget-wide v4, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->A:J

    :goto_0
    const-wide/16 v6, 0x20

    and-long/2addr v4, v6

    cmp-long p1, v4, v0

    if-eqz p1, :cond_7

    .line 20
    invoke-virtual {p0}, LH5;->e()V

    goto :goto_1

    .line 21
    :cond_6
    iput-boolean v3, p0, LH5;->d:Z

    .line 22
    iget-object p1, p0, LH5;->c:LD5;

    invoke-virtual {p1, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 23
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v1

    int-to-long v1, v1

    .line 24
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_7
    :goto_1
    return v3

    :cond_8
    :goto_2
    return v2
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method
