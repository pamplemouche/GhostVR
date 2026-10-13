.class public final synthetic LIz0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final w:LOz0;

.field public final x:LNz0;


# direct methods
.method public constructor <init>(LOz0;LNz0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LIz0;->w:LOz0;

    iput-object p2, p0, LIz0;->x:LNz0;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object p1, p0, LIz0;->w:LOz0;

    iget-object v0, p0, LIz0;->x:LNz0;

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    if-nez p2, :cond_3

    .line 2
    iget-object p1, p1, LXM0;->z:Lxi;

    .line 3
    iget-object p2, p1, Lxi;->m:Lsi;

    iget-object v1, p1, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, v1, v0}, Lsi;->d(Landroid/support/v7/widget/RecyclerView;Ldh;)Z

    move-result p2

    const-string v1, "ItemTouchHelper"

    if-nez p2, :cond_0

    const-string p1, "Start drag has been called but dragging is not enabled"

    .line 4
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, v0, Ldh;->w:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    iget-object v2, p1, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    if-eq p2, v2, :cond_1

    const-string p1, "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper."

    .line 6
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_1
    iget-object p2, p1, Lxi;->t:Landroid/view/VelocityTracker;

    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p2}, Landroid/view/VelocityTracker;->recycle()V

    .line 9
    :cond_2
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p2

    iput-object p2, p1, Lxi;->t:Landroid/view/VelocityTracker;

    const/4 p2, 0x0

    .line 10
    iput p2, p1, Lxi;->i:F

    iput p2, p1, Lxi;->h:F

    const/4 p2, 0x2

    .line 11
    invoke-virtual {p1, v0, p2}, Lxi;->c(Ldh;I)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_4
    const/4 p1, 0x0

    .line 12
    throw p1
.end method
