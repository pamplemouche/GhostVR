.class public interface abstract Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy;
.super Ljava/lang/Object;
.source "IConnectionRetryStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy$RetryStrategy;
    }
.end annotation


# virtual methods
.method public abstract getStrategy()Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy$RetryStrategy;
.end method

.method public abstract hasNext(Z)Z
.end method

.method public abstract next(Z)I
.end method
