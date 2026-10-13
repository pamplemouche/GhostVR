.class public LrQ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic w:I

.field public final synthetic x:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;I)V
    .locals 0

    .line 1
    iput-object p1, p0, LrQ0;->x:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    iput p2, p0, LrQ0;->w:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, LrQ0;->x:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v1, p0, LrQ0;->w:I

    invoke-static {v0, p1, v1}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->a(Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;FI)V

    return-void
.end method
