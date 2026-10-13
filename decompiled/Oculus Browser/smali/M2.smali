.class public LM2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field public final synthetic w:Landroid/view/ViewGroup;

.field public final synthetic x:Landroid/view/View;

.field public final synthetic y:Lz2;


# direct methods
.method public constructor <init>(LY2;Landroid/view/ViewGroup;Landroid/view/View;Lz2;)V
    .locals 0

    .line 1
    iput-object p2, p0, LM2;->w:Landroid/view/ViewGroup;

    iput-object p3, p0, LM2;->x:Landroid/view/View;

    iput-object p4, p0, LM2;->y:Lz2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object v0, p0, LM2;->w:Landroid/view/ViewGroup;

    iget-object v1, p0, LM2;->x:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 2
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3
    iget-object p1, p0, LM2;->y:Lz2;

    iget-object p1, p1, Lz2;->e0:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
