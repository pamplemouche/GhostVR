.class public interface abstract Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPresenter$View;
.super Ljava/lang/Object;
.source "LocalMediaPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract addMediaItems(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/localmedia/MediaItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract clearMediaItems()V
.end method

.method public abstract getColumnCount()I
.end method

.method public abstract getItemCount()I
.end method

.method public abstract getLastVisibleItemPosition()I
.end method

.method public abstract requestStoragePermission()V
.end method

.method public abstract setLoadingIndicator(Z)V
.end method

.method public abstract stopSwipeRefreshLayoutLoading()V
.end method
