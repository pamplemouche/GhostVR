.class public LQ9;
.super LP8;
.source "PG"


# static fields
.field public static final L0:Z

.field public static final M0:I


# instance fields
.field public final A:LM9;

.field public A0:Z

.field public final B:Lqb;

.field public B0:Z

.field public C:Landroid/content/Context;

.field public C0:I

.field public D:Z

.field public D0:I

.field public E:Z

.field public E0:I

.field public F:I

.field public F0:Landroid/view/animation/Interpolator;

.field public G:Landroid/view/View;

.field public G0:Landroid/view/animation/Interpolator;

.field public H:Landroid/widget/Button;

.field public H0:Landroid/view/animation/Interpolator;

.field public I:Landroid/widget/Button;

.field public I0:Landroid/view/animation/Interpolator;

.field public J:Landroid/widget/ImageButton;

.field public final J0:Landroid/view/accessibility/AccessibilityManager;

.field public K:Landroid/widget/ImageButton;

.field public K0:Ljava/lang/Runnable;

.field public L:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

.field public M:Landroid/widget/FrameLayout;

.field public N:Landroid/widget/LinearLayout;

.field public O:Landroid/widget/FrameLayout;

.field public P:Landroid/widget/FrameLayout;

.field public Q:Landroid/widget/ImageView;

.field public R:Landroid/widget/TextView;

.field public S:Landroid/widget/TextView;

.field public T:Landroid/widget/TextView;

.field public U:Z

.field public V:Landroid/widget/LinearLayout;

.field public W:Landroid/widget/RelativeLayout;

.field public X:Landroid/widget/LinearLayout;

.field public Y:Landroid/view/View;

.field public Z:Landroid/support/v7/app/OverlayListView;

.field public a0:LP9;

.field public b0:Ljava/util/List;

.field public c0:Ljava/util/Set;

.field public d0:Ljava/util/Set;

.field public e0:Ljava/util/Set;

.field public f0:Landroid/widget/SeekBar;

.field public g0:LO9;

.field public h0:Lqb;

.field public i0:I

.field public j0:I

.field public k0:I

.field public final l0:I

.field public m0:Ljava/util/Map;

.field public n0:Lx5;

.field public o0:LL9;

.field public p0:Landroid/support/v4/media/session/PlaybackStateCompat;

.field public q0:Landroid/support/v4/media/MediaDescriptionCompat;

.field public r0:LK9;

.field public s0:Landroid/graphics/Bitmap;

.field public t0:Landroid/net/Uri;

.field public u0:Z

.field public v0:Landroid/graphics/Bitmap;

.field public w0:I

.field public x0:Z

.field public y0:Z

.field public final z:Lrb;

