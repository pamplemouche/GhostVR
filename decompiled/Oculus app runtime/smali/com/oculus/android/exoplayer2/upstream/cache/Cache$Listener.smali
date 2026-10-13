.class public interface abstract Lcom/oculus/android/exoplayer2/upstream/cache/Cache$Listener;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/android/exoplayer2/upstream/cache/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onSpanAdded(Lcom/oculus/android/exoplayer2/upstream/cache/Cache;Lcom/oculus/android/exoplayer2/upstream/cache/CacheSpan;)V
.end method

.method public abstract onSpanRemoved(Lcom/oculus/android/exoplayer2/upstream/cache/Cache;Lcom/oculus/android/exoplayer2/upstream/cache/CacheSpan;)V
.end method

.method public abstract onSpanTouched(Lcom/oculus/android/exoplayer2/upstream/cache/Cache;Lcom/oculus/android/exoplayer2/upstream/cache/CacheSpan;Lcom/oculus/android/exoplayer2/upstream/cache/CacheSpan;)V
.end method
