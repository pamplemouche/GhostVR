.class Lcom/facebook/analytics2/logger/LollipopUploadService$JobFinishedJobFinishedNotifier;
.super Ljava/lang/Object;
.source "LollipopUploadService.java"

# interfaces
.implements Lcom/facebook/analytics2/logger/UploadServiceLogic$JobFinishedNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/LollipopUploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JobFinishedJobFinishedNotifier"
.end annotation


# instance fields
.field private final mJobParameters:Landroid/app/job/JobParameters;

.field final synthetic this$0:Lcom/facebook/analytics2/logger/LollipopUploadService;


# direct methods
.method public constructor <init>(Lcom/facebook/analytics2/logger/LollipopUploadService;Landroid/app/job/JobParameters;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/facebook/analytics2/logger/LollipopUploadService$JobFinishedJobFinishedNotifier;->this$0:Lcom/facebook/analytics2/logger/LollipopUploadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p2, p0, Lcom/facebook/analytics2/logger/LollipopUploadService$JobFinishedJobFinishedNotifier;->mJobParameters:Landroid/app/job/JobParameters;

    .line 74
    return-void
.end method


# virtual methods
.method public onVoluntaryCompletion(Z)V
    .locals 4

    .prologue
    .line 78
    const-string v0, "PostLolliopUploadService"

    const-string v1, "onVoluntaryCompletion callback fired for jobId: %d needsReschedule: %s"

    iget-object v2, p0, Lcom/facebook/analytics2/logger/LollipopUploadService$JobFinishedJobFinishedNotifier;->mJobParameters:Landroid/app/job/JobParameters;

    .line 81
    invoke-virtual {v2}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 82
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 78
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/facebook/analytics2/logger/LollipopUploadService$JobFinishedJobFinishedNotifier;->this$0:Lcom/facebook/analytics2/logger/LollipopUploadService;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/LollipopUploadService$JobFinishedJobFinishedNotifier;->mJobParameters:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, p1}, Lcom/facebook/analytics2/logger/LollipopUploadService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 84
    return-void
.end method
