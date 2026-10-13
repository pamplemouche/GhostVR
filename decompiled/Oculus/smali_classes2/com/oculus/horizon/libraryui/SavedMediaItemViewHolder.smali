.class public Lcom/oculus/horizon/libraryui/SavedMediaItemViewHolder;
.super Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter$SavedDiveItemViewHolder;
.source "SavedMediaItemViewHolder.java"


# instance fields
.field public final contextButton:Landroid/widget/ImageView;

.field public final imageView:Lcom/facebook/drawee/view/SimpleDraweeView;

.field public final playIcon:Landroid/widget/ImageView;

.field public final titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter$SavedDiveItemViewHolder;-><init>(Landroid/view/View;)V

    .line 21
    sget v0, Lcom/oculus/horizon/R$id;->preview_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/SavedMediaItemViewHolder;->imageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 22
    sget v0, Lcom/oculus/horizon/R$id;->play_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/SavedMediaItemViewHolder;->playIcon:Landroid/widget/ImageView;

    .line 23
    sget v0, Lcom/oculus/horizon/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/SavedMediaItemViewHolder;->titleView:Landroid/widget/TextView;

    .line 24
    sget v0, Lcom/oculus/horizon/R$id;->context_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/SavedMediaItemViewHolder;->contextButton:Landroid/widget/ImageView;

    .line 25
    return-void
.end method


# virtual methods
.method public bindHomeFeedItem(Lcom/oculus/horizon/homefeed/api/HomeFeedItem;Lcom/oculus/horizon/libraryui/SavedCategory;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    iget-object v0, p1, Lcom/oculus/horizon/homefeed/api/HomeFeedItem;->thumbnailImage:Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Image;

    .line 30
    if-eqz v0, :cond_1

    .line 31
    iget-object v1, p0, Lcom/oculus/horizon/libraryui/SavedMediaItemViewHolder;->imageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v0, v0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Image;->uri:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedMediaItemViewHolder;->imageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 33
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedMediaItemViewHolder;->imageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setAlpha(F)V

    .line 38
    :goto_0
    sget-object v0, Lcom/oculus/horizon/libraryui/SavedCategory;->VIDEOS:Lcom/oculus/horizon/libraryui/SavedCategory;

    invoke-virtual {v0, p2}, Lcom/oculus/horizon/libraryui/SavedCategory;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedMediaItemViewHolder;->playIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    :cond_0
    iget-object v0, p1, Lcom/oculus/horizon/homefeed/api/HomeFeedItem;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedMediaItemViewHolder;->titleView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/oculus/horizon/homefeed/api/HomeFeedItem;->source:Lcom/oculus/horizon/homefeed/api/HomeFeedItem$StorySource;

    iget-object v1, v1, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$StorySource;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :goto_1
    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedMediaItemViewHolder;->imageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    goto :goto_0

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedMediaItemViewHolder;->titleView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/oculus/horizon/homefeed/api/HomeFeedItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public getContextButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedMediaItemViewHolder;->contextButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public setClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedMediaItemViewHolder;->imageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method

.method public setContextClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedMediaItemViewHolder;->contextButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method
