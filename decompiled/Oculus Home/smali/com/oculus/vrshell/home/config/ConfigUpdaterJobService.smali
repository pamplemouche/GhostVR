.class public Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;
.super Landroid/app/job/JobService;
.source "ConfigUpdaterJobService.java"


# static fields
.field private static final JOB_ID_CONFIG_CLEAR:I = -0x28567131

.field private static final JOB_ID_CONFIG_UPDATE:I = -0x28567132

.field private static final REFRESH_INTERVAL_MS:J = 0x1b77400L

.field private static final TAG:Ljava/lang/String;

.field private static final mConfigUpdater:Lcom/oculus/vrshell/home/config/ConfigUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;->TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/oculus/vrshell/home/config/ConfigUpdater;

    invoke-direct {v0}, Lcom/oculus/vrshell/home/config/ConfigUpdater;-><init>()V

    sput-object v0, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;->mConfigUpdater:Lcom/oculus/vrshell/home/config/ConfigUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 39
    :try_start_0
    const-string v1, "home"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConfigUpdaterJobService() loadLibrary FAIL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic access$000()Lcom/oculus/vrshell/home/config/ConfigUpdater;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;->mConfigUpdater:Lcom/oculus/vrshell/home/config/ConfigUpdater;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;Landroid/app/job/JobParameters;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;
    .param p1, "x1"    # Landroid/app/job/JobParameters;
    .param p2, "x2"    # Ljava/lang/Exception;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;->onFailed(Landroid/app/job/JobParameters;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;Landroid/app/job/JobParameters;)V
    .locals 0
    .param p0, "x0"    # Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;
    .param p1, "x1"    # Landroid/app/job/JobParameters;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;->onSucceed(Landroid/app/job/JobParameters;)V

    return-void
.end method

.method private static getJobScheduler(Landroid/content/Context;)Landroid/app/job/JobScheduler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 243
    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    return-object v0
.end method

