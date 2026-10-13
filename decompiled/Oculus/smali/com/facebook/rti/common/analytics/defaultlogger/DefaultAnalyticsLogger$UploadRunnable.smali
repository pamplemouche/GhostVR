.class Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$UploadRunnable;
.super Ljava/lang/Object;
.source "DefaultAnalyticsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;


# direct methods
.method private constructor <init>(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$UploadRunnable;->this$0:Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$1;)V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$UploadRunnable;-><init>(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$UploadRunnable;->this$0:Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->access$1100(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;)Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsUploader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsUploader;->uploadAllBatches()Z

    .line 270
    return-void
.end method
