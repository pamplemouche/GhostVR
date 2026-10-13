.class public LL2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field public final synthetic w:Landroid/view/ViewGroup;

.field public final synthetic x:Landroid/view/View;

.field public final synthetic y:Lz2;

.field public final synthetic z:LY2;


# direct methods
.method public constructor <init>(LY2;Landroid/view/ViewGroup;Landroid/view/View;Lz2;)V
    .locals 0

    .line 1
    iput-object p1, p0, LL2;->z:LY2;

    iput-object p2, p0, LL2;->w:Landroid/view/ViewGroup;

    iput-object p3, p0, LL2;->x:Landroid/view/View;

    iput-object p4, p0, LL2;->y:Lz2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    .line 1
    iget-object p1, p0, LL2;->w:Landroid/view/ViewGroup;

    iget-object v0, p0, LL2;->x:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, LL2;->y:Lz2;

    invoke-virtual {p1}, Lz2;->n()Landroid/animation/Animator;

    move-result-object p1

    .line 3
    iget-object v0, p0, LL2;->y:Lz2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz2;->a(Landroid/animation/Animator;)V

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, LL2;->w:Landroid/view/ViewGroup;

    iget-object v0, p0, LL2;->x:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-gez p1, :cond_0

    .line 5
    iget-object v0, p0, LL2;->z:LY2;

    iget-object v1, p0, LL2;->y:Lz2;

    invoke-virtual {v1}, Lz2;->y()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, LY2;->a(Lz2;IIIZ)V

    :cond_0
    return-void
.end method
