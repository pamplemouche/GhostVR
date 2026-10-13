.class Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;
.super Landroid/view/animation/AnimationSet;
.source "FragmentManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EndViewTransitionAnimator"
.end annotation


# instance fields
.field private mAnimating:Z

.field private final mChild:Landroid/view/View;

.field private mEnded:Z

.field private final mParent:Landroid/view/ViewGroup;

.field private mTransitionEnded:Z


# direct methods
.method constructor <init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/animation/Animation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3479
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 3475
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mAnimating:Z

    .line 3480
    iput-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mParent:Landroid/view/ViewGroup;

    .line 3481
    iput-object p3, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mChild:Landroid/view/View;

    .line 3482
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3485
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 3486
    return-void
.end method


# virtual methods
.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3490
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mAnimating:Z

    .line 3491
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mEnded:Z

    if-eqz v1, :cond_2

    .line 3492
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mTransitionEnded:Z

    if-nez v1, :cond_1

    .line 3499
    :cond_0
    :goto_0
    return v0

    .line 3492
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3494
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v1

    .line 3495
    if-nez v1, :cond_0

    .line 3496
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mEnded:Z

    .line 3497
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mParent:Landroid/view/ViewGroup;

    invoke-static {v1, p0}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    goto :goto_0
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;F)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3505
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mAnimating:Z

    .line 3506
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mEnded:Z

    if-eqz v1, :cond_2

    .line 3507
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mTransitionEnded:Z

    if-nez v1, :cond_1

    .line 3514
    :cond_0
    :goto_0
    return v0

    .line 3507
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3509
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result v1

    .line 3510
    if-nez v1, :cond_0

    .line 3511
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mEnded:Z

    .line 3512
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mParent:Landroid/view/ViewGroup;

    invoke-static {v1, p0}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 3519
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mEnded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 3520
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mAnimating:Z

    .line 3522
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 3527
    :goto_0
    return-void

    .line 3524
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 3525
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mTransitionEnded:Z

    goto :goto_0
.end method
