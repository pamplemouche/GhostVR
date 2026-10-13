.class Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder$1;
.super Ljava/lang/Object;
.source "ViewerReviewViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;-><init>(Landroid/view/View;Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Lcom/oculus/horizon/pdp/StoreItemMethods;Lcom/oculus/horizon/social/SocialUtils;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;

.field final synthetic val$fragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

.field final synthetic val$fragmentManager:Landroidx/fragment/app/FragmentManager;

.field final synthetic val$itemView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;Landroid/view/View;Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder$1;->this$0:Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;

    iput-object p2, p0, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder$1;->val$itemView:Landroid/view/View;

    iput-object p3, p0, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder$1;->val$fragmentManager:Landroidx/fragment/app/FragmentManager;

    iput-object p4, p0, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder$1;->val$fragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lcom/oculus/horizon/widget/OculusPopupMenu;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder$1;->val$itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder$1;->this$0:Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;

    iget-object v2, v2, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;->mMenuButton:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/widget/OculusPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 47
    sget v1, Lcom/oculus/horizon/R$menu;->pdp_update_review_menu:I

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/OculusPopupMenu;->inflate(I)V

    .line 48
    new-instance v1, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder$1$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder$1$1;-><init>(Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder$1;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/OculusPopupMenu;->setOnMenuItemClickListener(Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuItemClickListener;)V

    .line 65
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/OculusPopupMenu;->show()V

    .line 66
    return-void
.end method
