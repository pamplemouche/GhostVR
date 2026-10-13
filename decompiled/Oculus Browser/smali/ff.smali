.class public Lff;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field public final synthetic A:Landroid/view/ViewPropertyAnimator;

.field public final synthetic B:Lkf;

.field public final synthetic w:Ldh;

.field public final synthetic x:I

.field public final synthetic y:Landroid/view/View;

.field public final synthetic z:I


# direct methods
.method public constructor <init>(Lkf;Ldh;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lff;->B:Lkf;

    iput-object p2, p0, Lff;->w:Ldh;

    iput p3, p0, Lff;->x:I

    iput-object p4, p0, Lff;->y:Landroid/view/View;

    iput p5, p0, Lff;->z:I

    iput-object p6, p0, Lff;->A:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget p1, p0, Lff;->x:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lff;->y:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 3
    :cond_0
    iget p1, p0, Lff;->z:I

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lff;->y:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lff;->A:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2
    iget-object p1, p0, Lff;->B:Lkf;

    iget-object v0, p0, Lff;->w:Ldh;

    .line 3
    invoke-virtual {p1, v0}, LJg;->a(Ldh;)V

    .line 4
    iget-object p1, p0, Lff;->B:Lkf;

    iget-object p1, p1, Lkf;->p:Ljava/util/ArrayList;

    iget-object v0, p0, Lff;->w:Ldh;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lff;->B:Lkf;

    invoke-virtual {p1}, Lkf;->d()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lff;->B:Lkf;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method
