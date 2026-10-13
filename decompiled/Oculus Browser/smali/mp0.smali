.class public Lmp0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmp0;->w:Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lmp0;->w:Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;

    .line 2
    iget v0, p1, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->l0:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p1, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->k0:Z

    .line 4
    invoke-static {p1}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->a(Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;)V

    .line 5
    iget-object p1, p0, Lmp0;->w:Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;

    .line 6
    iput-boolean v0, p1, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->h0:Z

    .line 7
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->w()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lmp0;->w:Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->k0:Z

    return-void
.end method
