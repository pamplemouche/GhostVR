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
.field public static final TRACE_TAG_ALLOC_COUNTING:J = 0x400L

.field public static final TRACE_TAG_ALWAYS:J = 0x1L

.field public static final TRACE_TAG_APP_CORE_INFRA:J = 0x80000000L

.field public static final TRACE_TAG_APP_STATE:J = 0x8L

.field public static final TRACE_TAG_ASYNC:J = 0x80L

.field public static final TRACE_TAG_CLASS_LOADER:J = 0x8000000000L

.field public static final TRACE_TAG_CLASS_LOADS:J = 0x800000000L

.field public static final TRACE_TAG_COMPACTDISK:J = 0x100000000L

.field public static final TRACE_TAG_COMPONENTS:J = 0x400000L

.field public static final TRACE_TAG_COMPONENT_SCRIPT:J = 0x20000000L

.field public static final TRACE_TAG_CONTENT_PROVIDER:J = 0x200L

.field public static final TRACE_TAG_DATA_FETCH:J = 0x10000000000L

.field public static final TRACE_TAG_DATA_YOGA:J = 0x20000000000L

.field public static final TRACE_TAG_ERROR_REPORTING:J = 0x100L

.field public static final TRACE_TAG_EXTENSIONS:J = 0x400000000000L

.field public static final TRACE_TAG_FRAME_RATE_EVENTS:J = 0x40000L

.field public static final TRACE_TAG_FRESCO:J = 0x1000000000L

.field public static final TRACE_TAG_GRAPHSTORE:J = 0x200000L

.field public static final TRACE_TAG_GRIMSEY_ALLOCATION:J = 0x100000L

.field public static final TRACE_TAG_GRIMSEY_METHOD_EXECUTION:J = 0x80000L

.field public static final TRACE_TAG_GRIMSEY_NATIVE_ALLOCATION:J = 0x200000000000L

.field public static final TRACE_TAG_JS_VM:J = 0x4000000L

.field public static final TRACE_TAG_MAIN_LOOPER:J = 0x1000L

.field public static final TRACE_TAG_METADATA:J = 0x40L

.field public static final TRACE_TAG_NETWORK:J = 0x10L

.field public static final TRACE_TAG_NEVER:J = 0x0L

.field public static final TRACE_TAG_NT_CPP:J = 0x40000000000L

.field public static final TRACE_TAG_PERF_LOGGER:J = 0x4L

.field public static final TRACE_TAG_PERF_LOGGER_EXT:J = 0x4000000000L

.field public static final TRACE_TAG_PROFILO:J = 0x10000000L

.field public static final TRACE_TAG_REACT_APPS:J = 0x20000L

.field public static final TRACE_TAG_REACT_CXX_BRIDGE:J = 0x4000L

.field public static final TRACE_TAG_REACT_FRESCO:J = 0x1000000L

.field public static final TRACE_TAG_REACT_JAVA_BRIDGE:J = 0x2000L

.field public static final TRACE_TAG_REACT_JS_BRIDGE:J = 0x8000L

.field public static final TRACE_TAG_REACT_JS_INFRA:J = 0x10000L

.field public static final TRACE_TAG_REACT_JS_VM_CALLS:J = 0x8000000L

.field public static final TRACE_TAG_REACT_VIEW:J = 0x2000000L

.field public static final TRACE_TAG_RESOURCE_METRICS:J = 0x100000000000L

.field public static final TRACE_TAG_SEQ_LOGGER:J = 0x2L

.field public static final TRACE_TAG_TRACER:J = 0x20L

.field public static final TRACE_TAG_ULTRALIGHT:J = 0x2000000000L

.field public static final TRACE_TAG_VIEW_PERF_HARNESS:J = 0x800000L

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
    .param p0, "tag"    # J
    .param p2, "sectionName"    # Ljava/lang/String;
    .param p3, "cookie"    # I

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

