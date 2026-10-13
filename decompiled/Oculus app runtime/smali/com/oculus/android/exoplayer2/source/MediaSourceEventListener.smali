.class public interface abstract Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;
.super Ljava/lang/Object;
.source "MediaSourceEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    }
.end annotation


# virtual methods
.method public abstract onDownstreamFormatChanged(ILcom/oculus/android/exoplayer2/Format;ILjava/lang/Object;J)V
.end method

.method public abstract onLoadCanceled(Lcom/oculus/android/exoplayer2/upstream/DataSpec;IILcom/oculus/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V
.end method

.method public abstract onLoadCompleted(Lcom/oculus/android/exoplayer2/upstream/DataSpec;IILcom/oculus/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V
.end method

.method public abstract onLoadError(Lcom/oculus/android/exoplayer2/upstream/DataSpec;IILcom/oculus/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V
.end method

.method public abstract onLoadStarted(Lcom/oculus/android/exoplayer2/upstream/DataSpec;IILcom/oculus/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V
.end method

.method public abstract onUpstreamDiscarded(IJJ)V
.end method
