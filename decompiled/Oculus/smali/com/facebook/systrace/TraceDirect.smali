.class Lcom/facebook/systrace/TraceDirect;
.super Ljava/lang/Object;
.source "TraceDirect.java"


# static fields
.field private static final DISABLED:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 11
    const-class v2, Lcom/facebook/systrace/TraceDirect;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/facebook/systrace/TraceDirect;->TAG:Ljava/lang/String;

    .line 23
    :try_start_0
    const-string v2, "fbsystrace"

    invoke-static {v2}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 30
    :goto_0
    if-nez v2, :cond_0

    :goto_1
    sput-boolean v0, Lcom/facebook/systrace/TraceDirect;->DISABLED:Z

    .line 31
    return-void

    .line 25
    :catch_0
    move-exception v2

    .line 26
    sget-object v2, Lcom/facebook/systrace/TraceDirect;->TAG:Ljava/lang/String;

    const-string v3, "fbsystrace.so not found; disabling direct tracing."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 27
    goto :goto_0

    :cond_0
    move v0, v1

    .line 30
    goto :goto_1
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asyncTraceBegin(Ljava/lang/String;IJ)V
    .locals 2

    .prologue
    .line 76
    sget-boolean v0, Lcom/facebook/systrace/TraceDirect;->DISABLED:Z

    if-eqz v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/systrace/TraceDirect;->nativeAsyncTraceBegin(Ljava/lang/String;IJ)V

    goto :goto_0
.end method

.method public static asyncTraceEnd(Ljava/lang/String;IJ)V
    .locals 2

    .prologue
    .line 94
    sget-boolean v0, Lcom/facebook/systrace/TraceDirect;->DISABLED:Z

    if-eqz v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/systrace/TraceDirect;->nativeAsyncTraceEnd(Ljava/lang/String;IJ)V

    goto :goto_0
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/facebook/systrace/TraceDirect;->DISABLED:Z

    if-eqz v0, :cond_0

    .line 39
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-static {p0}, Lcom/facebook/systrace/TraceDirect;->nativeBeginSection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static beginSectionWithArgs(Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/facebook/systrace/TraceDirect;->DISABLED:Z

    if-eqz v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/facebook/systrace/TraceDirect;->nativeBeginSectionWithArgs(Ljava/lang/String;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static endAsyncFlow(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 135
    sget-boolean v0, Lcom/facebook/systrace/TraceDirect;->DISABLED:Z

    if-eqz v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/systrace/TraceDirect;->nativeEndAsyncFlow(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static endSection()V
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/facebook/systrace/TraceDirect;->DISABLED:Z

    if-eqz v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-static {}, Lcom/facebook/systrace/TraceDirect;->nativeEndSection()V

    goto :goto_0
.end method

.method public static endSectionWithArgs([Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/facebook/systrace/TraceDirect;->DISABLED:Z

    if-eqz v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/systrace/TraceDirect;->nativeEndSectionWithArgs([Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static native nativeAsyncTraceBegin(Ljava/lang/String;IJ)V
.end method

.method private static native nativeAsyncTraceCancel(Ljava/lang/String;I)V
.end method

.method private static native nativeAsyncTraceEnd(Ljava/lang/String;IJ)V
.end method

.method private static native nativeAsyncTraceRename(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method private static native nativeAsyncTraceStageBegin(Ljava/lang/String;IJLjava/lang/String;)V
.end method

.method private static native nativeBeginSection(Ljava/lang/String;)V
.end method

.method private static native nativeBeginSectionWithArgs(Ljava/lang/String;[Ljava/lang/String;I)V
.end method

.method private static native nativeEndAsyncFlow(Ljava/lang/String;I)V
.end method

.method private static native nativeEndSection()V
.end method

.method private static native nativeEndSectionWithArgs([Ljava/lang/String;I)V
.end method

.method private static native nativeSetEnabledTags(J)V
.end method

.method private static native nativeStartAsyncFlow(Ljava/lang/String;I)V
.end method

.method private static native nativeStepAsyncFlow(Ljava/lang/String;I)V
.end method

.method private static native nativeTraceCounter(Ljava/lang/String;I)V
.end method

.method private static native nativeTraceInstant(Ljava/lang/String;Ljava/lang/String;C)V
.end method

.method private static native nativeTraceMetadata(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public static setEnabledTags(J)V
    .locals 2

    .prologue
    .line 159
    sget-boolean v0, Lcom/facebook/systrace/TraceDirect;->DISABLED:Z

    if-eqz v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/systrace/TraceDirect;->nativeSetEnabledTags(J)V

    goto :goto_0
.end method

.method public static startAsyncFlow(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 119
    sget-boolean v0, Lcom/facebook/systrace/TraceDirect;->DISABLED:Z

    if-eqz v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/systrace/TraceDirect;->nativeStartAsyncFlow(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static traceCounter(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/facebook/systrace/TraceDirect;->DISABLED:Z

    if-eqz v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/systrace/TraceDirect;->nativeTraceCounter(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static traceInstant(Ljava/lang/String;Ljava/lang/String;C)V
    .locals 1

    .prologue
    .line 151
    sget-boolean v0, Lcom/facebook/systrace/TraceDirect;->DISABLED:Z

    if-eqz v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/facebook/systrace/TraceDirect;->nativeTraceInstant(Ljava/lang/String;Ljava/lang/String;C)V

    goto :goto_0
.end method

.method public static traceMetadata(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 143
    sget-boolean v0, Lcom/facebook/systrace/TraceDirect;->DISABLED:Z

    if-eqz v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/facebook/systrace/TraceDirect;->nativeTraceMetadata(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method
