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
    .line 11
    const-class v2, Lcom/facebook/systrace/TraceDirect;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/facebook/systrace/TraceDirect;->TAG:Ljava/lang/String;

    .line 21
    const/4 v1, 0x0

    .line 23
    .local v1, "success":Z
    :try_start_0
    const-string v2, "fbsystrace"

    invoke-static {v2}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    const/4 v1, 0x1

    .line 30
    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    sput-boolean v2, Lcom/facebook/systrace/TraceDirect;->DISABLED:Z

    .line 31
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v2, Lcom/facebook/systrace/TraceDirect;->TAG:Ljava/lang/String;

    const-string v3, "fbsystrace.so not found; disabling direct tracing."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const/4 v1, 0x0

    goto :goto_0

    .line 30
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_0
    const/4 v2, 0x0

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
    .param p0, "sectionName"    # Ljava/lang/String;
    .param p1, "cookie"    # I
    .param p2, "deltaNanos"    # J

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

.method public static asyncTraceCancel(Ljava/lang/String;I)V
    .locals 1
    .param p0, "sectionName"    # Ljava/lang/String;
    .param p1, "cookie"    # I

    .prologue
    .line 102
    sget-boolean v0, Lcom/facebook/systrace/TraceDirect;->DISABLED:Z

    if-eqz v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/systrace/TraceDirect;->nativeAsyncTraceCancel(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static asyncTraceEnd(Ljava/lang/String;IJ)V
    .locals 2
    .param p0, "sectionName"    # Ljava/lang/String;
    .param p1, "cookie"    # I
    .param p2, "deltaNanos"    # J

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

.method public static asyncTraceRename(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0, "oldSectionName"    # Ljava/lang/String;
    .param p1, "newSectionName"    # Ljava/lang/String;
    .param p2, "cookie"    # I

    .prologue
    .line 111
    sget-boolean v0, Lcom/facebook/systrace/TraceDirect;->DISABLED:Z

    if-eqz v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/facebook/systrace/TraceDirect;->nativeAsyncTraceRename(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static asyncTraceStageBegin(Ljava/lang/String;IJLjava/lang/String;)V
    .locals 2
    .param p0, "sectionName"    # Ljava/lang/String;
    .param p1, "cookie"    # I
    .param p2, "deltaNanos"    # J
    .param p4, "stageName"    # Ljava/lang/String;

    .prologue
    .line 85
    sget-boolean v0, Lcom/facebook/systrace/TraceDirect;->DISABLED:Z

    if-eqz v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/systrace/TraceDirect;->nativeAsyncTraceStageBegin(Ljava/lang/String;IJLjava/lang/String;)V

    goto :goto_0
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 1
    .param p0, "sectionName"    # Ljava/lang/String;

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
    .param p0, "sectionName"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "argsLength"    # I

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
    .param p0, "sectionName"    # Ljava/lang/String;
    .param p1, "cookie"    # I

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
    .param p0, "args"    # [Ljava/lang/String;
    .param p1, "argsLength"    # I

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
    .param p0, "enabledTags"    # J

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
    .param p0, "sectionName"    # Ljava/lang/String;
    .param p1, "cookie"    # I

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

.method public static stepAsyncFlow(Ljava/lang/String;I)V
    .locals 1
    .param p0, "sectionName"    # Ljava/lang/String;
    .param p1, "cookie"    # I

    .prologue
    .line 127
    sget-boolean v0, Lcom/facebook/systrace/TraceDirect;->DISABLED:Z

    if-eqz v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/systrace/TraceDirect;->nativeStepAsyncFlow(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static traceCounter(Ljava/lang/String;I)V
    .locals 1
    .param p0, "counterName"    # Ljava/lang/String;
    .param p1, "counterValue"    # I

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
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "scope"    # C

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
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "tid"    # I

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
