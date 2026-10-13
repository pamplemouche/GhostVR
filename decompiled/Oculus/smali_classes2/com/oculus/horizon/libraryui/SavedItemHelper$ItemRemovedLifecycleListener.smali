.class public interface abstract Lcom/oculus/horizon/libraryui/SavedItemHelper$ItemRemovedLifecycleListener;
.super Ljava/lang/Object;
.source "SavedItemHelper.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/libraryui/SavedItemHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ItemRemovedLifecycleListener"
.end annotation


# virtual methods
.method public abstract onItemRemovedError(Lcom/oculus/horizon/libraryui/SavedCategory;Lcom/oculus/horizon/homefeed/api/HomeFeedItem;)V
.end method

.method public abstract onItemRemovedStart(Lcom/oculus/horizon/libraryui/SavedCategory;Lcom/oculus/horizon/homefeed/api/HomeFeedItem;)V
.end method

.method public abstract onItemRemovedSuccess(Lcom/oculus/horizon/libraryui/SavedCategory;Lcom/oculus/horizon/homefeed/api/HomeFeedItem;)V
.end method
