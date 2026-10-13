.class Llibraries/marauder/analytics/DefaultAnalyticsLogger$1;
.super Landroid/os/Handler;
.source "DefaultAnalyticsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibraries/marauder/analytics/DefaultAnalyticsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;


# direct methods
.method constructor <init>(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)V
    .locals 0
    .param p1, "this$0"    # Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    .prologue
    .line 76
    iput-object p1, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$1;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 80
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 81
    iget-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$1;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-static {v0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->access$000(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$1;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    new-instance v1, Llibraries/marauder/analytics/DefaultAnalyticsLogger$StoreBatchRunnable;

    iget-object v2, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$1;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-direct {v1, v2, v3}, Llibraries/marauder/analytics/DefaultAnalyticsLogger$StoreBatchRunnable;-><init>(Llibraries/marauder/analytics/DefaultAnalyticsLogger;Llibraries/marauder/analytics/DefaultAnalyticsLogger$1;)V

    invoke-static {v0, v1}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->access$200(Llibraries/marauder/analytics/DefaultAnalyticsLogger;Ljava/lang/Runnable;)V

    .line 84
    iget-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$1;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    new-instance v1, Llibraries/marauder/analytics/DefaultAnalyticsLogger$UploadRunnable;

    iget-object v2, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$1;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-direct {v1, v2, v3}, Llibraries/marauder/analytics/DefaultAnalyticsLogger$UploadRunnable;-><init>(Llibraries/marauder/analytics/DefaultAnalyticsLogger;Llibraries/marauder/analytics/DefaultAnalyticsLogger$1;)V

    invoke-static {v0, v1}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->access$200(Llibraries/marauder/analytics/DefaultAnalyticsLogger;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
