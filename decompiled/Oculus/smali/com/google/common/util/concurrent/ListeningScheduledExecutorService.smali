.class public interface abstract Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;
.super Ljava/lang/Object;
.source "ListeningScheduledExecutorService.java"

# interfaces
.implements Lcom/google/common/util/concurrent/ListeningExecutorService;
.implements Ljava/util/concurrent/ScheduledExecutorService;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
.end annotation


# virtual methods
.method public abstract schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableScheduledFuture",
            "<*>;"
        }
    .end annotation
.end method
