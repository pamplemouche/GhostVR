.class public LwQ0;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PG"


# instance fields
.field public final synthetic w:LyQ0;


# direct methods
.method public synthetic constructor <init>(LyQ0;LvQ0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LwQ0;->w:LyQ0;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-object v0, p0, LwQ0;->w:LyQ0;

    .line 2
    iget-object v0, v0, LyQ0;->x:LxQ0;

    .line 3
    invoke-interface {v0, p1, p1}, LxQ0;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, LwQ0;->w:LyQ0;

    .line 2
    iget-object v0, v0, LyQ0;->x:LxQ0;

    .line 3
    invoke-interface {v0, p1, p2}, LxQ0;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, LwQ0;->w:LyQ0;

    .line 4
    iget-boolean p2, p1, LyQ0;->z:Z

    if-nez p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iput-boolean p3, p1, LyQ0;->z:Z

    .line 6
    iget-object p1, p1, LyQ0;->x:LxQ0;

    .line 7
    invoke-interface {p1}, LxQ0;->b()F

    move-result p1

    iget-object p2, p0, LwQ0;->w:LyQ0;

    neg-float p3, p4

    if-eqz p2, :cond_1

    const/high16 p4, 0x435a0000    # 218.0f

    mul-float p3, p3, p4

    const/high16 p4, 0x44fa0000    # 2000.0f

    div-float/2addr p3, p4

    add-float/2addr p1, p3

    .line 8
    iget-object p2, p2, LyQ0;->x:LxQ0;

    .line 9
    invoke-interface {p2}, LxQ0;->a()F

    move-result p3

    iget-object p4, p0, LwQ0;->w:LyQ0;

    .line 10
    iget-object p4, p4, LyQ0;->x:LxQ0;

    .line 11
    invoke-interface {p4}, LxQ0;->c()F

    move-result p4

    .line 12
    invoke-static {p1, p3, p4}, LEO0;->a(FFF)F

    move-result p1

    const/4 p3, 0x1

    .line 13
    invoke-interface {p2, p1, p3}, LxQ0;->a(FZ)V

    return p3

    :cond_1
    const/4 p1, 0x0

    .line 14
    throw p1

    :cond_2
    :goto_0
    return p3
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object p1, p0, LwQ0;->w:LyQ0;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, LyQ0;->z:Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 1
    iget-object v1, p0, LwQ0;->w:LyQ0;

    .line 2
    iget-object v1, v1, LyQ0;->x:LxQ0;

    .line 3
    invoke-interface {v1, p1, p2}, LxQ0;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    div-float/2addr p1, p3

    goto :goto_0

    :cond_1
    const/high16 p1, 0x40000000    # 2.0f

    .line 5
    :goto_0
    iget-object p3, p0, LwQ0;->w:LyQ0;

    .line 6
    iget-boolean v3, p3, LyQ0;->z:Z

    if-nez v3, :cond_2

    cmpg-float p1, p1, v2

    if-gez p1, :cond_2

    .line 7
    iget-object p1, p3, LyQ0;->y:Landroid/view/VelocityTracker;

    .line 8
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    return v0

    .line 9
    :cond_2
    iget-object p1, p0, LwQ0;->w:LyQ0;

    .line 10
    iget-object p1, p1, LyQ0;->y:Landroid/view/VelocityTracker;

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 12
    iget-object p1, p0, LwQ0;->w:LyQ0;

    .line 13
    iget-object p1, p1, LyQ0;->x:LxQ0;

    .line 14
    invoke-interface {p1}, LxQ0;->b()F

    move-result p1

    iget-object p3, p0, LwQ0;->w:LyQ0;

    .line 15
    iget-object p3, p3, LyQ0;->x:LxQ0;

    .line 16
    invoke-interface {p3}, LxQ0;->c()F

    move-result p3

    .line 17
    invoke-static {p1, p3}, LEO0;->a(FF)Z

    move-result p1

    .line 18
    iget-object p3, p0, LwQ0;->w:LyQ0;

    .line 19
    iget-object p3, p3, LyQ0;->x:LxQ0;

    .line 20
    invoke-interface {p3, p2}, LxQ0;->a(Landroid/view/MotionEvent;)Z

    move-result p2

    if-nez p2, :cond_3

    if-eqz p1, :cond_3

    iget-object p2, p0, LwQ0;->w:LyQ0;

    .line 21
    iget-object p2, p2, LyQ0;->x:LxQ0;

    .line 22
    invoke-interface {p2}, LxQ0;->d()Z

    move-result p2

    if-nez p2, :cond_3

    return v0

    :cond_3
    if-eqz p1, :cond_4

    cmpl-float p1, p4, v1

    if-lez p1, :cond_4

    return v0

    .line 23
    :cond_4
    iget-object p1, p0, LwQ0;->w:LyQ0;

    .line 24
    iget-object p1, p1, LyQ0;->x:LxQ0;

    .line 25
    invoke-interface {p1}, LxQ0;->b()F

    move-result p1

    iget-object p2, p0, LwQ0;->w:LyQ0;

    .line 26
    iget-object p2, p2, LyQ0;->x:LxQ0;

    .line 27
    invoke-interface {p2}, LxQ0;->a()F

    move-result p2

    .line 28
    invoke-static {p1, p2}, LEO0;->a(FF)Z

    move-result p1

    if-eqz p1, :cond_5

    cmpg-float p1, p4, v1

    if-gez p1, :cond_5

    return v0

    .line 29
    :cond_5
    iget-object p1, p0, LwQ0;->w:LyQ0;

    .line 30
    iget-object p1, p1, LyQ0;->x:LxQ0;

    .line 31
    invoke-interface {p1}, LxQ0;->b()F

    move-result p1

    add-float/2addr p1, p4

    .line 32
    iget-object p2, p0, LwQ0;->w:LyQ0;

    const/4 p3, 0x1

    .line 33
    iput-boolean p3, p2, LyQ0;->z:Z

    .line 34
    iget-object p2, p2, LyQ0;->x:LxQ0;

    .line 35
    invoke-interface {p2}, LxQ0;->a()F

    move-result p4

    iget-object v1, p0, LwQ0;->w:LyQ0;

    .line 36
    iget-object v1, v1, LyQ0;->x:LxQ0;

    .line 37
    invoke-interface {v1}, LxQ0;->c()F

    move-result v1

    .line 38
    invoke-static {p1, p4, v1}, LEO0;->a(FFF)F

    move-result p1

    .line 39
    invoke-interface {p2, p1, v0}, LxQ0;->a(FZ)V

    return p3

    :cond_6
    :goto_1
    return v0
.end method
