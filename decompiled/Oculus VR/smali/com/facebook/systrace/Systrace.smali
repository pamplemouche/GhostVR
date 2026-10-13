.class public Lcom/facebook/systrace/Systrace;
.super Ljava/lang/Object;
.source "Systrace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/systrace/Systrace$EventScope;
    }
.end annotation


# static fields
.field private static sForcedTags:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 86
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/systrace/TraceConfig;->setAppTracingAllowed(Z)V

    .line 87
    invoke-static {}, Lcom/facebook/systrace/SystraceMetadata;->init()V

    .line 90
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/facebook/systrace/Systrace;->sForcedTags:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginAsyncSection(JLjava/lang/String;I)V
    .locals 2

    .prologue
    .line 187
    invoke-static {p0, p1}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 191
    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {p2, p3, v0, v1}, Lcom/facebook/systrace/TraceDirect;->asyncTraceBegin(Ljava/lang/String;IJ)V

    goto :goto_0
.end method

.method public static beginSection(JLjava/lang/String;)V
    .locals 2

    .prologue
    .line 114
    invoke-static {p0, p1}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-static {p2}, Lcom/facebook/systrace/TraceDirect;->beginSection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static endAsyncSection(JLjava/lang/String;I)V
    .locals 2

    .prologue
    .line 267
    invoke-static {p0, p1}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 271
    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {p2, p3, v0, v1}, Lcom/facebook/systrace/TraceDirect;->asyncTraceEnd(Ljava/lang/String;IJ)V

    goto :goto_0
.end method

.method public static endSection(J)V
    .locals 2

    .prologue
    .line 136
    invoke-static {p0, p1}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-static {}, Lcom/facebook/systrace/TraceDirect;->endSection()V

    goto :goto_0
.end method

.method public static isTracing(J)Z
    .locals 4

    .prologue
    .line 155
    invoke-static {p0, p1}, Lcom/facebook/systrace/TraceConfig;->isTracing(J)Z

    move-result v0

    if-nez v0, :cond_0

    sget-wide v0, Lcom/facebook/systrace/Systrace;->sForcedTags:J

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static registerListener(Lcom/facebook/systrace/TraceListener;)V
    .locals 0

    .prologue
    .line 94
    invoke-static {p0}, Lcom/facebook/systrace/TraceConfig;->addListener(Lcom/facebook/systrace/TraceListener;)V

    .line 95
    return-void
.end method

.method public static traceInstant(JLjava/lang/String;Lcom/facebook/systrace/Systrace$EventScope;)V
    .locals 2

    .prologue
    .line 383
    invoke-static {p0, p1}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    :goto_0
    return-void

    .line 387
    :cond_0
    const-string v0, ""

    invoke-virtual {p3}, Lcom/facebook/systrace/Systrace$EventScope;->getCode()C

    move-result v1

    invoke-static {v0, p2, v1}, Lcom/facebook/systrace/TraceDirect;->traceInstant(Ljava/lang/String;Ljava/lang/String;C)V

    goto :goto_0
.end method

.method public static traceMetadata(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 368
    invoke-static {p0, p1}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    :goto_0
    return-void

    .line 372
    :cond_0
    invoke-static {p2, p3, p4}, Lcom/facebook/systrace/TraceDirect;->traceMetadata(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method
