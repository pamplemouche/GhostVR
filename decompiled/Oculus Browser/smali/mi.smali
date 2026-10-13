.class public Lmi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LTg;


# instance fields
.field public final synthetic a:Lxi;


# direct methods
.method public constructor <init>(Lxi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmi;->a:Lxi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lmi;->a:Lxi;

    iget-object p1, p1, Lxi;->z:Lm7;

    .line 2
    iget-object p1, p1, Lm7;->a:Lk7;

    invoke-interface {p1, p2}, Lk7;->a(Landroid/view/MotionEvent;)Z

    .line 3
    iget-object p1, p0, Lmi;->a:Lxi;

    iget-object p1, p1, Lxi;->t:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lmi;->a:Lxi;

    iget p1, p1, Lxi;->l:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 7
    iget-object v1, p0, Lmi;->a:Lxi;

    iget v1, v1, Lxi;->l:I

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 8
    iget-object v2, p0, Lmi;->a:Lxi;

    invoke-virtual {v2, p1, p2, v1}, Lxi;->a(ILandroid/view/MotionEvent;I)V

    .line 9
    :cond_2
    iget-object v2, p0, Lmi;->a:Lxi;

    iget-object v3, v2, Lxi;->c:Ldh;

    if-nez v3, :cond_3

    return-void

    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p1, v5, :cond_8

    const/4 v6, 0x2

    if-eq p1, v6, :cond_7

    const/4 v1, 0x3

    if-eq p1, v1, :cond_6

    const/4 v0, 0x6

    if-eq p1, v0, :cond_4

    goto :goto_1

    .line 10
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    .line 11
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 12
    iget-object v1, p0, Lmi;->a:Lxi;

    iget v1, v1, Lxi;->l:I

    if-ne v0, v1, :cond_9

    if-nez p1, :cond_5

    const/4 v4, 0x1

    .line 13
    :cond_5
    iget-object v0, p0, Lmi;->a:Lxi;

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v0, Lxi;->l:I

    .line 14
    iget-object v0, p0, Lmi;->a:Lxi;

    iget v1, v0, Lxi;->o:I

    invoke-virtual {v0, p2, v1, p1}, Lxi;->a(Landroid/view/MotionEvent;II)V

    goto :goto_1

    .line 15
    :cond_6
    iget-object p1, v2, Lxi;->t:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_8

    .line 16
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0

    :cond_7
    if-ltz v1, :cond_9

    .line 17
    iget p1, v2, Lxi;->o:I

    invoke-virtual {v2, p2, p1, v1}, Lxi;->a(Landroid/view/MotionEvent;II)V

    .line 18
    iget-object p1, p0, Lmi;->a:Lxi;

    invoke-virtual {p1, v3}, Lxi;->a(Ldh;)V

    .line 19
    iget-object p1, p0, Lmi;->a:Lxi;

    iget-object p2, p1, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Lxi;->s:Ljava/lang/Runnable;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 20
    iget-object p1, p0, Lmi;->a:Lxi;

    iget-object p1, p1, Lxi;->s:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 21
    iget-object p1, p0, Lmi;->a:Lxi;

    iget-object p1, p1, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_1

    .line 22
    :cond_8
    :goto_0
    iget-object p1, p0, Lmi;->a:Lxi;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v4}, Lxi;->c(Ldh;I)V

    .line 23
    iget-object p1, p0, Lmi;->a:Lxi;

    iput v0, p1, Lxi;->l:I

    :cond_9
    :goto_1
    return-void
.end method

