.class public Lcom/oculus/horizon/libraryui/SubLibraryAdapter$SubLibraryViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SubLibraryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/libraryui/SubLibraryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubLibraryViewHolder"
.end annotation


# instance fields
.field public final cancelButton:Landroid/widget/ImageView;

.field public final cloudSyncOverlay:Landroid/widget/ImageView;

.field public final contextButton:Landroid/widget/ImageView;

.field public final contextButtonTouchTarget:Landroid/view/View;

.field public final downloadOverlay:Landroid/widget/ImageView;

.field public final downloadProgress:Landroid/widget/TextView;

.field public final imageView:Lcom/facebook/drawee/view/SimpleDraweeView;

.field public final loadingIndicator:Landroid/widget/ProgressBar;

.field public final textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 83
    sget v0, Lcom/oculus/horizon/R$id;->image_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$SubLibraryViewHolder;->imageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 84
    sget v0, Lcom/oculus/horizon/R$id;->three_column_library_item_download_overlay:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$SubLibraryViewHolder;->downloadOverlay:Landroid/widget/ImageView;

    .line 85
    sget v0, Lcom/oculus/horizon/R$id;->three_column_library_item_cloud_sync_overlay:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$SubLibraryViewHolder;->cloudSyncOverlay:Landroid/widget/ImageView;

    .line 86
    sget v0, Lcom/oculus/horizon/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$SubLibraryViewHolder;->textView:Landroid/widget/TextView;

    .line 87
    sget v0, Lcom/oculus/horizon/R$id;->download_progress_percentage:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$SubLibraryViewHolder;->downloadProgress:Landroid/widget/TextView;

    .line 88
    sget v0, Lcom/oculus/horizon/R$id;->cancel_download:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$SubLibraryViewHolder;->cancelButton:Landroid/widget/ImageView;

    .line 89
    sget v0, Lcom/oculus/horizon/R$id;->context_button_touch_target:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$SubLibraryViewHolder;->contextButtonTouchTarget:Landroid/view/View;

    .line 90
    sget v0, Lcom/oculus/horizon/R$id;->context_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$SubLibraryViewHolder;->contextButton:Landroid/widget/ImageView;

    .line 91
    sget v0, Lcom/oculus/horizon/R$id;->loading_spinner:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$SubLibraryViewHolder;->loadingIndicator:Landroid/widget/ProgressBar;

    .line 92
    return-void
.end method


# virtual methods
.method public setClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$SubLibraryViewHolder;->imageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void
.end method

.method public setContextButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$SubLibraryViewHolder;->contextButtonTouchTarget:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void
.end method