.method public static beginAsyncSection(JLjava/lang/String;IJ)V
    .locals 4
    .param p0, "tag"    # J
    .param p2, "sectionName"    # Ljava/lang/String;
    .param p3, "cookie"    # I
    .param p4, "startNanos"    # J

    .prologue
    .line 208
    invoke-static {p0, p1}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-static {p4, p5}, Lcom/facebook/systrace/FbSystrace;->computeDeltaNanos(J)J

    move-result-wide v0

    .line 212
    .local v0, "deltaNanos":J
    invoke-static {p2, p3, v0, v1}, Lcom/facebook/systrace/TraceDirect;->asyncTraceBegin(Ljava/lang/String;IJ)V

    goto :goto_0
.end method

.method public static beginAsyncSectionStage(JLjava/lang/String;IJLjava/lang/String;)V
    .locals 4
    .param p0, "tag"    # J
    .param p2, "sectionName"    # Ljava/lang/String;
    .param p3, "cookie"    # I
    .param p4, "beginNanos"    # J
    .param p6, "stageName"    # Ljava/lang/String;

    .prologue
    .line 253
    invoke-static {p0, p1}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    invoke-static {p4, p5}, Lcom/facebook/systrace/FbSystrace;->computeDeltaNanos(J)J

    move-result-wide v0

    .line 257
    .local v0, "deltaNanos":J
    invoke-static {p2, p3, v0, v1, p6}, Lcom/facebook/systrace/TraceDirect;->asyncTraceStageBegin(Ljava/lang/String;IJLjava/lang/String;)V

    goto :goto_0
.end method

