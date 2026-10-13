.class public Lcom/oculus/horizon/pdp/PdpCarouselViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PdpCarouselViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private mOnItemClickListener:Lcom/oculus/horizon/pdp/PdpCarouselAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/oculus/horizon/pdp/PdpCarouselAdapter$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 18
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iput-object p2, p0, Lcom/oculus/horizon/pdp/PdpCarouselViewHolder;->mOnItemClickListener:Lcom/oculus/horizon/pdp/PdpCarouselAdapter$OnItemClickListener;

    .line 21
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/oculus/horizon/pdp/PdpCarouselViewHolder;->mImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 22
    return-void
.end method


# virtual methods
.method public bindImage(Lcom/oculus/http/common/Image;)V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpCarouselViewHolder;->mImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p1, Lcom/oculus/http/common/Image;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpCarouselViewHolder;->mOnItemClickListener:Lcom/oculus/horizon/pdp/PdpCarouselAdapter$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpCarouselViewHolder;->mOnItemClickListener:Lcom/oculus/horizon/pdp/PdpCarouselAdapter$OnItemClickListener;

    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/PdpCarouselViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/oculus/horizon/pdp/PdpCarouselAdapter$OnItemClickListener;->onItemClick(I)V

    .line 33
    :cond_0
    return-void
.end method
