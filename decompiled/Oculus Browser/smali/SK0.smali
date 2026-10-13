.class public LSK0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic A:I

.field public final synthetic B:I

.field public final synthetic C:I

.field public final synthetic D:Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;

.field public final synthetic w:Z

.field public final synthetic x:I

.field public final synthetic y:I

.field public final synthetic z:I


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;ZIIIIII)V
    .locals 0

    .line 1
    iput-object p1, p0, LSK0;->D:Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;

    iput-boolean p2, p0, LSK0;->w:Z

    iput p3, p0, LSK0;->x:I

    iput p4, p0, LSK0;->y:I

    iput p5, p0, LSK0;->z:I

    iput p6, p0, LSK0;->A:I

    iput p7, p0, LSK0;->B:I

    iput p8, p0, LSK0;->C:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 2
    iget-boolean v0, p0, LSK0;->w:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, LSK0;->D:Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;

    iget v1, p0, LSK0;->x:I

    int-to-float v1, v1

    iget v2, p0, LSK0;->y:I

    int-to-float v2, v2

    .line 4
    invoke-static {v1, v2, p1}, LEO0;->b(FFF)F

    move-result v1

    float-to-int v1, v1

    .line 5
    iput v1, v0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->m0:I

    .line 6
    :cond_0
    iget-object v0, p0, LSK0;->D:Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;

    iget v1, p0, LSK0;->z:I

    iget v2, p0, LSK0;->A:I

    .line 7
    invoke-static {v1, v2, p1}, LAO0;->a(IIF)I

    move-result v1

    .line 8
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->a(Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;I)V

    .line 9
    iget-object v0, p0, LSK0;->D:Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;

    iget v1, p0, LSK0;->B:I

    iget v2, p0, LSK0;->C:I

    invoke-static {v1, v2, p1}, LAO0;->a(IIF)I

    move-result p1

    .line 10
    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->f(I)V

    return-void
.end method
