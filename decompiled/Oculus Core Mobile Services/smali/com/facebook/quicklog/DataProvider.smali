.class public interface abstract Lcom/facebook/quicklog/DataProvider;
.super Ljava/lang/Object;
.source "DataProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataStartType:",
        "Ljava/lang/Object;",
        "DataSnapshotType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# virtual methods
.method public abstract decorateEvent(Lcom/facebook/quicklog/PerformanceLoggingEvent;Ljava/lang/Object;Ljava/lang/Object;)V
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/quicklog/PerformanceLoggingEvent;",
            "TDataStartType;TDataSnapshotType;)V"
        }
    .end annotation
.end method

.method public abstract getProviderName()Ljava/lang/String;
.end method

.method public abstract getProviderType()J
.end method

.method public abstract getSnapshotType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TDataSnapshotType;>;"
        }
    .end annotation
.end method

.method public abstract getStartType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TDataStartType;>;"
        }
    .end annotation
.end method

.method public abstract isEnabled(Lcom/facebook/quicklog/MetadataGKs;)Z
.end method

.method public abstract snapshot()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDataSnapshotType;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract start()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDataStartType;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract stop(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDataStartType;)V"
        }
    .end annotation
.end method
