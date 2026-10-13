.class public LV;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic w:Landroid/support/design/widget/CoordinatorLayout;

.field public final synthetic x:Landroid/support/design/widget/AppBarLayout;

.field public final synthetic y:LX;


# direct methods
.method public constructor <init>(LX;Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, LV;->y:LX;

    iput-object p2, p0, LV;->w:Landroid/support/design/widget/CoordinatorLayout;

    iput-object p3, p0, LV;->x:Landroid/support/design/widget/AppBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget-object v0, p0, LV;->y:LX;

    iget-object v1, p0, LV;->w:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v2, p0, LV;->x:Landroid/support/design/widget/AppBarLayout;

    .line 2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    invoke-virtual {v0, v1, v2, p1}, Ll0;->c(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    return-void
.end method
