.class public Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LocalMediaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemViewHolder"
.end annotation


# instance fields
.field private final mImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private final mPlayIcon:Landroid/view/View;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 136
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter$ItemViewHolder;->mView:Landroid/view/View;

    .line 137
    sget v0, Lcom/oculus/horizon/R$id;->drawee_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter$ItemViewHolder;->mImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 138
    sget v0, Lcom/oculus/horizon/R$id;->play_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter$ItemViewHolder;->mPlayIcon:Landroid/view/View;

    .line 139
    return-void
.end method


# virtual methods
.method public bind(Landroid/net/Uri;Landroid/view/View$OnClickListener;Z)V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter$ItemViewHolder;->mImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 144
    iget-object v1, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter$ItemViewHolder;->mPlayIcon:Landroid/view/View;

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter$ItemViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    return-void

    .line 144
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
