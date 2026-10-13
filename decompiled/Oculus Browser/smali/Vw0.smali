.class public LVw0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic w:LWw0;


# direct methods
.method public constructor <init>(LWw0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LVw0;->w:LWw0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, LVw0;->w:LWw0;

    .line 3
    iget v1, v0, LWw0;->x:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    .line 4
    iget-object p1, v0, LWw0;->y:LXw0;

    .line 5
    iget-object p1, p1, LXw0;->G:Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 7
    iget-boolean p1, v0, LWw0;->w:Z

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, v0, LWw0;->y:LXw0;

    .line 9
    iget-object p1, p1, LXw0;->N:Landroid/view/ViewGroup;

    neg-float v1, v1

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 11
    iget-object p1, v0, LWw0;->y:LXw0;

    .line 12
    iget-object p1, p1, LXw0;->K:Lorg/chromium/chrome/browser/ui/widget/FadingEdgeScrollView;

    .line 13
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getTop()I

    move-result p1

    iget-object v1, v0, LWw0;->y:LXw0;

    .line 14
    iget-object v1, v1, LXw0;->K:Lorg/chromium/chrome/browser/ui/widget/FadingEdgeScrollView;

    .line 15
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p1

    iget-object p1, v0, LWw0;->y:LXw0;

    .line 16
    iget-object p1, p1, LXw0;->N:Landroid/view/ViewGroup;

    .line 17
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTop()I

    move-result p1

    .line 18
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 19
    iget-object v0, v0, LWw0;->y:LXw0;

    .line 20
    iget-object v0, v0, LXw0;->K:Lorg/chromium/chrome/browser/ui/widget/FadingEdgeScrollView;

    .line 21
    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->setBottom(I)V

    :cond_0
    return-void
.end method
