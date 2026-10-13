.class Lcom/oculus/horizon/pdp/view/ReviewViewHolder$2;
.super Ljava/lang/Object;
.source "ReviewViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->setupListeners(Landroid/view/View;Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/pdp/view/ReviewViewHolder;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/pdp/view/ReviewViewHolder;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$2;->this$0:Lcom/oculus/horizon/pdp/view/ReviewViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 117
    new-instance v1, Lcom/oculus/horizon/widget/OculusPopupMenu;

    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$2;->this$0:Lcom/oculus/horizon/pdp/view/ReviewViewHolder;

    iget-object v2, v2, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mMenuButton:Landroid/widget/ImageView;

    invoke-direct {v1, v0, v2}, Lcom/oculus/horizon/widget/OculusPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 118
    sget v0, Lcom/oculus/horizon/R$menu;->pdp_review_menu:I

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/widget/OculusPopupMenu;->inflate(I)V

    .line 119
    new-instance v0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$2$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$2$1;-><init>(Lcom/oculus/horizon/pdp/view/ReviewViewHolder$2;)V

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/widget/OculusPopupMenu;->setOnMenuItemClickListener(Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuItemClickListener;)V

    .line 129
    invoke-virtual {v1}, Lcom/oculus/horizon/widget/OculusPopupMenu;->show()V

    .line 130
    return-void
.end method
