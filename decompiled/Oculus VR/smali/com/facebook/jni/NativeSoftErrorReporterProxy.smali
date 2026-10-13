.class public final Lcom/facebook/jni/NativeSoftErrorReporterProxy;
.super Ljava/lang/Object;
.source "NativeSoftErrorReporterProxy.java"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation


# static fields
.field private static sErrorReportingExecutorService:Ljava/util/concurrent/ExecutorService;

.field private static sErrorReportingGkReader:Lcom/facebook/common/errorreporting/ErrorReportingGkReader;

.field private static sFbErrorReporterWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/facebook/common/errorreporting/FbErrorReporter;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSoftErrorCache:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/facebook/common/errorreporting/SoftError;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/facebook/jni/NativeSoftErrorReporterProxy;->sSoftErrorCache:Ljava/util/LinkedList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/facebook/common/util/TriState;
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/facebook/jni/NativeSoftErrorReporterProxy;->shouldReportNativeSoftErrors()Lcom/facebook/common/util/TriState;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized flushSoftErrorCacheAsync()V
    .locals 5

    .prologue
    .line 117
    const-class v1, Lcom/facebook/jni/NativeSoftErrorReporterProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/jni/NativeSoftErrorReporterProxy;->sFbErrorReporterWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lcom/facebook/jni/NativeSoftErrorReporterProxy;->sFbErrorReporterWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/errorreporting/FbErrorReporter;

    .line 119
    if-eqz v0, :cond_0

    sget-object v2, Lcom/facebook/jni/NativeSoftErrorReporterProxy;->sErrorReportingGkReader:Lcom/facebook/common/errorreporting/ErrorReportingGkReader;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/facebook/jni/NativeSoftErrorReporterProxy;->sSoftErrorCache:Ljava/util/LinkedList;

    .line 121
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    sget-object v3, Lcom/facebook/jni/NativeSoftErrorReporterProxy;->sSoftErrorCache:Ljava/util/LinkedList;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 124
    :try_start_1
    sget-object v4, Lcom/facebook/jni/NativeSoftErrorReporterProxy;->sSoftErrorCache:Ljava/util/LinkedList;

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    sget-object v4, Lcom/facebook/jni/NativeSoftErrorReporterProxy;->sSoftErrorCache:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 126
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    :try_start_2
    sget-object v3, Lcom/facebook/jni/NativeSoftErrorReporterProxy;->sErrorReportingExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/facebook/jni/NativeSoftErrorReporterProxy$1;

    invoke-direct {v4, v2, v0}, Lcom/facebook/jni/NativeSoftErrorReporterProxy$1;-><init>(Ljava/util/List;Lcom/facebook/common/errorreporting/FbErrorReporter;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 141
    :cond_0
    monitor-exit v1

    return-void

    .line 126
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 117
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static native generateNativeSoftError()V
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end method

.method private static getNativeCategoryString(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Native] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/facebook/jni/NativeSoftErrorReporterProxy;->getSeverityTag(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSeverityTag(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    packed-switch p0, :pswitch_data_0

    .line 83
    const-string v0, "<level:unknown> "

    :goto_0
    return-object v0

    .line 79
    :pswitch_0
    const-string v0, "<level:warning> "

    goto :goto_0

    .line 81
    :pswitch_1
    const-string v0, "<level:mustfix> "

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static declared-synchronized insertSoftErrorIntoCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 4

    .prologue
    .line 103
    const-class v1, Lcom/facebook/jni/NativeSoftErrorReporterProxy;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/facebook/jni/NativeSoftErrorReporterProxy;->sSoftErrorCache:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 104
    :try_start_1
    sget-object v0, Lcom/facebook/jni/NativeSoftErrorReporterProxy;->sSoftErrorCache:Ljava/util/LinkedList;

    .line 105
    invoke-static {p0, p1}, Lcom/facebook/common/errorreporting/SoftError;->newBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/common/errorreporting/SoftErrorBuilder;

    move-result-object v3

    .line 106
    invoke-virtual {v3, p2}, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->setCause(Ljava/lang/Throwable;)Lcom/facebook/common/errorreporting/SoftErrorBuilder;

    move-result-object v3

    .line 107
    invoke-virtual {v3, p3}, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->setSamplingFrequency(I)Lcom/facebook/common/errorreporting/SoftErrorBuilder;

    move-result-object v3

    .line 108
    invoke-virtual {v3}, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->build()Lcom/facebook/common/errorreporting/SoftError;

    move-result-object v3

    .line 104
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 110
    :goto_0
    sget-object v0, Lcom/facebook/jni/NativeSoftErrorReporterProxy;->sSoftErrorCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v3, 0x32

    if-lt v0, v3, :cond_0

    .line 111
    sget-object v0, Lcom/facebook/jni/NativeSoftErrorReporterProxy;->sSoftErrorCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 103
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 113
    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 114
    monitor-exit v1

    return-void
.end method

.method private static shouldReportNativeSoftErrors()Lcom/facebook/common/util/TriState;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/facebook/jni/NativeSoftErrorReporterProxy;->sErrorReportingGkReader:Lcom/facebook/common/errorreporting/ErrorReportingGkReader;

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    .line 94
    :goto_0
    return-object v0

    .line 92
    :cond_0
    sget-object v0, Lcom/facebook/jni/NativeSoftErrorReporterProxy;->sErrorReportingGkReader:Lcom/facebook/common/errorreporting/ErrorReportingGkReader;

    .line 94
    invoke-interface {v0}, Lcom/facebook/common/errorreporting/ErrorReportingGkReader;->shouldReportNativeSoftErrors()Lcom/facebook/common/util/TriState;

    move-result-object v0

    goto :goto_0
.end method

.method public static softReport(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/facebook/jni/NativeSoftErrorReporterProxy;->softReport(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 60
    return-void
.end method

.method public static softReport(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 1
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 71
    invoke-static {p0, p1}, Lcom/facebook/jni/NativeSoftErrorReporterProxy;->getNativeCategoryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0, p2, p3, p4}, Lcom/facebook/jni/NativeSoftErrorReporterProxy;->insertSoftErrorIntoCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 73
    invoke-static {}, Lcom/facebook/jni/NativeSoftErrorReporterProxy;->flushSoftErrorCacheAsync()V

    .line 74
    return-void
.end method