.field public z0:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "MediaRouteCtrlDialog"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, LQ9;->L0:Z

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v1, v0

    sput v1, LQ9;->M0:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, v1, v0}, Lfa;->a(Landroid/content/Context;IZ)Landroid/content/Context;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lfa;->a(Landroid/content/Context;)I

    move-result v1

    .line 3
    invoke-direct {p0, p1, v1}, LP8;-><init>(Landroid/content/Context;I)V

    .line 4
    iput-boolean v0, p0, LQ9;->U:Z

    .line 5
    new-instance v0, LA9;

    invoke-direct {v0, p0}, LA9;-><init>(LQ9;)V

    iput-object v0, p0, LQ9;->K0:Ljava/lang/Runnable;

    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, LQ9;->C:Landroid/content/Context;

    .line 7
    new-instance v0, LL9;

    invoke-direct {v0, p0}, LL9;-><init>(LQ9;)V

    iput-object v0, p0, LQ9;->o0:LL9;

    .line 8
    iget-object v0, p0, LQ9;->C:Landroid/content/Context;

    invoke-static {v0}, Lrb;->a(Landroid/content/Context;)Lrb;

    move-result-object v0

    iput-object v0, p0, LQ9;->z:Lrb;

    .line 9
    new-instance v0, LM9;

    invoke-direct {v0, p0}, LM9;-><init>(LQ9;)V

    iput-object v0, p0, LQ9;->A:LM9;

    .line 10
    iget-object v0, p0, LQ9;->z:Lrb;

    invoke-virtual {v0}, Lrb;->d()Lqb;

    move-result-object v0

    iput-object v0, p0, LQ9;->B:Lqb;

    .line 11
    iget-object v0, p0, LQ9;->z:Lrb;

    invoke-virtual {v0}, Lrb;->b()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-virtual {p0, v0}, LQ9;->a(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 12
    iget-object v0, p0, LQ9;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, LQ9;->l0:I

    .line 13
    iget-object v0, p0, LQ9;->C:Landroid/content/Context;

    const-string v1, "accessibility"

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, LQ9;->J0:Landroid/view/accessibility/AccessibilityManager;

    const v0, 0x7f0d0001

    .line 15
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, LQ9;->G0:Landroid/view/animation/Interpolator;

    const/high16 v0, 0x7f0d0000

    .line 16
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, LQ9;->H0:Landroid/view/animation/Interpolator;

    .line 17
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, LQ9;->I0:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public static a(Landroid/view/View;)I
    .locals 0

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return p0
.end method

.method public static a(Landroid/graphics/Bitmap;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 17
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Landroid/view/View;I)V
    .locals 1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 10
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    if-lt p1, p2, :cond_0

    .line 51
    iget v1, p0, LQ9;->F:I

    int-to-float v1, v1

    int-to-float p2, p2

    mul-float v1, v1, p2

    int-to-float p1, p1

    div-float/2addr v1, p1

    add-float/2addr v1, v0

    float-to-int p1, v1

    return p1

    .line 52
    :cond_0
    iget p1, p0, LQ9;->F:I

    int-to-float p1, p1

    const/high16 p2, 0x41100000    # 9.0f

    mul-float p1, p1, p2

    const/high16 p2, 0x41800000    # 16.0f

    div-float/2addr p1, p2

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public final a(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 3

    .line 1
    iget-object v0, p0, LQ9;->n0:Lx5;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, LQ9;->o0:LL9;

    invoke-virtual {v0, v2}, Lx5;->b(Lm5;)V

    .line 3
    iput-object v1, p0, LQ9;->n0:Lx5;

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-boolean v0, p0, LQ9;->E:Z

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    :try_start_0
    new-instance v0, Lx5;

    iget-object v2, p0, LQ9;->C:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Lx5;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    iput-object v0, p0, LQ9;->n0:Lx5;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MediaRouteCtrlDialog"

    const-string v2, "Error creating media controller in setMediaSession."

    .line 6
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    :goto_0
    iget-object p1, p0, LQ9;->n0:Lx5;

    if-eqz p1, :cond_3

    .line 8
    iget-object v0, p0, LQ9;->o0:LL9;

    invoke-virtual {p1, v0}, Lx5;->a(Lm5;)V

    .line 9
    :cond_3
    iget-object p1, p0, LQ9;->n0:Lx5;

    if-nez p1, :cond_4

    move-object p1, v1

    goto :goto_1

    .line 10
    :cond_4
    invoke-virtual {p1}, Lx5;->a()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_5

    move-object p1, v1

    goto :goto_2

    .line 11
    :cond_5
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->b()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p1

    :goto_2
    iput-object p1, p0, LQ9;->q0:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 12
    iget-object p1, p0, LQ9;->n0:Lx5;

    if-nez p1, :cond_6

    goto :goto_3

    .line 13
    :cond_6
    iget-object p1, p1, Lx5;->a:Ln5;

    invoke-interface {p1}, Ln5;->a()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v1

    .line 14
    :goto_3
    iput-object v1, p0, LQ9;->p0:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 15
    invoke-virtual {p0}, LQ9;->g()V

    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, LQ9;->d(Z)V

    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .locals 4

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 46
    new-instance v1, LG9;

    invoke-direct {v1, p0, v0, p2, p1}, LG9;-><init>(LQ9;IILandroid/view/View;)V

    .line 47
    iget p2, p0, LQ9;->C0:I

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 48
    iget-object p2, p0, LQ9;->F0:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 49
    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public a(Z)V
    .locals 10

    .line 18
    iget-object v0, p0, LQ9;->Z:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 19
    :goto_0
    iget-object v3, p0, LQ9;->Z:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    .line 20
    iget-object v3, p0, LQ9;->Z:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    add-int v5, v0, v2

    .line 21
    iget-object v6, p0, LQ9;->a0:LP9;

    invoke-virtual {v6, v5}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lqb;

    if-eqz p1, :cond_0

    .line 22
    iget-object v6, p0, LQ9;->c0:Ljava/util/Set;

    if-eqz v6, :cond_0

    .line 23
    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const v5, 0x7f0b04f2

    .line 24
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 25
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 26
    new-instance v5, Landroid/view/animation/AnimationSet;

    invoke-direct {v5, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 27
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v7, 0x0

    .line 28
    invoke-virtual {v6, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 29
    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 30
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    const/4 v9, 0x0

    invoke-direct {v6, v9, v9, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 31
    invoke-virtual {v6, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 32
    invoke-virtual {v5, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 33
    invoke-virtual {v5, v4}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 34
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 35
    invoke-virtual {v3, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, LQ9;->Z:Landroid/support/v7/app/OverlayListView;

    .line 37
    iget-object v0, v0, Landroid/support/v7/app/OverlayListView;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lha;

    .line 38
    iput-boolean v4, v2, Lha;->k:Z

    .line 39
    iput-boolean v4, v2, Lha;->l:Z

    .line 40
    iget-object v2, v2, Lha;->m:Lga;

    if-eqz v2, :cond_2

    .line 41
    check-cast v2, Lx9;

    .line 42
    iget-object v3, v2, Lx9;->b:LQ9;

    iget-object v3, v3, LQ9;->e0:Ljava/util/Set;

    iget-object v5, v2, Lx9;->a:Lqb;

    invoke-interface {v3, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 43
    iget-object v2, v2, Lx9;->b:LQ9;

    iget-object v2, v2, LQ9;->a0:LP9;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_2

    :cond_3
    if-nez p1, :cond_4

    .line 44
    invoke-virtual {p0, v1}, LQ9;->b(Z)V

    :cond_4
    return-void
.end method

.method public b(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LQ9;->c0:Ljava/util/Set;

    .line 3
    iput-object v0, p0, LQ9;->d0:Ljava/util/Set;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, LQ9;->A0:Z

    .line 5
    iget-boolean v1, p0, LQ9;->B0:Z

    if-eqz v1, :cond_0

    .line 6
    iput-boolean v0, p0, LQ9;->B0:Z

    .line 7
    invoke-virtual {p0, p1}, LQ9;->e(Z)V

    .line 8
    :cond_0
    iget-object p1, p0, LQ9;->Z:Landroid/support/v7/app/OverlayListView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setEnabled(Z)V

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, LQ9;->G:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, LQ9;->q0:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v0, :cond_0

    iget-object v0, p0, LQ9;->p0:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c(Z)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3
    iget-object v1, p0, LQ9;->X:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 4
    :cond_0
    iget-object v1, p0, LQ9;->V:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, LQ9;->V:Landroid/widget/LinearLayout;

    .line 5
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    if-eqz p1, :cond_1

    .line 6
    iget-object v0, p0, LQ9;->W:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v2, v0

    .line 7
    :cond_1
    iget-object v0, p0, LQ9;->X:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, LQ9;->X:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, LQ9;->X:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 10
    iget-object p1, p0, LQ9;->Y:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr v0, p1

    :cond_3
    return v0
.end method

.method public final c()Lpb;
    .locals 2

    .line 1
    iget-object v0, p0, LQ9;->B:Lqb;

    instance-of v1, v0, Lpb;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lpb;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, LQ9;->h0:Lqb;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, LQ9;->x0:Z

    .line 3
    iget-boolean v0, p0, LQ9;->y0:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, LQ9;->y0:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, LQ9;->x0:Z

    .line 5
    iput-boolean v0, p0, LQ9;->y0:Z

    .line 6
    iget-object v2, p0, LQ9;->B:Lqb;

    invoke-virtual {v2}, Lqb;->d()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, p0, LQ9;->B:Lqb;

    invoke-virtual {v2}, Lqb;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_11

    .line 7
    :cond_1
    iget-boolean v2, p0, LQ9;->D:Z

    if-nez v2, :cond_2

    return-void

    .line 8
    :cond_2
    iget-object v2, p0, LQ9;->T:Landroid/widget/TextView;

    iget-object v3, p0, LQ9;->B:Lqb;

    .line 9
    iget-object v3, v3, Lqb;->d:Ljava/lang/String;

    .line 10
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v2, p0, LQ9;->H:Landroid/widget/Button;

    iget-object v3, p0, LQ9;->B:Lqb;

    .line 12
    iget-boolean v3, v3, Lqb;->j:Z

    const/16 v4, 0x8

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    const/16 v3, 0x8

    .line 13
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 14
    iget-object v2, p0, LQ9;->G:Landroid/view/View;

    const/4 v3, 0x0

    if-nez v2, :cond_5

    iget-boolean v2, p0, LQ9;->u0:Z

    if-eqz v2, :cond_5

    .line 15
    iget-object v2, p0, LQ9;->v0:Landroid/graphics/Bitmap;

    invoke-static {v2}, LQ9;->a(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "Can\'t set artwork image with recycled bitmap: "

    .line 16
    invoke-static {v2}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, LQ9;->v0:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "MediaRouteCtrlDialog"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 17
    :cond_4
    iget-object v2, p0, LQ9;->Q:Landroid/widget/ImageView;

    iget-object v5, p0, LQ9;->v0:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 18
    iget-object v2, p0, LQ9;->Q:Landroid/widget/ImageView;

    iget v5, p0, LQ9;->w0:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 19
    :goto_1
    iput-boolean v0, p0, LQ9;->u0:Z

    .line 20
    iput-object v3, p0, LQ9;->v0:Landroid/graphics/Bitmap;

    .line 21
    iput v0, p0, LQ9;->w0:I

    .line 22
    :cond_5
    iget-object v2, p0, LQ9;->B:Lqb;

    .line 23
    iget-boolean v5, p0, LQ9;->U:Z

    if-eqz v5, :cond_6

    .line 24
    iget v2, v2, Lqb;->o:I

    if-ne v2, v1, :cond_6

    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_8

    .line 25
    iget-object v2, p0, LQ9;->X:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_9

    .line 26
    iget-object v2, p0, LQ9;->X:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 27
    iget-object v2, p0, LQ9;->f0:Landroid/widget/SeekBar;

    iget-object v4, p0, LQ9;->B:Lqb;

    .line 28
    iget v4, v4, Lqb;->q:I

    .line 29
    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 30
    iget-object v2, p0, LQ9;->f0:Landroid/widget/SeekBar;

    iget-object v4, p0, LQ9;->B:Lqb;

    .line 31
    iget v4, v4, Lqb;->p:I

    .line 32
    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 33
    iget-object v2, p0, LQ9;->L:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    invoke-virtual {p0}, LQ9;->c()Lpb;

    move-result-object v4

    if-nez v4, :cond_7

    const/16 v4, 0x8

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_4

    .line 34
    :cond_8
    iget-object v2, p0, LQ9;->X:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 35
    :cond_9
    :goto_4
    invoke-virtual {p0}, LQ9;->b()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 36
    iget-object v2, p0, LQ9;->q0:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v2, :cond_a

    move-object v2, v3

    goto :goto_5

    .line 37
    :cond_a
    iget-object v2, v2, Landroid/support/v4/media/MediaDescriptionCompat;->x:Ljava/lang/CharSequence;

    .line 38
    :goto_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v1

    .line 39
    iget-object v5, p0, LQ9;->q0:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v5, :cond_b

    goto :goto_6

    .line 40
    :cond_b
    iget-object v3, v5, Landroid/support/v4/media/MediaDescriptionCompat;->y:Ljava/lang/CharSequence;

    .line 41
    :goto_6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v1

    .line 42
    iget-object v6, p0, LQ9;->B:Lqb;

    .line 43
    iget v6, v6, Lqb;->r:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_c

    .line 44
    iget-object v2, p0, LQ9;->R:Landroid/widget/TextView;

    const v3, 0x7f1303f6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_9

    .line 45
    :cond_c
    iget-object v6, p0, LQ9;->p0:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz v6, :cond_10

    .line 46
    iget v6, v6, Landroid/support/v4/media/session/PlaybackStateCompat;->w:I

    if-nez v6, :cond_d

    goto :goto_8

    :cond_d
    if-nez v4, :cond_e

    if-nez v5, :cond_e

    .line 47
    iget-object v2, p0, LQ9;->R:Landroid/widget/TextView;

    const v3, 0x7f1303fb

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_9

    :cond_e
    if-eqz v4, :cond_f

    .line 48
    iget-object v4, p0, LQ9;->R:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    goto :goto_7

    :cond_f
    const/4 v2, 0x0

    :goto_7
    if-eqz v5, :cond_11

    .line 49
    iget-object v4, p0, LQ9;->S:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    goto :goto_a

    .line 50
    :cond_10
    :goto_8
    iget-object v2, p0, LQ9;->R:Landroid/widget/TextView;

    const v3, 0x7f1303fc

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_9
    const/4 v2, 0x1

    :cond_11
    const/4 v3, 0x0

    .line 51
    :goto_a
    iget-object v4, p0, LQ9;->R:Landroid/widget/TextView;

    if-eqz v2, :cond_12

    const/4 v2, 0x0

    goto :goto_b

    :cond_12
    const/16 v2, 0x8

    :goto_b
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    iget-object v2, p0, LQ9;->S:Landroid/widget/TextView;

    if-eqz v3, :cond_13

    const/4 v3, 0x0

    goto :goto_c

    :cond_13
    const/16 v3, 0x8

    :goto_c
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    iget-object v2, p0, LQ9;->p0:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz v2, :cond_1a

    .line 54
    iget v2, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->w:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_15

    const/4 v3, 0x3

    if-ne v2, v3, :cond_14

    goto :goto_d

    :cond_14
    const/4 v2, 0x0

    goto :goto_e

    :cond_15
    :goto_d
    const/4 v2, 0x1

    .line 55
    :goto_e
    iget-object v3, p0, LQ9;->J:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v2, :cond_16

    .line 56
    invoke-virtual {p0}, LQ9;->d()Z

    move-result v4

    if-eqz v4, :cond_16

    const v2, 0x7f04018c

    const v4, 0x7f1303fd

    goto :goto_f

    :cond_16
    if-eqz v2, :cond_17

    .line 57
    invoke-virtual {p0}, LQ9;->f()Z

    move-result v4

    if-eqz v4, :cond_17

    const v2, 0x7f040190

    const v4, 0x7f1303ff

    goto :goto_f

    :cond_17
    if-nez v2, :cond_18

    .line 58
    invoke-virtual {p0}, LQ9;->e()Z

    move-result v2

    if-eqz v2, :cond_18

    const v2, 0x7f04018d

    const v4, 0x7f1303fe

    goto :goto_f

    :cond_18
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 59
    :goto_f
    iget-object v5, p0, LQ9;->J:Landroid/widget/ImageButton;

    if-eqz v1, :cond_19

    goto :goto_10

    :cond_19
    const/16 v0, 0x8

    :goto_10
    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-eqz v1, :cond_1a

    .line 60
    iget-object v0, p0, LQ9;->J:Landroid/widget/ImageButton;

    .line 61
    invoke-static {v3, v2}, Lfa;->c(Landroid/content/Context;I)I

    move-result v1

    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 63
    iget-object v0, p0, LQ9;->J:Landroid/widget/ImageButton;

    .line 64
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 65
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 67
    :cond_1a
    invoke-virtual {p0, p1}, LQ9;->e(Z)V

    return-void

    .line 68
    :cond_1b
    :goto_11
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public d()Z
    .locals 5

    .line 69
    iget-object v0, p0, LQ9;->p0:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 70
    iget-wide v0, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->A:J

    const-wide/16 v2, 0x202

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, LQ9;->O:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 2
    iget-object v0, p0, LQ9;->O:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3
    new-instance v1, LF9;

    invoke-direct {v1, p0, p1}, LF9;-><init>(LQ9;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public e()Z
    .locals 5

    .line 4
    iget-object v0, p0, LQ9;->p0:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 5
    iget-wide v0, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->A:J

    const-wide/16 v2, 0x204

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, LQ9;->Y:Landroid/view/View;

    iget-object v1, p0, LQ9;->X:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, LQ9;->V:Landroid/widget/LinearLayout;

    iget-object v1, p0, LQ9;->X:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_1

    if-nez p1, :cond_1

    const/16 v2, 0x8

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public f()Z
    .locals 5

    .line 3
    iget-object v0, p0, LQ9;->p0:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 4
    iget-wide v0, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->A:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()V
    .locals 6

    .line 1
    iget-object v0, p0, LQ9;->G:Landroid/view/View;

    if-nez v0, :cond_a

    .line 2
    iget-object v0, p0, LQ9;->q0:Landroid/support/v4/media/MediaDescriptionCompat;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v0, Landroid/support/v4/media/MediaDescriptionCompat;->A:Landroid/graphics/Bitmap;

    .line 4
    :goto_0
    iget-object v2, p0, LQ9;->q0:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v1, v2, Landroid/support/v4/media/MediaDescriptionCompat;->B:Landroid/net/Uri;

    .line 6
    :goto_1
    iget-object v2, p0, LQ9;->r0:LK9;

    if-nez v2, :cond_2

    iget-object v2, p0, LQ9;->s0:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 7
    :cond_2
    iget-object v2, v2, LK9;->a:Landroid/graphics/Bitmap;

    .line 8
    :goto_2
    iget-object v3, p0, LQ9;->r0:LK9;

    if-nez v3, :cond_3

    iget-object v3, p0, LQ9;->t0:Landroid/net/Uri;

    goto :goto_3

    .line 9
    :cond_3
    iget-object v3, v3, LK9;->b:Landroid/net/Uri;

    :goto_3
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v0, :cond_4

    :goto_4
    const/4 v0, 0x1

    goto :goto_7

    :cond_4
    if-nez v2, :cond_7

    if-eqz v3, :cond_5

    .line 10
    invoke-virtual {v3, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    if-nez v3, :cond_6

    if-nez v1, :cond_6

    :goto_5
    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_7
    if-nez v0, :cond_8

    goto :goto_8

    .line 11
    :cond_8
    iget-object v0, p0, LQ9;->r0:LK9;

    if-eqz v0, :cond_9

    .line 12
    invoke-virtual {v0, v5}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 13
    :cond_9
    new-instance v0, LK9;

    invoke-direct {v0, p0}, LK9;-><init>(LQ9;)V

    iput-object v0, p0, LQ9;->r0:LK9;

    new-array v1, v4, [Ljava/lang/Void;

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_a
    :goto_8
    return-void
.end method

.method public h()V
    .locals 3

    .line 1
    iget-object v0, p0, LQ9;->C:Landroid/content/Context;

    invoke-static {v0}, Lda;->a(Landroid/content/Context;)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, LQ9;->F:I

    .line 5
    iget-object v0, p0, LQ9;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701b5

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, LQ9;->i0:I

    const v1, 0x7f0701b4

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, LQ9;->j0:I

    const v1, 0x7f0701b6

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, LQ9;->k0:I

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, LQ9;->s0:Landroid/graphics/Bitmap;

    .line 10
    iput-object v0, p0, LQ9;->t0:Landroid/net/Uri;

    .line 11
    invoke-virtual {p0}, LQ9;->g()V

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, LQ9;->d(Z)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LQ9;->E:Z

    .line 3
    iget-object v0, p0, LQ9;->z:Lrb;

    sget-object v1, Lbb;->c:Lbb;

    iget-object v2, p0, LQ9;->A:LM9;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lrb;->a(Lbb;Lcb;I)V

    .line 4
    iget-object v0, p0, LQ9;->z:Lrb;

    invoke-virtual {v0}, Lrb;->b()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-virtual {p0, v0}, LQ9;->a(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, LP8;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const p1, 0x7f0e0112

    .line 3
    invoke-virtual {p0, p1}, Lm9;->setContentView(I)V

    const p1, 0x102001b

    .line 4
    invoke-virtual {p0, p1}, Lm9;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    new-instance p1, LJ9;

    invoke-direct {p1, p0}, LJ9;-><init>(LQ9;)V

    const v1, 0x7f0b02a5

    .line 6
    invoke-virtual {p0, v1}, Lm9;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, LQ9;->M:Landroid/widget/FrameLayout;

    .line 7
    new-instance v2, LB9;

    invoke-direct {v2, p0}, LB9;-><init>(LQ9;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b02a3

    .line 8
    invoke-virtual {p0, v1}, Lm9;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, LQ9;->N:Landroid/widget/LinearLayout;

    .line 9
    new-instance v2, LC9;

    invoke-direct {v2, p0}, LC9;-><init>(LQ9;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v1, p0, LQ9;->C:Landroid/content/Context;

    const/4 v2, 0x0

    const v3, 0x7f040099

    .line 11
    invoke-static {v1, v2, v3}, Lfa;->a(Landroid/content/Context;II)I

    move-result v4

    const v5, 0x1010031

    .line 12
    invoke-static {v1, v2, v5}, Lfa;->a(Landroid/content/Context;II)I

    move-result v5

    .line 13
    invoke-static {v4, v5}, Ln4;->a(II)D

    move-result-wide v5

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    cmpg-double v9, v5, v7

    if-gez v9, :cond_0

    const v4, 0x7f040091

    .line 14
    invoke-static {v1, v2, v4}, Lfa;->a(Landroid/content/Context;II)I

    move-result v4

    :cond_0
    const v1, 0x102001a

    .line 15
    invoke-virtual {p0, v1}, Lm9;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, LQ9;->H:Landroid/widget/Button;

    const v5, 0x7f1303f9

    .line 16
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 17
    iget-object v1, p0, LQ9;->H:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 18
    iget-object v1, p0, LQ9;->H:Landroid/widget/Button;

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x1020019

    .line 19
    invoke-virtual {p0, v1}, Lm9;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, LQ9;->I:Landroid/widget/Button;

    const v5, 0x7f130400

    .line 20
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 21
    iget-object v1, p0, LQ9;->I:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 22
    iget-object v1, p0, LQ9;->I:Landroid/widget/Button;

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b02aa

    .line 23
    invoke-virtual {p0, v1}, Lm9;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, LQ9;->T:Landroid/widget/TextView;

    const v1, 0x7f0b029b

    .line 24
    invoke-virtual {p0, v1}, Lm9;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, LQ9;->K:Landroid/widget/ImageButton;

    .line 25
    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b02a1

    .line 26
    invoke-virtual {p0, v1}, Lm9;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, LQ9;->P:Landroid/widget/FrameLayout;

    const v1, 0x7f0b02a2

    .line 27
    invoke-virtual {p0, v1}, Lm9;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, LQ9;->O:Landroid/widget/FrameLayout;

    .line 28
    new-instance v1, LD9;

    invoke-direct {v1, p0}, LD9;-><init>(LQ9;)V

    const v4, 0x7f0b0287

    .line 29
    invoke-virtual {p0, v4}, Lm9;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, LQ9;->Q:Landroid/widget/ImageView;

    .line 30
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0b02a0

    .line 31
    invoke-virtual {p0, v4}, Lm9;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b02a9

    .line 32
    invoke-virtual {p0, v1}, Lm9;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, LQ9;->V:Landroid/widget/LinearLayout;

    const v1, 0x7f0b029c

    .line 33
    invoke-virtual {p0, v1}, Lm9;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, LQ9;->Y:Landroid/view/View;

    const v1, 0x7f0b02af

    .line 34
    invoke-virtual {p0, v1}, Lm9;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, LQ9;->W:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b029f

    .line 35
    invoke-virtual {p0, v1}, Lm9;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, LQ9;->R:Landroid/widget/TextView;

    const v1, 0x7f0b029e

    .line 36
    invoke-virtual {p0, v1}, Lm9;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, LQ9;->S:Landroid/widget/TextView;

    const v1, 0x7f0b029d

    .line 37
    invoke-virtual {p0, v1}, Lm9;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, LQ9;->J:Landroid/widget/ImageButton;

    .line 38
    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0b02b1

    .line 39
    invoke-virtual {p0, p1}, Lm9;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, LQ9;->X:Landroid/widget/LinearLayout;

    .line 40
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const p1, 0x7f0b02b4

    .line 41
    invoke-virtual {p0, p1}, Lm9;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, LQ9;->f0:Landroid/widget/SeekBar;

    .line 42
    iget-object v0, p0, LQ9;->B:Lqb;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 43
    new-instance p1, LO9;

    invoke-direct {p1, p0}, LO9;-><init>(LQ9;)V

    iput-object p1, p0, LQ9;->g0:LO9;

    .line 44
    iget-object v0, p0, LQ9;->f0:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p1, 0x7f0b02b2

    .line 45
    invoke-virtual {p0, p1}, Lm9;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/app/OverlayListView;

    iput-object p1, p0, LQ9;->Z:Landroid/support/v7/app/OverlayListView;

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LQ9;->b0:Ljava/util/List;

    .line 47
    new-instance p1, LP9;

    iget-object v0, p0, LQ9;->Z:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, LQ9;->b0:Ljava/util/List;

    invoke-direct {p1, p0, v0, v1}, LP9;-><init>(LQ9;Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, LQ9;->a0:LP9;

    .line 48
    iget-object v0, p0, LQ9;->Z:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 49
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, LQ9;->e0:Ljava/util/Set;

    .line 50
    iget-object p1, p0, LQ9;->C:Landroid/content/Context;

    iget-object v0, p0, LQ9;->V:Landroid/widget/LinearLayout;

    iget-object v1, p0, LQ9;->Z:Landroid/support/v7/app/OverlayListView;

    .line 51
    invoke-virtual {p0}, LQ9;->c()Lpb;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 52
    :goto_0
    invoke-static {p1, v2, v3}, Lfa;->a(Landroid/content/Context;II)I

    move-result v3

    const v6, 0x7f04009a

    .line 53
    invoke-static {p1, v2, v6}, Lfa;->a(Landroid/content/Context;II)I

    move-result v6

    if-eqz v4, :cond_2

    .line 54
    invoke-static {p1, v2}, Lfa;->a(Landroid/content/Context;I)I

    move-result p1

    const/high16 v2, -0x22000000

    if-ne p1, v2, :cond_2

    const/4 p1, -0x1

    goto :goto_1

    :cond_2
    move p1, v3

    move v3, v6

    .line 55
    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 56
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 58
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    iget-object p1, p0, LQ9;->C:Landroid/content/Context;

    iget-object v0, p0, LQ9;->f0:Landroid/widget/SeekBar;

    check-cast v0, Landroid/support/v7/app/MediaRouteVolumeSlider;

    iget-object v1, p0, LQ9;->V:Landroid/widget/LinearLayout;

    invoke-static {p1, v0, v1}, Lfa;->a(Landroid/content/Context;Landroid/support/v7/app/MediaRouteVolumeSlider;Landroid/view/View;)V

    .line 60
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LQ9;->m0:Ljava/util/Map;

    .line 61
    iget-object v0, p0, LQ9;->B:Lqb;

    iget-object v1, p0, LQ9;->f0:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p1, 0x7f0b02a6

    .line 62
    invoke-virtual {p0, p1}, Lm9;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    iput-object p1, p0, LQ9;->L:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    .line 63
    new-instance v0, LE9;

    invoke-direct {v0, p0}, LE9;-><init>(LQ9;)V

    .line 64
    iput-object v0, p1, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->B:Landroid/view/View$OnClickListener;

    .line 65
    iget-boolean p1, p0, LQ9;->z0:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, LQ9;->G0:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_3
    iget-object p1, p0, LQ9;->H0:Landroid/view/animation/Interpolator;

    :goto_2
    iput-object p1, p0, LQ9;->F0:Landroid/view/animation/Interpolator;

    .line 66
    iget-object p1, p0, LQ9;->C:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c001b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, LQ9;->C0:I

    .line 67
    iget-object p1, p0, LQ9;->C:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c001c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, LQ9;->D0:I

    .line 68
    iget-object p1, p0, LQ9;->C:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c001d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, LQ9;->E0:I

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, LQ9;->G:Landroid/view/View;

    .line 70
    iput-boolean v5, p0, LQ9;->D:Z

    .line 71
    invoke-virtual {p0}, LQ9;->h()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, LQ9;->z:Lrb;

    iget-object v1, p0, LQ9;->A:LM9;

    invoke-virtual {v0, v1}, Lrb;->b(Lcb;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, LQ9;->a(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, LQ9;->E:Z

    .line 4
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v1, 0x18

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-super {p0, p1, p2}, LP8;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 2
    :cond_1
    :goto_0
    iget-object p2, p0, LQ9;->B:Lqb;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {p2, p1}, Lqb;->b(I)V

    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-super {p0, p1, p2}, LP8;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
