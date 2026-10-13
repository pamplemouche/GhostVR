.class interface abstract Lcom/facebook/common/time/TimeModule$MoreBindings;
.super Ljava/lang/Object;
.source "TimeModule.java"


# annotations
.annotation build Lcom/facebook/inject/Bindings;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/time/TimeModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "MoreBindings"
.end annotation


# virtual methods
.method public abstract provideCurrentThreadTimeClock(Lcom/facebook/common/time/CurrentThreadTimeClock;)Lcom/facebook/common/time/Clock;
    .annotation runtime Lcom/facebook/common/time/CurrentThreadTime;
    .end annotation
.end method

.method public abstract provideDefaultClock(Lcom/facebook/common/time/SystemClock;)Lcom/facebook/common/time/Clock;
    .annotation build Lcom/facebook/inject/ProviderMethod;
        asDefault = true
    .end annotation
.end method

.method public abstract provideDefaultClock(Lcom/facebook/common/time/AwakeTimeSinceBootClock;)Lcom/facebook/common/time/MonotonicClock;
    .annotation build Lcom/facebook/inject/ProviderMethod;
        asDefault = true
    .end annotation
.end method

.method public abstract provideElapsedAwakeTimeClock(Lcom/facebook/common/time/AwakeTimeSinceBootClock;)Lcom/facebook/common/time/MonotonicClock;
    .annotation runtime Lcom/facebook/common/time/ElapsedAwakeTimeSinceBoot;
    .end annotation
.end method

.method public abstract provideElapsedRealtimeClock(Lcom/facebook/common/time/RealtimeSinceBootClock;)Lcom/facebook/common/time/MonotonicClock;
    .annotation runtime Lcom/facebook/common/time/ElapsedRealtimeSinceBoot;
    .end annotation
.end method