.method public static beginAsyncSectionStage(JLjava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p0, "tag"    # J
    .param p2, "sectionName"    # Ljava/lang/String;
    .param p3, "cookie"    # I
    .param p4, "stageName"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-static {p0, p1}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 231
    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Lcom/facebook/systrace/TraceDirect;->asyncTraceStageBegin(Ljava/lang/String;IJLjava/lang/String;)V

    goto :goto_0
.end method

.method public static beginSection(JLjava/lang/String;)V
    .locals 2
    .param p0, "tag"    # J
    .param p2, "sectionName"    # Ljava/lang/String;

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

.method public static beginSection(JLjava/lang/String;[Ljava/lang/String;I)V
    .locals 2
    .param p0, "tag"    # J
    .param p2, "sectionName"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "argsLength"    # I

    .prologue
    .line 127
    invoke-static {p0, p1}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-static {p2, p3, p4}, Lcom/facebook/systrace/TraceDirect;->beginSectionWithArgs(Ljava/lang/String;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static cancelAsyncSection(JLjava/lang/String;I)V
    .locals 2
    .param p0, "tag"    # J
    .param p2, "sectionName"    # Ljava/lang/String;
    .param p3, "cookie"    # I

    .prologue
    .line 395
    invoke-static {p0, p1}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    :goto_0
    return-void

    .line 399
    :cond_0
    invoke-static {p2, p3}, Lcom/facebook/systrace/TraceDirect;->asyncTraceCancel(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static enableExtraTracing()V
    .locals 0

    .prologue
    .line 102
    invoke-static {}, Lcom/facebook/systrace/SystraceMetadata;->enableTidTracking()V

    .line 103
    return-void
.end method

.method public static endAsyncFlow(JLjava/lang/String;I)V
    .locals 2
    .param p0, "tag"    # J
    .param p2, "sectionName"    # Ljava/lang/String;
    .param p3, "cookie"    # I

    .prologue
    .line 353
    invoke-static {p0, p1}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    :goto_0
    return-void

    .line 357
    :cond_0
    invoke-static {p2, p3}, Lcom/facebook/systrace/TraceDirect;->endAsyncFlow(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static endAsyncSection(JLjava/lang/String;I)V
    .locals 2
    .param p0, "tag"    # J
    .param p2, "sectionName"    # Ljava/lang/String;
    .param p3, "cookie"    # I

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

.method public static endAsyncSection(JLjava/lang/String;IJ)V
    .locals 4
    .param p0, "tag"    # J
    .param p2, "sectionName"    # Ljava/lang/String;
    .param p3, "cookie"    # I
    .param p4, "endNanos"    # J

    .prologue
    .line 287
    invoke-static {p0, p1}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_0
    invoke-static {p4, p5}, Lcom/facebook/systrace/FbSystrace;->computeDeltaNanos(J)J

    move-result-wide v0

    .line 291
    .local v0, "deltaNanos":J
    invoke-static {p2, p3, v0, v1}, Lcom/facebook/systrace/TraceDirect;->asyncTraceEnd(Ljava/lang/String;IJ)V

    goto :goto_0
.end method

.method public static endSection(J)V
    .locals 2
    .param p0, "tag"    # J

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

.method public static endSection(JLjava/lang/String;[Ljava/lang/String;I)V
    .locals 2
    .param p0, "tag"    # J
    .param p2, "sectionName"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "argsLength"    # I

    .prologue
    .line 146
    invoke-static {p0, p1}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-static {p3, p4}, Lcom/facebook/systrace/TraceDirect;->endSectionWithArgs([Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static forceEnabledTagsForTest(J)V
    .locals 0
    .param p0, "tags"    # J

    .prologue
    .line 106
    invoke-static {p0, p1}, Lcom/facebook/systrace/TraceConfig;->forceEnabledTags(J)V

    .line 107
    return-void
.end method

.method public static forceTags(J)V
    .locals 0
    .param p0, "tags"    # J

    .prologue
    .line 163
    sput-wide p0, Lcom/facebook/systrace/Systrace;->sForcedTags:J

    .line 164
    return-void
.end method

.method public static isTracing(J)Z
    .locals 4
    .param p0, "tag"    # J

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
    .param p0, "listener"    # Lcom/facebook/systrace/TraceListener;

    .prologue
    .line 94
    invoke-static {p0}, Lcom/facebook/systrace/TraceConfig;->addListener(Lcom/facebook/systrace/TraceListener;)V

    .line 95
    return-void
.end method

.method public static renameAsyncSection(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p0, "tag"    # J
    .param p2, "oldSectionName"    # Ljava/lang/String;
    .param p3, "newSectionName"    # Ljava/lang/String;
    .param p4, "cookie"    # I

    .prologue
    .line 408
    invoke-static {p0, p1}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 413
    :goto_0
    return-void

    .line 412
    :cond_0
    invoke-static {p2, p3, p4}, Lcom/facebook/systrace/TraceDirect;->asyncTraceRename(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static startAsyncFlow(JLjava/lang/String;I)V
    .locals 2
    .param p0, "tag"    # J
    .param p2, "sectionName"    # Ljava/lang/String;
    .param p3, "cookie"    # I

    .prologue
    .line 309
    invoke-static {p0, p1}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    :goto_0
    return-void

    .line 313
    :cond_0
    invoke-static {p2, p3}, Lcom/facebook/systrace/TraceDirect;->startAsyncFlow(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static stepAsyncFlow(JLjava/lang/String;I)V
    .locals 2
    .param p0, "tag"    # J
    .param p2, "sectionName"    # Ljava/lang/String;
    .param p3, "cookie"    # I

    .prologue
    .line 331
    invoke-static {p0, p1}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    :goto_0
    return-void

    .line 335
    :cond_0
    invoke-static {p2, p3}, Lcom/facebook/systrace/TraceDirect;->stepAsyncFlow(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static traceCounter(JLjava/lang/String;I)V
    .locals 2
    .param p0, "tag"    # J
    .param p2, "counterName"    # Ljava/lang/String;
    .param p3, "counterValue"    # I

    .prologue
    .line 172
    invoke-static {p0, p1}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-static {p2, p3}, Lcom/facebook/systrace/TraceDirect;->traceCounter(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static traceInstant(JLjava/lang/String;Lcom/facebook/systrace/Systrace$EventScope;)V
    .locals 2
    .param p0, "tag"    # J
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "scope"    # Lcom/facebook/systrace/Systrace$EventScope;

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
    .param p0, "tag"    # J
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "tid"    # I

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

.method public static unregisterListener(Lcom/facebook/systrace/TraceListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/facebook/systrace/TraceListener;

    .prologue
    .line 98
    invoke-static {p0}, Lcom/facebook/systrace/TraceConfig;->removeListener(Lcom/facebook/systrace/TraceListener;)V

    .line 99
    return-void
.end method
