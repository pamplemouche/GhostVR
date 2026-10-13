.class public final Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;
.super Ljava/lang/Object;
.source "ClassTracingLogger.java"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation


# static fields
.field private static final CLASS_PREFIXES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/Class;

.field private static final sClassIds:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sEnabled:Z

.field private static volatile sLoggerEnabled:Z

.field private static volatile sPureJava:Z

.field private static volatile sSystraceEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    const-class v0, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;

    sput-object v0, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->TAG:Ljava/lang/Class;

    .line 26
    sput-boolean v1, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->sLoggerEnabled:Z

    .line 27
    sput-boolean v1, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->sSystraceEnabled:Z

    .line 28
    sput-boolean v1, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->sPureJava:Z

    .line 32
    sput-boolean v1, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->sEnabled:Z

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->CLASS_PREFIXES:[Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->sClassIds:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 43
    const-string v0, "classtracing"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 45
    new-instance v0, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger$1;

    invoke-direct {v0}, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger$1;-><init>()V

    invoke-static {v0}, Lcom/facebook/systrace/Systrace;->registerListener(Lcom/facebook/systrace/TraceListener;)V

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginClassLoad(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 67
    sget-boolean v0, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->sEnabled:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/facebook/common/dextricks/classid/ClassId;->sInitialized:Z

    if-nez v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    sget-object v0, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->CLASS_PREFIXES:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 72
    sget-object v0, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->CLASS_PREFIXES:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->maybePrintCallstack(Ljava/lang/String;[Ljava/lang/String;)V

    .line 75
    :cond_2
    sget-boolean v0, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->sPureJava:Z

    if-nez v0, :cond_0

    .line 76
    invoke-static {p0}, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->classLoadStarted(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static native classLoadCancelled()V
.end method

.method private static native classLoadStarted(Ljava/lang/String;)V
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method private static native classLoaded(J)V
.end method

.method public static classLoaded(Ljava/lang/Class;)V
    .locals 3
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 95
    sget-boolean v0, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->sEnabled:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/facebook/common/dextricks/classid/ClassId;->sInitialized:Z

    if-nez v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-static {p0}, Lcom/facebook/common/dextricks/classid/ClassId;->getClassId(Ljava/lang/Class;)J

    move-result-wide v0

    .line 101
    sget-boolean v2, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->sPureJava:Z

    if-nez v2, :cond_2

    .line 102
    invoke-static {v0, v1}, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->classLoaded(J)V

    goto :goto_0

    .line 104
    :cond_2
    sget-object v2, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->sClassIds:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static classNotFound()V
    .locals 4
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 82
    sget-boolean v0, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->sEnabled:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/facebook/common/dextricks/classid/ClassId;->sInitialized:Z

    if-nez v0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    sget-boolean v0, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->sPureJava:Z

    if-nez v0, :cond_2

    .line 87
    invoke-static {}, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->classLoadCancelled()V

    goto :goto_0

    .line 89
    :cond_2
    sget-object v0, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->sClassIds:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static native configureTracing(ZZ)V
.end method

.method private static native loadedClassIds()[J
.end method

.method private static maybePrintCallstack(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    .line 231
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_2

    if-nez v2, :cond_2

    .line 232
    if-nez v2, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v3

    .line 231
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 232
    goto :goto_1

    .line 235
    :cond_2
    if-nez v2, :cond_4

    .line 244
    :cond_3
    return-void

    .line 239
    :cond_4
    const-string v0, "CLSSTK"

    const-string v2, "Classload detected for class: %s"

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-static {v0, v2, v4}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    move v0, v1

    .line 241
    :goto_2
    array-length v4, v2

    if-ge v0, v4, :cond_3

    .line 242
    const-string v4, "CLSSTK"

    const-string v5, "\t%s"

    new-array v6, v3, [Ljava/lang/Object;

    aget-object v7, v2, v0

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v5, v6}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static setLogToSystrace(Z)V
    .locals 2

    .prologue
    .line 185
    sput-boolean p0, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->sSystraceEnabled:Z

    .line 186
    sget-boolean v0, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->sLoggerEnabled:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->sSystraceEnabled:Z

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->sEnabled:Z

    .line 188
    sget-boolean v0, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->sPureJava:Z

    if-nez v0, :cond_1

    .line 189
    sget-boolean v0, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->sLoggerEnabled:Z

    sget-boolean v1, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->sSystraceEnabled:Z

    invoke-static {v0, v1}, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->configureTracing(ZZ)V

    .line 191
    :cond_1
    return-void

    .line 186
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
