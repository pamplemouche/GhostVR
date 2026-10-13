.class public Lqa;
.super LB8;
.source "PG"

# interfaces
.implements LVd;


# static fields
.field public static final A:Landroid/view/animation/Interpolator;

.field public static final B:Landroid/view/animation/Interpolator;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/content/Context;

.field public c:Landroid/support/v7/widget/ActionBarOverlayLayout;

.field public d:Landroid/support/v7/widget/ActionBarContainer;

.field public e:LZe;

.field public f:Landroid/support/v7/widget/ActionBarContextView;

.field public g:Landroid/view/View;

.field public h:Z

.field public i:Lpa;

.field public j:LNc;

.field public k:LMc;

.field public l:Z

.field public m:Ljava/util/ArrayList;

.field public n:Z

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:LXc;

.field public v:Z

.field public w:Z

.field public final x:LS7;

.field public final y:LS7;

.field public final z:LU7;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lqa;->A:Landroid/view/animation/Interpolator;

    .line 2
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lqa;->B:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, LB8;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqa;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lqa;->o:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lqa;->p:Z

    .line 6
    iput-boolean v0, p0, Lqa;->t:Z

    .line 7
    new-instance v0, Lma;

    invoke-direct {v0, p0}, Lma;-><init>(Lqa;)V

    iput-object v0, p0, Lqa;->x:LS7;

    .line 8
    new-instance v0, Lna;

    invoke-direct {v0, p0}, Lna;-><init>(Lqa;)V

    iput-object v0, p0, Lqa;->y:LS7;

    .line 9
    new-instance v0, Loa;

    invoke-direct {v0, p0}, Loa;-><init>(Lqa;)V

    iput-object v0, p0, Lqa;->z:LU7;

    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lqa;->a(Landroid/view/View;)V

    if-nez p2, :cond_0

    const p2, 0x1020002

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lqa;->g:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 1

    .line 14
    invoke-direct {p0}, LB8;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqa;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lqa;->o:I

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lqa;->p:Z

    .line 19
    iput-boolean v0, p0, Lqa;->t:Z

    .line 20
    new-instance v0, Lma;

    invoke-direct {v0, p0}, Lma;-><init>(Lqa;)V

    iput-object v0, p0, Lqa;->x:LS7;

    .line 21
    new-instance v0, Lna;

    invoke-direct {v0, p0}, Lna;-><init>(Lqa;)V

    iput-object v0, p0, Lqa;->y:LS7;

    .line 22
    new-instance v0, Loa;

    invoke-direct {v0, p0}, Loa;-><init>(Lqa;)V

    iput-object v0, p0, Lqa;->z:LU7;

    .line 23
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lqa;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 4

    .line 55
    iget-object v0, p0, Lqa;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 56
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 57
    iget-object v1, p0, Lqa;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f04000a

    const/4 v3, 0x1

    .line 58
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 59
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    .line 60
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lqa;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lqa;->b:Landroid/content/Context;

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lqa;->a:Landroid/content/Context;

    iput-object v0, p0, Lqa;->b:Landroid/content/Context;

    .line 62
    :cond_1
    :goto_0
    iget-object v0, p0, Lqa;->b:Landroid/content/Context;

    return-object v0
.end method

