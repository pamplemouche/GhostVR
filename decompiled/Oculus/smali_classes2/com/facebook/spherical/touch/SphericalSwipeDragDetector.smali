.class public Lcom/facebook/spherical/touch/SphericalSwipeDragDetector;
.super Lcom/facebook/spherical/touch/SphericalDragDetector;
.source "SphericalSwipeDragDetector.java"


# direct methods
.method public constructor <init>(Lcom/facebook/spherical/touch/SphericalDragDetector$Listener;Lcom/facebook/common/touch/TouchSlopDetector;Z)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p2, p1, p3}, Lcom/facebook/spherical/touch/SphericalDragDetector;-><init>(Lcom/facebook/common/touch/TouchSlopDetector;Lcom/facebook/spherical/touch/SphericalDragDetector$Listener;Z)V

    .line 13
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 17
    invoke-virtual {p0}, Lcom/facebook/spherical/touch/SphericalSwipeDragDetector;->needsActionDown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 18
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 19
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 22
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 25
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    move v2, v1

    .line 87
    :cond_2
    :goto_1
    return v2

    .line 27
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/spherical/touch/SphericalSwipeDragDetector;->mTouchSlopDetector:Lcom/facebook/common/touch/TouchSlopDetector;

    invoke-virtual {v0, p1}, Lcom/facebook/common/touch/TouchSlopDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 28
    iput-boolean v1, p0, Lcom/facebook/spherical/touch/SphericalSwipeDragDetector;->mReceivedActionDown:Z

    .line 29
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/spherical/touch/SphericalSwipeDragDetector;->mActivePointerId:I

    .line 30
    iput-boolean v2, p0, Lcom/facebook/spherical/touch/SphericalSwipeDragDetector;->mIsDraggingInterrupted:Z

    .line 31
    invoke-virtual {p0}, Lcom/facebook/spherical/touch/SphericalSwipeDragDetector;->clearVelocity()V

    .line 32
    invoke-virtual {p0, p1}, Lcom/facebook/spherical/touch/SphericalSwipeDragDetector;->addMotion(Landroid/view/MotionEvent;)V

    .line 33
    iget v0, p0, Lcom/facebook/spherical/touch/SphericalSwipeDragDetector;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 34
    if-ltz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/facebook/spherical/touch/SphericalSwipeDragDetector;->mLastTouchX:F

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/facebook/spherical/touch/SphericalSwipeDragDetector;->mLastTouchY:F

    .line 40
    :cond_3
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/spherical/touch/SphericalSwipeDragDetector;->mTouchSlopDetector:Lcom/facebook/common/touch/TouchSlopDetector;

    invoke-virtual {v0, p1}, Lcom/facebook/common/touch/TouchSlopDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 41
    invoke-virtual {p0, p1}, Lcom/facebook/spherical/touch/SphericalSwipeDragDetector;->addMotion(Landroid/view/MotionEvent;)V

    .line 42
    iget v0, p0, Lcom/facebook/spherical/touch/SphericalSwipeDragDetector;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 43
    if-ltz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 47
    iget v4, p0, Lcom/facebook/spherical/touch/SphericalSwipeDragDetector;->mLastTouchX:F

    sub-float v4, v3, v4

    .line 48
    iget v5, p0, Lcom/facebook/spherical/touch/SphericalSwipeDragDetector;->mLastTouchY:F

    sub-float v5, v0, v5

    .line 49
    invoke-virtual {p0}, Lcom/facebook/spherical/touch/SphericalSwipeDragDetector;->shouldDeferToFeedScroll()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 50
    invoke-virtual {p0, p1}, Lcom/facebook/spherical/touch/SphericalSwipeDragDetector;->cleanUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 54
    :cond_4
    iget-object v2, p0, Lcom/facebook/spherical/touch/SphericalSwipeDragDetector;->mTouchSlopDetector:Lcom/facebook/common/touch/TouchSlopDetector;

    invoke-virtual {v2}, Lcom/facebook/common/touch/TouchSlopDetector;->isDragging()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 55
    iget-boolean v2, p0, Lcom/facebook/spherical/touch/SphericalSwipeDragDetector;->mDragging:Z

    if-nez v2, :cond_5

    .line 56
    iget-object v2, p0, Lcom/facebook/spherical/touch/SphericalSwipeDragDetector;->mListener:Lcom/facebook/spherical/touch/SphericalDragDetector$Listener;

    invoke-interface {v2}, Lcom/facebook/spherical/touch/SphericalDragDetector$Listener;->onDragStart()V

    .line 57
    iput-boolean v1, p0, Lcom/facebook/spherical/touch/SphericalSwipeDragDetector;->mDragging:Z

    .line 59
    :cond_5
    iget-object v2, p0, Lcom/facebook/spherical/touch/SphericalSwipeDragDetector;->mListener:Lcom/facebook/spherical/touch/SphericalDragDetector$Listener;

    invoke-interface {v2, v4, v5}, Lcom/facebook/spherical/touch/SphericalDragDetector$Listener;->onDrag(FF)V

    .line 62
    :cond_6
    iput v3, p0, Lcom/facebook/spherical/touch/SphericalSwipeDragDetector;->mLastTouchX:F

    .line 63
    iput v0, p0, Lcom/facebook/spherical/touch/SphericalSwipeDragDetector;->mLastTouchY:F

    goto :goto_0

    .line 68
    :pswitch_3
    iput-boolean v1, p0, Lcom/facebook/spherical/touch/SphericalSwipeDragDetector;->mIsDraggingInterrupted:Z

    .line 70
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/facebook/spherical/touch/SphericalSwipeDragDetector;->cleanUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 74
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 78
    if-nez v0, :cond_7

    move v0, v1

    .line 79
    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/facebook/spherical/touch/SphericalSwipeDragDetector;->mActivePointerId:I

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/facebook/spherical/touch/SphericalSwipeDragDetector;->mLastTouchX:F

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/facebook/spherical/touch/SphericalSwipeDragDetector;->mLastTouchY:F

    .line 82
    invoke-virtual {p0}, Lcom/facebook/spherical/touch/SphericalSwipeDragDetector;->clearVelocity()V

    .line 83
    iput-boolean v1, p0, Lcom/facebook/spherical/touch/SphericalSwipeDragDetector;->mIsDraggingInterrupted:Z

    goto/16 :goto_1

    :cond_7
    move v0, v2

    .line 78
    goto :goto_2

    .line 25
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
