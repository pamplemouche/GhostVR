.class public Lcom/facebook/debug/tracer/Tracer;
.super Ljava/lang/Object;
.source "Tracer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/debug/tracer/Tracer$ThreadState;
    }
.end annotation


# static fields
.field private static final EXPECTED_TRACE_DEPTH:I = 0xa

.field private static final LOGGING_FOR_TEST_GEN_ENABLED:Z = false

.field private static final LOGGING_FOR_TEST_GEN_TAG:Ljava/lang/String; = "tracer500"

.field private static final MAX_TRACE_DEPTH:I = 0x64

.field private static final TAG:Ljava/lang/String; = "Tracer"

.field private static final sThreadLocalState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/facebook/debug/tracer/Tracer$ThreadState;",
            ">;"
        }
    .end annotation
.end field

.field private static sTracerConfigCallback:Lcom/facebook/debug/tracer/TracerConfigCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/facebook/debug/tracer/DefaultTracerConfigCallback;

    invoke-direct {v0}, Lcom/facebook/debug/tracer/DefaultTracerConfigCallback;-><init>()V

    sput-object v0, Lcom/facebook/debug/tracer/Tracer;->sTracerConfigCallback:Lcom/facebook/debug/tracer/TracerConfigCallback;

    .line 39
    new-instance v0, Lcom/facebook/debug/tracer/Tracer$1;

    invoke-direct {v0}, Lcom/facebook/debug/tracer/Tracer$1;-><init>()V

    sput-object v0, Lcom/facebook/debug/tracer/Tracer;->sThreadLocalState:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addComment(Ljava/lang/String;)V
    .locals 1
    .param p0, "comment"    # Ljava/lang/String;

    .prologue
    .line 362
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/debug/tracer/Tracer;->addCommentInternal(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    return-void
.end method

.method public static varargs addComment(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "comment"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 372
    invoke-static {p0, p1}, Lcom/facebook/debug/tracer/Tracer;->addCommentInternal(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    return-void
.end method

.method private static addCommentInternal(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "comment"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 386
    sget-object v1, Lcom/facebook/debug/tracer/Tracer;->sTracerConfigCallback:Lcom/facebook/debug/tracer/TracerConfigCallback;

    invoke-interface {v1}, Lcom/facebook/debug/tracer/TracerConfigCallback;->shouldCollectTracer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    sget-object v1, Lcom/facebook/debug/tracer/ThreadTrace;->sThreadLocalState:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/debug/tracer/ThreadTrace;

    .line 388
    .local v0, "threadTrace":Lcom/facebook/debug/tracer/ThreadTrace;
    invoke-virtual {v0, p0, p1}, Lcom/facebook/debug/tracer/ThreadTrace;->addComment(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    .end local v0    # "threadTrace":Lcom/facebook/debug/tracer/ThreadTrace;
    :cond_0
    return-void
.end method

.method public static addSpawn(Ljava/lang/String;)V
    .locals 2
    .param p0, "comment"    # Ljava/lang/String;

    .prologue
    .line 401
    sget-object v1, Lcom/facebook/debug/tracer/Tracer;->sTracerConfigCallback:Lcom/facebook/debug/tracer/TracerConfigCallback;

    invoke-interface {v1}, Lcom/facebook/debug/tracer/TracerConfigCallback;->shouldCollectTracer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 402
    sget-object v1, Lcom/facebook/debug/tracer/ThreadTrace;->sThreadLocalState:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/debug/tracer/ThreadTrace;

    .line 403
    .local v0, "threadTrace":Lcom/facebook/debug/tracer/ThreadTrace;
    invoke-virtual {v0, p0}, Lcom/facebook/debug/tracer/ThreadTrace;->addSpawn(Ljava/lang/String;)V

    .line 405
    .end local v0    # "threadTrace":Lcom/facebook/debug/tracer/ThreadTrace;
    :cond_0
    return-void
.end method

.method private static combineArgs(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .param p0, "argCount"    # I
    .param p1, "arg0"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "arg1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "arg2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "arg3"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "argsList"    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 255
    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    .line 275
    .end local p5    # "argsList":[Ljava/lang/Object;
    :goto_0
    return-object p5

    .line 259
    .restart local p5    # "argsList":[Ljava/lang/Object;
    :cond_0
    if-nez p0, :cond_1

    .line 260
    const/4 p5, 0x0

    goto :goto_0

    .line 262
    :cond_1
    new-array v0, p0, [Ljava/lang/Object;

    .line 263
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x4

    if-ne p0, v1, :cond_2

    .line 264
    aput-object p4, v0, v4

    .line 266
    :cond_2
    if-lt p0, v4, :cond_3

    .line 267
    aput-object p3, v0, v3

    .line 269
    :cond_3
    if-lt p0, v3, :cond_4

    .line 270
    aput-object p2, v0, v2

    .line 272
    :cond_4
    if-lt p0, v2, :cond_5

    .line 273
    const/4 v1, 0x0

    aput-object p1, v0, v1

    :cond_5
    move-object p5, v0

    .line 275
    goto :goto_0
.end method

.method private static formatStrLocaleSafe(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "comment"    # Ljava/lang/String;
    .param p1, "argCount"    # I
    .param p2, "arg0"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "arg1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "arg2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "arg3"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "argsList"    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 222
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    if-eqz p6, :cond_0

    array-length v1, p6

    if-nez v1, :cond_1

    .line 243
    .end local p0    # "comment":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 226
    .restart local p0    # "comment":Ljava/lang/String;
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 238
    :try_start_0
    invoke-static {p0, p6}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 228
    :pswitch_0
    invoke-static {p0}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 230
    :pswitch_1
    invoke-static {p0, p2}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 232
    :pswitch_2
    invoke-static {p0, p2, p3}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 234
    :pswitch_3
    invoke-static {p0, p2, p3, p4}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 236
    :pswitch_4
    invoke-static {p0, p2, p3, p4, p5}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/util/IllegalFormatException;
    const-string v1, "Tracer"

    const-string v2, "Bad format string"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getTraceEvents()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/debug/tracer/TraceEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 459
    sget-object v1, Lcom/facebook/debug/tracer/Tracer;->sTracerConfigCallback:Lcom/facebook/debug/tracer/TracerConfigCallback;

    invoke-interface {v1}, Lcom/facebook/debug/tracer/TracerConfigCallback;->shouldCollectTracer()Z

    move-result v1

    if-nez v1, :cond_0

    .line 460
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 463
    .local v0, "threadTrace":Lcom/facebook/debug/tracer/ThreadTrace;
    :goto_0
    return-object v1

    .line 462
    .end local v0    # "threadTrace":Lcom/facebook/debug/tracer/ThreadTrace;
    :cond_0
    sget-object v1, Lcom/facebook/debug/tracer/ThreadTrace;->sThreadLocalState:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/debug/tracer/ThreadTrace;

    .line 463
    .restart local v0    # "threadTrace":Lcom/facebook/debug/tracer/ThreadTrace;
    invoke-virtual {v0}, Lcom/facebook/debug/tracer/ThreadTrace;->getLastTraceId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/debug/tracer/ThreadTrace;->getEvents(I)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public static isTracing()Z
    .locals 2

    .prologue
    .line 69
    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v0

    return v0
.end method

.method public static logTrace(ILjava/lang/String;)V
    .locals 2
    .param p0, "logLevel"    # I
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 444
    sget-object v1, Lcom/facebook/debug/tracer/Tracer;->sTracerConfigCallback:Lcom/facebook/debug/tracer/TracerConfigCallback;

    invoke-interface {v1}, Lcom/facebook/debug/tracer/TracerConfigCallback;->shouldCollectTracer()Z

    move-result v1

    if-nez v1, :cond_0

    .line 449
    :goto_0
    return-void

    .line 447
    :cond_0
    sget-object v1, Lcom/facebook/debug/tracer/ThreadTrace;->sThreadLocalState:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/debug/tracer/ThreadTrace;

    .line 448
    .local v0, "threadTrace":Lcom/facebook/debug/tracer/ThreadTrace;
    invoke-virtual {v0}, Lcom/facebook/debug/tracer/ThreadTrace;->getLastTraceId()I

    move-result v1

    invoke-virtual {v0, v1, p0, p1}, Lcom/facebook/debug/tracer/ThreadTrace;->logTrace(IILjava/lang/String;)V

    goto :goto_0
.end method

.method public static logTrace(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 415
    .local p0, "tag":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/facebook/debug/tracer/Tracer;->sTracerConfigCallback:Lcom/facebook/debug/tracer/TracerConfigCallback;

    invoke-interface {v0}, Lcom/facebook/debug/tracer/TracerConfigCallback;->shouldCollectTracer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    :goto_0
    return-void

    .line 418
    :cond_0
    const/4 v0, 0x3

    invoke-static {p0}, Lcom/facebook/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/debug/tracer/Tracer;->logTrace(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static logTrace(Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 429
    sget-object v0, Lcom/facebook/debug/tracer/Tracer;->sTracerConfigCallback:Lcom/facebook/debug/tracer/TracerConfigCallback;

    invoke-interface {v0}, Lcom/facebook/debug/tracer/TracerConfigCallback;->shouldCollectTracer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    :goto_0
    return-void

    .line 432
    :cond_0
    const/4 v0, 0x3

    invoke-static {v0, p0}, Lcom/facebook/debug/tracer/Tracer;->logTrace(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static setTracerConfigCallback(Lcom/facebook/debug/tracer/TracerConfigCallback;)V
    .locals 1
    .param p0, "callback"    # Lcom/facebook/debug/tracer/TracerConfigCallback;

    .prologue
    .line 57
    if-nez p0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 60
    :cond_0
    sput-object p0, Lcom/facebook/debug/tracer/Tracer;->sTracerConfigCallback:Lcom/facebook/debug/tracer/TracerConfigCallback;

    .line 61
    return-void
.end method

.method public static startTracer(Ljava/lang/String;)V
    .locals 7
    .param p0, "comment"    # Ljava/lang/String;
    .annotation build Lcom/facebook/infer/annotation/IgnoreAllocations;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 81
    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/facebook/debug/tracer/Tracer;->startTracerInternal(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public static startTracer(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p0, "comment"    # Ljava/lang/String;
    .param p1, "arg0"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/facebook/infer/annotation/IgnoreAllocations;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 94
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/facebook/debug/tracer/Tracer;->startTracerInternal(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method public static startTracer(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p0, "comment"    # Ljava/lang/String;
    .param p1, "arg0"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "arg1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/facebook/infer/annotation/IgnoreAllocations;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 108
    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/facebook/debug/tracer/Tracer;->startTracerInternal(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public static startTracer(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p0, "comment"    # Ljava/lang/String;
    .param p1, "arg0"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "arg1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "arg2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/facebook/infer/annotation/IgnoreAllocations;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 124
    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/facebook/debug/tracer/Tracer;->startTracerInternal(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method public static startTracer(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p0, "comment"    # Ljava/lang/String;
    .param p1, "arg0"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "arg1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "arg2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "arg3"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/facebook/infer/annotation/IgnoreAllocations;
    .end annotation

    .prologue
    .line 145
    const/4 v1, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/facebook/debug/tracer/Tracer;->startTracerInternal(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method private static startTracerInternal(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 10
    .param p0, "comment"    # Ljava/lang/String;
    .param p1, "argCount"    # I
    .param p2, "arg0"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "arg1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "arg2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "arg3"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "argsList"    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 185
    sget-object v8, Lcom/facebook/debug/tracer/Tracer;->sTracerConfigCallback:Lcom/facebook/debug/tracer/TracerConfigCallback;

    invoke-interface {v8}, Lcom/facebook/debug/tracer/TracerConfigCallback;->shouldCollectTracer()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 186
    sget-object v8, Lcom/facebook/debug/tracer/Tracer;->sThreadLocalState:Ljava/lang/ThreadLocal;

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/debug/tracer/Tracer$ThreadState;

    .line 187
    .local v6, "threadState":Lcom/facebook/debug/tracer/Tracer$ThreadState;
    iget-boolean v8, v6, Lcom/facebook/debug/tracer/Tracer$ThreadState;->stackOverflowDetected:Z

    if-eqz v8, :cond_1

    .line 212
    .end local v6    # "threadState":Lcom/facebook/debug/tracer/Tracer$ThreadState;
    :cond_0
    :goto_0
    return-void

    .line 191
    .restart local v6    # "threadState":Lcom/facebook/debug/tracer/Tracer$ThreadState;
    :cond_1
    iget-object v8, v6, Lcom/facebook/debug/tracer/Tracer$ThreadState;->tracerStack:Lcom/facebook/debug/tracer/LongStack;

    invoke-virtual {v8}, Lcom/facebook/debug/tracer/LongStack;->size()I

    move-result v8

    const/16 v9, 0x64

    if-lt v8, v9, :cond_2

    .line 192
    const-class v8, Lcom/facebook/debug/tracer/Tracer;

    const-string v9, "Tracer stack overflow. There is probably a missing stopTracer somewhere."

    invoke-static {v8, v9}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 195
    iget-object v8, v6, Lcom/facebook/debug/tracer/Tracer$ThreadState;->tracerStack:Lcom/facebook/debug/tracer/LongStack;

    invoke-virtual {v8}, Lcom/facebook/debug/tracer/LongStack;->clear()V

    .line 196
    const/4 v8, 0x1

    iput-boolean v8, v6, Lcom/facebook/debug/tracer/Tracer$ThreadState;->stackOverflowDetected:Z

    goto :goto_0

    .line 200
    :cond_2
    sget-object v8, Lcom/facebook/debug/tracer/ThreadTrace;->sThreadLocalState:Ljava/lang/ThreadLocal;

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/debug/tracer/ThreadTrace;

    .line 201
    .local v7, "threadTrace":Lcom/facebook/debug/tracer/ThreadTrace;
    invoke-static/range {p1 .. p6}, Lcom/facebook/debug/tracer/Tracer;->combineArgs(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 202
    .local v0, "args":[Ljava/lang/Object;
    const/4 v8, 0x0

    invoke-virtual {v7, p0, v0, v8}, Lcom/facebook/debug/tracer/ThreadTrace;->startTracer(Ljava/lang/String;[Ljava/lang/Object;Z)I

    move-result v8

    int-to-long v2, v8

    .line 203
    .local v2, "id":J
    invoke-virtual {v7}, Lcom/facebook/debug/tracer/ThreadTrace;->getLastEventTimeNanos()J

    move-result-wide v4

    .line 204
    .local v4, "startTime":J
    iget-object v8, v6, Lcom/facebook/debug/tracer/Tracer$ThreadState;->tracerStack:Lcom/facebook/debug/tracer/LongStack;

    invoke-virtual {v8, v2, v3}, Lcom/facebook/debug/tracer/LongStack;->push(J)V

    .line 205
    iget-object v8, v6, Lcom/facebook/debug/tracer/Tracer$ThreadState;->tracerStack:Lcom/facebook/debug/tracer/LongStack;

    invoke-virtual {v8, v4, v5}, Lcom/facebook/debug/tracer/LongStack;->push(J)V

    .line 208
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v2    # "id":J
    .end local v4    # "startTime":J
    .end local v6    # "threadState":Lcom/facebook/debug/tracer/Tracer$ThreadState;
    .end local v7    # "threadTrace":Lcom/facebook/debug/tracer/ThreadTrace;
    :cond_3
    const-wide/16 v8, 0x20

    invoke-static {v8, v9}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 209
    invoke-static/range {p0 .. p6}, Lcom/facebook/debug/tracer/Tracer;->formatStrLocaleSafe(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "sectionName":Ljava/lang/String;
    const-wide/16 v8, 0x20

    invoke-static {v8, v9, v1}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    goto :goto_0
.end method

.method private static stopTracer(JZ)J
    .locals 12
    .param p0, "silenceThresholdParam"    # J
    .param p2, "useThreshold"    # Z

    .prologue
    const-wide/16 v8, -0x1

    .line 325
    const-wide/16 v10, 0x20

    invoke-static {v10, v11}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 327
    sget-object v7, Lcom/facebook/debug/tracer/Tracer;->sTracerConfigCallback:Lcom/facebook/debug/tracer/TracerConfigCallback;

    invoke-interface {v7}, Lcom/facebook/debug/tracer/TracerConfigCallback;->shouldCollectTracer()Z

    move-result v7

    if-nez v7, :cond_1

    .line 328
    const-wide/16 v0, 0x0

    .line 353
    :cond_0
    :goto_0
    return-wide v0

    .line 331
    :cond_1
    sget-object v7, Lcom/facebook/debug/tracer/Tracer;->sThreadLocalState:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/debug/tracer/Tracer$ThreadState;

    .line 332
    .local v3, "threadState":Lcom/facebook/debug/tracer/Tracer$ThreadState;
    iget-boolean v7, v3, Lcom/facebook/debug/tracer/Tracer$ThreadState;->stackOverflowDetected:Z

    if-eqz v7, :cond_2

    move-wide v0, v8

    .line 333
    goto :goto_0

    .line 336
    :cond_2
    iget-object v7, v3, Lcom/facebook/debug/tracer/Tracer$ThreadState;->tracerStack:Lcom/facebook/debug/tracer/LongStack;

    invoke-virtual {v7}, Lcom/facebook/debug/tracer/LongStack;->size()I

    move-result v7

    const/4 v10, 0x2

    if-ge v7, v10, :cond_3

    .line 337
    const-class v7, Lcom/facebook/debug/tracer/Tracer;

    const-string v10, "Tracer stack underflow. There\'s an extra stopTracer somewhere."

    invoke-static {v7, v10}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 338
    const/4 v7, 0x1

    iput-boolean v7, v3, Lcom/facebook/debug/tracer/Tracer$ThreadState;->stackOverflowDetected:Z

    move-wide v0, v8

    .line 339
    goto :goto_0

    .line 342
    :cond_3
    iget-object v7, v3, Lcom/facebook/debug/tracer/Tracer$ThreadState;->tracerStack:Lcom/facebook/debug/tracer/LongStack;

    invoke-virtual {v7}, Lcom/facebook/debug/tracer/LongStack;->pop()J

    move-result-wide v4

    .line 343
    .local v4, "startTime":J
    iget-object v7, v3, Lcom/facebook/debug/tracer/Tracer$ThreadState;->tracerStack:Lcom/facebook/debug/tracer/LongStack;

    invoke-virtual {v7}, Lcom/facebook/debug/tracer/LongStack;->pop()J

    move-result-wide v10

    long-to-int v2, v10

    .line 345
    .local v2, "id":I
    const-wide/16 v0, -0x1

    .line 346
    .local v0, "elapsedTime":J
    sget v7, Lcom/facebook/debug/tracer/ThreadTrace;->INVALID_TRACE_ID:I

    if-eq v2, v7, :cond_4

    .line 347
    sget-object v7, Lcom/facebook/debug/tracer/ThreadTrace;->sThreadLocalState:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/debug/tracer/ThreadTrace;

    .line 348
    .local v6, "threadTrace":Lcom/facebook/debug/tracer/ThreadTrace;
    invoke-virtual {v6, v2, p0, p1, p2}, Lcom/facebook/debug/tracer/ThreadTrace;->stopTracer(IJZ)J

    move-result-wide v0

    .line 350
    .end local v6    # "threadTrace":Lcom/facebook/debug/tracer/ThreadTrace;
    :cond_4
    cmp-long v7, v0, v8

    if-nez v7, :cond_0

    .line 351
    invoke-static {}, Lcom/facebook/debug/tracer/TracerClock;->nanoTime()J

    move-result-wide v8

    sub-long v0, v8, v4

    goto :goto_0
.end method

.method public static stopTracer()V
    .locals 3

    .prologue
    .line 283
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/tracer/Tracer;->stopTracer(JZ)J

    .line 284
    return-void
.end method

.method public static stopTracer(J)V
    .locals 2
    .param p0, "silenceThresholdParam"    # J

    .prologue
    .line 293
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/facebook/debug/tracer/Tracer;->stopTracer(JZ)J

    .line 294
    return-void
.end method

.method public static stopTracerAndReturnElapsedMs()J
    .locals 4

    .prologue
    .line 304
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/tracer/Tracer;->stopTracer(JZ)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static stopTracerAndReturnElapsedMs(J)J
    .locals 4
    .param p0, "silenceThresholdParam"    # J

    .prologue
    .line 316
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/facebook/debug/tracer/Tracer;->stopTracer(JZ)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method
