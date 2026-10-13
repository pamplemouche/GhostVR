.class public Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;
.super Landroid/widget/LinearLayout;
.source "PG"


# instance fields
.field public final A:Ljava/lang/String;

.field public final B:LBd0;

.field public C:Landroid/widget/TextView;

.field public D:Landroid/widget/ImageView;

.field public E:Landroid/view/animation/Animation$AnimationListener;

.field public F:Z

.field public G:I

.field public final w:Landroid/animation/ValueAnimator;

.field public final x:I

.field public final y:I

.field public final z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06013a

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 4
    iput p1, p0, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->y:I

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06007a

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 7
    iput p1, p0, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->x:I

    .line 8
    new-instance p1, LBd0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, LBd0;-><init>(Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;LAd0;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->B:LBd0;

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 9
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->w:Landroid/animation/ValueAnimator;

    .line 10
    iget-object p2, p0, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->B:LBd0;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06013b

    .line 12
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    .line 13
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f13045f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f13014c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 16
    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->z:Ljava/lang/String;

    .line 17
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f130460

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->A:Ljava/lang/String;

    .line 18
    iput v2, p0, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->G:I

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 6
    iget-object v2, p0, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->C:Landroid/widget/TextView;

    .line 7
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    .line 8
    iget v0, p0, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->G:I

    if-ne v0, p1, :cond_1

    goto :goto_2

    .line 9
    :cond_1
    iput p1, p0, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->G:I

    .line 10
    iget-object v0, p0, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->C:Landroid/widget/TextView;

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 11
    iget-object p1, p0, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->z:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->A:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :goto_2
    iget-object p1, p0, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->C:Landroid/widget/TextView;

    .line 13
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    invoke-virtual {p0, v1, v1}, Landroid/widget/LinearLayout;->measure(II)V

    goto :goto_4

    :cond_3
    if-nez p1, :cond_5

    .line 15
    iget-object p1, p0, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->C:Landroid/widget/TextView;

    .line 16
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_5

    .line 17
    iget-object p1, p0, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->C:Landroid/widget/TextView;

    const/16 v0, 0x8

    .line 18
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    :goto_4
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->B:LBd0;

    if-eqz p1, :cond_0

    .line 2
    iget v1, p0, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->y:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->x:I

    :goto_0
    if-eqz p1, :cond_1

    iget p1, p0, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->x:I

    goto :goto_1

    :cond_1
    iget p1, p0, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->y:I

    .line 3
    :goto_1
    iput v1, v0, LBd0;->w:I

    .line 4
    iput p1, v0, LBd0;->x:I

    .line 5
    iget-object p1, p0, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->w:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public a(ZZ)V
    .locals 3

    .line 19
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->F:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_1

    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p2, :cond_2

    const-wide/16 v1, 0x190

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 21
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->F:Z

    return-void
.end method

.method public onAnimationEnd()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAnimationEnd()V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->E:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAnimationStart()V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->E:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0b02be

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->D:Landroid/widget/ImageView;

    const v0, 0x7f0b02c0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->C:Landroid/widget/TextView;

    return-void
.end method
