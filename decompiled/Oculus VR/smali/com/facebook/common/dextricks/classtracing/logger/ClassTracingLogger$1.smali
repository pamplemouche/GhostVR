.class final Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger$1;
.super Ljava/lang/Object;
.source "ClassTracingLogger.java"

# interfaces
.implements Lcom/facebook/systrace/TraceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTraceStarted()V
    .locals 4

    .prologue
    const-wide v2, 0x800000000L

    .line 49
    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const-string v0, "CLASS_LOAD_TRACE"

    const/4 v1, 0x0

    invoke-static {v2, v3, v0, v1}, Lcom/facebook/systrace/Systrace;->beginAsyncSection(JLjava/lang/String;I)V

    .line 51
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->setLogToSystrace(Z)V

    .line 53
    :cond_0
    return-void
.end method

.method public onTraceStopped()V
    .locals 4

    .prologue
    const-wide v2, 0x800000000L

    const/4 v1, 0x0

    .line 57
    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {v1}, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->setLogToSystrace(Z)V

    .line 59
    const-string v0, "CLASS_LOAD_TRACE"

    invoke-static {v2, v3, v0, v1}, Lcom/facebook/systrace/Systrace;->endAsyncSection(JLjava/lang/String;I)V

    .line 61
    :cond_0
    return-void
.end method
