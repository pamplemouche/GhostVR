.class Lcom/facebook/systrace/FbSystrace;
.super Ljava/lang/Object;
.source "FbSystrace.java"


# static fields
.field private static volatile sIssuedSystraceWarning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/systrace/FbSystrace;->sIssuedSystraceWarning:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeDeltaNanos(J)J
    .locals 4
    .param p0, "newRealtimeNanos"    # J

    .prologue
    .line 16
    invoke-static {}, Lcom/facebook/systrace/FbSystrace;->warnIfNotFbSystrace()V

    .line 18
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 19
    .local v0, "curRealtimeNanos":J
    sub-long v2, p0, v0

    .line 21
    .local v2, "deltaNanos":J
    return-wide v2
.end method

.method private static warnIfNotFbSystrace()V
    .locals 4

    .prologue
    const/16 v1, 0x3e8

    const-wide/16 v2, 0x1

    .line 34
    invoke-static {v2, v3}, Lcom/facebook/systrace/TraceConfig;->isTracing(J)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/facebook/systrace/FbSystrace;->sIssuedSystraceWarning:Z

    if-nez v0, :cond_1

    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/systrace/FbSystrace;->sIssuedSystraceWarning:Z

    .line 38
    const-string v0, "fburl.com/fbsystrace"

    invoke-static {v2, v3, v0, v1}, Lcom/facebook/systrace/Systrace;->traceCounter(JLjava/lang/String;I)V

    .line 39
    const-string v0, "USE fbsystrace"

    invoke-static {v2, v3, v0, v1}, Lcom/facebook/systrace/Systrace;->traceCounter(JLjava/lang/String;I)V

    .line 40
    const-string v0, "DO NOT USE systrace"

    invoke-static {v2, v3, v0, v1}, Lcom/facebook/systrace/Systrace;->traceCounter(JLjava/lang/String;I)V

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    sget-boolean v0, Lcom/facebook/systrace/FbSystrace;->sIssuedSystraceWarning:Z

    if-eqz v0, :cond_0

    invoke-static {v2, v3}, Lcom/facebook/systrace/TraceConfig;->isTracing(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/systrace/FbSystrace;->sIssuedSystraceWarning:Z

    goto :goto_0
.end method
