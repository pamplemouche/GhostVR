.class public Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;
.super Lcom/oculus/horizon/spherical/FeedRenderThreadController;
.source "RubberBandRenderThreadController.java"

# interfaces
.implements Lcom/oculus/horizon/spherical/DisablesGyroOnTouchInteraction;
.implements Lcom/oculus/horizon/spherical/HasRubberBanding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;
    }
.end annotation


# instance fields
.field private final FLOAT_COMPARISON_DELTA:F

.field private final RUBBER_BANDING_DAMPENING_FACTOR:F

.field private final SPRING_BOUNCINESS:D

.field private final SPRING_END_VALUE:F

.field private final SPRING_SPEED:D

.field private final SPRING_START_VALUE:F

.field private mIsInTouchInteractionState:Z

.field private mIsOutOfRendererBoundsPitch:Z

.field private mIsOutOfRendererBoundsYaw:Z

.field private mIsPitchSpringActive:Z

.field private mIsYawSpringActive:Z

.field private mSpringPitch:Lcom/facebook/rebound/Spring;

.field private mSpringYaw:Lcom/facebook/rebound/Spring;

.field private sideOutOfBoundsPitch:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

.field private sideOutOfBoundsYaw:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;Landroid/view/WindowManager;Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;Lcom/facebook/rebound/SpringSystem;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/horizon/spherical/FeedRenderThreadController;-><init>(Landroid/hardware/SensorManager;Landroid/view/WindowManager;Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;)V

    .line 17
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    iput-wide v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->SPRING_SPEED:D

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->SPRING_BOUNCINESS:D

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->SPRING_START_VALUE:F

    .line 23
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->SPRING_END_VALUE:F

    .line 26
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->FLOAT_COMPARISON_DELTA:F

    .line 29
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->RUBBER_BANDING_DAMPENING_FACTOR:F

    .line 31
    iput-boolean v2, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mIsOutOfRendererBoundsYaw:Z

    .line 32
    iput-boolean v2, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mIsOutOfRendererBoundsPitch:Z

    .line 33
    iput-boolean v2, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mIsInTouchInteractionState:Z

    .line 36
    sget-object v0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;->SIDE_NONE:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    iput-object v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->sideOutOfBoundsYaw:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    .line 37
    sget-object v0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;->SIDE_NONE:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    iput-object v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->sideOutOfBoundsPitch:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    .line 59
    iput-boolean v2, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mIsYawSpringActive:Z

    .line 60
    iput-boolean v2, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mIsPitchSpringActive:Z

    .line 68
    invoke-direct {p0, p4}, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->initializePitchAndYawSprings(Lcom/facebook/rebound/SpringSystem;)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;)Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->sideOutOfBoundsPitch:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;Z)Z
    .locals 0

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mIsPitchSpringActive:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;)Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->sideOutOfBoundsYaw:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    return-object v0
.end method

.method static synthetic access$302(Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;Z)Z
    .locals 0

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mIsYawSpringActive:Z

    return p1
.end method

.method private animatePitchSpring()V
    .locals 4

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mIsPitchSpringActive:Z

    if-eqz v0, :cond_0

    .line 312
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mSpringPitch:Lcom/facebook/rebound/Spring;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 287
    iget-object v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mSpringPitch:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->removeAllListeners()Lcom/facebook/rebound/Spring;

    .line 288
    iget-object v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mSpringPitch:Lcom/facebook/rebound/Spring;

    new-instance v1, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$1;-><init>(Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;)V

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 310
    iget-object v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mSpringPitch:Lcom/facebook/rebound/Spring;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v2, v3}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mIsPitchSpringActive:Z

    goto :goto_0
.end method

.method private animateYawSpring()V
    .locals 4

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mIsYawSpringActive:Z

    if-eqz v0, :cond_0

    .line 342
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mSpringYaw:Lcom/facebook/rebound/Spring;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 320
    iget-object v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mSpringYaw:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->removeAllListeners()Lcom/facebook/rebound/Spring;

    .line 321
    iget-object v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mSpringYaw:Lcom/facebook/rebound/Spring;

    new-instance v1, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$2;-><init>(Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;)V

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 340
    iget-object v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mSpringYaw:Lcom/facebook/rebound/Spring;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v2, v3}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mIsYawSpringActive:Z

    goto :goto_0
.end method

