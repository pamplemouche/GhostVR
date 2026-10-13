.class Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams$ReSchedulingWakeLockCallback;
.super Ljava/lang/Object;
.source "UploadServiceLogic.java"

# interfaces
.implements Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReSchedulingWakeLockCallback"
.end annotation


# instance fields
.field private final mUploadScheduler:Lcom/facebook/analytics2/logger/UploadScheduler;

.field final synthetic this$0:Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;


# direct methods
.method public constructor <init>(Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;Lcom/facebook/analytics2/logger/UploadScheduler;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams$ReSchedulingWakeLockCallback;->this$0:Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    iput-object p2, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams$ReSchedulingWakeLockCallback;->mUploadScheduler:Lcom/facebook/analytics2/logger/UploadScheduler;

    .line 491
    return-void
.end method


# virtual methods
.method public onExit()V
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams$ReSchedulingWakeLockCallback;->this$0:Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->access$500(Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams$ReSchedulingWakeLockCallback;->this$0:Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->access$500(Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 510
    :cond_0
    return-void
.end method

.method public onVoluntaryCompletion(Z)V
    .locals 8

    .prologue
    .line 495
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams$ReSchedulingWakeLockCallback;->this$0:Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->access$200(Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;)Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams$ReSchedulingWakeLockCallback;->mUploadScheduler:Lcom/facebook/analytics2/logger/UploadScheduler;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams$ReSchedulingWakeLockCallback;->this$0:Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;

    .line 497
    invoke-static {v1}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->access$300(Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;)I

    move-result v1

    iget-object v2, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams$ReSchedulingWakeLockCallback;->this$0:Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;

    .line 498
    invoke-static {v2}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->access$200(Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;)Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;->action:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams$ReSchedulingWakeLockCallback;->this$0:Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;

    .line 499
    invoke-static {v3}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->access$400(Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;)Lcom/facebook/analytics2/logger/UploadJobConfig;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams$ReSchedulingWakeLockCallback;->this$0:Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;

    .line 500
    invoke-static {v4}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->access$200(Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;)Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;

    move-result-object v4

    iget-wide v4, v4, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;->minDelayMs:J

    iget-object v6, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams$ReSchedulingWakeLockCallback;->this$0:Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;

    .line 501
    invoke-static {v6}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->access$200(Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;)Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;

    move-result-object v6

    iget-wide v6, v6, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;->maxDelayMs:J

    .line 496
    invoke-virtual/range {v0 .. v7}, Lcom/facebook/analytics2/logger/UploadScheduler;->schedule(ILjava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;JJ)V

    .line 503
    :cond_0
    return-void
.end method
