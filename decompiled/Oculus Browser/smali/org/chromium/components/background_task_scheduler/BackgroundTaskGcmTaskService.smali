.class public Lorg/chromium/components/background_task_scheduler/BackgroundTaskGcmTaskService;
.super LDq;
.source "PG"


# instance fields
.field public C:LeS0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LDq;-><init>()V

    .line 2
    sget-object v0, LOR0;->a:LeS0;

    iput-object v0, p0, Lorg/chromium/components/background_task_scheduler/BackgroundTaskGcmTaskService;->C:LeS0;

    return-void
.end method


# virtual methods
.method public a(LIq;)I
    .locals 19

    move-object/from16 v6, p0

    .line 1
    invoke-static/range {p1 .. p1}, LgS0;->a(LIq;)LRS0;

    move-result-object v7

    .line 2
    iget v0, v7, LRS0;->a:I

    .line 3
    invoke-static {v0}, LcS0;->a(I)LLR0;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v0, 0x2

    if-nez v8, :cond_0

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "BkgrdTaskGcmTS"

    const-string v3, "Failed to start task. Could not instantiate BackgroundTask class."

    .line 4
    invoke-static {v2, v3, v1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-static {}, LcS0;->a()LXR0;

    move-result-object v1

    .line 6
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 7
    iget v3, v7, LRS0;->a:I

    .line 8
    check-cast v1, LjS0;

    invoke-virtual {v1, v2, v3}, LjS0;->a(Landroid/content/Context;I)V

    return v0

    .line 9
    :cond_0
    iget-object v1, v6, Lorg/chromium/components/background_task_scheduler/BackgroundTaskGcmTaskService;->C:LeS0;

    .line 10
    invoke-interface {v1}, LeS0;->a()J

    move-result-wide v16

    move-object/from16 v1, p1

    .line 11
    iget-object v1, v1, LIq;->b:Landroid/os/Bundle;

    const/16 v18, 0x1

    if-eqz v1, :cond_3

    const-string v2, "_background_task_schedule_time"

    .line 12
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string v2, "_background_task_end_time"

    .line 14
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 15
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    add-long/2addr v1, v10

    cmp-long v3, v16, v1

    if-ltz v3, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const-string v2, "_background_task_interval_time"

    .line 16
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    const-wide v2, 0x3fb99999a0000000L    # 0.10000000149011612

    long-to-double v4, v12

    mul-double v4, v4, v2

    double-to-long v2, v4

    const-string v4, "_background_task_flex_time"

    .line 17
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 18
    invoke-static/range {v10 .. v17}, LLS0;->a(JJJJ)Z

    move-result v1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 19
    invoke-static {}, LsS0;->b()LsS0;

    move-result-object v1

    .line 20
    iget v2, v7, LRS0;->a:I

    .line 21
    invoke-static {v2}, LsS0;->a(I)I

    move-result v2

    const-string v3, "Android.BackgroundTaskScheduler.TaskExpired"

    invoke-virtual {v1, v3, v2}, LsS0;->a(Ljava/lang/String;I)V

    return v0

    .line 22
    :cond_4
    new-instance v10, LTR0;

    const-wide/16 v0, 0xb3

    invoke-direct {v10, v0, v1}, LTR0;-><init>(J)V

    .line 23
    new-instance v11, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 24
    new-instance v12, LPR0;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v7

    move-object v3, v11

    move-object v4, v8

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, LPR0;-><init>(Lorg/chromium/components/background_task_scheduler/BackgroundTaskGcmTaskService;LRS0;Ljava/util/concurrent/atomic/AtomicBoolean;LLR0;LTR0;)V

    invoke-static {v12}, Lorg/chromium/base/ThreadUtils;->c(Ljava/lang/Runnable;)V

    .line 25
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5

    return v9

    .line 26
    :cond_5
    :try_start_0
    iget-object v0, v10, LTR0;->a:Ljava/util/concurrent/CountDownLatch;

    iget-wide v1, v10, LTR0;->b:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, v10, LTR0;->d:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    nop

    .line 27
    :goto_3
    iget-boolean v0, v10, LTR0;->c:Z

    if-eqz v0, :cond_7

    return v18

    .line 28
    :cond_7
    iget-boolean v0, v10, LTR0;->d:Z

    if-nez v0, :cond_8

    return v9

    .line 29
    :cond_8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 30
    new-instance v1, LQR0;

    invoke-direct {v1, v6, v7, v0, v8}, LQR0;-><init>(Lorg/chromium/components/background_task_scheduler/BackgroundTaskGcmTaskService;LRS0;Ljava/util/concurrent/atomic/AtomicBoolean;LLR0;)V

    invoke-static {v1}, Lorg/chromium/base/ThreadUtils;->c(Ljava/lang/Runnable;)V

    .line 31
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    return v18

    :cond_9
    return v9
.end method

.method public a()V
    .locals 2

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-static {}, LcS0;->a()LXR0;

    move-result-object v0

    .line 34
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 35
    check-cast v0, LjS0;

    invoke-virtual {v0, v1}, LjS0;->a(Landroid/content/Context;)V

    return-void
.end method
