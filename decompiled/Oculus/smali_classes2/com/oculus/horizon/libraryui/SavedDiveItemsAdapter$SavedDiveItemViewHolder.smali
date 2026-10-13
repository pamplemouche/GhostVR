.class public abstract Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter$SavedDiveItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SavedDiveItemsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SavedDiveItemViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 26
    return-void
.end method


# virtual methods
.method public abstract bindHomeFeedItem(Lcom/oculus/horizon/homefeed/api/HomeFeedItem;Lcom/oculus/horizon/libraryui/SavedCategory;)V
.end method

.method public abstract getContextButton()Landroid/view/View;
.end method

.method public abstract setClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setContextClickListener(Landroid/view/View$OnClickListener;)V
.end method
