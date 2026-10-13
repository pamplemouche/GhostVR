.class public LZc0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field public final synthetic w:I

.field public final synthetic x:Lbd0;


# direct methods
.method public constructor <init>(Lbd0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, LZc0;->x:Lbd0;

    iput p2, p0, LZc0;->w:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, LZc0;->x:Lbd0;

    iget v0, p0, LZc0;->w:I

    .line 2
    invoke-virtual {p1}, Lbd0;->b()Z

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v0}, Lbd0;->setPositionsForTab(III)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, LZc0;->x:Lbd0;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lbd0;->S:Landroid/animation/ValueAnimator;

    return-void
.end method
