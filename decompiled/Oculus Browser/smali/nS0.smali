.class public LnS0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LaS0;


# static fields
.field public static a:LlS0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, LkS0;->a:LlS0;

    sput-object v0, LnS0;->a:LlS0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/job/JobParameters;)LRS0;
    .locals 2

    .line 13
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    .line 14
    new-instance v1, LQS0;

    invoke-direct {v1, v0}, LQS0;-><init>(I)V

    .line 15
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    const-string v0, "_background_task_extras"

    .line 16
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p0

    .line 17
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 18
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 19
    iput-object v0, v1, LQS0;->b:Landroid/os/Bundle;

    .line 20
    new-instance p0, LRS0;

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, LRS0;-><init>(LQS0;LPS0;)V

    return-object p0
.end method

.method public static a(Landroid/app/job/JobParameters;J)Z
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    const-string v1, "_background_task_schedule_time"

    .line 2
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v1, "_background_task_end_time"

    .line 4
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    add-long/2addr v3, v1

    cmp-long p0, p1, v3

    if-ltz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    const-string v1, "_background_task_interval_time"

    .line 6
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 7
    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-gez v7, :cond_3

    .line 8
    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v1

    :cond_3
    move-wide v5, v1

    .line 9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_4

    return v0

    .line 10
    :cond_4
    invoke-static {}, Landroid/app/job/JobInfo;->getMinFlexMillis()J

    move-result-wide v0

    const-string v2, "_background_task_flex_time"

    .line 11
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    move-wide v9, p1

    .line 12
    invoke-static/range {v3 .. v10}, LLS0;->a(JJJJ)Z

    move-result p0

    return p0

    :cond_5
    :goto_0
    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;I)V
    .locals 1

    .line 83
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    const-string v0, "jobscheduler"

    .line 84
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobScheduler;

    .line 85
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/app/job/JobScheduler;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Failed to cancel task: "

    .line 86
    invoke-static {p1, p2}, LZi;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "BkgrdTaskSchedulerJS"

    invoke-static {v0, p1, p2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;LOS0;)Z
    .locals 10

    .line 21
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 22
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 23
    iget-object v1, p2, LOS0;->b:Landroid/os/Bundle;

    .line 24
    new-instance v2, Landroid/os/PersistableBundle;

    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    .line 25
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 26
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 27
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    .line 28
    invoke-virtual {v2, v5, v6}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :cond_0
    instance-of v6, v7, Ljava/lang/Boolean;

    if-eqz v6, :cond_1

    .line 30
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 31
    :cond_1
    instance-of v6, v7, [Z

    if-eqz v6, :cond_2

    .line 32
    check-cast v7, [Z

    invoke-virtual {v2, v5, v7}, Landroid/os/PersistableBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto :goto_0

    .line 33
    :cond_2
    instance-of v6, v7, Ljava/lang/Double;

    if-eqz v6, :cond_3

    .line 34
    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 35
    :cond_3
    instance-of v6, v7, [D

    if-eqz v6, :cond_4

    .line 36
    check-cast v7, [D

    invoke-virtual {v2, v5, v7}, Landroid/os/PersistableBundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_0

    .line 37
    :cond_4
    instance-of v6, v7, Ljava/lang/Integer;

    if-eqz v6, :cond_5

    .line 38
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 39
    :cond_5
    instance-of v6, v7, [I

    if-eqz v6, :cond_6

    .line 40
    check-cast v7, [I

    invoke-virtual {v2, v5, v7}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_0

    .line 41
    :cond_6
    instance-of v6, v7, Ljava/lang/Long;

    if-eqz v6, :cond_7

    .line 42
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 43
    :cond_7
    instance-of v6, v7, [J

    if-eqz v6, :cond_8

    .line 44
    check-cast v7, [J

    invoke-virtual {v2, v5, v7}, Landroid/os/PersistableBundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_0

    .line 45
    :cond_8
    instance-of v6, v7, Ljava/lang/String;

    if-eqz v6, :cond_9

    .line 46
    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v5, v7}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 47
    :cond_9
    instance-of v6, v7, [Ljava/lang/String;

    if-eqz v6, :cond_a

    .line 48
    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v2, v5, v7}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 49
    :cond_a
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 50
    :cond_b
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_1

    :cond_c
    const/4 v1, 0x0

    :goto_1
    const-string v6, "BkgrdTaskSchedulerJS"

    if-eqz v1, :cond_f

    const-string v1, "Failed converting extras to PersistableBundle: "

    .line 51
    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "{"

    .line 52
    invoke-static {v7}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 53
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v8, 0x1

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-nez v8, :cond_d

    const-string v8, ", "

    .line 54
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    :cond_d
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    goto :goto_2

    :cond_e
    const-string v3, "}"

    .line 56
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 58
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    .line 59
    invoke-static {v6, v1, v3}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    const-string v1, "_background_task_extras"

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 61
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    .line 62
    iget v2, p2, LOS0;->a:I

    .line 63
    new-instance v3, Landroid/content/ComponentName;

    const-class v7, Lorg/chromium/components/background_task_scheduler/BackgroundTaskJobService;

    invoke-direct {v3, p1, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 64
    iget-boolean v2, p2, LOS0;->e:Z

    .line 65
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 66
    iget-boolean v2, p2, LOS0;->d:Z

    .line 67
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 68
    iget v2, p2, LOS0;->c:I

    .line 69
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 70
    new-instance v2, LmS0;

    invoke-direct {v2, v1, v0}, LmS0;-><init>(Landroid/app/job/JobInfo$Builder;Landroid/os/PersistableBundle;)V

    .line 71
    iget-object v0, p2, LOS0;->g:LMS0;

    .line 72
    invoke-interface {v0, v2}, LMS0;->a(LNS0;)V

    .line 73
    iget-object v0, v2, LmS0;->a:Landroid/app/job/JobInfo$Builder;

    .line 74
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    const-string v1, "jobscheduler"

    .line 75
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobScheduler;

    .line 76
    iget-boolean v1, p2, LOS0;->f:Z

    if-nez v1, :cond_12

    .line 77
    iget p2, p2, LOS0;->a:I

    .line 78
    invoke-virtual {p1}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v1

    .line 79
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobInfo;

    .line 80
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    if-ne v2, p2, :cond_10

    const/4 p2, 0x1

    goto :goto_3

    :cond_11
    const/4 p2, 0x0

    :goto_3
    if-eqz p2, :cond_12

    return v5

    .line 81
    :cond_12
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v5, :cond_13

    const/4 v4, 0x1

    :cond_13
    return v4

    :catch_0
    move-exception p1

    new-array p2, v5, [Ljava/lang/Object;

    aput-object p1, p2, v4

    const-string p1, "Unable to schedule with Android."

    .line 82
    invoke-static {v6, p1, p2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4
.end method
