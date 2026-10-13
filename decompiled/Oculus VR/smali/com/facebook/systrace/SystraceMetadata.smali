.class public final Lcom/facebook/systrace/SystraceMetadata;
.super Ljava/lang/Object;
.source "SystraceMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/systrace/SystraceMetadata$JustInTimeTracer;
    }
.end annotation


# static fields
.field private static volatile sThreadTidMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Thread;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/facebook/systrace/SystraceMetadata$JustInTimeTracer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/systrace/SystraceMetadata$JustInTimeTracer;-><init>(Lcom/facebook/systrace/SystraceMetadata$1;)V

    invoke-static {v0}, Lcom/facebook/systrace/TraceConfig;->addListener(Lcom/facebook/systrace/TraceListener;)V

    .line 35
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 13
    invoke-static {}, Lcom/facebook/systrace/SystraceMetadata;->onTraceStarted()V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 13
    invoke-static {}, Lcom/facebook/systrace/SystraceMetadata;->onTraceStopped()V

    return-void
.end method

.method private static getProcessLabels()Ljava/lang/String;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatUse"
        }
    .end annotation

    .prologue
    .line 96
    const-string v0, "dalvik.vm.heapgrowthlimit"

    invoke-static {v0}, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    const-string v1, "dalvik.vm.heapmaxfree"

    invoke-static {v1}, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    const-string v2, "dalvik.vm.heapminfree"

    invoke-static {v2}, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    const-string v3, "dalvik.vm.heapstartsize"

    invoke-static {v3}, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    const-string v4, "dalvik.vm.heaptargetutilization"

    .line 101
    invoke-static {v4}, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 102
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 104
    const-string v6, "device=%s,heapgrowthlimit=%s,heapstartsize=%s,heapminfree=%s,heapmaxfree=%s,heaptargetutilization=%s"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v5, 0x1

    aput-object v0, v7, v5

    const/4 v0, 0x2

    aput-object v3, v7, v0

    const/4 v0, 0x3

    aput-object v1, v7, v0

    const/4 v0, 0x4

    aput-object v2, v7, v0

    const/4 v0, 0x5

    aput-object v4, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method private static onTraceStarted()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/facebook/systrace/SystraceMetadata;->traceCurrentThreadMetadata()V

    .line 41
    invoke-static {}, Lcom/facebook/systrace/SystraceMetadata;->traceTagsEnabledMetadata()V

    .line 42
    invoke-static {}, Lcom/facebook/systrace/SystraceMetadata;->traceProcessMetadata()V

    .line 44
    invoke-static {}, Lcom/facebook/systrace/SystraceMetadata;->trackingTids()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-static {}, Lcom/facebook/systrace/SystraceMetadata;->traceExistingThreadsMetadata()V

    goto :goto_0
.end method

.method private static onTraceStopped()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public static traceCurrentThreadMetadata()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x40

    .line 111
    invoke-static {v4, v5}, Lcom/facebook/systrace/TraceConfig;->isTracing(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 116
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 118
    const-string v2, "thread_name"

    .line 119
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 118
    invoke-static {v4, v5, v2, v3, v0}, Lcom/facebook/systrace/Systrace;->traceMetadata(JLjava/lang/String;Ljava/lang/String;I)V

    .line 121
    sget-object v2, Lcom/facebook/systrace/SystraceMetadata;->sThreadTidMap:Ljava/util/WeakHashMap;

    if-eqz v2, :cond_0

    .line 122
    sget-object v2, Lcom/facebook/systrace/SystraceMetadata;->sThreadTidMap:Ljava/util/WeakHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static traceExistingThreadsMetadata()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x40

    .line 127
    invoke-static {v6, v7}, Lcom/facebook/systrace/TraceConfig;->isTracing(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 131
    :cond_0
    const-string v0, "TraceExistingThreadsMetadata"

    invoke-static {v6, v7, v0}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 133
    :try_start_0
    sget-object v0, Lcom/facebook/systrace/SystraceMetadata;->sThreadTidMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 134
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 136
    const-wide/16 v4, 0x40

    const-string v3, "thread_name"

    .line 137
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 136
    invoke-static {v4, v5, v3, v1, v0}, Lcom/facebook/systrace/Systrace;->traceMetadata(JLjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 140
    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    throw v0

    :cond_1
    invoke-static {v6, v7}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    goto :goto_0
.end method

.method private static traceProcessMetadata()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x40

    .line 81
    invoke-static {v2, v3}, Lcom/facebook/systrace/TraceConfig;->isTracing(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 85
    :cond_0
    const-string v0, "process_name"

    .line 88
    invoke-static {}, Lcom/facebook/systrace/SystraceEnabledDetector;->getMyCommandLine()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {v2, v3, v0, v1, v4}, Lcom/facebook/systrace/Systrace;->traceMetadata(JLjava/lang/String;Ljava/lang/String;I)V

    .line 90
    const-string v0, "process_labels"

    .line 91
    invoke-static {}, Lcom/facebook/systrace/SystraceMetadata;->getProcessLabels()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-static {v2, v3, v0, v1, v4}, Lcom/facebook/systrace/Systrace;->traceMetadata(JLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static traceTagsEnabledMetadata()V
    .locals 5

    .prologue
    .line 66
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lcom/facebook/systrace/TraceConfig;->isTracing(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x7f

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 71
    const-string v1, "Android trace tags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-static {}, Lcom/facebook/systrace/TraceConfig;->getAndroidTagsEnabled()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, ", Facebook trace tags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-static {}, Lcom/facebook/systrace/TraceConfig;->getFacebookTagsEnabled()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    const-wide/16 v2, 0x40

    const-string v1, "process_labels"

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    .line 76
    invoke-static {v2, v3, v1, v0, v4}, Lcom/facebook/systrace/Systrace;->traceMetadata(JLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static trackingTids()Z
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/facebook/systrace/SystraceMetadata;->sThreadTidMap:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
