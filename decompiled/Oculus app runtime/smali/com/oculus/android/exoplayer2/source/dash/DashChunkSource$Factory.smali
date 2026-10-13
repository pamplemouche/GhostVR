.class public interface abstract Lcom/oculus/android/exoplayer2/source/dash/DashChunkSource$Factory;
.super Ljava/lang/Object;
.source "DashChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/android/exoplayer2/source/dash/DashChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract createDashChunkSource(Lcom/oculus/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;I[ILcom/oculus/android/exoplayer2/trackselection/TrackSelection;IJZZLcom/oculus/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;)Lcom/oculus/android/exoplayer2/source/dash/DashChunkSource;
    .param p11    # Lcom/oculus/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
