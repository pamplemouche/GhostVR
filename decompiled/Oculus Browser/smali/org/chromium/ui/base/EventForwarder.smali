.class public Lorg/chromium/ui/base/EventForwarder;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Z

.field public b:J

.field public c:F

.field public d:F

.field public e:I


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/chromium/ui/base/EventForwarder;->b:J

    .line 3
    iput-boolean p3, p0, Lorg/chromium/ui/base/EventForwarder;->a:Z

    return-void
.end method

.method public static create(JZ)Lorg/chromium/ui/base/EventForwarder;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/ui/base/EventForwarder;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/ui/base/EventForwarder;-><init>(JZ)V

    return-object v0
.end method

.method private destroy()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/chromium/ui/base/EventForwarder;->b:J

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/ui/base/EventForwarder;->b:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->M4_mlka_(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/base/WindowAndroid;

    .line 3
    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getDisplay()Lcd1;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcd1;->a()F

    move-result v0

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 2

    .line 5
    invoke-virtual {p0}, Lorg/chromium/ui/base/EventForwarder;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 6
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 7
    iget v0, p0, Lorg/chromium/ui/base/EventForwarder;->c:F

    iget v1, p0, Lorg/chromium/ui/base/EventForwarder;->d:F

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-object p1
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/chromium/ui/base/EventForwarder;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lorg/chromium/ui/base/EventForwarder;->d:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 2
    iget-wide v0, p0, Lorg/chromium/ui/base/EventForwarder;->b:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    return v4

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    iput v0, p0, Lorg/chromium/ui/base/EventForwarder;->e:I

    .line 7
    :cond_2
    iget-wide v1, p0, Lorg/chromium/ui/base/EventForwarder;->b:J

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    move-object v3, p0

    move-object v4, p1

    .line 9
    invoke-static/range {v1 .. v6}, LJ/N;->MvdB06Zi(JLjava/lang/Object;Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public final c(Landroid/view/MotionEvent;)Z
    .locals 20

    move-object/from16 v0, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-eq v5, v2, :cond_4

    const/16 v2, 0xa

    if-ne v5, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v15, 0x1

    if-eqz v5, :cond_3

    if-ne v5, v15, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/ui/base/EventForwarder;->a()F

    move-result v2

    move-object/from16 v14, p0

    .line 3
    iget-wide v3, v14, Lorg/chromium/ui/base/EventForwarder;->b:J

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    div-float/2addr v8, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    div-float/2addr v9, v2

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v11

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getOrientation(I)F

    move-result v12

    const/16 v2, 0x19

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v13

    .line 7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x17

    if-lt v2, v15, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v2

    move v15, v2

    goto :goto_0

    :cond_2
    const/4 v15, 0x0

    .line 8
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v19

    move-wide v0, v3

    move-object/from16 v2, p0

    move-wide v3, v6

    move v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    move v10, v12

    move v11, v13

    move v12, v15

    move/from16 v13, v17

    move/from16 v14, v18

    const/16 v16, 0x1

    move/from16 v15, v19

    .line 9
    invoke-static/range {v0 .. v15}, LJ/N;->M$2oj6EQ(JLjava/lang/Object;JIFFIFFFIIII)V

    return v16

    :cond_3
    :goto_1
    const/16 v16, 0x1

    return v16

    :cond_4
    :goto_2
    return v1
.end method
