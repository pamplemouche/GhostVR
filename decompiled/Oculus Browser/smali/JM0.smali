.class public LJM0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field public final synthetic w:Landroid/view/View;

.field public final synthetic x:I


# direct methods
.method public constructor <init>(LMM0;Landroid/view/View;I)V
    .locals 0

    .line 1
    iput-object p2, p0, LJM0;->w:Landroid/view/View;

    iput p3, p0, LJM0;->x:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, LJM0;->w:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 2
    iget-object p1, p0, LJM0;->w:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, LJM0;->x:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBottom(I)V

    return-void
.end method
