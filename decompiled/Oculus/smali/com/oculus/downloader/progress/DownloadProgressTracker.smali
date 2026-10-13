.class public interface abstract Lcom/oculus/downloader/progress/DownloadProgressTracker;
.super Ljava/lang/Object;
.source "DownloadProgressTracker.java"


# virtual methods
.method public abstract addDownloadProgressChangeListener(Lcom/oculus/downloader/progress/DownloadProgressChangeListener;)V
.end method

.method public abstract getDownloadProgress(Ljava/lang/String;)Lcom/oculus/downloader/progress/model/DownloadProgressUnit;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract removeDownloadProgress(Ljava/lang/String;)V
.end method

.method public abstract startTrackingChangesIfNeeded()V
.end method
