.class public Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService;
.super Landroid/app/job/JobService;
.source "VideoUploaderCleanerService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService$CommandProcessor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCurrProcessor:Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService$CommandProcessor;

.field private mParams:Landroid/app/job/JobParameters;

.field mVideoUploaderCleanerServiceManager:Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 30
    new-instance v0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService$CommandProcessor;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService$CommandProcessor;-><init>(Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService;)V

    iput-object v0, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService;->mCurrProcessor:Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService$CommandProcessor;

    .line 32
    new-instance v0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerServiceManager;

    invoke-direct {v0}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerServiceManager;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService;->mVideoUploaderCleanerServiceManager:Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerServiceManager;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService;)Landroid/app/job/JobParameters;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService;->mParams:Landroid/app/job/JobParameters;

    return-object v0
.end method

.method public static schedule(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/16 v4, 0x2000

    const/4 v6, 0x1

    .line 70
    new-instance v2, Landroid/content/ComponentName;

    const-class v0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService;

    invoke-direct {v2, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 73
    invoke-virtual {v0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobInfo;

    .line 74
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 75
    sget-object v0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService;->TAG:Ljava/lang/String;

    const-string v1, "not scheduling cleanup service; already scheduled"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :goto_0
    return-void

    .line 80
    :cond_1
    sget-object v1, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "scheduling cleanup service"

    invoke-static {v1, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v1, v4, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    .line 83
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 84
    invoke-virtual {v1, v6}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 85
    invoke-virtual {v1, v6}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v0

    .line 88
    sget-object v1, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService;->TAG:Ljava/lang/String;

    const-string v2, "cleanup schedule result: %s"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService;->TAG:Ljava/lang/String;

    const-string v1, "onStartJob"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService;->mParams:Landroid/app/job/JobParameters;

    .line 56
    iget-object v0, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService;->mCurrProcessor:Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService$CommandProcessor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService$CommandProcessor;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 63
    sget-object v0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService;->TAG:Ljava/lang/String;

    const-string v1, "onStopJob"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService;->mCurrProcessor:Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService$CommandProcessor;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerService$CommandProcessor;->cancel(Z)Z

    .line 65
    return v2
.end method
