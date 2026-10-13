.class public Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment;
.super Landroidx/fragment/app/Fragment;
.source "YouAreReadyWelcomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment$Host;
    }
.end annotation


# instance fields
.field private mAnimation:Landroid/animation/Animator;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mStoreView:Landroid/view/View;

.field private mWelcomeView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment;->navigateNextWithDelay()V

    return-void
.end method

.method private animateViews(Landroid/view/View;Landroid/view/View;)Landroid/animation/Animator;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 55
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 57
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 59
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    .line 60
    invoke-static {p1}, Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment;->createWelcomeTextAnimator(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment;->createStorePanelAnimator(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 59
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 62
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 63
    new-instance v1, Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment$1;-><init>(Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 70
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 71
    return-object v0
.end method

.method private static createStorePanelAnimator(Landroid/view/View;)Landroid/animation/Animator;
    .locals 5

    .prologue
    const-wide/16 v2, 0x190

    const/4 v4, 0x2

    .line 82
    const-string v0, "alpha"

    new-array v1, v4, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 83
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 84
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 85
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 87
    const-string v1, "translationY"

    new-array v2, v4, [F

    fill-array-data v2, :array_1

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 88
    const-wide/16 v2, 0x320

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 89
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 91
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 92
    new-array v3, v4, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 94
    return-object v2

    .line 82
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 87
    :array_1
    .array-data 4
        0x0
        0x43480000    # 200.0f
    .end array-data
.end method

.method private static createWelcomeTextAnimator(Landroid/view/View;)Landroid/animation/Animator;
    .locals 4

    .prologue
    .line 75
    const-string v0, "translationY"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 76
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 77
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 78
    return-object v0

    .line 75
    :array_0
    .array-data 4
        0x0
        -0x3cb80000    # -200.0f
    .end array-data
.end method

.method private navigateNextWithDelay()V
    .locals 4

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment$2;-><init>(Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 46
    sget v0, Lcom/oculus/horizon/R$layout;->obe_you_are_ready_welcome_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 47
    sget v1, Lcom/oculus/horizon/R$id;->welcome_panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment;->mWelcomeView:Landroid/view/View;

    .line 48
    sget v1, Lcom/oculus/horizon/R$id;->store_panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment;->mStoreView:Landroid/view/View;

    .line 49
    return-object v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment;->mAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment;->mWelcomeView:Landroid/view/View;

    iget-object v1, p0, Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment;->mStoreView:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment;->animateViews(Landroid/view/View;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment;->mAnimation:Landroid/animation/Animator;

    .line 104
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 105
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 110
    iget-object v0, p0, Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment;->mAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 114
    return-void
.end method
