.class public Lcom/oculus/horizon/pdp/view/BundleHeaderViewHolder;
.super Lcom/oculus/horizon/pdp/view/BundleRowViewHolder;
.source "BundleHeaderViewHolder.java"


# instance fields
.field private final mNameView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/oculus/horizon/pdp/view/BundleRowViewHolder;-><init>(Landroid/view/View;)V

    .line 19
    sget v0, Lcom/oculus/horizon/R$id;->bundle_item_header_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleHeaderViewHolder;->mNameView:Landroid/widget/TextView;

    .line 20
    return-void
.end method


# virtual methods
.method public bindItem(Lcom/oculus/horizon/api/common/Item;I)V
    .locals 5

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleHeaderViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 26
    sget v1, Lcom/oculus/horizon/R$plurals;->app_with_iap_header_count:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/oculus/horizon/api/common/Item;->display_name:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 27
    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/BundleHeaderViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    return-void
.end method
