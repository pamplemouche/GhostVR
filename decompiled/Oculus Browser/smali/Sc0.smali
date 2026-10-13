.class public final synthetic LSc0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final w:Lbd0;

.field public final x:I


# direct methods
.method public constructor <init>(Lbd0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LSc0;->w:Lbd0;

    iput p2, p0, LSc0;->x:I

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, LSc0;->w:Lbd0;

    iget v1, p0, LSc0;->x:I

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v2, p1, v2, v1}, Lbd0;->a(ZIII)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method
