.class public Lti;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PG"


# instance fields
.field public w:Z

.field public final synthetic x:Lxi;


# direct methods
.method public constructor <init>(Lxi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lti;->x:Lxi;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lti;->w:Z

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lti;->w:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lti;->x:Lxi;

    invoke-virtual {v0, p1}, Lxi;->a(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v1, p0, Lti;->x:Lxi;

    iget-object v1, v1, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Ldh;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v1, p0, Lti;->x:Lxi;

    iget-object v2, v1, Lxi;->m:Lsi;

    iget-object v1, v1, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1, v0}, Lsi;->d(Landroid/support/v7/widget/RecyclerView;Ldh;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 6
    iget-object v2, p0, Lti;->x:Lxi;

    iget v2, v2, Lxi;->l:I

    if-ne v1, v2, :cond_2

    .line 7
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 10
    iget-object v1, p0, Lti;->x:Lxi;

    iput v2, v1, Lxi;->d:F

    .line 11
    iput p1, v1, Lxi;->e:F

    const/4 p1, 0x0

    .line 12
    iput p1, v1, Lxi;->i:F

    iput p1, v1, Lxi;->h:F

    .line 13
    iget-object p1, v1, Lxi;->m:Lsi;

    invoke-virtual {p1}, Lsi;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    iget-object p1, p0, Lti;->x:Lxi;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lxi;->c(Ldh;I)V

    :cond_2
    return-void
.end method
