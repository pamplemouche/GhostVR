.class public Lcom/facebook/common/touch/TouchSlopDetector;
.super Ljava/lang/Object;
.source "TouchSlopDetector.java"


# instance fields
.field private mActivePointerId:I

.field private mClampingX:Z

.field private mClampingY:Z

.field private mDownDx:F

.field private mDownDy:F

.field private mDraggingX:Z

.field private mDraggingY:Z

.field private mLastDownX:F

.field private mLastDownY:F

.field private mReceivedActionDown:Z

.field private mTouchSlop:I

.field private mXDraggingRange:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mXDraggingRange:F

    .line 28
    const/16 v0, 0x8

    iput v0, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mTouchSlop:I

    .line 29
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mXDraggingRange:F

    .line 32
    iput p1, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mTouchSlop:I

    .line 33
    return-void
.end method

.method private checkForDragging(FF)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 198
    iget-boolean v2, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mClampingX:Z

    if-eqz v2, :cond_1

    .line 199
    iput-boolean v0, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mDraggingY:Z

    .line 200
    iput-boolean v1, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mDraggingX:Z

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-boolean v2, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mClampingY:Z

    if-eqz v2, :cond_2

    .line 204
    iput-boolean v1, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mDraggingY:Z

    .line 205
    iput-boolean v0, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mDraggingX:Z

    goto :goto_0

    .line 208
    :cond_2
    mul-float v2, p1, p1

    mul-float v3, p2, p2

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iget v4, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mTouchSlop:I

    int-to-double v4, v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_3

    move v0, v1

    .line 209
    :cond_3
    div-float v2, p2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    .line 210
    if-eqz v0, :cond_0

    .line 211
    iget v0, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mXDraggingRange:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    float-to-double v4, v0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_4

    .line 212
    iput-boolean v1, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mDraggingX:Z

    goto :goto_0

    .line 214
    :cond_4
    iput-boolean v1, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mDraggingY:Z

    goto :goto_0
.end method

.method private needsActionDown()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mReceivedActionDown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearDragging()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mDraggingX:Z

    .line 123
    iput-boolean v0, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mDraggingY:Z

    .line 124
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mDraggingX:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mDraggingY:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDraggingY()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mDraggingY:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 141
    invoke-direct {p0}, Lcom/facebook/common/touch/TouchSlopDetector;->needsActionDown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 143
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 146
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 149
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 190
    :cond_1
    :goto_0
    :pswitch_0
    iget-boolean v0, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mDraggingX:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mDraggingY:Z

    if-eqz v0, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    return v2

    .line 151
    :pswitch_1
    iput-boolean v1, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mReceivedActionDown:Z

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mLastDownX:F

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mLastDownY:F

    .line 154
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mActivePointerId:I

    .line 155
    invoke-virtual {p0}, Lcom/facebook/common/touch/TouchSlopDetector;->clearDragging()V

    goto :goto_0

    .line 159
    :pswitch_2
    iget v0, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 160
    if-ltz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 161
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 162
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 163
    iget v4, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mLastDownX:F

    sub-float v3, v4, v3

    iput v3, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mDownDx:F

    .line 164
    iget v3, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mLastDownY:F

    sub-float v0, v3, v0

    iput v0, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mDownDy:F

    .line 165
    iget v0, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mDownDx:F

    iget v3, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mDownDy:F

    invoke-direct {p0, v0, v3}, Lcom/facebook/common/touch/TouchSlopDetector;->checkForDragging(FF)V

    goto :goto_0

    .line 171
    :pswitch_3
    iput-boolean v2, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mReceivedActionDown:Z

    .line 172
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mActivePointerId:I

    .line 173
    invoke-virtual {p0}, Lcom/facebook/common/touch/TouchSlopDetector;->clearDragging()V

    goto :goto_0

    .line 177
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 178
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 179
    iget v4, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mActivePointerId:I

    if-ne v3, v4, :cond_1

    .line 182
    if-nez v0, :cond_4

    move v0, v1

    .line 183
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mLastDownX:F

    .line 184
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mLastDownY:F

    .line 185
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/common/touch/TouchSlopDetector;->mActivePointerId:I

    goto :goto_0

    :cond_4
    move v0, v2

    .line 182
    goto :goto_1

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
