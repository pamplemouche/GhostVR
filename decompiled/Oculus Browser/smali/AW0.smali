.class public LAW0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LR01;


# instance fields
.field public final a:[Landroid/view/MotionEvent$PointerProperties;

.field public final b:[Landroid/view/MotionEvent$PointerCoords;

.field public final c:Landroid/view/View;

.field public d:J


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LAW0;->c:Landroid/view/View;

    const/16 p1, 0x10

    new-array v0, p1, [Landroid/view/MotionEvent$PointerProperties;

    .line 3
    iput-object v0, p0, LAW0;->a:[Landroid/view/MotionEvent$PointerProperties;

    new-array p1, p1, [Landroid/view/MotionEvent$PointerCoords;

    .line 4
    iput-object p1, p0, LAW0;->b:[Landroid/view/MotionEvent$PointerCoords;

    return-void
.end method


# virtual methods
.method public a(IIIII)V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    int-to-float p2, p2

    .line 2
    iput p2, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    int-to-float p2, p3

    .line 3
    iput p2, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 4
    iput p2, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 5
    iget-object p2, p0, LAW0;->b:[Landroid/view/MotionEvent$PointerCoords;

    aput-object v0, p2, p1

    .line 6
    new-instance p2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {p2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 7
    iput p4, p2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 8
    iput p5, p2, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 9
    iget-object p3, p0, LAW0;->a:[Landroid/view/MotionEvent$PointerProperties;

    aput-object p2, p3, p1

    return-void
.end method

.method public a(IIJ)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v6, p2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const/16 v2, 0x9

    const/4 v3, 0x6

    if-ne v3, v1, :cond_0

    const/16 v2, 0xa

    :cond_0
    const/4 v3, 0x7

    if-ne v3, v1, :cond_1

    const/4 v5, 0x7

    goto :goto_0

    :cond_1
    move v5, v2

    .line 10
    :goto_0
    iget-wide v1, v0, LAW0;->d:J

    iget-object v7, v0, LAW0;->a:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v8, v0, LAW0;->b:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/16 v16, 0x0

    move-wide/from16 v3, p3

    move/from16 v6, p2

    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 11
    iget-object v2, v0, LAW0;->c:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 12
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_1

    .line 13
    :pswitch_1
    iget-wide v1, v0, LAW0;->d:J

    const/16 v5, 0x8

    iget-object v7, v0, LAW0;->a:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v8, v0, LAW0;->b:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide/from16 v3, p3

    move/from16 v6, p2

    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 14
    iget-object v2, v0, LAW0;->c:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 15
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_1

    :pswitch_2
    if-le v6, v2, :cond_2

    .line 16
    iget-wide v1, v0, LAW0;->d:J

    const/16 v5, 0x106

    iget-object v7, v0, LAW0;->a:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v8, v0, LAW0;->b:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide/from16 v3, p3

    move/from16 v6, p2

    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 17
    iget-object v2, v0, LAW0;->c:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 18
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 19
    :cond_2
    iget-wide v3, v0, LAW0;->d:J

    const/4 v7, 0x1

    const/4 v8, 0x1

    iget-object v9, v0, LAW0;->a:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v10, v0, LAW0;->b:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-wide/from16 v5, p3

    .line 20
    invoke-static/range {v3 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 21
    iget-object v2, v0, LAW0;->c:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 22
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_1

    .line 23
    :pswitch_3
    iget-wide v3, v0, LAW0;->d:J

    const/4 v7, 0x3

    const/4 v8, 0x1

    iget-object v9, v0, LAW0;->a:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v10, v0, LAW0;->b:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-wide/from16 v5, p3

    .line 24
    invoke-static/range {v3 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 25
    iget-object v2, v0, LAW0;->c:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 26
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1

    .line 27
    :pswitch_4
    iget-wide v1, v0, LAW0;->d:J

    const/4 v5, 0x2

    iget-object v7, v0, LAW0;->a:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v8, v0, LAW0;->b:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide/from16 v3, p3

    move/from16 v6, p2

    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 28
    iget-object v2, v0, LAW0;->c:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 29
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1

    :pswitch_5
    move-wide/from16 v3, p3

    .line 30
    iput-wide v3, v0, LAW0;->d:J

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 31
    iget-object v13, v0, LAW0;->a:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v14, v0, LAW0;->b:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-wide/from16 v7, p3

    move-wide/from16 v9, p3

    .line 32
    invoke-static/range {v7 .. v22}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 33
    iget-object v5, v0, LAW0;->c:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 34
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    if-le v6, v2, :cond_3

    .line 35
    iget-wide v1, v0, LAW0;->d:J

    const/16 v5, 0x105

    iget-object v7, v0, LAW0;->a:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v8, v0, LAW0;->b:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide/from16 v3, p3

    move/from16 v6, p2

    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 36
    iget-object v2, v0, LAW0;->c:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 37
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
