.class public Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService;
.super Landroid/app/job/JobService;
.source "BugReporterCleanerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService$CommandProcessor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCurrProcessor:Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService$CommandProcessor;

.field private mParams:Landroid/app/job/JobParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 21
    new-instance v0, Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService$CommandProcessor;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService$CommandProcessor;-><init>(Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService;)V

    iput-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService;->mCurrProcessor:Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService$CommandProcessor;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService;)Landroid/app/job/JobParameters;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService;->mParams:Landroid/app/job/JobParameters;

    return-object v0
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService;->TAG:Ljava/lang/String;

    const-string v1, "job running"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iput-object p1, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService;->mParams:Landroid/app/job/JobParameters;

    .line 68
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService;->mCurrProcessor:Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService$CommandProcessor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService$CommandProcessor;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 75
    sget-object v0, Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService;->TAG:Ljava/lang/String;

    const-string v1, "job interrupted"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService;->mCurrProcessor:Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService$CommandProcessor;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService$CommandProcessor;->cancel(Z)Z

    .line 77
    return v2
.end method
