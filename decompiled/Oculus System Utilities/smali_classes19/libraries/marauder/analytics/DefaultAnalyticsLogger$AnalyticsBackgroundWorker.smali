.class Llibraries/marauder/analytics/DefaultAnalyticsLogger$AnalyticsBackgroundWorker;
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
    name = "AnalyticsBackgroundWorker"
.end annotation


# instance fields
.field final synthetic this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;


# direct methods
.method private constructor <init>(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$AnalyticsBackgroundWorker;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llibraries/marauder/analytics/DefaultAnalyticsLogger;Llibraries/marauder/analytics/DefaultAnalyticsLogger$1;)V
    .locals 0
    .param p1, "x0"    # Llibraries/marauder/analytics/DefaultAnalyticsLogger;
    .param p2, "x1"    # Llibraries/marauder/analytics/DefaultAnalyticsLogger$1;

    .prologue
    .line 355
    invoke-direct {p0, p1}, Llibraries/marauder/analytics/DefaultAnalyticsLogger$AnalyticsBackgroundWorker;-><init>(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)V

    return-void
.end method

.method private maybeUploadLowLatencySession()V
    .locals 10

    .prologue
    .line 369
    iget-object v3, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$AnalyticsBackgroundWorker;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-static {v3}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->access$1100(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)Llibraries/marauder/analytics/AnalyticsSession;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$AnalyticsBackgroundWorker;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-static {v3}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->access$1100(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)Llibraries/marauder/analytics/AnalyticsSession;

    move-result-object v3

    invoke-virtual {v3}, Llibraries/marauder/analytics/AnalyticsSession;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x1388

    add-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 372
    const-string v3, "DefaultAnalyticsLogger"

    const-string v4, "Sending low-latency session"

    invoke-static {v3, v4}, Llibraries/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const/4 v0, 0x0

    .line 377
    .local v0, "batchFile":Ljava/io/File;
    :try_start_0
    iget-object v3, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$AnalyticsBackgroundWorker;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-static {v3}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->access$1200(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)Llibraries/marauder/analytics/AnalyticsStorage;

    move-result-object v3

    iget-object v4, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$AnalyticsBackgroundWorker;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-static {v4}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->access$1100(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)Llibraries/marauder/analytics/AnalyticsSession;

    move-result-object v4

    invoke-virtual {v3, v4}, Llibraries/marauder/analytics/AnalyticsStorage;->store(Llibraries/marauder/analytics/AnalyticsSession;)Ljava/io/File;

    move-result-object v0

    .line 378
    iget-object v3, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$AnalyticsBackgroundWorker;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->access$1102(Llibraries/marauder/analytics/DefaultAnalyticsLogger;Llibraries/marauder/analytics/AnalyticsSession;)Llibraries/marauder/analytics/AnalyticsSession;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_0
    if-eqz v0, :cond_0

    .line 386
    iget-object v3, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$AnalyticsBackgroundWorker;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-virtual {v3}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->beforeUpload()V

    .line 387
    iget-object v3, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$AnalyticsBackgroundWorker;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-virtual {v3}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->isUploadAllowed()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$AnalyticsBackgroundWorker;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-static {v3}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->access$1300(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)Llibraries/marauder/analytics/AnalyticsUploader;

    move-result-object v3

    invoke-virtual {v3, v0}, Llibraries/marauder/analytics/AnalyticsUploader;->uploadBatch(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 389
    .local v2, "result":Z
    :goto_1
    iget-object v3, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$AnalyticsBackgroundWorker;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-virtual {v3, v2}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->afterUpload(Z)V

    .line 392
    .end local v0    # "batchFile":Ljava/io/File;
    .end local v2    # "result":Z
    :cond_0
    return-void

    .line 379
    .restart local v0    # "batchFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 380
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "DefaultAnalyticsLogger"

    const-string v4, "Unable to store batch"

    invoke-static {v3, v4, v1}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 387
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$AnalyticsBackgroundWorker;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-static {v0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->access$900(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 361
    :goto_0
    iget-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$AnalyticsBackgroundWorker;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-static {v0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->access$1000(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$AnalyticsBackgroundWorker;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-static {v0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->access$1000(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 365
    :cond_0
    invoke-direct {p0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger$AnalyticsBackgroundWorker;->maybeUploadLowLatencySession()V

    .line 366
    return-void
.end method
