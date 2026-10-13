.class public LyM0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field public final synthetic w:LzM0;


# direct methods
.method public constructor <init>(LzM0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LyM0;->w:LzM0;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, LyM0;->w:LzM0;

    iget-object p1, p1, LzM0;->w:Lorg/chromium/chrome/browser/ui/widget/LoadingView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
