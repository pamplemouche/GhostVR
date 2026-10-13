.class Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$1;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "RubberBandRenderThreadController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->animatePitchSpring()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$1;->this$0:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringAtRest(Lcom/facebook/rebound/Spring;)V
    .locals 2

    .prologue
    .line 305
    invoke-super {p0, p1}, Lcom/facebook/rebound/SimpleSpringListener;->onSpringAtRest(Lcom/facebook/rebound/Spring;)V

    .line 306
    iget-object v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$1;->this$0:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->access$102(Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;Z)Z

    .line 307
    return-void
.end method

.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 8

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 292
    invoke-super {p0, p1}, Lcom/facebook/rebound/SimpleSpringListener;->onSpringUpdate(Lcom/facebook/rebound/Spring;)V

    .line 293
    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    .line 296
    iget-object v2, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$1;->this$0:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;

    invoke-static {v2}, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->access$000(Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;)Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    move-result-object v2

    sget-object v3, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;->SIDE_TOP:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    if-ne v2, v3, :cond_1

    .line 297
    iget-object v2, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$1;->this$0:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;

    iget-object v3, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$1;->this$0:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;

    iget v3, v3, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mMinPitch:F

    float-to-double v4, v3

    sub-double v0, v6, v0

    iget-object v3, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$1;->this$0:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;

    iget v3, v3, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mPitch:F

    iget-object v6, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$1;->this$0:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;

    iget v6, v6, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mMinPitch:F

    sub-float/2addr v3, v6

    float-to-double v6, v3

    mul-double/2addr v0, v6

    add-double/2addr v0, v4

    double-to-float v0, v0

    iput v0, v2, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mPitch:F

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v2, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$1;->this$0:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;

    invoke-static {v2}, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->access$000(Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;)Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    move-result-object v2

    sget-object v3, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;->SIDE_BOTTOM:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    if-ne v2, v3, :cond_0

    .line 299
    iget-object v2, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$1;->this$0:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;

    iget-object v3, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$1;->this$0:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;

    iget v3, v3, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mMaxPitch:F

    float-to-double v4, v3

    sub-double v0, v6, v0

    iget-object v3, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$1;->this$0:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;

    iget v3, v3, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mPitch:F

    iget-object v6, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$1;->this$0:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;

    iget v6, v6, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mMaxPitch:F

    sub-float/2addr v3, v6

    float-to-double v6, v3

    mul-double/2addr v0, v6

    add-double/2addr v0, v4

    double-to-float v0, v0

    iput v0, v2, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mPitch:F

    goto :goto_0
.end method
