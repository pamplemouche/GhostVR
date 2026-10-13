.class public interface abstract Lcom/oculus/horizon/libraryui/SavedPresenter$View;
.super Ljava/lang/Object;
.source "SavedPresenter.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/libraryui/SavedPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract removeItem(Lcom/oculus/horizon/libraryui/SavedCategory;I)V
.end method

.method public abstract showHomeFeedItems()V
.end method

.method public abstract showHomeFeedItemsFetchError()V
.end method

.method public abstract showLoadingIcon()V
.end method

.method public abstract showRemoveItemError()V
.end method
