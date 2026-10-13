.class public Lcom/oculus/horizon/widget/QuickPromotionInterstitial;
.super Lcom/oculus/horizon/widget/QuickPromotionBase;
.source "QuickPromotionInterstitial.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oculus/horizon/widget/QuickPromotionInterstitial;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 19
    sget v0, Lcom/oculus/horizon/R$attr;->quickPromotionInterstitialStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/horizon/widget/QuickPromotionInterstitial;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/horizon/widget/QuickPromotionBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method


# virtual methods
.method protected getLayout()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .prologue
    .line 28
    sget v0, Lcom/oculus/horizon/R$layout;->quick_promotion_interstitial:I

    return v0
.end method

.method public bridge synthetic setDescription(Ljava/lang/String;)Lcom/oculus/horizon/widget/QuickPromotionBase;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/widget/QuickPromotionInterstitial;->setDescription(Ljava/lang/String;)Lcom/oculus/horizon/widget/QuickPromotionInterstitial;

    move-result-object v0

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/oculus/horizon/widget/QuickPromotionInterstitial;
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oculus/horizon/widget/QuickPromotionInterstitial;->mDescription:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Lcom/oculus/horizon/widget/QuickPromotionInterstitial;->mDescription:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 36
    return-object p0
.end method
