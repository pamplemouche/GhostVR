.class Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$StoreBatchRunnable;
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
    name = "StoreBatchRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;


# direct methods
.method private constructor <init>(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$StoreBatchRunnable;->this$0:Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$1;)V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$StoreBatchRunnable;-><init>(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$StoreBatchRunnable;->this$0:Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->access$1000(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;)V

    .line 262
    return-void
.end method
