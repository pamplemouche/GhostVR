.class Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector$1;
.super Ljava/lang/Object;
.source "ProcessErrorMonitorANRDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->onErrorDetected(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;


# direct methods
.method constructor <init>(Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector$1;->this$0:Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector$1;->this$0:Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;

    invoke-static {v0}, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->access$000(Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;)V

    .line 137
    return-void
.end method