.method public final a(Landroid/view/View;)V
    .locals 6

    const v0, 0x7f0b014b

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Lqa;->c:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 2
    iput-object p0, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->Q:LVd;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->Q:LVd;

    iget v2, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->x:I

    check-cast v1, Lqa;

    .line 5
    iput v2, v1, Lqa;->o:I

    .line 6
    iget v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->I:I

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->onWindowSystemUiVisibilityChanged(I)V

    .line 8
    invoke-static {v0}, LA7;->x(Landroid/view/View;)V

    :cond_0
    const v0, 0x7f0b0016

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 10
    instance-of v1, v0, LZe;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 11
    check-cast v0, LZe;

    goto :goto_0

    .line 12
    :cond_1
    instance-of v1, v0, Landroid/support/v7/widget/Toolbar;

    if-eqz v1, :cond_a

    .line 13
    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 14
    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->h0:LXh;

    if-nez v1, :cond_2

    .line 15
    new-instance v1, LXh;

    invoke-direct {v1, v0, v2}, LXh;-><init>(Landroid/support/v7/widget/Toolbar;Z)V

    iput-object v1, v0, Landroid/support/v7/widget/Toolbar;->h0:LXh;

    .line 16
    :cond_2
    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->h0:LXh;

    .line 17
    :goto_0
    iput-object v0, p0, Lqa;->e:LZe;

    const v0, 0x7f0b0023

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionBarContextView;

    iput-object v0, p0, Lqa;->f:Landroid/support/v7/widget/ActionBarContextView;

    const v0, 0x7f0b001a

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/ActionBarContainer;

    iput-object p1, p0, Lqa;->d:Landroid/support/v7/widget/ActionBarContainer;

    .line 20
    iget-object v0, p0, Lqa;->e:LZe;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lqa;->f:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v1, :cond_9

    if-eqz p1, :cond_9

    .line 21
    check-cast v0, LXh;

    .line 22
    iget-object p1, v0, LXh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 23
    iput-object p1, p0, Lqa;->a:Landroid/content/Context;

    .line 24
    iget-object p1, p0, Lqa;->e:LZe;

    check-cast p1, LXh;

    .line 25
    iget p1, p1, LXh;->b:I

    and-int/lit8 p1, p1, 0x4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    .line 26
    iput-boolean v2, p0, Lqa;->h:Z

    .line 27
    :cond_4
    iget-object p1, p0, Lqa;->a:Landroid/content/Context;

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xe

    .line 29
    iget-object v3, p0, Lqa;->e:LZe;

    check-cast v3, LXh;

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v3, 0x7f050000

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 31
    invoke-virtual {p0, p1}, Lqa;->d(Z)V

    .line 32
    iget-object p1, p0, Lqa;->a:Landroid/content/Context;

    sget-object v3, LeS;->a:[I

    const v5, 0x7f040005

    invoke-virtual {p1, v4, v3, v5, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 33
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 34
    iget-object v1, p0, Lqa;->c:Landroid/support/v7/widget/ActionBarOverlayLayout;

    .line 35
    iget-boolean v3, v1, Landroid/support/v7/widget/ActionBarOverlayLayout;->D:Z

    if-eqz v3, :cond_5

    .line 36
    iput-boolean v2, p0, Lqa;->w:Z

    .line 37
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionBarOverlayLayout;->a(Z)V

    goto :goto_2

    .line 38
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_2
    const/16 v1, 0xc

    .line 39
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eqz v0, :cond_7

    int-to-float v0, v0

    .line 40
    iget-object v1, p0, Lqa;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v1, v0}, LA7;->a(Landroid/view/View;F)V

    .line 41
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 42
    :cond_8
    throw v4

    .line 43
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lqa;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " can only be used "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "with a compatible window decor layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t make a decor toolbar out of "

    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_b

    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_b
    const-string v0, "null"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lqa;->e:LZe;

    check-cast v0, LXh;

    .line 51
    iget-boolean v1, v0, LXh;->h:Z

    if-nez v1, :cond_0

    .line 52
    iput-object p1, v0, LXh;->i:Ljava/lang/CharSequence;

    .line 53
    iget v1, v0, LXh;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    .line 54
    iget-object v0, v0, LXh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->c(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 46
    iget-boolean v0, p0, Lqa;->l:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 47
    :cond_0
    iput-boolean p1, p0, Lqa;->l:Z

    .line 48
    iget-object v0, p0, Lqa;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 49
    iget-object v2, p0, Lqa;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz8;

    invoke-interface {v2, p1}, Lz8;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lqa;->h:Z

    if-nez v0, :cond_1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lqa;->e:LZe;

    check-cast v1, LXh;

    .line 3
    iget v2, v1, LXh;->b:I

    const/4 v3, 0x1

    .line 4
    iput-boolean v3, p0, Lqa;->h:Z

    and-int/2addr p1, v0

    and-int/lit8 v0, v2, -0x5

    or-int/2addr p1, v0

    .line 5
    invoke-virtual {v1, p1}, LXh;->a(I)V

    :cond_1
    return-void
.end method

.method public c(Z)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-boolean v1, p0, Lqa;->s:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lqa;->s:Z

    .line 3
    invoke-virtual {p0, v0}, Lqa;->e(Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v1, p0, Lqa;->s:Z

    if-eqz v1, :cond_1

    .line 5
    iput-boolean v0, p0, Lqa;->s:Z

    .line 6
    invoke-virtual {p0, v0}, Lqa;->e(Z)V

    .line 7
    :cond_1
    :goto_0
    iget-object v1, p0, Lqa;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v1}, LA7;->u(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-eqz v1, :cond_5

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0xc8

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lqa;->e:LZe;

    check-cast p1, LXh;

    invoke-virtual {p1, v2, v4, v5}, LXh;->a(IJ)LR7;

    move-result-object p1

    .line 9
    iget-object v1, p0, Lqa;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1, v0, v6, v7}, LPd;->a(IJ)LR7;

    move-result-object v0

    goto :goto_1

    .line 10
    :cond_2
    iget-object p1, p0, Lqa;->e:LZe;

    check-cast p1, LXh;

    invoke-virtual {p1, v0, v6, v7}, LXh;->a(IJ)LR7;

    move-result-object v0

    .line 11
    iget-object p1, p0, Lqa;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1, v3, v4, v5}, LPd;->a(IJ)LR7;

    move-result-object p1

    .line 12
    :goto_1
    new-instance v1, LXc;

    invoke-direct {v1}, LXc;-><init>()V

    .line 13
    iget-object v2, v1, LXc;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object p1, p1, LR7;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_3

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    move-result-wide v2

    goto :goto_2

    :cond_3
    const-wide/16 v2, 0x0

    .line 16
    :goto_2
    iget-object p1, v0, LR7;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_4

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 18
    :cond_4
    iget-object p1, v1, LXc;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {v1}, LXc;->b()V

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_6

    .line 20
    iget-object p1, p0, Lqa;->e:LZe;

    check-cast p1, LXh;

    .line 21
    iget-object p1, p1, LXh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lqa;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, LPd;->setVisibility(I)V

    goto :goto_3

    .line 23
    :cond_6
    iget-object p1, p0, Lqa;->e:LZe;

    check-cast p1, LXh;

    .line 24
    iget-object p1, p1, LXh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Lqa;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1, v3}, LPd;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public final d(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lqa;->n:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lqa;->e:LZe;

    check-cast p1, LXh;

    invoke-virtual {p1, v0}, LXh;->a(Ljh;)V

    .line 3
    iget-object p1, p0, Lqa;->d:Landroid/support/v7/widget/ActionBarContainer;

    .line 4
    iget-object v1, p1, Landroid/support/v7/widget/ActionBarContainer;->x:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 6
    :cond_0
    iput-object v0, p1, Landroid/support/v7/widget/ActionBarContainer;->x:Landroid/view/View;

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lqa;->d:Landroid/support/v7/widget/ActionBarContainer;

    .line 8
    iget-object v1, p1, Landroid/support/v7/widget/ActionBarContainer;->x:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 10
    :cond_2
    iput-object v0, p1, Landroid/support/v7/widget/ActionBarContainer;->x:Landroid/view/View;

    .line 11
    iget-object p1, p0, Lqa;->e:LZe;

    check-cast p1, LXh;

    invoke-virtual {p1, v0}, LXh;->a(Ljh;)V

    .line 12
    :goto_0
    iget-object p1, p0, Lqa;->e:LZe;

    check-cast p1, LXh;

    .line 13
    iget p1, p1, LXh;->o:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 14
    :goto_1
    iget-object v0, p0, Lqa;->e:LZe;

    iget-boolean v3, p0, Lqa;->n:Z

    if-nez v3, :cond_4

    if-eqz p1, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    check-cast v0, LXh;

    .line 15
    iget-object v0, v0, LXh;->a:Landroid/support/v7/widget/Toolbar;

    .line 16
    iput-boolean v3, v0, Landroid/support/v7/widget/Toolbar;->k0:Z

    .line 17
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 18
    iget-object v0, p0, Lqa;->c:Landroid/support/v7/widget/ActionBarOverlayLayout;

    iget-boolean v3, p0, Lqa;->n:Z

    if-nez v3, :cond_5

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    .line 19
    :cond_5
    iput-boolean v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->E:Z

    return-void
.end method

.method public final e(Z)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lqa;->q:Z

    iget-boolean v1, p0, Lqa;->r:Z

    iget-boolean v2, p0, Lqa;->s:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x0

    :goto_2
    const-wide/16 v1, 0xfa

    const/4 v5, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-eqz v0, :cond_d

    .line 2
    iget-boolean v0, p0, Lqa;->t:Z

    if-nez v0, :cond_17

    .line 3
    iput-boolean v3, p0, Lqa;->t:Z

    .line 4
    iget-object v0, p0, Lqa;->u:LXc;

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, LXc;->a()V

    .line 6
    :cond_3
    iget-object v0, p0, Lqa;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ActionBarContainer;->setVisibility(I)V

    .line 7
    iget v0, p0, Lqa;->o:I

    const/4 v4, 0x0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lqa;->v:Z

    if-nez v0, :cond_4

    if-eqz p1, :cond_b

    .line 8
    :cond_4
    iget-object v0, p0, Lqa;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 9
    iget-object v0, p0, Lqa;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_5

    new-array p1, v5, [I

    .line 10
    fill-array-data p1, :array_0

    .line 11
    iget-object v5, p0, Lqa;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v5, p1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 12
    aget p1, p1, v3

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 13
    :cond_5
    iget-object p1, p0, Lqa;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 14
    new-instance p1, LXc;

    invoke-direct {p1}, LXc;-><init>()V

    .line 15
    iget-object v3, p0, Lqa;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v3}, LA7;->a(Landroid/view/View;)LR7;

    move-result-object v3

    invoke-virtual {v3, v4}, LR7;->b(F)LR7;

    .line 16
    iget-object v5, p0, Lqa;->z:LU7;

    invoke-virtual {v3, v5}, LR7;->a(LU7;)LR7;

    .line 17
    iget-boolean v5, p1, LXc;->e:Z

    if-nez v5, :cond_6

    .line 18
    iget-object v5, p1, LXc;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_6
    iget-boolean v3, p0, Lqa;->p:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lqa;->g:Landroid/view/View;

    if-eqz v3, :cond_7

    .line 20
    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 21
    iget-object v0, p0, Lqa;->g:Landroid/view/View;

    invoke-static {v0}, LA7;->a(Landroid/view/View;)LR7;

    move-result-object v0

    invoke-virtual {v0, v4}, LR7;->b(F)LR7;

    .line 22
    iget-boolean v3, p1, LXc;->e:Z

    if-nez v3, :cond_7

    .line 23
    iget-object v3, p1, LXc;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_7
    sget-object v0, Lqa;->B:Landroid/view/animation/Interpolator;

    .line 25
    iget-boolean v3, p1, LXc;->e:Z

    if-nez v3, :cond_8

    .line 26
    iput-object v0, p1, LXc;->c:Landroid/view/animation/Interpolator;

    .line 27
    :cond_8
    iget-boolean v0, p1, LXc;->e:Z

    if-nez v0, :cond_9

    .line 28
    iput-wide v1, p1, LXc;->b:J

    .line 29
    :cond_9
    iget-object v0, p0, Lqa;->y:LS7;

    .line 30
    iget-boolean v1, p1, LXc;->e:Z

    if-nez v1, :cond_a

    .line 31
    iput-object v0, p1, LXc;->d:LS7;

    .line 32
    :cond_a
    iput-object p1, p0, Lqa;->u:LXc;

    .line 33
    invoke-virtual {p1}, LXc;->b()V

    goto :goto_3

    .line 34
    :cond_b
    iget-object p1, p0, Lqa;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 35
    iget-object p1, p0, Lqa;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 36
    iget-boolean p1, p0, Lqa;->p:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lqa;->g:Landroid/view/View;

    if-eqz p1, :cond_c

    .line 37
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 38
    :cond_c
    iget-object p1, p0, Lqa;->y:LS7;

    invoke-interface {p1, v7}, LS7;->b(Landroid/view/View;)V

    .line 39
    :goto_3
    iget-object p1, p0, Lqa;->c:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_17

    .line 40
    invoke-static {p1}, LA7;->x(Landroid/view/View;)V

    goto/16 :goto_4

    .line 41
    :cond_d
    iget-boolean v0, p0, Lqa;->t:Z

    if-eqz v0, :cond_17

    .line 42
    iput-boolean v4, p0, Lqa;->t:Z

    .line 43
    iget-object v0, p0, Lqa;->u:LXc;

    if-eqz v0, :cond_e

    .line 44
    invoke-virtual {v0}, LXc;->a()V

    .line 45
    :cond_e
    iget v0, p0, Lqa;->o:I

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lqa;->v:Z

    if-nez v0, :cond_f

    if-eqz p1, :cond_16

    .line 46
    :cond_f
    iget-object v0, p0, Lqa;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 47
    iget-object v0, p0, Lqa;->d:Landroid/support/v7/widget/ActionBarContainer;

    .line 48
    iput-boolean v3, v0, Landroid/support/v7/widget/ActionBarContainer;->w:Z

    const/high16 v4, 0x60000

    .line 49
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    .line 50
    new-instance v0, LXc;

    invoke-direct {v0}, LXc;-><init>()V

    .line 51
    iget-object v4, p0, Lqa;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    if-eqz p1, :cond_10

    new-array p1, v5, [I

    .line 52
    fill-array-data p1, :array_1

    .line 53
    iget-object v5, p0, Lqa;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v5, p1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 54
    aget p1, p1, v3

    int-to-float p1, p1

    sub-float/2addr v4, p1

    .line 55
    :cond_10
    iget-object p1, p0, Lqa;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {p1}, LA7;->a(Landroid/view/View;)LR7;

    move-result-object p1

    invoke-virtual {p1, v4}, LR7;->b(F)LR7;

    .line 56
    iget-object v3, p0, Lqa;->z:LU7;

    invoke-virtual {p1, v3}, LR7;->a(LU7;)LR7;

    .line 57
    iget-boolean v3, v0, LXc;->e:Z

    if-nez v3, :cond_11

    .line 58
    iget-object v3, v0, LXc;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_11
    iget-boolean p1, p0, Lqa;->p:Z

    if-eqz p1, :cond_12

    iget-object p1, p0, Lqa;->g:Landroid/view/View;

    if-eqz p1, :cond_12

    .line 60
    invoke-static {p1}, LA7;->a(Landroid/view/View;)LR7;

    move-result-object p1

    invoke-virtual {p1, v4}, LR7;->b(F)LR7;

    .line 61
    iget-boolean v3, v0, LXc;->e:Z

    if-nez v3, :cond_12

    .line 62
    iget-object v3, v0, LXc;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_12
    sget-object p1, Lqa;->A:Landroid/view/animation/Interpolator;

    .line 64
    iget-boolean v3, v0, LXc;->e:Z

    if-nez v3, :cond_13

    .line 65
    iput-object p1, v0, LXc;->c:Landroid/view/animation/Interpolator;

    .line 66
    :cond_13
    iget-boolean p1, v0, LXc;->e:Z

    if-nez p1, :cond_14

    .line 67
    iput-wide v1, v0, LXc;->b:J

    .line 68
    :cond_14
    iget-object p1, p0, Lqa;->x:LS7;

    .line 69
    iget-boolean v1, v0, LXc;->e:Z

    if-nez v1, :cond_15

    .line 70
    iput-object p1, v0, LXc;->d:LS7;

    .line 71
    :cond_15
    iput-object v0, p0, Lqa;->u:LXc;

    .line 72
    invoke-virtual {v0}, LXc;->b()V

    goto :goto_4

    .line 73
    :cond_16
    iget-object p1, p0, Lqa;->x:LS7;

    invoke-interface {p1, v7}, LS7;->b(Landroid/view/View;)V

    :cond_17
    :goto_4
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
