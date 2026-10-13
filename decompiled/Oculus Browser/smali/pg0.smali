.class public Lpg0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpg0;->w:Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lpg0;->w:Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;->o0:Landroid/animation/ObjectAnimator;

    return-void
.end method
