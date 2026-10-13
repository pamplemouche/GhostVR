.class public Lhf;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field public final synthetic w:Lif;

.field public final synthetic x:Landroid/view/ViewPropertyAnimator;

.field public final synthetic y:Landroid/view/View;

.field public final synthetic z:Lkf;


# direct methods
.method public constructor <init>(Lkf;Lif;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhf;->z:Lkf;

    iput-object p2, p0, Lhf;->w:Lif;

    iput-object p3, p0, Lhf;->x:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lhf;->y:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lhf;->x:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2
    iget-object p1, p0, Lhf;->y:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 3
    iget-object p1, p0, Lhf;->y:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 4
    iget-object p1, p0, Lhf;->y:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 5
    iget-object p1, p0, Lhf;->z:Lkf;

    iget-object v0, p0, Lhf;->w:Lif;

    iget-object v0, v0, Lif;->b:Ldh;

    .line 6
    invoke-virtual {p1, v0}, LJg;->a(Ldh;)V

    .line 7
    iget-object p1, p0, Lhf;->z:Lkf;

    iget-object p1, p1, Lkf;->r:Ljava/util/ArrayList;

    iget-object v0, p0, Lhf;->w:Lif;

    iget-object v0, v0, Lif;->b:Ldh;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Lhf;->z:Lkf;

    invoke-virtual {p1}, Lkf;->d()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lhf;->z:Lkf;

    iget-object v0, p0, Lhf;->w:Lif;

    iget-object v0, v0, Lif;->b:Ldh;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method
