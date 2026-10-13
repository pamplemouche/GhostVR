.class public Ldf;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field public final synthetic w:Ldh;

.field public final synthetic x:Landroid/view/ViewPropertyAnimator;

.field public final synthetic y:Landroid/view/View;

.field public final synthetic z:Lkf;


# direct methods
.method public constructor <init>(Lkf;Ldh;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldf;->z:Lkf;

    iput-object p2, p0, Ldf;->w:Ldh;

    iput-object p3, p0, Ldf;->x:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Ldf;->y:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ldf;->x:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2
    iget-object p1, p0, Ldf;->y:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 3
    iget-object p1, p0, Ldf;->z:Lkf;

    iget-object v0, p0, Ldf;->w:Ldh;

    .line 4
    invoke-virtual {p1, v0}, LJg;->a(Ldh;)V

    .line 5
    iget-object p1, p0, Ldf;->z:Lkf;

    iget-object p1, p1, Lkf;->q:Ljava/util/ArrayList;

    iget-object v0, p0, Ldf;->w:Ldh;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Ldf;->z:Lkf;

    invoke-virtual {p1}, Lkf;->d()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ldf;->z:Lkf;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method