.method private handleMaxPitchOrYawBounds(ZZFFZ)F
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 245
    const v0, 0x3dcccccd    # 0.1f

    add-float/2addr v0, p4

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    if-nez p1, :cond_0

    .line 246
    if-eqz p2, :cond_1

    .line 247
    iput-boolean v1, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mIsOutOfRendererBoundsYaw:Z

    .line 248
    sget-object v0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;->SIDE_RIGHT:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    iput-object v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->sideOutOfBoundsYaw:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    .line 253
    :goto_0
    invoke-direct {p0, p5, p2}, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->maybeBoundPitchAndYaw(ZZ)V

    .line 255
    :cond_0
    if-eqz p2, :cond_2

    .line 256
    iget v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mYaw:F

    .line 258
    :goto_1
    return v0

    .line 250
    :cond_1
    iput-boolean v1, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mIsOutOfRendererBoundsPitch:Z

    .line 251
    sget-object v0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;->SIDE_BOTTOM:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    iput-object v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->sideOutOfBoundsPitch:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    goto :goto_0

    .line 258
    :cond_2
    iget v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mPitch:F

    goto :goto_1
.end method

.method private handleMinPitchOrYawBounds(ZZFFZ)F
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 211
    const v0, 0x3dcccccd    # 0.1f

    sub-float v0, p4, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    if-nez p1, :cond_0

    .line 212
    if-eqz p2, :cond_1

    .line 213
    iput-boolean v1, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mIsOutOfRendererBoundsYaw:Z

    .line 214
    sget-object v0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;->SIDE_LEFT:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    iput-object v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->sideOutOfBoundsYaw:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    .line 219
    :goto_0
    invoke-direct {p0, p5, p2}, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->maybeBoundPitchAndYaw(ZZ)V

    .line 221
    :cond_0
    if-eqz p2, :cond_2

    .line 222
    iget v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mYaw:F

    .line 224
    :goto_1
    return v0

    .line 216
    :cond_1
    iput-boolean v1, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mIsOutOfRendererBoundsPitch:Z

    .line 217
    sget-object v0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;->SIDE_TOP:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    iput-object v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->sideOutOfBoundsPitch:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    goto :goto_0

    .line 224
    :cond_2
    iget v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mPitch:F

    goto :goto_1
.end method