.method private static isJobScheduled(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jobId"    # I

    .prologue
    .line 233
    invoke-static {p0}, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;->getJobScheduler(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v1

    .line 234
    .local v1, "scheduledJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo;

    .line 235
    .local v0, "jobInfo":Landroid/app/job/JobInfo;
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 236
    const/4 v2, 0x1

    .line 239
    .end local v0    # "jobInfo":Landroid/app/job/JobInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onFailed(Landroid/app/job/JobParameters;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .param p2, "error"    # Ljava/lang/Exception;

    .prologue
    .line 115
    sget-object v0, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;->TAG:Ljava/lang/String;

    const-string v1, "onFailed()"

    invoke-static {v0, v1, p2}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    invoke-static {}, Lcom/oculus/vrshell/home/HomeApplication;->flushAnalytics()V

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 118
    return-void
.end method

.method private onSucceed(Landroid/app/job/JobParameters;)V
    .locals 2
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    .line 109
    sget-object v0, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;->TAG:Ljava/lang/String;

    const-string v1, "onSucceed()"

    invoke-static {v0, v1}, Llibraries/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/oculus/vrshell/home/HomeApplication;->flushAnalytics()V

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 112
    return-void
.end method

.method private static postOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 105
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    return-void
.end method

.method public static schedule(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v3, -0x28567132

    const/4 v4, 0x1

    .line 132
    sget-object v0, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;->TAG:Ljava/lang/String;

    const-string v1, "schedule()"

    invoke-static {v0, v1}, Llibraries/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {p0, v3}, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;->isJobScheduled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;->TAG:Ljava/lang/String;

    const-string v1, "schedule(): already scheduled."

    invoke-static {v0, v1}, Llibraries/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :goto_0
    return-void

    .line 140
    :cond_0
    const-string v0, "oculus_config"

    const-string v1, "status"

    const-string v2, "config_updater_schedule_started"

    invoke-static {v0, v1, v2}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;

    .line 147
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v3, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/32 v2, 0x1b77400

    .line 149
    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 152
    invoke-virtual {v0, v4}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 154
    invoke-virtual {v0, v4}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    const-wide/16 v2, 0x7530

    .line 155
    invoke-virtual {v0, v2, v3, v4}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v7

    .line 158
    .local v7, "jobInfo":Landroid/app/job/JobInfo;
    invoke-static {p0}, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;->getJobScheduler(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v8

    .line 160
    .local v8, "scheduleResult":I
    if-eq v8, v4, :cond_1

    .line 161
    sget-object v0, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;->TAG:Ljava/lang/String;

    const-string v1, "schedule(): failed"

    invoke-static {v0, v1}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v0, "oculus_config"

    const-string v1, "status"

    const-string v2, "config_updater_schedule_failed"

    const-string v3, "error"

    const-string v4, "schedule_failed"

    const-string v5, "error_details"

    .line 169
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 162
    invoke-static/range {v0 .. v6}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/oculus/vrshell/home/HomeApplication;->flushAnalytics()V

    goto :goto_0

    .line 174
    :cond_1
    sget-object v0, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;->TAG:Ljava/lang/String;

    const-string v1, "schedule(): success."

    invoke-static {v0, v1}, Llibraries/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v0, "oculus_config"

    const-string v1, "status"

    const-string v2, "config_updater_schedule_completed"

    invoke-static {v0, v1, v2}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static unschedule(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const v3, -0x28567131

    .line 186
    sget-object v0, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;->TAG:Ljava/lang/String;

    const-string v1, "unschedule()"

    invoke-static {v0, v1}, Llibraries/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {p0}, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;->getJobScheduler(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    move-result-object v0

    const v1, -0x28567132

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 190
    invoke-static {p0, v3}, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;->isJobScheduled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    sget-object v0, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;->TAG:Ljava/lang/String;

    const-string v1, "unschedule(): already unscheduled."

    invoke-static {v0, v1}, Llibraries/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :goto_0
    return-void

    .line 196
    :cond_0
    const-string v0, "oculus_config"

    const-string v1, "status"

    const-string v2, "config_updater_unschedule_started"

    invoke-static {v0, v1, v2}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;

    .line 203
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v3, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/16 v2, 0x0

    .line 204
    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    const-wide/16 v2, 0x7530

    .line 205
    invoke-virtual {v0, v2, v3, v4}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v7

    .line 208
    .local v7, "jobInfo":Landroid/app/job/JobInfo;
    invoke-static {p0}, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;->getJobScheduler(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v8

    .line 210
    .local v8, "scheduleResult":I
    if-eq v8, v4, :cond_1

    .line 211
    sget-object v0, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;->TAG:Ljava/lang/String;

    const-string v1, "unschedule(): failed"

    invoke-static {v0, v1}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v0, "oculus_config"

    const-string v1, "status"

    const-string v2, "config_updater_unschedule_failed"

    const-string v3, "error"

    const-string v4, "clear_schedule_failed"

    const-string v5, "error_details"

    .line 219
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 212
    invoke-static/range {v0 .. v6}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/oculus/vrshell/home/HomeApplication;->flushAnalytics()V

    goto :goto_0

    .line 224
    :cond_1
    const-string v0, "oculus_config"

    const-string v1, "status"

    const-string v2, "config_updater_unschedule_completed"

    invoke-static {v0, v1, v2}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    sget-object v0, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;->TAG:Ljava/lang/String;

    const-string v1, "unschedule(): success."

    invoke-static {v0, v1}, Llibraries/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 5
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    .line 47
    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {p0, v2, v3}, Lcom/oculus/vrshell/home/CrashReporting;->initialize(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 50
    new-instance v2, Lcom/oculus/vrshell/home/HomeUserAgentBuilder;

    invoke-direct {v2}, Lcom/oculus/vrshell/home/HomeUserAgentBuilder;-><init>()V

    const-string v3, "OculusHomeShell"

    invoke-static {p0, v2, v3}, Lcom/oculus/device/NetworkHeaders;->init(Landroid/content/Context;Lcom/oculus/device/IUserAgentBuilder;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    .line 53
    .local v1, "jobId":I
    sget-object v2, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;->TAG:Ljava/lang/String;

    const-string v3, "onStartJob id=%d"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Llibraries/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    move-object v0, p0

    .line 64
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService$1;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService$1;-><init>(Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;ILandroid/content/Context;Landroid/app/job/JobParameters;)V

    invoke-static {v2}, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 100
    const/4 v2, 0x1

    return v2
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    .line 122
    sget-object v0, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;->TAG:Ljava/lang/String;

    const-string v1, "onStopJob()"

    invoke-static {v0, v1}, Llibraries/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const/4 v0, 0x1

    return v0
.end method
