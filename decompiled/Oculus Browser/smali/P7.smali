.class public LP7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field public final synthetic w:LS7;

.field public final synthetic x:Landroid/view/View;


# direct methods
.method public constructor <init>(LR7;LS7;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p2, p0, LP7;->w:LS7;

    iput-object p3, p0, LP7;->x:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, LP7;->w:LS7;

    iget-object v0, p0, LP7;->x:Landroid/view/View;

    invoke-interface {p1, v0}, LS7;->a(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, LP7;->w:LS7;

    iget-object v0, p0, LP7;->x:Landroid/view/View;

    invoke-interface {p1, v0}, LS7;->b(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, LP7;->w:LS7;

    iget-object v0, p0, LP7;->x:Landroid/view/View;

    invoke-interface {p1, v0}, LS7;->c(Landroid/view/View;)V

    return-void
.end method
