.class public Lcom/facebook/spherical/touch/SphericalTouchDetector;
.super Ljava/lang/Object;
.source "SphericalTouchDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/spherical/touch/SphericalTouchDetector$Listener;
    }
.end annotation


# instance fields
.field private final mDragDetector:Lcom/facebook/spherical/touch/SphericalDragDetector;

.field private mShouldHandleTouch:Z

.field private final mTapDetector:Lcom/facebook/spherical/touch/SphericalTapDetector;

.field private final mTouchSlopDetector:Lcom/facebook/common/touch/TouchSlopDetector;

.field private final mZoomDetector:Lcom/facebook/spherical/touch/SphericalZoomDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/spherical/touch/SphericalTouchDetector$Listener;)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/spherical/touch/SphericalTouchDetector;-><init>(Landroid/content/Context;Lcom/facebook/spherical/touch/SphericalTouchDetector$Listener;Z)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/spherical/touch/SphericalTouchDetector$Listener;Z)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/facebook/common/touch/TouchSlopDetector;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/common/touch/TouchSlopDetector;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/spherical/touch/SphericalTouchDetector;->mTouchSlopDetector:Lcom/facebook/common/touch/TouchSlopDetector;

    .line 31
    invoke-interface {p2}, Lcom/facebook/spherical/touch/SphericalTouchDetector$Listener;->useJoystick()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;

    iget-object v1, p0, Lcom/facebook/spherical/touch/SphericalTouchDetector;->mTouchSlopDetector:Lcom/facebook/common/touch/TouchSlopDetector;

    invoke-direct {v0, p2, v1, p3}, Lcom/facebook/spherical/touch/SphericalJoystickDragDetector;-><init>(Lcom/facebook/spherical/touch/SphericalDragDetector$Listener;Lcom/facebook/common/touch/TouchSlopDetector;Z)V

    :goto_0
    iput-object v0, p0, Lcom/facebook/spherical/touch/SphericalTouchDetector;->mDragDetector:Lcom/facebook/spherical/touch/SphericalDragDetector;

    .line 34
    new-instance v0, Lcom/facebook/spherical/touch/SphericalZoomDetector;

    invoke-direct {v0, p1, p2}, Lcom/facebook/spherical/touch/SphericalZoomDetector;-><init>(Landroid/content/Context;Lcom/facebook/spherical/touch/SphericalZoomDetector$Listener;)V

    iput-object v0, p0, Lcom/facebook/spherical/touch/SphericalTouchDetector;->mZoomDetector:Lcom/facebook/spherical/touch/SphericalZoomDetector;

    .line 35
    new-instance v0, Lcom/facebook/spherical/touch/SphericalTapDetector;

    invoke-direct {v0, p1, p2}, Lcom/facebook/spherical/touch/SphericalTapDetector;-><init>(Landroid/content/Context;Lcom/facebook/spherical/touch/SphericalTapDetector$Listener;)V

    iput-object v0, p0, Lcom/facebook/spherical/touch/SphericalTouchDetector;->mTapDetector:Lcom/facebook/spherical/touch/SphericalTapDetector;

    .line 36
    return-void

    .line 31
    :cond_0
    new-instance v0, Lcom/facebook/spherical/touch/SphericalSwipeDragDetector;

    iget-object v1, p0, Lcom/facebook/spherical/touch/SphericalTouchDetector;->mTouchSlopDetector:Lcom/facebook/common/touch/TouchSlopDetector;

    invoke-direct {v0, p2, v1, p3}, Lcom/facebook/spherical/touch/SphericalSwipeDragDetector;-><init>(Lcom/facebook/spherical/touch/SphericalDragDetector$Listener;Lcom/facebook/common/touch/TouchSlopDetector;Z)V

    goto :goto_0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 48
    :pswitch_0
    iget-object v1, p0, Lcom/facebook/spherical/touch/SphericalTouchDetector;->mTapDetector:Lcom/facebook/spherical/touch/SphericalTapDetector;

    invoke-virtual {v1, p1}, Lcom/facebook/spherical/touch/SphericalTapDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v0

    .line 42
    :pswitch_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/spherical/touch/SphericalTouchDetector;->mShouldHandleTouch:Z

    .line 43
    iget-object v1, p0, Lcom/facebook/spherical/touch/SphericalTouchDetector;->mTapDetector:Lcom/facebook/spherical/touch/SphericalTapDetector;

    invoke-virtual {v1, p1}, Lcom/facebook/spherical/touch/SphericalTapDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 44
    iget-object v1, p0, Lcom/facebook/spherical/touch/SphericalTouchDetector;->mZoomDetector:Lcom/facebook/spherical/touch/SphericalZoomDetector;

    invoke-virtual {v1, p1}, Lcom/facebook/spherical/touch/SphericalZoomDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 45
    iget-object v1, p0, Lcom/facebook/spherical/touch/SphericalTouchDetector;->mDragDetector:Lcom/facebook/spherical/touch/SphericalDragDetector;

    invoke-virtual {v1, p1}, Lcom/facebook/spherical/touch/SphericalDragDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/facebook/spherical/touch/SphericalTouchDetector;->mZoomDetector:Lcom/facebook/spherical/touch/SphericalZoomDetector;

    invoke-virtual {v1, p1}, Lcom/facebook/spherical/touch/SphericalZoomDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    iput-boolean v0, p0, Lcom/facebook/spherical/touch/SphericalTouchDetector;->mShouldHandleTouch:Z

    goto :goto_0

    .line 55
    :cond_2
    iget-object v1, p0, Lcom/facebook/spherical/touch/SphericalTouchDetector;->mDragDetector:Lcom/facebook/spherical/touch/SphericalDragDetector;

    invoke-virtual {v1, p1}, Lcom/facebook/spherical/touch/SphericalDragDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/facebook/spherical/touch/SphericalTouchDetector;->mDragDetector:Lcom/facebook/spherical/touch/SphericalDragDetector;

    invoke-virtual {v1}, Lcom/facebook/spherical/touch/SphericalDragDetector;->shouldNotDeferToFeedScroll()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 59
    iput-boolean v0, p0, Lcom/facebook/spherical/touch/SphericalTouchDetector;->mShouldHandleTouch:Z

    .line 61
    :cond_3
    iget-boolean v0, p0, Lcom/facebook/spherical/touch/SphericalTouchDetector;->mShouldHandleTouch:Z

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
