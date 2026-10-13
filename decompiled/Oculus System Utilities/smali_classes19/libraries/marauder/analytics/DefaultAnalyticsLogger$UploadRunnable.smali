.class Llibraries/marauder/analytics/DefaultAnalyticsLogger$UploadRunnable;
.super Ljava/lang/Object;
.source "DefaultAnalyticsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibraries/marauder/analytics/DefaultAnalyticsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;


# direct methods
.method private constructor <init>(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$UploadRunnable;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llibraries/marauder/analytics/DefaultAnalyticsLogger;Llibraries/marauder/analytics/DefaultAnalyticsLogger$1;)V
    .locals 0
    .param p1, "x0"    # Llibraries/marauder/analytics/DefaultAnalyticsLogger;
    .param p2, "x1"    # Llibraries/marauder/analytics/DefaultAnalyticsLogger$1;

    .prologue
    .line 514
    invoke-direct {p0, p1}, Llibraries/marauder/analytics/DefaultAnalyticsLogger$UploadRunnable;-><init>(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 518
    iget-object v1, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$UploadRunnable;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-static {v1}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->access$2100(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)V

    .line 520
    invoke-static {}, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;->getInstance()Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;

    move-result-object v1

    invoke-virtual {v1}, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;->isAppBackgrounded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    iget-object v1, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$UploadRunnable;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-virtual {v1}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->beforeUpload()V

    .line 522
    iget-object v1, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$UploadRunnable;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-virtual {v1}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->isUploadAllowed()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$UploadRunnable;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-static {v1}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->access$1300(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)Llibraries/marauder/analytics/AnalyticsUploader;

    move-result-object v1

    invoke-virtual {v1}, Llibraries/marauder/analytics/AnalyticsUploader;->uploadAllBatches()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 524
    .local v0, "result":Z
    :goto_0
    iget-object v1, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$UploadRunnable;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-virtual {v1, v0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->afterUpload(Z)V

    .line 526
    .end local v0    # "result":Z
    :cond_0
    return-void

    .line 522
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
