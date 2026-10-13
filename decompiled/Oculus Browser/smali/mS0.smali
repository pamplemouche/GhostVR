.class public LmS0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LNS0;


# instance fields
.field public final a:Landroid/app/job/JobInfo$Builder;

.field public final b:Landroid/os/PersistableBundle;


# direct methods
.method public constructor <init>(Landroid/app/job/JobInfo$Builder;Landroid/os/PersistableBundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LmS0;->a:Landroid/app/job/JobInfo$Builder;

    .line 3
    iput-object p2, p0, LmS0;->b:Landroid/os/PersistableBundle;

    return-void
.end method


# virtual methods
.method public a(LJS0;)V
    .locals 4

    .line 1
    iget-boolean v0, p1, LJS0;->d:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LmS0;->b:Landroid/os/PersistableBundle;

    .line 3
    sget-object v1, LnS0;->a:LlS0;

    .line 4
    invoke-interface {v1}, LlS0;->a()J

    move-result-wide v1

    const-string v3, "_background_task_schedule_time"

    .line 5
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 6
    iget-object v0, p0, LmS0;->b:Landroid/os/PersistableBundle;

    .line 7
    iget-wide v1, p1, LJS0;->b:J

    const-string v3, "_background_task_end_time"

    .line 8
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 9
    :cond_0
    iget-object v0, p0, LmS0;->a:Landroid/app/job/JobInfo$Builder;

    iget-object v1, p0, LmS0;->b:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 10
    iget-boolean v0, p1, LJS0;->c:Z

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, LmS0;->a:Landroid/app/job/JobInfo$Builder;

    .line 12
    iget-wide v1, p1, LJS0;->a:J

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 14
    :cond_1
    iget-wide v0, p1, LJS0;->b:J

    .line 15
    iget-boolean p1, p1, LJS0;->d:Z

    if-eqz p1, :cond_2

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    .line 16
    :cond_2
    iget-object p1, p0, LmS0;->a:Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p1, v0, v1}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    return-void
.end method

.method public a(LLS0;)V
    .locals 5

    .line 17
    iget-boolean v0, p1, LLS0;->d:Z

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, LmS0;->b:Landroid/os/PersistableBundle;

    .line 19
    sget-object v1, LnS0;->a:LlS0;

    .line 20
    invoke-interface {v1}, LlS0;->a()J

    move-result-wide v1

    const-string v3, "_background_task_schedule_time"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 21
    iget-object v0, p0, LmS0;->b:Landroid/os/PersistableBundle;

    .line 22
    iget-wide v1, p1, LLS0;->a:J

    const-string v3, "_background_task_interval_time"

    .line 23
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 24
    iget-boolean v0, p1, LLS0;->c:Z

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, LmS0;->b:Landroid/os/PersistableBundle;

    .line 26
    iget-wide v1, p1, LLS0;->b:J

    const-string v3, "_background_task_flex_time"

    .line 27
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 28
    :cond_0
    iget-object v0, p0, LmS0;->a:Landroid/app/job/JobInfo$Builder;

    iget-object v1, p0, LmS0;->b:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 29
    iget-boolean v0, p1, LLS0;->c:Z

    if-eqz v0, :cond_1

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 31
    iget-object v0, p0, LmS0;->a:Landroid/app/job/JobInfo$Builder;

    .line 32
    iget-wide v1, p1, LLS0;->a:J

    .line 33
    iget-wide v3, p1, LLS0;->b:J

    .line 34
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    return-void

    .line 35
    :cond_1
    iget-object v0, p0, LmS0;->a:Landroid/app/job/JobInfo$Builder;

    .line 36
    iget-wide v1, p1, LLS0;->a:J

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    return-void
.end method
