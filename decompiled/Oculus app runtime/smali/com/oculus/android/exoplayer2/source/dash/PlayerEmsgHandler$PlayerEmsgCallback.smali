.class public interface abstract Lcom/oculus/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;
.super Ljava/lang/Object;
.source "PlayerEmsgHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/android/exoplayer2/source/dash/PlayerEmsgHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlayerEmsgCallback"
.end annotation


# virtual methods
.method public abstract onDashLiveMediaPresentationEndSignalEncountered()V
.end method

.method public abstract onDashManifestPublishTimeExpired(J)V
.end method

.method public abstract onDashManifestRefreshRequested()V
.end method