.method public a(Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 24
    :cond_0
    iget-object p1, p0, Lmi;->a:Lxi;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lxi;->c(Ldh;I)V

    return-void
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-object p1, p0, Lmi;->a:Lxi;

    iget-object p1, p1, Lxi;->z:Lm7;

    .line 2
    iget-object p1, p1, Lm7;->a:Lk7;

    invoke-interface {p1, p2}, Lk7;->a(Landroid/view/MotionEvent;)Z

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_5

    .line 4
    iget-object p1, p0, Lmi;->a:Lxi;

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p1, Lxi;->l:I

    .line 5
    iget-object p1, p0, Lmi;->a:Lxi;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p1, Lxi;->d:F

    .line 6
    iget-object p1, p0, Lmi;->a:Lxi;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p1, Lxi;->e:F

    .line 7
    iget-object p1, p0, Lmi;->a:Lxi;

    .line 8
    iget-object v4, p1, Lxi;->t:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_0

    .line 9
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->recycle()V

    .line 10
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p1, Lxi;->t:Landroid/view/VelocityTracker;

    .line 11
    iget-object p1, p0, Lmi;->a:Lxi;

    iget-object v4, p1, Lxi;->c:Ldh;

    if-nez v4, :cond_8

    .line 12
    iget-object v4, p1, Lxi;->p:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p1, p2}, Lxi;->a(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v4

    .line 14
    iget-object v5, p1, Lxi;->p:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v1

    :goto_0
    if-ltz v5, :cond_3

    .line 15
    iget-object v1, p1, Lxi;->p:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvi;

    .line 16
    iget-object v6, v1, Lvi;->A:Ldh;

    iget-object v6, v6, Ldh;->w:Landroid/view/View;

    if-ne v6, v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_8

    .line 17
    iget-object p1, p0, Lmi;->a:Lxi;

    iget v2, p1, Lxi;->d:F

    iget v4, v1, Lvi;->E:F

    sub-float/2addr v2, v4

    iput v2, p1, Lxi;->d:F

    .line 18
    iget v2, p1, Lxi;->e:F

    iget v4, v1, Lvi;->F:F

    sub-float/2addr v2, v4

    iput v2, p1, Lxi;->e:F

    .line 19
    iget-object v2, v1, Lvi;->A:Ldh;

    invoke-virtual {p1, v2, v3}, Lxi;->a(Ldh;Z)V

    .line 20
    iget-object p1, p0, Lmi;->a:Lxi;

    iget-object p1, p1, Lxi;->a:Ljava/util/List;

    iget-object v2, v1, Lvi;->A:Ldh;

    iget-object v2, v2, Ldh;->w:Landroid/view/View;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 21
    iget-object p1, p0, Lmi;->a:Lxi;

    iget-object v2, p1, Lxi;->m:Lsi;

    iget-object p1, p1, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v1, Lvi;->A:Ldh;

    invoke-virtual {v2, p1, v4}, Lsi;->a(Landroid/support/v7/widget/RecyclerView;Ldh;)V

    .line 22
    :cond_4
    iget-object p1, p0, Lmi;->a:Lxi;

    iget-object v2, v1, Lvi;->A:Ldh;

    iget v1, v1, Lvi;->B:I

    invoke-virtual {p1, v2, v1}, Lxi;->c(Ldh;I)V

    .line 23
    iget-object p1, p0, Lmi;->a:Lxi;

    iget v1, p1, Lxi;->o:I

    invoke-virtual {p1, p2, v1, v0}, Lxi;->a(Landroid/view/MotionEvent;II)V

    goto :goto_4

    :cond_5
    const/4 v4, 0x3

    if-eq p1, v4, :cond_7

    if-ne p1, v3, :cond_6

    goto :goto_3

    .line 24
    :cond_6
    iget-object v2, p0, Lmi;->a:Lxi;

    iget v2, v2, Lxi;->l:I

    if-eq v2, v1, :cond_8

    .line 25
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ltz v1, :cond_8

    .line 26
    iget-object v2, p0, Lmi;->a:Lxi;

    invoke-virtual {v2, p1, p2, v1}, Lxi;->a(ILandroid/view/MotionEvent;I)V

    goto :goto_4

    .line 27
    :cond_7
    :goto_3
    iget-object p1, p0, Lmi;->a:Lxi;

    iput v1, p1, Lxi;->l:I

    .line 28
    invoke-virtual {p1, v2, v0}, Lxi;->c(Ldh;I)V

    .line 29
    :cond_8
    :goto_4
    iget-object p1, p0, Lmi;->a:Lxi;

    iget-object p1, p1, Lxi;->t:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_9

    .line 30
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 31
    :cond_9
    iget-object p1, p0, Lmi;->a:Lxi;

    iget-object p1, p1, Lxi;->c:Ldh;

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method
