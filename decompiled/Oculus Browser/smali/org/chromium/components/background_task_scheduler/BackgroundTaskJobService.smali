.class public Lorg/chromium/components/background_task_scheduler/BackgroundTaskJobService;
.super Landroid/app/job/JobService;
.source "PG"


# instance fields
.field public w:LlS0;

.field public final x:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 2
    sget-object v0, LUR0;->a:LlS0;

    iput-object v0, p0, Lorg/chromium/components/background_task_scheduler/BackgroundTaskJobService;->w:LlS0;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/background_task_scheduler/BackgroundTaskJobService;->x:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
    .locals 0

    invoke-static {}, LbY;->b()Z

    invoke-super {p0, p1}, Landroid/app/job/JobService;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/job/JobService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/job/JobService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/job/JobService;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 5

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    invoke-static {v0}, LcS0;->a(I)LLR0;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "BkgrdTaskJS"

    const-string v3, "Failed to start task. Could not instantiate BackgroundTask class."

    .line 3
    invoke-static {v2, v3, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-static {}, LcS0;->a()LXR0;

    move-result-object v0

    .line 5
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 6
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    .line 7
    check-cast v0, LjS0;

    invoke-virtual {v0, v2, p1}, LjS0;->a(Landroid/content/Context;I)V

    return v1

    .line 8
    :cond_0
    iget-object v2, p0, Lorg/chromium/components/background_task_scheduler/BackgroundTaskJobService;->w:LlS0;

    invoke-interface {v2}, LlS0;->a()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, LnS0;->a(Landroid/app/job/JobParameters;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    invoke-static {}, LsS0;->b()LsS0;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    .line 10
    invoke-static {p1}, LsS0;->a(I)I

    move-result p1

    const-string v2, "Android.BackgroundTaskScheduler.TaskExpired"

    invoke-virtual {v0, v2, p1}, LsS0;->a(Ljava/lang/String;I)V

    return v1

    .line 11
    :cond_1
    iget-object v1, p0, Lorg/chromium/components/background_task_scheduler/BackgroundTaskJobService;->x:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {p1}, LnS0;->a(Landroid/app/job/JobParameters;)LRS0;

    move-result-object v1

    .line 13
    invoke-static {}, LsS0;->b()LsS0;

    move-result-object v2

    .line 14
    iget v3, v1, LRS0;->a:I

    .line 15
    invoke-static {v3}, LsS0;->a(I)I

    move-result v3

    const-string v4, "Android.BackgroundTaskScheduler.TaskStarted"

    invoke-virtual {v2, v4, v3}, LsS0;->a(Ljava/lang/String;I)V

    .line 16
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 17
    new-instance v3, LWR0;

    invoke-direct {v3, p0, v0, p1}, LWR0;-><init>(Lorg/chromium/components/background_task_scheduler/BackgroundTaskJobService;LLR0;Landroid/app/job/JobParameters;)V

    invoke-interface {v0, v2, v1, v3}, LLR0;->a(Landroid/content/Context;LRS0;LKR0;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 18
    iget-object v1, p0, Lorg/chromium/components/background_task_scheduler/BackgroundTaskJobService;->x:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 5

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-object v0, p0, Lorg/chromium/components/background_task_scheduler/BackgroundTaskJobService;->x:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Failed to stop job, because job with job id "

    .line 3
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not exist."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "BkgrdTaskJS"

    invoke-static {v2, p1, v1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/chromium/components/background_task_scheduler/BackgroundTaskJobService;->x:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLR0;

    .line 5
    invoke-static {p1}, LnS0;->a(Landroid/app/job/JobParameters;)LRS0;

    move-result-object v1

    .line 6
    invoke-static {}, LsS0;->b()LsS0;

    move-result-object v2

    .line 7
    iget v3, v1, LRS0;->a:I

    .line 8
    invoke-static {v3}, LsS0;->a(I)I

    move-result v3

    const-string v4, "Android.BackgroundTaskScheduler.TaskStopped"

    invoke-virtual {v2, v4, v3}, LsS0;->a(Ljava/lang/String;I)V

    .line 9
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 10
    invoke-interface {v0, v2, v1}, LLR0;->a(Landroid/content/Context;LRS0;)Z

    move-result v0

    .line 11
    iget-object v1, p0, Lorg/chromium/components/background_task_scheduler/BackgroundTaskJobService;->x:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public setTheme(I)V
    .locals 0

    invoke-static {}, LbY;->b()Z

    invoke-super {p0, p1}, Landroid/app/job/JobService;->setTheme(I)V

    return-void
.end method
