.class public interface abstract Lcom/oculus/android/exoplayer2/source/MediaSource;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/android/exoplayer2/source/MediaSource$MediaPeriodId;,
        Lcom/oculus/android/exoplayer2/source/MediaSource$Listener;
    }
.end annotation


# static fields
.field public static final MEDIA_SOURCE_REUSED_ERROR_MESSAGE:Ljava/lang/String; = "MediaSource instances are not allowed to be reused."


# virtual methods
.method public abstract createPeriod(Lcom/oculus/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/oculus/android/exoplayer2/upstream/Allocator;)Lcom/oculus/android/exoplayer2/source/MediaPeriod;
.end method

.method public abstract maybeThrowSourceInfoRefreshError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract prepareSource(Lcom/oculus/android/exoplayer2/ExoPlayer;ZLcom/oculus/android/exoplayer2/source/MediaSource$Listener;)V
.end method

.method public abstract releasePeriod(Lcom/oculus/android/exoplayer2/source/MediaPeriod;)V
.end method

.method public abstract releaseSource()V
.end method
