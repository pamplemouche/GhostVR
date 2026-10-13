.class Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController$1;
.super Ljava/lang/Object;
.source "MainActivityInterstitialQuickPromotionController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController;->tryToShowPromotion(Lcom/oculus/horizon/promotion/Promotion;Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController;

.field final synthetic val$animate:Z


# direct methods
.method constructor <init>(Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController;Z)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController$1;->this$0:Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController;

    iput-boolean p2, p0, Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController$1;->val$animate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController$1;->this$0:Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController;

    invoke-static {v0}, Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController;->access$000(Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController;)Lcom/oculus/horizon/widget/QuickPromotionInterstitial;

    move-result-object v0

    if-nez v0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController$1;->this$0:Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController;

    invoke-static {v0}, Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController;->access$000(Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController;)Lcom/oculus/horizon/widget/QuickPromotionInterstitial;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/QuickPromotionInterstitial;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 102
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 103
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController$1;->this$0:Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController;

    invoke-static {v0}, Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController;->access$000(Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController;)Lcom/oculus/horizon/widget/QuickPromotionInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/QuickPromotionInterstitial;->bringToFront()V

    .line 104
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController$1;->this$0:Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController;

    invoke-static {v0}, Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController;->access$000(Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController;)Lcom/oculus/horizon/widget/QuickPromotionInterstitial;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/QuickPromotionInterstitial;->setVisibility(I)V

    .line 105
    iget-boolean v0, p0, Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController$1;->val$animate:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController$1;->this$0:Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController;

    invoke-static {v0}, Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController;->access$000(Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController;)Lcom/oculus/horizon/widget/QuickPromotionInterstitial;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController$1;->this$0:Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController;

    invoke-static {v1}, Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController;->access$000(Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController;)Lcom/oculus/horizon/widget/QuickPromotionInterstitial;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/widget/QuickPromotionInterstitial;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/QuickPromotionInterstitial;->setY(F)V

    .line 107
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController$1;->this$0:Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController;

    invoke-static {v0}, Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController;->access$000(Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController;)Lcom/oculus/horizon/widget/QuickPromotionInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/QuickPromotionInterstitial;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method
