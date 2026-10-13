.class public interface abstract Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;
.super Ljava/lang/Object;
.source "QuickPerformanceLoggerGKs.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# virtual methods
.method public abstract getMetadataGKs()Lcom/facebook/quicklog/MetadataGKs;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract perfExperimentIsMarkerOnValue()Z
.end method

.method public abstract perfExperimentMarkersWhitelist()Ljava/lang/String;
.end method

.method public abstract perfExperimentShouldFakeIsMarkerOn()Z
.end method

.method public abstract perfExperimentShouldSendAll()Z
.end method

.method public abstract perfExperimentShouldSendNone()Z
.end method

.method public abstract shouldReportWhenNoConfig()Z
.end method

.method public abstract shouldUseDataProviders()Z
.end method
