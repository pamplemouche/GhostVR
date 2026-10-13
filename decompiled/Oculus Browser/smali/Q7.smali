.class public LQ7;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic w:LU7;

.field public final synthetic x:Landroid/view/View;


# direct methods
.method public constructor <init>(LR7;LU7;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p2, p0, LQ7;->w:LU7;

    iput-object p3, p0, LQ7;->x:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    iget-object p1, p0, LQ7;->w:LU7;

    check-cast p1, Loa;

    .line 2
    iget-object p1, p1, Loa;->a:Lqa;

    iget-object p1, p1, Lqa;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 3
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
