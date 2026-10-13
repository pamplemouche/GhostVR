.class public Lzf0;
.super LGf0;
.source "PG"


# instance fields
.field public c:LIf0;

.field public d:LWf0;

.field public e:Landroid/view/View;

.field public final synthetic f:LJf0;


# direct methods
.method public constructor <init>(LJf0;LIf0;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lzf0;->f:LJf0;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LGf0;-><init>(LJf0;Lxf0;)V

    .line 2
    iput-object p2, p0, Lzf0;->c:LIf0;

    return-void
.end method


# virtual methods
.method public a()Landroid/animation/Animator;
    .locals 8

    .line 1
    iget-object v0, p0, Lzf0;->d:LWf0;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2
    iget-object v0, p0, Lzf0;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 3
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    .line 4
    iget-object v3, p0, Lzf0;->d:LWf0;

    .line 5
    invoke-virtual {p0, v3, v1}, LGf0;->a(LWf0;F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v3, 0xfa

    .line 6
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    iget-object v1, p0, Lzf0;->e:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v6, v5, [F

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v3

    .line 7
    invoke-static {v1, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v3, 0x64

    .line 8
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v2, v5

    .line 9
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    return-object v0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lzf0;->f:LJf0;

    iget-object v1, p0, Lzf0;->c:LIf0;

    invoke-interface {v1}, LIf0;->c()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, LJf0;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lzf0;->c:LIf0;

    invoke-interface {v0}, LIf0;->a()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzf0;->e:Landroid/view/View;

    .line 2
    new-instance v0, LWf0;

    iget-object v1, p0, Lzf0;->f:LJf0;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lzf0;->c:LIf0;

    invoke-direct {v0, v1, v2}, LWf0;-><init>(Landroid/content/Context;LIf0;)V

    iput-object v0, p0, Lzf0;->d:LWf0;

    .line 3
    iget-object v1, p0, Lzf0;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lzf0;->f:LJf0;

    iget-object v1, p0, Lzf0;->d:LWf0;

    invoke-static {v0, v1}, LJf0;->a(LJf0;LWf0;)V

    return-void
.end method
