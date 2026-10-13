.class public Lorg/chromium/chrome/browser/ui/tablet/emptybackground/EmptyBackgroundViewTablet;
.super Landroid/widget/FrameLayout;
.source "PG"


# instance fields
.field public A:Landroid/animation/Animator;

.field public B:Lorg/chromium/chrome/browser/ui/tablet/emptybackground/incognitotoggle/IncognitoToggleButtonTablet;

.field public w:LpI0;

.field public x:LbI0;

.field public y:Landroid/animation/Animator;

.field public z:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 10

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0b018c

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3
    new-instance v1, LdM0;

    invoke-direct {v1, p0}, LdM0;-><init>(Lorg/chromium/chrome/browser/ui/tablet/emptybackground/EmptyBackgroundViewTablet;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x10100f5

    const/4 v4, 0x0

    aput v3, v2, v4

    const v3, 0x7f140294

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const v0, 0x7f0b018a

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 8
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v6, v5, [F

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v6, v4

    const/4 v7, 0x0

    aput v7, v6, v1

    invoke-static {v0, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lorg/chromium/chrome/browser/ui/tablet/emptybackground/EmptyBackgroundViewTablet;->z:Landroid/animation/Animator;

    const-wide/16 v8, 0xc8

    .line 9
    invoke-virtual {v3, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 10
    iget-object v3, p0, Lorg/chromium/chrome/browser/ui/tablet/emptybackground/EmptyBackgroundViewTablet;->z:Landroid/animation/Animator;

    new-instance v6, LeM0;

    invoke-direct {v6, p0}, LeM0;-><init>(Lorg/chromium/chrome/browser/ui/tablet/emptybackground/EmptyBackgroundViewTablet;)V

    invoke-virtual {v3, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v5, [F

    aput v7, v5, v4

    aput v2, v5, v1

    invoke-static {v0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ui/tablet/emptybackground/EmptyBackgroundViewTablet;->A:Landroid/animation/Animator;

    .line 12
    invoke-virtual {v0, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 13
    iget-object v0, p0, Lorg/chromium/chrome/browser/ui/tablet/emptybackground/EmptyBackgroundViewTablet;->A:Landroid/animation/Animator;

    new-instance v1, LfM0;

    invoke-direct {v1, p0}, LfM0;-><init>(Lorg/chromium/chrome/browser/ui/tablet/emptybackground/EmptyBackgroundViewTablet;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
