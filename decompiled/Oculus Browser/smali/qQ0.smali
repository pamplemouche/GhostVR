.class public LqQ0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field public final synthetic w:I

.field public final synthetic x:I

.field public final synthetic y:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;II)V
    .locals 0

    .line 1
    iput-object p1, p0, LqQ0;->y:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    iput p2, p0, LqQ0;->w:I

    iput p3, p0, LqQ0;->x:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, LqQ0;->y:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 2
    iget-boolean v0, p1, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->V:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p1, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->E:Landroid/animation/ValueAnimator;

    .line 4
    iget v0, p0, LqQ0;->w:I

    .line 5
    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->b(I)V

    .line 6
    iget-object p1, p0, LqQ0;->y:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    const/4 v0, -0x1

    .line 7
    iput v0, p1, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->K:I

    return-void
.end method
