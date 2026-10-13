.class public Lk0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Landroid/support/design/widget/CoordinatorLayout;

.field public final x:Landroid/view/View;

.field public final synthetic y:Ll0;


# direct methods
.method public constructor <init>(Ll0;Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0;->y:Ll0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lk0;->w:Landroid/support/design/widget/CoordinatorLayout;

    .line 3
    iput-object p3, p0, Lk0;->x:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0;->x:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lk0;->y:Ll0;

    iget-object v0, v0, Ll0;->e:Landroid/widget/OverScroller;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lk0;->y:Ll0;

    iget-object v1, p0, Lk0;->w:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v2, p0, Lk0;->x:Landroid/view/View;

    iget-object v3, v0, Ll0;->e:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ll0;->c(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    .line 4
    iget-object v0, p0, Lk0;->x:Landroid/view/View;

    invoke-static {v0, p0}, LA7;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lk0;->y:Ll0;

    iget-object v1, p0, Lk0;->w:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v2, p0, Lk0;->x:Landroid/view/View;

    check-cast v0, LX;

    if-eqz v0, :cond_1

    .line 6
    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    .line 7
    invoke-virtual {v0, v1, v2}, LX;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 8
    throw v0

    :cond_2
    :goto_0
    return-void
.end method
