.class public LBc0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/findinpage/FindToolbarTablet;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/findinpage/FindToolbarTablet;)V
    .locals 0

    .line 1
    iput-object p1, p0, LBc0;->w:Lorg/chromium/chrome/browser/findinpage/FindToolbarTablet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, LBc0;->w:Lorg/chromium/chrome/browser/findinpage/FindToolbarTablet;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lorg/chromium/chrome/browser/findinpage/FindToolbarTablet;->U:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, LBc0;->w:Lorg/chromium/chrome/browser/findinpage/FindToolbarTablet;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->postInvalidateOnAnimation()V

    return-void
.end method
