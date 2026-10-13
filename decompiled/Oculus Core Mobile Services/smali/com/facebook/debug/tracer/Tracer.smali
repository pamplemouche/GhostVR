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

.method private static combineArgs(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 255
    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-object p5

    .line 259
    :cond_1
    if-nez p0, :cond_2

    .line 260
    const/4 p5, 0x0

    goto :goto_0

    .line 262
    :cond_2
    new-array p5, p0, [Ljava/lang/Object;

    .line 263
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 264
    aput-object p4, p5, v3

    .line 266
    :cond_3
    if-lt p0, v3, :cond_4

    .line 267
    aput-object p3, p5, v2

    .line 269
    :cond_4
    if-lt p0, v2, :cond_5

    .line 270
    aput-object p2, p5, v1

    .line 272
    :cond_5
    if-lt p0, v1, :cond_0

    .line 273
    const/4 v0, 0x0

    aput-object p1, p5, v0

    goto :goto_0
.end method

.method private static formatStrLocaleSafe(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 222
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    if-eqz p6, :cond_0

    array-length v0, p6

    if-nez v0, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-object p0

    .line 226
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

.method public static startTracer(Ljava/lang/String;)V
    .locals 7
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
    .param p1    # Ljava/lang/Object;
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

.method public static startTracer(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
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

.method private static startTracerInternal(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 8
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const-wide/16 v6, 0x20

    .line 185
    sget-object v0, Lcom/facebook/debug/tracer/Tracer;->sTracerConfigCallback:Lcom/facebook/debug/tracer/TracerConfigCallback;

    invoke-interface {v0}, Lcom/facebook/debug/tracer/TracerConfigCallback;->shouldCollectTracer()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    sget-object v0, Lcom/facebook/debug/tracer/Tracer;->sThreadLocalState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/debug/tracer/Tracer$ThreadState;

    .line 187
    iget-boolean v1, v0, Lcom/facebook/debug/tracer/Tracer$ThreadState;->stackOverflowDetected:Z

    if-eqz v1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v1, v0, Lcom/facebook/debug/tracer/Tracer$ThreadState;->tracerStack:Lcom/facebook/debug/tracer/LongStack;

    invoke-virtual {v1}, Lcom/facebook/debug/tracer/LongStack;->size()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    .line 192
    const-class v1, Lcom/facebook/debug/tracer/Tracer;

    const-string v2, "Tracer stack overflow. There is probably a missing stopTracer somewhere."

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 195
    iget-object v1, v0, Lcom/facebook/debug/tracer/Tracer$ThreadState;->tracerStack:Lcom/facebook/debug/tracer/LongStack;

    invoke-virtual {v1}, Lcom/facebook/debug/tracer/LongStack;->clear()V

    .line 196
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/facebook/debug/tracer/Tracer$ThreadState;->stackOverflowDetected:Z

    goto :goto_0

    .line 200
    :cond_2
    sget-object v1, Lcom/facebook/debug/tracer/ThreadTrace;->sThreadLocalState:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/debug/tracer/ThreadTrace;

    .line 201
    invoke-static/range {p1 .. p6}, Lcom/facebook/debug/tracer/Tracer;->combineArgs(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 202
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/facebook/debug/tracer/ThreadTrace;->startTracer(Ljava/lang/String;[Ljava/lang/Object;Z)I

    move-result v2

    int-to-long v2, v2

    .line 203
    invoke-virtual {v1}, Lcom/facebook/debug/tracer/ThreadTrace;->getLastEventTimeNanos()J

    move-result-wide v4

    .line 204
    iget-object v1, v0, Lcom/facebook/debug/tracer/Tracer$ThreadState;->tracerStack:Lcom/facebook/debug/tracer/LongStack;

    invoke-virtual {v1, v2, v3}, Lcom/facebook/debug/tracer/LongStack;->push(J)V

    .line 205
    iget-object v0, v0, Lcom/facebook/debug/tracer/Tracer$ThreadState;->tracerStack:Lcom/facebook/debug/tracer/LongStack;

    invoke-virtual {v0, v4, v5}, Lcom/facebook/debug/tracer/LongStack;->push(J)V

    .line 208
    :cond_3
    invoke-static {v6, v7}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-static/range {p0 .. p6}, Lcom/facebook/debug/tracer/Tracer;->formatStrLocaleSafe(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-static {v6, v7, v0}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    goto :goto_0
.end method

.method private static stopTracer(JZ)J
    .locals 6

    .prologue
    const-wide/16 v2, -0x1

    .line 325
    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 327
    sget-object v0, Lcom/facebook/debug/tracer/Tracer;->sTracerConfigCallback:Lcom/facebook/debug/tracer/TracerConfigCallback;

    invoke-interface {v0}, Lcom/facebook/debug/tracer/TracerConfigCallback;->shouldCollectTracer()Z

    move-result v0

    if-nez v0, :cond_1

    .line 328
    const-wide/16 v0, 0x0

    .line 353
    :cond_0
    :goto_0
    return-wide v0

    .line 331
    :cond_1
    sget-object v0, Lcom/facebook/debug/tracer/Tracer;->sThreadLocalState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/debug/tracer/Tracer$ThreadState;

    .line 332
    iget-boolean v1, v0, Lcom/facebook/debug/tracer/Tracer$ThreadState;->stackOverflowDetected:Z

    if-eqz v1, :cond_2

    move-wide v0, v2

    .line 333
    goto :goto_0

    .line 336
    :cond_2
    iget-object v1, v0, Lcom/facebook/debug/tracer/Tracer$ThreadState;->tracerStack:Lcom/facebook/debug/tracer/LongStack;

    invoke-virtual {v1}, Lcom/facebook/debug/tracer/LongStack;->size()I

    move-result v1

    const/4 v4, 0x2

    if-ge v1, v4, :cond_3

    .line 337
    const-class v1, Lcom/facebook/debug/tracer/Tracer;

    const-string v4, "Tracer stack underflow. There\'s an extra stopTracer somewhere."

    invoke-static {v1, v4}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 338
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/facebook/debug/tracer/Tracer$ThreadState;->stackOverflowDetected:Z

    move-wide v0, v2

    .line 339
    goto :goto_0

    .line 342
    :cond_3
    iget-object v1, v0, Lcom/facebook/debug/tracer/Tracer$ThreadState;->tracerStack:Lcom/facebook/debug/tracer/LongStack;

    invoke-virtual {v1}, Lcom/facebook/debug/tracer/LongStack;->pop()J

    move-result-wide v4

    .line 343
    iget-object v0, v0, Lcom/facebook/debug/tracer/Tracer$ThreadState;->tracerStack:Lcom/facebook/debug/tracer/LongStack;

    invoke-virtual {v0}, Lcom/facebook/debug/tracer/LongStack;->pop()J

    move-result-wide v0

    long-to-int v1, v0

    .line 346
    sget v0, Lcom/facebook/debug/tracer/ThreadTrace;->INVALID_TRACE_ID:I

    if-eq v1, v0, :cond_4

    .line 347
    sget-object v0, Lcom/facebook/debug/tracer/ThreadTrace;->sThreadLocalState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/debug/tracer/ThreadTrace;

    .line 348
    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/facebook/debug/tracer/ThreadTrace;->stopTracer(IJZ)J

    move-result-wide v0

    .line 350
    :goto_1
    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 351
    invoke-static {}, Lcom/facebook/debug/tracer/TracerClock;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v4

    goto :goto_0

    :cond_4
    move-wide v0, v2

    goto :goto_1
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

    .prologue
    .line 293
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/facebook/debug/tracer/Tracer;->stopTracer(JZ)J

    .line 294
    return-void
.end method
