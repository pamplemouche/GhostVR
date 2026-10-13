.class public LxK0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field public final synthetic w:LzK0;


# direct methods
.method public constructor <init>(LzK0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LxK0;->w:LzK0;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, LxK0;->w:LzK0;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, LzK0;->b:Landroid/animation/ObjectAnimator;

    .line 3
    iget-object p1, p1, LzK0;->f:LyK0;

    .line 4
    check-cast p1, LgL0;

    .line 5
    iget-object p1, p1, LgL0;->b:Lorg/chromium/chrome/browser/ChromeActivity;

    const v0, 0x7f0b0019

    invoke-virtual {p1, v0}, LQ8;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
