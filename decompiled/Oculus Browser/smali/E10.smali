.class public LE10;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A:LH10;

.field public final synthetic w:Z

.field public final synthetic x:Landroid/content/Context;

.field public final synthetic y:LCg0;

.field public final synthetic z:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(LH10;ZLandroid/content/Context;LCg0;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, LE10;->A:LH10;

    iput-boolean p2, p0, LE10;->w:Z

    iput-object p3, p0, LE10;->x:Landroid/content/Context;

    iput-object p4, p0, LE10;->y:LCg0;

    iput-object p5, p0, LE10;->z:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, LE10;->A:LH10;

    .line 2
    iget-boolean v1, v0, LH10;->a:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v1, p0, LE10;->w:Z

    if-nez v1, :cond_2

    .line 4
    iget v1, v0, LH10;->b:I

    .line 5
    iget-boolean v0, v0, LH10;->c:Z

    .line 6
    invoke-static {}, LsS0;->b()LsS0;

    move-result-object v2

    .line 7
    invoke-static {v1}, LsS0;->a(I)I

    move-result v1

    const-string v3, "Android.BackgroundTaskScheduler.TaskLoadedNative"

    .line 8
    invoke-virtual {v2, v3, v1}, LsS0;->a(Ljava/lang/String;I)V

    if-eqz v0, :cond_1

    const-string v0, "Android.BackgroundTaskScheduler.TaskLoadedNative.ReducedMode"

    .line 9
    invoke-virtual {v2, v0, v1}, LsS0;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const-string v0, "Android.BackgroundTaskScheduler.TaskLoadedNative.FullBrowser"

    .line 10
    invoke-virtual {v2, v0, v1}, LsS0;->a(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 11
    :try_start_0
    iget-object v1, p0, LE10;->x:Landroid/content/Context;

    invoke-static {v1}, LUg0;->a(Landroid/content/Context;)LUg0;

    move-result-object v1

    iget-object v2, p0, LE10;->y:LCg0;

    invoke-virtual {v1, v2}, LUg0;->a(LCg0;)V

    .line 12
    iget-object v1, p0, LE10;->x:Landroid/content/Context;

    invoke-static {v1}, LUg0;->a(Landroid/content/Context;)LUg0;

    move-result-object v1

    iget-object v2, p0, LE10;->y:LCg0;

    invoke-virtual {v1, v0, v2}, LUg0;->a(ZLCg0;)V
    :try_end_0
    .catch LMU; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "BTS_NativeBkgrdTask"

    const-string v2, "Background Launch Error"

    .line 13
    invoke-static {v1, v2, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, LE10;->z:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void
.end method
