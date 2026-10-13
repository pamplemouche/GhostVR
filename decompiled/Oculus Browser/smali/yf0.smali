.class public Lyf0;
.super LGf0;
.source "PG"


# instance fields
.field public c:LWf0;

.field public final synthetic d:LJf0;


# direct methods
.method public constructor <init>(LJf0;LIf0;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lyf0;->d:LJf0;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LGf0;-><init>(LJf0;Lxf0;)V

    .line 2
    new-instance v0, LWf0;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p2}, LWf0;-><init>(Landroid/content/Context;LIf0;)V

    iput-object v0, p0, Lyf0;->c:LWf0;

    return-void
.end method


# virtual methods
.method public a()Landroid/animation/Animator;
    .locals 3

    .line 1
    iget-object v0, p0, Lyf0;->c:LWf0;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2
    iget-object v0, p0, Lyf0;->c:LWf0;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LGf0;->a(LWf0;F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

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
    iget-object v0, p0, Lyf0;->c:LWf0;

    .line 2
    iget-object v1, v0, LWf0;->w:LIf0;

    .line 3
    invoke-interface {v1}, LIf0;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lyf0;->d:LJf0;

    iget-object v1, p0, Lyf0;->c:LWf0;

    invoke-static {v0, v1}, LJf0;->a(LJf0;LWf0;)V

    return-void
.end method
