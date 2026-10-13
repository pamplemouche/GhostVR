.class Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$5;
.super Ljava/lang/Object;
.source "LiveStreamingButtonControls.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->animateButton(Landroid/view/View;IILandroid/animation/AnimatorListenerAdapter;Landroid/view/animation/Interpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$5;->this$0:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;

    iput-object p2, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$5;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 353
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 354
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$5;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 355
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 356
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$5;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    return-void
.end method
