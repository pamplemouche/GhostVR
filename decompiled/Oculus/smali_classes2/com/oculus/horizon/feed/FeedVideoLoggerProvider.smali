.class public Lcom/oculus/horizon/feed/FeedVideoLoggerProvider;
.super Lcom/facebook/inject/AbstractAssistedProvider;
.source "FeedVideoLoggerProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractAssistedProvider",
        "<",
        "Lcom/oculus/horizon/feed/FeedVideoLogger;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/inject/InjectorLike;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/facebook/inject/AbstractAssistedProvider;-><init>(Lcom/facebook/inject/InjectorLike;)V

    .line 15
    return-void
.end method


# virtual methods
.method public get(Lcom/oculus/horizon/feed/model/Media;)Lcom/oculus/horizon/feed/FeedVideoLogger;
    .locals 1

    .prologue
    .line 18
    const-string v0, "getMethod_com.oculus.horizon.feed.FeedVideoLogger"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 20
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/feed/FeedVideoLogger;

    invoke-direct {v0, p0, p1}, Lcom/oculus/horizon/feed/FeedVideoLogger;-><init>(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/feed/model/Media;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v0
.end method
