.class Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$7;
.super Ljava/lang/Object;
.source "LiveStreamingButtonControls.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->animateFontAlpha(Landroid/widget/TextView;IIILandroid/animation/AnimatorListenerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$7;->this$0:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;

    iput-object p2, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$7;->val$view:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 420
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 421
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$7;->val$view:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$7;->val$view:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 422
    return-void
.end method
