.class final Lcom/oculus/vrshell/panels/PointerForwarder;
.super Ljava/lang/Object;
.source "PointerForwarder.java"


# instance fields
.field private mLastHoverEnterTimeMillis:J

.field private mLastTouchDownTimeMillis:J

.field private final mViewTarget:Landroid/view/View;

.field private final mWindowManagerTarget:Lcom/oculus/vrshell/panels/AndroidPanelWindowManager;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/oculus/vrshell/panels/AndroidPanelWindowManager;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcom/oculus/vrshell/panels/PointerForwarder;->mLastTouchDownTimeMillis:J

    .line 13
    iput-wide v0, p0, Lcom/oculus/vrshell/panels/PointerForwarder;->mLastHoverEnterTimeMillis:J

    .line 16
    iput-object p1, p0, Lcom/oculus/vrshell/panels/PointerForwarder;->mViewTarget:Landroid/view/View;

    .line 17
    iput-object p2, p0, Lcom/oculus/vrshell/panels/PointerForwarder;->mWindowManagerTarget:Lcom/oculus/vrshell/panels/AndroidPanelWindowManager;

    return-void
.end method

.method private static isHoverEvent(I)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static isScrollEvent(I)Z
    .locals 1

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isTouchEvent(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method private sendPointerEvent(Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;IFF)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 89
    invoke-direct/range {v0 .. v6}, Lcom/oculus/vrshell/panels/PointerForwarder;->sendPointerEvent(Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;IFFLjava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method

.method private sendPointerEvent(Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;IFFLjava/lang/Float;Ljava/lang/Float;)V
    .locals 10
    .param p5    # Ljava/lang/Float;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Float;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move v9, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v9, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x8

    if-ne v9, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    or-int/2addr v1, v3

    if-eqz v1, :cond_2

    .line 59
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/oculus/vrshell/panels/PointerForwarder;->mLastTouchDownTimeMillis:J

    goto :goto_2

    :cond_2
    const/16 v1, 0x9

    if-ne v9, v1, :cond_3

    .line 61
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/oculus/vrshell/panels/PointerForwarder;->mLastHoverEnterTimeMillis:J

    .line 65
    :cond_3
    :goto_2
    invoke-static {p2}, Lcom/oculus/vrshell/panels/PointerForwarder;->isTouchEvent(I)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p2}, Lcom/oculus/vrshell/panels/PointerForwarder;->isScrollEvent(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    .line 67
    :cond_4
    invoke-static {p2}, Lcom/oculus/vrshell/panels/PointerForwarder;->isHoverEvent(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 68
    iget-wide v1, v0, Lcom/oculus/vrshell/panels/PointerForwarder;->mLastHoverEnterTimeMillis:J

    goto :goto_4

    .line 70
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid action type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_6
    :goto_3
    iget-wide v1, v0, Lcom/oculus/vrshell/panels/PointerForwarder;->mLastTouchDownTimeMillis:J

    :goto_4
    move-wide v2, v1

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    .line 74
    invoke-static/range {v1 .. v8}, Lcom/oculus/vrshell/panels/PointerEvent;->obtain(Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;JIFFLjava/lang/Float;Ljava/lang/Float;)Lcom/oculus/vrshell/panels/PointerEvent;

    move-result-object v1

    .line 75
    invoke-static {p2}, Lcom/oculus/vrshell/panels/PointerForwarder;->isHoverEvent(I)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {p2}, Lcom/oculus/vrshell/panels/PointerForwarder;->isScrollEvent(I)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_5

    .line 80
    :cond_7
    iget-object v2, v0, Lcom/oculus/vrshell/panels/PointerForwarder;->mWindowManagerTarget:Lcom/oculus/vrshell/panels/AndroidPanelWindowManager;

    invoke-virtual {v1}, Lcom/oculus/vrshell/panels/PointerEvent;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oculus/vrshell/panels/AndroidPanelWindowManager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 81
    iget-object v2, v0, Lcom/oculus/vrshell/panels/PointerForwarder;->mViewTarget:Landroid/view/View;

    invoke-virtual {v1}, Lcom/oculus/vrshell/panels/PointerEvent;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_6

    .line 76
    :cond_8
    :goto_5
    iget-object v2, v0, Lcom/oculus/vrshell/panels/PointerForwarder;->mWindowManagerTarget:Lcom/oculus/vrshell/panels/AndroidPanelWindowManager;

    invoke-virtual {v1}, Lcom/oculus/vrshell/panels/PointerEvent;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oculus/vrshell/panels/AndroidPanelWindowManager;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 77
    iget-object v2, v0, Lcom/oculus/vrshell/panels/PointerForwarder;->mViewTarget:Landroid/view/View;

    invoke-virtual {v1}, Lcom/oculus/vrshell/panels/PointerEvent;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 84
    :cond_9
    :goto_6
    invoke-virtual {v1}, Lcom/oculus/vrshell/panels/PointerEvent;->recycle()V

    return-void
.end method


# virtual methods
.method public hoverEnter(FF)V
    .locals 2

    .line 38
    sget-object v0, Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;->FINGER:Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/oculus/vrshell/panels/PointerForwarder;->sendPointerEvent(Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;IFF)V

    return-void
.end method

.method public hoverExit(FF)V
    .locals 2

    .line 42
    sget-object v0, Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;->FINGER:Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/oculus/vrshell/panels/PointerForwarder;->sendPointerEvent(Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;IFF)V

    return-void
.end method

.method public hoverMove(FF)V
    .locals 2

    .line 46
    sget-object v0, Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;->FINGER:Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/oculus/vrshell/panels/PointerForwarder;->sendPointerEvent(Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;IFF)V

    return-void
.end method

.method public pointerDragged(FF)V
    .locals 2

    .line 25
    sget-object v0, Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;->FINGER:Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/oculus/vrshell/panels/PointerForwarder;->sendPointerEvent(Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;IFF)V

    return-void
.end method

.method public pointerPressed(FF)V
    .locals 2

    .line 21
    sget-object v0, Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;->FINGER:Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/oculus/vrshell/panels/PointerForwarder;->sendPointerEvent(Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;IFF)V

    return-void
.end method

.method public pointerReleased(FF)V
    .locals 2

    .line 29
    sget-object v0, Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;->FINGER:Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/oculus/vrshell/panels/PointerForwarder;->sendPointerEvent(Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;IFF)V

    return-void
.end method

.method public touchScroll(FFFF)V
    .locals 7

    .line 33
    sget-object v1, Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;->FINGER:Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;

    .line 34
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/16 v2, 0x8

    move-object v0, p0

    move v3, p1

    move v4, p2

    .line 33
    invoke-direct/range {v0 .. v6}, Lcom/oculus/vrshell/panels/PointerForwarder;->sendPointerEvent(Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;IFFLjava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method
