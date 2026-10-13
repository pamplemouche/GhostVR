.class public Lcom/facebook/common/time/CurrentThreadTimeClockMethodAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "CurrentThreadTimeClockMethodAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/facebook/common/time/CurrentThreadTimeClock;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/facebook/common/time/CurrentThreadTimeClock;
    .locals 2

    .prologue
    .line 14
    const-string v1, "getMethod_com.facebook.common.time.CurrentThreadTimeClock"

    invoke-static {v1}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 16
    :try_start_0
    invoke-static {}, Lcom/facebook/common/time/TimeModule;->provideCurrentThreadTimeClock()Lcom/facebook/common/time/CurrentThreadTimeClock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 19
    .local v0, "instance":Lcom/facebook/common/time/CurrentThreadTimeClock;
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    .end local v0    # "instance":Lcom/facebook/common/time/CurrentThreadTimeClock;
    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/facebook/common/time/CurrentThreadTimeClockMethodAutoProvider;->get()Lcom/facebook/common/time/CurrentThreadTimeClock;

    move-result-object v0

    return-object v0
.end method
