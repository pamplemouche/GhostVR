.class public Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;
.super Lcom/facebook/spherical/touch/SphericalDragDetector;
.source "SphericalJoystickDragDetector.java"


# static fields
.field private static final PITCH_DISABLE_FACTOR:D

.field private static final PITCH_TOUCH_NEUTRAL_ZONE_PX:F

.field private static final YAW_TOUCH_NEUTRAL_ZONE_PX:F


# instance fields
.field private mInitialTouchX:F

.field private mInitialTouchY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    const/high16 v0, 0x41a00000    # 20.0f

    .line 14
    invoke-static {v0}, Lcom/facebook/common/ui/util/ViewDimensionUtil;->dpToPx(F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->PITCH_TOUCH_NEUTRAL_ZONE_PX:F

    .line 15
    const/high16 v0, 0x41200000    # 10.0f

    .line 16
    invoke-static {v0}, Lcom/facebook/common/ui/util/ViewDimensionUtil;->dpToPx(F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->YAW_TOUCH_NEUTRAL_ZONE_PX:F

    .line 20
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    sput-wide v0, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->PITCH_DISABLE_FACTOR:D

    return-void
.end method

.method public constructor <init>(Lcom/facebook/spherical/touch/SphericalDragDetector$Listener;Lcom/facebook/common/touch/TouchSlopDetector;Z)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p2, p1, p3}, Lcom/facebook/spherical/touch/SphericalDragDetector;-><init>(Lcom/facebook/common/touch/TouchSlopDetector;Lcom/facebook/spherical/touch/SphericalDragDetector$Listener;Z)V

    .line 28
    return-void
.end method

.method private static getSmallestDisplace(FF)F
    .locals 1

    .prologue
    .line 33
    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    sub-float v0, p0, p1

    :goto_0
    return v0

    :cond_0
    neg-float v0, p1

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    add-float v0, p0, p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getSmallestDisplaceX(F)F
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->YAW_TOUCH_NEUTRAL_ZONE_PX:F

    invoke-static {p0, v0}, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->getSmallestDisplace(FF)F

    move-result v0

    return v0
.end method

.method private static getSmallestDisplaceY(F)F
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->PITCH_TOUCH_NEUTRAL_ZONE_PX:F

    invoke-static {p0, v0}, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->getSmallestDisplace(FF)F

    move-result v0

    return v0
.end method


# virtual methods
.method protected onDragEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    iget-object v0, p0, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->mListener:Lcom/facebook/spherical/touch/SphericalDragDetector$Listener;

    invoke-interface {v0, v1, v1}, Lcom/facebook/spherical/touch/SphericalDragDetector$Listener;->onDragEndWithFling(FF)V

    .line 127
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .prologue
    const/4 v3, 0x2

    const/4 v12, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 46
    invoke-virtual {p0}, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->needsActionDown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 47
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 48
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 51
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 54
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    move v2, v1

    .line 121
    :cond_2
    :goto_1
    return v2

    .line 56
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->mTouchSlopDetector:Lcom/facebook/common/touch/TouchSlopDetector;

    invoke-virtual {v0, p1}, Lcom/facebook/common/touch/TouchSlopDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 57
    iput-boolean v1, p0, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->mReceivedActionDown:Z

    .line 58
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->mActivePointerId:I

    .line 59
    iput-boolean v2, p0, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->mIsDraggingInterrupted:Z

    .line 60
    invoke-virtual {p0}, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->clearVelocity()V

    .line 61
    invoke-virtual {p0, p1}, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->addMotion(Landroid/view/MotionEvent;)V

    .line 62
    iget v0, p0, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 63
    if-ltz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->mInitialTouchX:F

    .line 65
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->mInitialTouchY:F

    goto :goto_0

    .line 70
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->mTouchSlopDetector:Lcom/facebook/common/touch/TouchSlopDetector;

    invoke-virtual {v0, p1}, Lcom/facebook/common/touch/TouchSlopDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 71
    invoke-virtual {p0, p1}, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->addMotion(Landroid/view/MotionEvent;)V

    .line 72
    iget v0, p0, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 73
    if-ltz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 77
    iget v4, p0, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->mInitialTouchX:F

    sub-float v4, v3, v4

    .line 78
    iget v5, p0, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->mInitialTouchY:F

    sub-float v5, v0, v5

    .line 79
    invoke-virtual {p0}, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->shouldDeferToFeedScroll()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 80
    invoke-virtual {p0, p1}, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->cleanUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 84
    :cond_3
    iget-object v2, p0, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->mTouchSlopDetector:Lcom/facebook/common/touch/TouchSlopDetector;

    invoke-virtual {v2}, Lcom/facebook/common/touch/TouchSlopDetector;->isDragging()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 85
    iget-boolean v2, p0, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->mDragging:Z

    if-nez v2, :cond_4

    .line 86
    iget-object v2, p0, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->mListener:Lcom/facebook/spherical/touch/SphericalDragDetector$Listener;

    invoke-interface {v2}, Lcom/facebook/spherical/touch/SphericalDragDetector$Listener;->onDragStart()V

    .line 87
    iput-boolean v1, p0, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->mDragging:Z

    .line 89
    :cond_4
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v2, v2, v6

    if-lez v2, :cond_6

    .line 90
    iget-object v2, p0, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->mListener:Lcom/facebook/spherical/touch/SphericalDragDetector$Listener;

    invoke-static {v4}, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->getSmallestDisplaceX(F)F

    move-result v4

    invoke-interface {v2, v4, v12}, Lcom/facebook/spherical/touch/SphericalDragDetector$Listener;->onDrag(FF)V

    .line 96
    :cond_5
    :goto_2
    iput v3, p0, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->mLastTouchX:F

    .line 97
    iput v0, p0, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->mLastTouchY:F

    goto/16 :goto_0

    .line 91
    :cond_6
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v6, v2

    sget-wide v8, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->PITCH_DISABLE_FACTOR:D

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v10, v2

    mul-double/2addr v8, v10

    cmpl-double v2, v6, v8

    if-lez v2, :cond_5

    .line 92
    iget-object v2, p0, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->mListener:Lcom/facebook/spherical/touch/SphericalDragDetector$Listener;

    invoke-static {v5}, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->getSmallestDisplaceY(F)F

    move-result v4

    invoke-interface {v2, v12, v4}, Lcom/facebook/spherical/touch/SphericalDragDetector$Listener;->onDrag(FF)V

    goto :goto_2

    .line 102
    :pswitch_3
    iput-boolean v1, p0, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->mIsDraggingInterrupted:Z

    .line 104
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->cleanUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 108
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 112
    if-nez v0, :cond_7

    move v0, v1

    .line 113
    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->mActivePointerId:I

    .line 114
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->mLastTouchX:F

    .line 115
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->mLastTouchY:F

    .line 116
    invoke-virtual {p0}, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->clearVelocity()V

    .line 117
    iput-boolean v1, p0, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;->mIsDraggingInterrupted:Z

    goto/16 :goto_1

    :cond_7
    move v0, v2

    .line 112
    goto :goto_3

    .line 54
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
