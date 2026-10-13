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

    .line 485
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams$ReSchedulingWakeLockCallback;->this$0:Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    iput-object p2, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams$ReSchedulingWakeLockCallback;->mUploadScheduler:Lcom/facebook/analytics2/logger/UploadScheduler;

    return-void
.end method


# virtual methods
.method public onExit()V
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams$ReSchedulingWakeLockCallback;->this$0:Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->access$500(Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams$ReSchedulingWakeLockCallback;->this$0:Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->access$500(Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method public onVoluntaryCompletion(Z)V
    .locals 8

    if-eqz p1, :cond_0

    .line 491
    iget-object p1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams$ReSchedulingWakeLockCallback;->this$0:Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;

    invoke-static {p1}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->access$200(Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;)Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 492
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams$ReSchedulingWakeLockCallback;->mUploadScheduler:Lcom/facebook/analytics2/logger/UploadScheduler;

    iget-object p1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams$ReSchedulingWakeLockCallback;->this$0:Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;

    .line 493
    invoke-static {p1}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->access$300(Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;)I

    move-result v1

    iget-object p1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams$ReSchedulingWakeLockCallback;->this$0:Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;

    .line 494
    invoke-static {p1}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->access$200(Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;)Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;

    move-result-object p1

    iget-object v2, p1, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;->action:Ljava/lang/String;

    iget-object p1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams$ReSchedulingWakeLockCallback;->this$0:Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;

    .line 495
    invoke-static {p1}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->access$400(Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;)Lcom/facebook/analytics2/logger/UploadJobConfig;

    move-result-object v3

    iget-object p1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams$ReSchedulingWakeLockCallback;->this$0:Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;

    .line 496
    invoke-static {p1}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->access$200(Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;)Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;

    move-result-object p1

    iget-wide v4, p1, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;->minDelayMs:J

    iget-object p1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams$ReSchedulingWakeLockCallback;->this$0:Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;

    .line 497
    invoke-static {p1}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->access$200(Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;)Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;

    move-result-object p1

    iget-wide v6, p1, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;->maxDelayMs:J

    .line 492
    invoke-virtual/range {v0 .. v7}, Lcom/facebook/analytics2/logger/UploadScheduler;->schedule(ILjava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;JJ)V

    :cond_0
    return-void
.end method
