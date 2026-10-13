.class public interface abstract Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;
.super Ljava/lang/Object;
.source "MaxEventsPerBatchProvider.java"


# annotations
.annotation build Landroidx/annotation/WorkerThread;
.end annotation


# virtual methods
.method public abstract getAnalyticsBatchSize()I
.end method

.method public abstract getBufferSize()I
.end method

.method public abstract getEnableAnalyticsBatching()Z
.end method

.method public abstract getEnableAnalyticsBatchingIfInit()Z
.end method

.method public abstract getHardLimit()I
.end method

.method public abstract getSoftLimit()I
.end method
