.class public Lcom/oculus/horizon/libraryui/SavedAppItemViewHolder;
.super Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter$SavedDiveItemViewHolder;
.source "SavedAppItemViewHolder.java"


# instance fields
.field public final contextButton:Landroid/widget/ImageView;

.field public final imageView:Lcom/facebook/drawee/view/SimpleDraweeView;

.field public final titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter$SavedDiveItemViewHolder;-><init>(Landroid/view/View;)V

    .line 21
    sget v0, Lcom/oculus/horizon/R$id;->image_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/SavedAppItemViewHolder;->imageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 22
    sget v0, Lcom/oculus/horizon/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/SavedAppItemViewHolder;->titleView:Landroid/widget/TextView;

    .line 23
    sget v0, Lcom/oculus/horizon/R$id;->context_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/SavedAppItemViewHolder;->contextButton:Landroid/widget/ImageView;

    .line 24
    return-void
.end method


# virtual methods
.method public bindHomeFeedItem(Lcom/oculus/horizon/homefeed/api/HomeFeedItem;Lcom/oculus/horizon/libraryui/SavedCategory;)V
    .locals 4

    .prologue
    .line 29
    iget-object v0, p1, Lcom/oculus/horizon/homefeed/api/HomeFeedItem;->targetObject:Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Node;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oculus/horizon/homefeed/api/HomeFeedItem;->targetObject:Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Node;

    iget-object v0, v0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Node;->iconImage:Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Image;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p1, Lcom/oculus/horizon/homefeed/api/HomeFeedItem;->targetObject:Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Node;

    iget-object v0, v0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Node;->iconImage:Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Image;

    .line 35
    :goto_0
    if-eqz v0, :cond_1

    .line 36
    iget-object v1, p0, Lcom/oculus/horizon/libraryui/SavedAppItemViewHolder;->imageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v0, v0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Image;->uri:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedAppItemViewHolder;->imageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 38
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedAppItemViewHolder;->imageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setAlpha(F)V

    .line 43
    :goto_1
    invoke-virtual {p1}, Lcom/oculus/horizon/homefeed/api/HomeFeedItem;->isCompatibleWithDevice()Z

    move-result v0

    if-nez v0, :cond_2

    .line 44
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedAppItemViewHolder;->titleView:Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->common_not_supported:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 45
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedAppItemViewHolder;->imageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 46
    invoke-virtual {v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/oculus/horizon/libraryui/SavedAppItemViewHolder;->imageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 50
    invoke-virtual {v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oculus/horizon/R$color;->saved_deletion_progress_white_overlay:I

    .line 52
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 47
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->setOverlayImage(Landroid/graphics/drawable/Drawable;)V

    .line 61
    :goto_2
    return-void

    .line 32
    :cond_0
    iget-object v0, p1, Lcom/oculus/horizon/homefeed/api/HomeFeedItem;->thumbnailImage:Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Image;

    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedAppItemViewHolder;->imageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    goto :goto_1

    .line 56
    :cond_2
    iget-object v0, p1, Lcom/oculus/horizon/homefeed/api/HomeFeedItem;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedAppItemViewHolder;->titleView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/oculus/horizon/homefeed/api/HomeFeedItem;->source:Lcom/oculus/horizon/homefeed/api/HomeFeedItem$StorySource;

    iget-object v1, v1, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$StorySource;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedAppItemViewHolder;->titleView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/oculus/horizon/homefeed/api/HomeFeedItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public getContextButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedAppItemViewHolder;->contextButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public setClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedAppItemViewHolder;->imageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method public setContextClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedAppItemViewHolder;->contextButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void
.end method
