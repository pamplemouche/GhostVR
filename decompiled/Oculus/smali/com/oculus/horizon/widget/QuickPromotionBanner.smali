.class public Lcom/oculus/horizon/widget/QuickPromotionBanner;
.super Lcom/oculus/horizon/widget/QuickPromotionBase;
.source "QuickPromotionBanner.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oculus/horizon/widget/QuickPromotionBanner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/oculus/horizon/R$attr;->quickPromotionBannerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/horizon/widget/QuickPromotionBanner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/horizon/widget/QuickPromotionBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method protected getLayout()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .prologue
    .line 27
    sget v0, Lcom/oculus/horizon/R$layout;->quick_promotion_banner:I

    return v0
.end method
