.class public abstract Lcom/facebook/spherical/touch/SphericalDragDetector;
.super Ljava/lang/Object;
.source "SphericalDragDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/spherical/touch/SphericalDragDetector$Listener;
    }
.end annotation


# instance fields
.field protected mActivePointerId:I

.field protected mDragging:Z

.field protected mIsDraggingInterrupted:Z

.field protected final mIsFeed:Z

.field protected mLastTouchX:F

.field protected mLastTouchY:F

.field protected final mListener:Lcom/facebook/spherical/touch/SphericalDragDetector$Listener;

.field protected mReceivedActionDown:Z

.field protected final mTouchSlopDetector:Lcom/facebook/common/touch/TouchSlopDetector;

.field protected final mVelocityTracker:Landroid/view/VelocityTracker;

.field protected mVelocityX:F

.field protected mVelocityY:F


# direct methods
.method public constructor <init>(Lcom/facebook/common/touch/TouchSlopDetector;Lcom/facebook/spherical/touch/SphericalDragDetector$Listener;Z)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/spherical/touch/SphericalDragDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 44
    iput-object p1, p0, Lcom/facebook/spherical/touch/SphericalDragDetector;->mTouchSlopDetector:Lcom/facebook/common/touch/TouchSlopDetector;

    .line 45
    iput-object p2, p0, Lcom/facebook/spherical/touch/SphericalDragDetector;->mListener:Lcom/facebook/spherical/touch/SphericalDragDetector$Listener;

    .line 46
    iput-boolean p3, p0, Lcom/facebook/spherical/touch/SphericalDragDetector;->mIsFeed:Z

    .line 47
    return-void
.end method

.method private calculateVelocity()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/facebook/spherical/touch/SphericalDragDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 94
    iget-object v0, p0, Lcom/facebook/spherical/touch/SphericalDragDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iput v0, p0, Lcom/facebook/spherical/touch/SphericalDragDetector;->mVelocityX:F

    .line 95
    iget-object v0, p0, Lcom/facebook/spherical/touch/SphericalDragDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    iput v0, p0, Lcom/facebook/spherical/touch/SphericalDragDetector;->mVelocityY:F

    .line 96
    return-void
.end method


# virtual methods
.method protected addMotion(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 87
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 89
    iget-object v1, p0, Lcom/facebook/spherical/touch/SphericalDragDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 90
    return-void
.end method

.method protected cleanUp(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 64
    iput-boolean v2, p0, Lcom/facebook/spherical/touch/SphericalDragDetector;->mReceivedActionDown:Z

    .line 65
    invoke-virtual {p0, p1}, Lcom/facebook/spherical/touch/SphericalDragDetector;->addMotion(Landroid/view/MotionEvent;)V

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/spherical/touch/SphericalDragDetector;->mActivePointerId:I

    .line 68
    iget-boolean v0, p0, Lcom/facebook/spherical/touch/SphericalDragDetector;->mDragging:Z

    if-eqz v0, :cond_1

    .line 69
    invoke-direct {p0}, Lcom/facebook/spherical/touch/SphericalDragDetector;->calculateVelocity()V

    .line 70
    invoke-virtual {p0}, Lcom/facebook/spherical/touch/SphericalDragDetector;->onDragEnd()V

    .line 74
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/facebook/spherical/touch/SphericalDragDetector;->mDragging:Z

    .line 75
    iget-object v0, p0, Lcom/facebook/spherical/touch/SphericalDragDetector;->mTouchSlopDetector:Lcom/facebook/common/touch/TouchSlopDetector;

    invoke-virtual {v0, p1}, Lcom/facebook/common/touch/TouchSlopDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 76
    return-void

    .line 71
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/spherical/touch/SphericalDragDetector;->mIsDraggingInterrupted:Z

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/facebook/spherical/touch/SphericalDragDetector;->mListener:Lcom/facebook/spherical/touch/SphericalDragDetector$Listener;

    invoke-interface {v0, v1, v1}, Lcom/facebook/spherical/touch/SphericalDragDetector$Listener;->onDragEndWithFling(FF)V

    goto :goto_0
.end method

.method protected clearVelocity()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/spherical/touch/SphericalDragDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 84
    return-void
.end method

.method public needsActionDown()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/facebook/spherical/touch/SphericalDragDetector;->mReceivedActionDown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDragEnd()V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/spherical/touch/SphericalDragDetector;->mListener:Lcom/facebook/spherical/touch/SphericalDragDetector$Listener;

    iget v1, p0, Lcom/facebook/spherical/touch/SphericalDragDetector;->mVelocityX:F

    iget v2, p0, Lcom/facebook/spherical/touch/SphericalDragDetector;->mVelocityY:F

    invoke-interface {v0, v1, v2}, Lcom/facebook/spherical/touch/SphericalDragDetector$Listener;->onDragEndWithFling(FF)V

    .line 80
    return-void
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method protected shouldDeferToFeedScroll()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/facebook/spherical/touch/SphericalDragDetector;->mIsFeed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/spherical/touch/SphericalDragDetector;->mDragging:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/spherical/touch/SphericalDragDetector;->mTouchSlopDetector:Lcom/facebook/common/touch/TouchSlopDetector;

    invoke-virtual {v0}, Lcom/facebook/common/touch/TouchSlopDetector;->isDraggingY()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldNotDeferToFeedScroll()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/facebook/spherical/touch/SphericalDragDetector;->mIsFeed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/spherical/touch/SphericalDragDetector;->mDragging:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
