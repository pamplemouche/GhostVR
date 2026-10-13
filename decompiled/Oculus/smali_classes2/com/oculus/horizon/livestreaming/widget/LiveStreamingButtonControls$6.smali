.class Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$6;
.super Ljava/lang/Object;
.source "LiveStreamingButtonControls.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->animateButtonMargins(Landroid/view/View;IIILandroid/animation/AnimatorListenerAdapter;Landroid/view/animation/Interpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;

.field final synthetic val$originalMargin:I

.field final synthetic val$originalWidth:I

.field final synthetic val$targetMargin:I

.field final synthetic val$targetWidth:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;Landroid/view/View;IIII)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$6;->this$0:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;

    iput-object p2, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$6;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$6;->val$originalWidth:I

    iput p4, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$6;->val$targetWidth:I

    iput p5, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$6;->val$originalMargin:I

    iput p6, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$6;->val$targetMargin:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .prologue
    .line 387
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 388
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$6;->val$view:Landroid/view/View;

    .line 389
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 390
    iget v2, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$6;->val$originalWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$6;->val$targetWidth:I

    iget v4, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$6;->val$originalWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 391
    iget v2, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$6;->val$originalMargin:I

    int-to-float v2, v2

    iget v3, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$6;->val$targetMargin:I

    iget v4, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$6;->val$originalMargin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 392
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 393
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 394
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$6;->val$view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    return-void
.end method
