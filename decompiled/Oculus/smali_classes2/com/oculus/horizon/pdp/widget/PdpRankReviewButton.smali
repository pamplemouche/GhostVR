.class public Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;
.super Landroid/widget/LinearLayout;
.source "PdpRankReviewButton.java"


# instance fields
.field private mLikeCount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;->init(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;->init(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;->init(Landroid/content/Context;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    sget v0, Lcom/oculus/horizon/R$layout;->pdp_rank_review_button:I

    invoke-static {p1, v0, p0}, Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;->setOrientation(I)V

    .line 33
    sget v0, Lcom/oculus/horizon/R$drawable;->pdp_rank_review_button_background:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;->setBackgroundResource(I)V

    .line 34
    sget v0, Lcom/oculus/horizon/R$id;->helpful_count:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;->mLikeCount:Landroid/widget/TextView;

    .line 35
    return-void
.end method

.method public setCount(I)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;->mLikeCount:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    return-void
.end method
