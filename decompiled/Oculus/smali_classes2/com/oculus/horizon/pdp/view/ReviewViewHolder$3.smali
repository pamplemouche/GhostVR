.class Lcom/oculus/horizon/pdp/view/ReviewViewHolder$3;
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
    .line 134
    iput-object p1, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$3;->this$0:Lcom/oculus/horizon/pdp/view/ReviewViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 137
    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$3;->this$0:Lcom/oculus/horizon/pdp/view/ReviewViewHolder;

    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$3;->this$0:Lcom/oculus/horizon/pdp/view/ReviewViewHolder;

    iget-object v0, v0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    .line 138
    invoke-virtual {v0}, Lcom/oculus/horizon/api/common/Item$QualityRating;->getRank()Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;

    move-result-object v0

    sget-object v2, Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;->HELPFUL:Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;->NOT_RANKED:Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;

    .line 137
    :goto_0
    invoke-static {v1, v0}, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->access$200(Lcom/oculus/horizon/pdp/view/ReviewViewHolder;Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;)V

    .line 141
    return-void

    .line 138
    :cond_0
    sget-object v0, Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;->HELPFUL:Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;

    goto :goto_0
.end method
