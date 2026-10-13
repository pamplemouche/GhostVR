.class public interface abstract Lcom/facebook/acra/anr/ANRDetectorListener;
.super Ljava/lang/Object;
.source "ANRDetectorListener.java"


# virtual methods
.method public abstract getBlackBoxTraceId()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getLongStallTraceId()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract onEndANRDataCapture()V
.end method

.method public abstract onStartANRDataCapture()V
.end method
