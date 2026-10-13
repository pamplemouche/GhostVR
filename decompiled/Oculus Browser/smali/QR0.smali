.class public LQR0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LRS0;

.field public final synthetic x:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic y:LLR0;


# direct methods
.method public constructor <init>(Lorg/chromium/components/background_task_scheduler/BackgroundTaskGcmTaskService;LRS0;Ljava/util/concurrent/atomic/AtomicBoolean;LLR0;)V
    .locals 0

    .line 1
    iput-object p2, p0, LQR0;->w:LRS0;

    iput-object p3, p0, LQR0;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, LQR0;->y:LLR0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, LsS0;->b()LsS0;

    move-result-object v0

    iget-object v1, p0, LQR0;->w:LRS0;

    .line 2
    iget v1, v1, LRS0;->a:I

    .line 3
    invoke-static {v1}, LsS0;->a(I)I

    move-result v1

    const-string v2, "Android.BackgroundTaskScheduler.TaskStopped"

    invoke-virtual {v0, v2, v1}, LsS0;->a(Ljava/lang/String;I)V

    .line 4
    iget-object v0, p0, LQR0;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, LQR0;->y:LLR0;

    .line 5
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 6
    iget-object v3, p0, LQR0;->w:LRS0;

    .line 7
    invoke-interface {v1, v2, v3}, LLR0;->a(Landroid/content/Context;LRS0;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
