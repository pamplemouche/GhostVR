.class public Lorg/chromium/content/browser/ContentUiEventHandler;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LxU;


# instance fields
.field public final w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

.field public x:La11;

.field public y:J


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    iput-object v0, p0, Lorg/chromium/content/browser/ContentUiEventHandler;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 3
    invoke-static {p0, p1}, LJ/N;->MXL6itCa(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v0

    .line 4
    iput-wide v0, p0, Lorg/chromium/content/browser/ContentUiEventHandler;->y:J

    return-void
.end method

.method private dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentUiEventHandler;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 2
    const-class v1, LoW0;

    .line 3
    sget-object v2, LnW0;->a:Lt01;

    .line 4
    invoke-virtual {v0, v1, v2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->a(Ljava/lang/Class;Lt01;)LxU;

    move-result-object v0

    check-cast v0, LoW0;

    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 6
    invoke-static {v0}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 7
    :cond_0
    sget-object v0, LK11;->a:Lorg/chromium/device/gamepad/GamepadList;

    .line 8
    invoke-virtual {v0, p1}, Lorg/chromium/device/gamepad/GamepadList;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_1

    return v1

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x52

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_3

    const/4 v3, 0x5

    if-eq v0, v3, :cond_3

    const/4 v3, 0x6

    if-eq v0, v3, :cond_3

    const/16 v3, 0x1a

    if-eq v0, v3, :cond_3

    const/16 v3, 0x4f

    if-eq v0, v3, :cond_3

    const/16 v3, 0x1b

    if-eq v0, v3, :cond_3

    const/16 v3, 0x50

    if-eq v0, v3, :cond_3

    const/16 v3, 0x19

    if-eq v0, v3, :cond_3

    const/16 v3, 0xa4

    if-eq v0, v3, :cond_3

    const/16 v3, 0x18

    if-ne v0, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    :cond_3
    :goto_2
    if-nez v2, :cond_4

    .line 10
    iget-object v0, p0, Lorg/chromium/content/browser/ContentUiEventHandler;->x:La11;

    check-cast v0, LnT0;

    invoke-virtual {v0, p1}, LnT0;->a(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 11
    :cond_4
    iget-object v0, p0, Lorg/chromium/content/browser/ContentUiEventHandler;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/input/ImeAdapterImpl;

    move-result-object v0

    .line 12
    iget-object v2, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->y:LOX0;

    if-eqz v2, :cond_5

    check-cast v2, LQY0;

    .line 13
    invoke-static {}, LXX0;->a()V

    .line 14
    iget-object v0, v2, LQY0;->f:Landroid/os/Handler;

    new-instance v3, LNY0;

    invoke-direct {v3, v2, p1}, LNY0;-><init>(LQY0;Landroid/view/KeyEvent;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    goto :goto_3

    .line 15
    :cond_5
    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_3
    if-eqz v0, :cond_6

    return v1

    .line 16
    :cond_6
    iget-object v0, p0, Lorg/chromium/content/browser/ContentUiEventHandler;->x:La11;

    check-cast v0, LnT0;

    invoke-virtual {v0, p1}, LnT0;->a(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_7
    const/4 p1, 0x0

    .line 17
    throw p1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 22

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v1, v15, Lorg/chromium/content/browser/ContentUiEventHandler;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 2
    const-class v2, LoW0;

    .line 3
    sget-object v3, LnW0;->a:Lt01;

    .line 4
    invoke-virtual {v1, v2, v3}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->a(Ljava/lang/Class;Lt01;)LxU;

    move-result-object v1

    check-cast v1, LoW0;

    if-eqz v1, :cond_f

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    const v2, 0x1000010

    and-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v14, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 6
    :cond_1
    sget-object v1, LK11;->a:Lorg/chromium/device/gamepad/GamepadList;

    .line 7
    invoke-virtual {v1, v0}, Lorg/chromium/device/gamepad/GamepadList;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_2

    return v14

    .line 8
    :cond_2
    iget-object v1, v15, Lorg/chromium/content/browser/ContentUiEventHandler;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 9
    const-class v2, LxW0;

    .line 10
    sget-object v4, LwW0;->a:Lt01;

    .line 11
    invoke-virtual {v1, v2, v4}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->a(Ljava/lang/Class;Lt01;)LxU;

    move-result-object v1

    check-cast v1, LxW0;

    .line 12
    iget-boolean v2, v1, LxW0;->x:Z

    if-eqz v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_3

    goto :goto_3

    .line 13
    :cond_3
    invoke-static {v0, v3}, LxW0;->a(Landroid/view/MotionEvent;I)F

    move-result v9

    .line 14
    invoke-static {v0, v14}, LxW0;->a(Landroid/view/MotionEvent;I)F

    move-result v10

    const/4 v2, 0x0

    cmpl-float v4, v9, v2

    if-nez v4, :cond_4

    cmpl-float v2, v10, v2

    if-nez v2, :cond_4

    goto :goto_3

    .line 15
    :cond_4
    iget-object v6, v1, LxW0;->w:Lorg/chromium/ui/base/EventForwarder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    const/4 v11, 0x1

    const/4 v12, 0x1

    .line 16
    iget-wide v4, v6, Lorg/chromium/ui/base/EventForwarder;->b:J

    const-wide/16 v1, 0x0

    cmp-long v13, v4, v1

    if-nez v13, :cond_5

    goto :goto_2

    .line 17
    :cond_5
    invoke-static/range {v4 .. v12}, LJ/N;->MT1C98PL(JLjava/lang/Object;JFFZZ)V

    :goto_2
    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_7

    return v14

    .line 18
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_e

    .line 19
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_d

    const/16 v2, 0xb

    if-eq v1, v2, :cond_8

    const/16 v2, 0xc

    if-eq v1, v2, :cond_8

    goto/16 :goto_7

    .line 20
    :cond_8
    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    .line 21
    iget-object v1, v15, Lorg/chromium/content/browser/ContentUiEventHandler;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->K()Lorg/chromium/ui/base/EventForwarder;

    move-result-object v1

    .line 22
    invoke-virtual {v1, v0}, Lorg/chromium/ui/base/EventForwarder;->a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    if-eq v1, v0, :cond_9

    move-object v13, v1

    const/16 v16, 0x1

    goto :goto_5

    :cond_9
    move-object v13, v0

    const/16 v16, 0x0

    .line 23
    :goto_5
    iget-object v0, v15, Lorg/chromium/content/browser/ContentUiEventHandler;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->t()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getDisplay()Lcd1;

    move-result-object v0

    invoke-virtual {v0}, Lcd1;->a()F

    move-result v0

    .line 24
    iget-wide v1, v15, Lorg/chromium/content/browser/ContentUiEventHandler;->y:J

    .line 25
    invoke-virtual {v13}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {v13}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    .line 26
    invoke-virtual {v13}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    div-float/2addr v7, v0

    invoke-virtual {v13}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    div-float/2addr v8, v0

    invoke-virtual {v13, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    .line 27
    invoke-virtual {v13, v3}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v10

    invoke-virtual {v13, v3}, Landroid/view/MotionEvent;->getOrientation(I)F

    move-result v11

    const/16 v0, 0x19

    .line 28
    invoke-virtual {v13, v0, v3}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v12

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x17

    if-lt v0, v14, :cond_a

    invoke-virtual {v13}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    move v14, v0

    goto :goto_6

    :cond_a
    const/4 v14, 0x0

    .line 30
    :goto_6
    invoke-virtual {v13}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v18

    .line 31
    invoke-virtual {v13}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v19

    invoke-virtual {v13, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v20

    move-wide v0, v1

    move-object/from16 v2, p0

    move-wide v3, v4

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v14

    move-object/from16 v21, v13

    move/from16 v13, v18

    const/16 v17, 0x1

    move/from16 v14, v19

    move/from16 v15, v20

    .line 32
    invoke-static/range {v0 .. v15}, LJ/N;->MjyjK8Gd(JLjava/lang/Object;JIFFIFFFIIII)V

    if-eqz v16, :cond_b

    .line 33
    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->recycle()V

    :cond_b
    return v17

    :cond_c
    move-object/from16 v9, p0

    goto :goto_8

    :cond_d
    move-object v9, v15

    const/16 v17, 0x1

    .line 34
    iget-object v1, v9, Lorg/chromium/content/browser/ContentUiEventHandler;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->t()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/ui/base/WindowAndroid;->getDisplay()Lcd1;

    move-result-object v1

    invoke-virtual {v1}, Lcd1;->a()F

    move-result v1

    .line 35
    iget-wide v2, v9, Lorg/chromium/content/browser/ContentUiEventHandler;->y:J

    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    div-float/2addr v6, v1

    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    div-float/2addr v7, v1

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v8

    const/16 v1, 0x9

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v10

    move-wide v0, v2

    move-object/from16 v2, p0

    move-wide v3, v4

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v10

    .line 39
    invoke-static/range {v0 .. v8}, LJ/N;->MifdK0lh(JLjava/lang/Object;JFFFF)V

    return v17

    :cond_e
    :goto_7
    move-object v9, v15

    .line 40
    :goto_8
    iget-object v1, v9, Lorg/chromium/content/browser/ContentUiEventHandler;->x:La11;

    check-cast v1, LnT0;

    invoke-virtual {v1, v0}, LnT0;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_f
    move-object v9, v15

    const/4 v0, 0x0

    .line 41
    throw v0
.end method

.method private onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentUiEventHandler;->x:La11;

    check-cast v0, LnT0;

    invoke-virtual {v0, p1, p2}, LnT0;->a(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method private scrollBy(FF)V
    .locals 8

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/ContentUiEventHandler;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/GestureListenerManagerImpl;

    move-result-object v0

    .line 3
    iget-boolean v0, v0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->D:Z

    if-eqz v0, :cond_1

    .line 4
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentUiEventHandler;->y:J

    .line 5
    invoke-static {v0, v1, p0, v4, v5}, LJ/N;->MW$k83qi(JLjava/lang/Object;J)V

    .line 6
    :cond_1
    iget-wide v1, p0, Lorg/chromium/content/browser/ContentUiEventHandler;->y:J

    move-object v3, p0

    move v6, p1

    move v7, p2

    .line 7
    invoke-static/range {v1 .. v7}, LJ/N;->M_1sgTVt(JLjava/lang/Object;JFF)V

    return-void
.end method

.method private scrollTo(FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentUiEventHandler;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 2
    iget-object v0, v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->C:LFW0;

    .line 3
    invoke-virtual {v0}, LFW0;->a()F

    move-result v0

    .line 4
    iget-object v1, p0, Lorg/chromium/content/browser/ContentUiEventHandler;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 5
    iget-object v1, v1, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->C:LFW0;

    .line 6
    invoke-virtual {v1}, LFW0;->b()F

    move-result v1

    sub-float/2addr p1, v0

    sub-float/2addr p2, v1

    .line 7
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/ContentUiEventHandler;->scrollBy(FF)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method
