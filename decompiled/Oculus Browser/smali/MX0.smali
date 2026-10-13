.class public LMX0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LCX0;


# instance fields
.field public w:Landroid/os/Handler;

.field public final x:LCX0;

.field public final y:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>(LCX0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, LMX0;->y:Ljava/util/concurrent/Semaphore;

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LMX0;->w:Landroid/os/Handler;

    .line 4
    iput-object p1, p0, LMX0;->x:LCX0;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    iget-object v0, p0, LMX0;->w:Landroid/os/Handler;

    new-instance v1, LKX0;

    invoke-direct {v1, p0}, LKX0;-><init>(LMX0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 2

    .line 1
    iget-object v0, p0, LMX0;->w:Landroid/os/Handler;

    new-instance v1, LJX0;

    invoke-direct {v1, p0, p1}, LJX0;-><init>(LMX0;Landroid/view/Surface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, LMX0;->w:Landroid/os/Handler;

    new-instance v1, LLX0;

    invoke-direct {v1, p0}, LLX0;-><init>(LMX0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public f()V
    .locals 4

    .line 1
    :catch_0
    :try_start_0
    iget-object v0, p0, LMX0;->y:Ljava/util/concurrent/Semaphore;

    const-wide/16 v1, 0x2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void
.end method