.method private initializePitchAndYawSprings(Lcom/facebook/rebound/SpringSystem;)V
    .locals 4

    .prologue
    .line 78
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/rebound/SpringConfig;->fromBouncinessAndSpeed(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object v0

    .line 79
    invoke-virtual {p1}, Lcom/facebook/rebound/SpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mSpringPitch:Lcom/facebook/rebound/Spring;

    .line 80
    invoke-virtual {p1}, Lcom/facebook/rebound/SpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mSpringYaw:Lcom/facebook/rebound/Spring;

    .line 81
    iget-object v1, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mSpringPitch:Lcom/facebook/rebound/Spring;

    invoke-virtual {v1, v0}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 82
    iget-object v1, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mSpringYaw:Lcom/facebook/rebound/Spring;

    invoke-virtual {v1, v0}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 83
    return-void
.end method

.method private maybeAnimatePitchSpring()V
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mIsOutOfRendererBoundsPitch:Z

    if-eqz v0, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->animatePitchSpring()V

    .line 112
    :cond_0
    return-void
.end method

.method private maybeAnimateYawSpring()V
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mIsOutOfRendererBoundsYaw:Z

    if-eqz v0, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->animateYawSpring()V

    .line 122
    :cond_0
    return-void
.end method

.method private maybeBoundPitchAndYaw(ZZ)V
    .locals 2

    .prologue
    .line 269
    if-nez p1, :cond_0

    .line 270
    if-eqz p2, :cond_1

    .line 271
    iget v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mYaw:F

    iget v1, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mMinYaw:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mYaw:F

    .line 272
    iget v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mYaw:F

    iget v1, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mMaxYaw:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mYaw:F

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mPitch:F

    iget v1, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mMinPitch:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mPitch:F

    .line 275
    iget v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mPitch:F

    iget v1, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mMaxPitch:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mPitch:F

    goto :goto_0
.end method


# virtual methods
.method public forcePitchAndYawBounds()V
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->getSphericalBounds()Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;->isYawBounded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mYaw:F

    iget v1, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mMinYaw:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mYaw:F

    .line 96
    iget v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mYaw:F

    iget v1, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mMaxYaw:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mYaw:F

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->getSphericalBounds()Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;->isPitchBounded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mPitch:F

    iget v1, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mMinPitch:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mPitch:F

    .line 100
    iget v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mPitch:F

    iget v1, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mMaxPitch:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mPitch:F

    .line 102
    :cond_1
    return-void
.end method

.method protected incrementPitchYaw(FFZ)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 146
    iget-boolean v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mIsInTouchInteractionState:Z

    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mPitch:F

    iget v1, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mMinPitch:F

    iget v3, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mMaxPitch:F

    invoke-virtual {p0, v0, p1, v1, v3}, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->generateDampeningAlpha(FFFF)F

    move-result v0

    .line 152
    iget-boolean v1, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mIsOutOfRendererBoundsPitch:Z

    if-nez v1, :cond_8

    .line 153
    if-nez p3, :cond_7

    iget-boolean v1, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mIsPitchSpringActive:Z

    if-nez v1, :cond_7

    .line 154
    iget v1, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mPitch:F

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mPitch:F

    .line 158
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mIsPitchSpringActive:Z

    iget v3, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mPitch:F

    iget v4, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mMinPitch:F

    move-object v0, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->handleMinPitchOrYawBounds(ZZFFZ)F

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mPitch:F

    .line 159
    iget-boolean v1, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mIsPitchSpringActive:Z

    iget v3, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mPitch:F

    iget v4, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mMaxPitch:F

    move-object v0, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->handleMaxPitchOrYawBounds(ZZFFZ)F

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mPitch:F

    .line 167
    :cond_3
    :goto_2
    if-eqz p3, :cond_4

    iget-boolean v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mIsOutOfRendererBoundsPitch:Z

    if-eqz v0, :cond_4

    .line 168
    iget v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mPitch:F

    mul-float v1, v6, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mPitch:F

    .line 172
    :cond_4
    iget-object v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mBounds:Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;->isYawBounded()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 173
    iget v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mYaw:F

    iget v1, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mMinYaw:F

    iget v3, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mMaxYaw:F

    invoke-virtual {p0, v0, p2, v1, v3}, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->generateDampeningAlpha(FFFF)F

    move-result v0

    .line 174
    iget-boolean v1, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mIsOutOfRendererBoundsYaw:Z

    if-nez v1, :cond_a

    .line 175
    if-nez p3, :cond_9

    iget-boolean v1, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mIsYawSpringActive:Z

    if-nez v1, :cond_9

    .line 176
    iget v1, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mYaw:F

    mul-float/2addr v0, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mYaw:F

    .line 180
    :cond_5
    :goto_3
    iget-boolean v1, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mIsYawSpringActive:Z

    iget v3, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mYaw:F

    iget v4, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mMinYaw:F

    move-object v0, p0

    move v2, v7

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->handleMinPitchOrYawBounds(ZZFFZ)F

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mYaw:F

    .line 181
    iget-boolean v1, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mIsYawSpringActive:Z

    iget v3, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mYaw:F

    iget v4, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mMaxYaw:F

    move-object v0, p0

    move v2, v7

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->handleMaxPitchOrYawBounds(ZZFFZ)F

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mYaw:F

    .line 186
    :cond_6
    :goto_4
    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mIsOutOfRendererBoundsYaw:Z

    if-eqz v0, :cond_0

    .line 187
    iget v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mYaw:F

    mul-float v1, v6, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mYaw:F

    goto/16 :goto_0

    .line 155
    :cond_7
    if-eqz p3, :cond_2

    .line 156
    iget v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mPitch:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mPitch:F

    goto :goto_1

    .line 160
    :cond_8
    iget v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mPitch:F

    iget v1, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mMinPitch:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mPitch:F

    iget v1, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mMaxPitch:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    .line 162
    iput-boolean v2, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mIsOutOfRendererBoundsPitch:Z

    .line 163
    sget-object v0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;->SIDE_NONE:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    iput-object v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->sideOutOfBoundsPitch:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    goto :goto_2

    .line 177
    :cond_9
    if-eqz p3, :cond_5

    .line 178
    iget v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mYaw:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mYaw:F

    goto :goto_3

    .line 182
    :cond_a
    iget v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mYaw:F

    iget v1, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mMinYaw:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_6

    iget v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mYaw:F

    iget v1, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mMaxYaw:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_6

    .line 183
    iput-boolean v2, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mIsOutOfRendererBoundsYaw:Z

    .line 184
    sget-object v0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;->SIDE_NONE:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    iput-object v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->sideOutOfBoundsYaw:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    goto :goto_4

    .line 190
    :cond_b
    iget v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mYaw:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mYaw:F

    goto/16 :goto_0
.end method

.method public maybeStopFlingAndDoRubberBanding()Z
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->maybeAnimatePitchSpring()V

    .line 88
    invoke-direct {p0}, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->maybeAnimateYawSpring()V

    .line 89
    iget-boolean v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mIsOutOfRendererBoundsYaw:Z

    return v0
.end method

.method public onDragStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    iget-object v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mSpringYaw:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->removeAllListeners()Lcom/facebook/rebound/Spring;

    .line 131
    iget-object v0, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mSpringPitch:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->removeAllListeners()Lcom/facebook/rebound/Spring;

    .line 132
    iput-boolean v1, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mIsYawSpringActive:Z

    .line 133
    iput-boolean v1, p0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->mIsPitchSpringActive:Z

    .line 134
    return-void
.end method

.method public onZoomEnd()V
    .locals 0

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->forcePitchAndYawBounds()V

    .line 139
    return-void
.end method
