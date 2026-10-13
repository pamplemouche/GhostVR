.class public LWw0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final w:Z

.field public x:I

.field public final synthetic y:LXw0;


# direct methods
.method public constructor <init>(LXw0;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, LWw0;->y:LXw0;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 2
    iput-boolean p2, p0, LWw0;->w:Z

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, LWw0;->y:LXw0;

    .line 2
    iget-object p1, p1, LXw0;->G:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 4
    iget-object p1, p0, LWw0;->y:LXw0;

    .line 5
    iget-object p1, p1, LXw0;->N:Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 7
    iget-object p1, p0, LWw0;->y:LXw0;

    .line 8
    iget-object p1, p1, LXw0;->G:Landroid/view/ViewGroup;

    .line 9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 10
    iget-object p1, p0, LWw0;->y:LXw0;

    const/4 v0, 0x0

    .line 11
    iput-object v0, p1, LXw0;->k0:Landroid/animation/Animator;

    .line 12
    iget-object p1, p1, LXw0;->w:LTw0;

    .line 13
    invoke-virtual {p1}, LTw0;->a()V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, LWw0;->y:LXw0;

    .line 2
    iget-object p1, p1, LXw0;->k0:Landroid/animation/Animator;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 4
    :cond_0
    iget-object p1, p0, LWw0;->y:LXw0;

    .line 5
    iget-object p1, p1, LXw0;->G:Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    sub-int/2addr p5, p3

    sub-int/2addr p9, p7

    sub-int/2addr p5, p9

    .line 7
    iput p5, p0, LWw0;->x:I

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 8
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 9
    new-instance p2, LVw0;

    invoke-direct {p2, p0}, LVw0;-><init>(LWw0;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 10
    iget-object p2, p0, LWw0;->y:LXw0;

    .line 11
    iput-object p1, p2, LXw0;->k0:Landroid/animation/Animator;

    const-wide/16 p2, 0xe1

    .line 12
    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 13
    iget-object p1, p0, LWw0;->y:LXw0;

    .line 14
    iget-object p1, p1, LXw0;->k0:Landroid/animation/Animator;

    .line 15
    sget-object p2, LNM0;->e:Ld8;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 16
    iget-object p1, p0, LWw0;->y:LXw0;

    .line 17
    iget-object p1, p1, LXw0;->k0:Landroid/animation/Animator;

    .line 18
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 19
    iget-object p1, p0, LWw0;->y:LXw0;

    .line 20
    iget-object p1, p1, LXw0;->k0:Landroid/animation/Animator;

    .line 21
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
