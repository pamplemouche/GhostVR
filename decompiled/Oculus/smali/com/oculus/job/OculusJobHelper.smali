.class public abstract Lcom/oculus/job/OculusJobHelper;
.super Ljava/lang/Object;
.source "OculusJobHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/job/OculusJobHelper$Result;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mJobID:I

.field private final mServiceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/job/JobService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/job/JobService;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/oculus/job/OculusJobHelper;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/oculus/job/OculusJobHelper;->mServiceClass:Ljava/lang/Class;

    .line 35
    iput p3, p0, Lcom/oculus/job/OculusJobHelper;->mJobID:I

    .line 36
    return-void
.end method

.method public static equalsShallow(Landroid/app/job/JobInfo;Landroid/app/job/JobInfo;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v0

    .line 128
    :cond_1
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 136
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 140
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v1

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 144
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v1

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 148
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 152
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getJobScheduler()Landroid/app/job/JobScheduler;
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/oculus/job/OculusJobHelper;->mContext:Landroid/content/Context;

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    return-object v0
.end method

.method public static postOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 184
    invoke-static {}, Lcom/oculus/executors/OculusThreadExecutor;->getInstance()Lcom/oculus/executors/OculusThreadExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oculus/executors/OculusThreadExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 185
    return-void
.end method

.method private scheduleInternal()Lcom/oculus/job/OculusJobHelper$Result;
    .locals 5

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/oculus/job/OculusJobHelper;->shouldSchedule()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    sget-object v0, Lcom/oculus/job/OculusJobHelper$Result;->SKIPPED:Lcom/oculus/job/OculusJobHelper$Result;

    .line 86
    :goto_0
    return-object v0

    .line 72
    :cond_0
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    iget v1, p0, Lcom/oculus/job/OculusJobHelper;->mJobID:I

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/oculus/job/OculusJobHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/oculus/job/OculusJobHelper;->mServiceClass:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 74
    invoke-virtual {p0, v0}, Lcom/oculus/job/OculusJobHelper;->configureJob(Landroid/app/job/JobInfo$Builder;)Landroid/app/job/JobInfo;

    move-result-object v0

    .line 76
    invoke-virtual {p0, v0}, Lcom/oculus/job/OculusJobHelper;->isScheduled(Landroid/app/job/JobInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    sget-object v0, Lcom/oculus/job/OculusJobHelper$Result;->SKIPPED_DUPLICATE:Lcom/oculus/job/OculusJobHelper$Result;

    goto :goto_0

    .line 80
    :cond_1
    invoke-direct {p0}, Lcom/oculus/job/OculusJobHelper;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v0

    .line 82
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 83
    sget-object v0, Lcom/oculus/job/OculusJobHelper$Result;->FAILED:Lcom/oculus/job/OculusJobHelper$Result;

    goto :goto_0

    .line 86
    :cond_2
    sget-object v0, Lcom/oculus/job/OculusJobHelper$Result;->SCHEDULED:Lcom/oculus/job/OculusJobHelper$Result;

    goto :goto_0
.end method


# virtual methods
.method public abstract configureJob(Landroid/app/job/JobInfo$Builder;)Landroid/app/job/JobInfo;
.end method

.method public isScheduled(Landroid/app/job/JobInfo;)Z
    .locals 2

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/oculus/job/OculusJobHelper;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo;

    .line 110
    invoke-static {v0, p1}, Lcom/oculus/job/OculusJobHelper;->equalsShallow(Landroid/app/job/JobInfo;Landroid/app/job/JobInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScheduleResult(Lcom/oculus/job/OculusJobHelper$Result;)V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public schedule()Lcom/oculus/job/OculusJobHelper$Result;
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/oculus/job/OculusJobHelper;->scheduleInternal()Lcom/oculus/job/OculusJobHelper$Result;

    move-result-object v0

    .line 62
    invoke-virtual {p0, v0}, Lcom/oculus/job/OculusJobHelper;->onScheduleResult(Lcom/oculus/job/OculusJobHelper$Result;)V

    .line 63
    return-object v0
.end method

.method public setPersistedWithPermissionCheck(Landroid/app/job/JobInfo$Builder;)Landroid/app/job/JobInfo$Builder;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/oculus/job/OculusJobHelper;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-static {v0, v1}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 164
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 169
    :goto_0
    return-object p1

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/oculus/job/OculusJobHelper;->mServiceClass:Ljava/lang/Class;

    const-string v1, "Did not enable job persistence due to missing permission."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract shouldSchedule()Z
.end method

.method public unschedule()V
    .locals 2

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/oculus/job/OculusJobHelper;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v0

    iget v1, p0, Lcom/oculus/job/OculusJobHelper;->mJobID:I

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 92
    return-void
.end method
