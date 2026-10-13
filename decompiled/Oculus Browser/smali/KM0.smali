.class public LKM0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic w:LMM0;


# direct methods
.method public constructor <init>(LMM0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LKM0;->w:LMM0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, LKM0;->w:LMM0;

    .line 2
    iget-object v0, v0, LMM0;->a:Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBottom(I)V

    .line 4
    iget-object p1, p0, LKM0;->w:LMM0;

    .line 5
    invoke-virtual {p1}, LMM0;->b()V

    return-void
.end method
