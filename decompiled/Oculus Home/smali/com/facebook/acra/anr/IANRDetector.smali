.class public interface abstract Lcom/facebook/acra/anr/IANRDetector;
.super Ljava/lang/Object;
.source "IANRDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/acra/anr/IANRDetector$ANRDetectorStopListener;
    }
.end annotation


# virtual methods
.method public abstract nativeLibraryLoaded(Z)V
.end method

.method public abstract pause()V
.end method

.method public abstract setANRDataProvider(Lcom/facebook/acra/anr/ANRDataProvider;)V
.end method

.method public abstract setCheckIntervalMs(J)V
.end method

.method public abstract setListener(Lcom/facebook/acra/anr/ANRDetectorListener;)V
.end method

.method public abstract start()V
.end method

.method public abstract stop(Lcom/facebook/acra/anr/IANRDetector$ANRDetectorStopListener;)V
.end method
