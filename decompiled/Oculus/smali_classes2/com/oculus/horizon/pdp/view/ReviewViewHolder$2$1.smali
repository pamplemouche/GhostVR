.class Lcom/oculus/horizon/pdp/view/ReviewViewHolder$2$1;
.super Ljava/lang/Object;
.source "ReviewViewHolder.java"

# interfaces
.implements Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/pdp/view/ReviewViewHolder$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/horizon/pdp/view/ReviewViewHolder$2;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/pdp/view/ReviewViewHolder$2;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$2$1;->this$1:Lcom/oculus/horizon/pdp/view/ReviewViewHolder$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 123
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/oculus/horizon/R$id;->mark_spam:I

    if-ne v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$2$1;->this$1:Lcom/oculus/horizon/pdp/view/ReviewViewHolder$2;

    iget-object v0, v0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$2;->this$0:Lcom/oculus/horizon/pdp/view/ReviewViewHolder;

    sget-object v1, Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;->SPAM:Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;

    invoke-static {v0, v1}, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->access$200(Lcom/oculus/horizon/pdp/view/ReviewViewHolder;Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;)V

    .line 126
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
