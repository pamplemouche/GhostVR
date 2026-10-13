.class public interface abstract Lcom/oculus/downloader/OculusDownloader;
.super Ljava/lang/Object;
.source "OculusDownloader.java"


# virtual methods
.method public abstract enqueue(Lcom/oculus/downloader/model/DownloadConfig;Lcom/oculus/extras/Extras;)J
.end method

.method public abstract query(J)Lcom/oculus/downloader/model/DownloadInfo;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract remove(J)Z
.end method
