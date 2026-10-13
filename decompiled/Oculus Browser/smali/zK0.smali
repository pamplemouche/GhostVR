.class public LzK0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final g:Landroid/util/Property;


# instance fields
.field public a:LKK0;

.field public b:Landroid/animation/ObjectAnimator;

.field public c:Z

.field public d:F

.field public final e:Landroid/content/Context;

.field public final f:LyK0;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, LuK0;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "controlTopMargin"

    invoke-direct {v0, v1, v2}, LuK0;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, LzK0;->g:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LyK0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, LzK0;->f:LyK0;

    .line 3
    iput-object p1, p0, LzK0;->e:Landroid/content/Context;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0702e4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, LzK0;->d:F

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 1
    iget-object v0, p0, LzK0;->f:LyK0;

    check-cast v0, LgL0;

    invoke-virtual {v0}, LgL0;->a()LB8;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lqa;

    .line 3
    iget-object v0, v0, Lqa;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, LzK0;->e:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x7f040003

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 7
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v1
.end method

.method public b()V
    .locals 4

    .line 1
    iget-boolean v0, p0, LzK0;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, LzK0;->b:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 3
    :cond_1
    iget-object v0, p0, LzK0;->f:LyK0;

    sget-object v1, LzK0;->g:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, LzK0;->b:Landroid/animation/ObjectAnimator;

    .line 5
    new-instance v1, LxK0;

    invoke-direct {v1, p0}, LxK0;-><init>(LzK0;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6
    iget-object v0, p0, LzK0;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 7
    iput-boolean v3, p0, LzK0;->c:Z

    return-void
.end method

.method public c()V
    .locals 7

    .line 1
    iget-object v0, p0, LzK0;->b:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2
    :cond_0
    iget-object v0, p0, LzK0;->f:LyK0;

    sget-object v1, LzK0;->g:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    .line 3
    invoke-virtual {p0}, LzK0;->a()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, LzK0;->d:F

    sub-float/2addr v5, v6

    .line 4
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 5
    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0xc8

    .line 6
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, LzK0;->b:Landroid/animation/ObjectAnimator;

    .line 7
    new-instance v1, LvK0;

    invoke-direct {v1, p0}, LvK0;-><init>(LzK0;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 8
    iget-object v0, p0, LzK0;->b:Landroid/animation/ObjectAnimator;

    new-instance v1, LwK0;

    invoke-direct {v1, p0}, LwK0;-><init>(LzK0;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9
    iget-object v0, p0, LzK0;->f:LyK0;

    check-cast v0, LgL0;

    .line 10
    iget-object v0, v0, LgL0;->b:Lorg/chromium/chrome/browser/ChromeActivity;

    const v1, 0x7f0b0019

    invoke-virtual {v0, v1}, LQ8;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v0, p0, LzK0;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 12
    iput-boolean v2, p0, LzK0;->c:Z

    return-void
.end method
