.class public abstract LQK0;
.super Landroid/widget/FrameLayout;
.source "PG"

# interfaces
.implements Le00;
.implements Ld00;


# instance fields
.field public final A:Landroid/content/res/ColorStateList;

.field public B:LSJ0;

.field public C:LsK0;

.field public D:LqK0;

.field public E:Z

.field public F:J

.field public G:Z

.field public H:Lf00;

.field public w:Lb30;

.field public final x:LWT;

.field public final y:[I

.field public z:Lorg/chromium/chrome/browser/toolbar/MenuButton;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LQK0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, LWT;

    invoke-direct {p1}, LWT;-><init>()V

    iput-object p1, p0, LQK0;->x:LWT;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 3
    iput-object p1, p0, LQK0;->y:[I

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, LAO0;->b(Landroid/content/Context;Z)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, LQK0;->A:Landroid/content/res/ColorStateList;

    .line 5
    new-instance p1, LqK0;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070321

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 7
    invoke-direct {p1, v0, v1, p0, p2}, LqK0;-><init>(Landroid/content/Context;ILandroid/view/View;Z)V

    .line 8
    iput-object p1, p0, LQK0;->D:LqK0;

    .line 9
    new-instance p1, LOK0;

    invoke-direct {p1, p0}, LOK0;-><init>(LQK0;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method


# virtual methods
.method public a(LNJ0;)V
    .locals 0

    return-void
.end method

.method public a(LSJ0;LsK0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LQK0;->B:LSJ0;

    .line 2
    iput-object p2, p0, LQK0;->C:LsK0;

    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;Z)V
    .locals 0

    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 5

    .line 4
    invoke-virtual {p0}, LQK0;->f()LWo0;

    move-result-object v0

    invoke-interface {v0}, LWo0;->c()Landroid/view/View;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v4, v0

    .line 8
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 9
    invoke-virtual {p0}, LQK0;->f()LWo0;

    move-result-object v0

    invoke-interface {v0}, LWo0;->c()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, LQK0;->y:[I

    invoke-static {p0, v0, v1}, LGO0;->a(Landroid/view/View;Landroid/view/View;[I)V

    .line 10
    iget-object v0, p0, LQK0;->y:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, LQK0;->G:Z

    return-void
.end method

.method public a(ZZ)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, LQK0;->H:Lf00;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lf00;->B:LWT;

    invoke-virtual {v0, p0}, LWT;->b(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, LQK0;->H:Lf00;

    .line 4
    iget-object v0, v0, Lf00;->A:LWT;

    invoke-virtual {v0, p0}, LWT;->b(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, LQK0;->H:Lf00;

    .line 6
    :cond_0
    invoke-virtual {p0}, LQK0;->f()LWo0;

    move-result-object v0

    invoke-interface {v0}, LWo0;->destroy()V

    return-void
.end method

.method public b(IZ)V
    .locals 0

    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-virtual {p0}, LQK0;->h()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lwc1;->a(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, LQK0;->z:Lorg/chromium/chrome/browser/toolbar/MenuButton;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/MenuButton;->a()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, LQK0;->z:Lorg/chromium/chrome/browser/toolbar/MenuButton;

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    return-void
.end method

.method public e()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, LQK0;->E:Z

    return-void
.end method

.method public abstract f()LWo0;
.end method

.method public f(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public g()Landroid/widget/ImageButton;
    .locals 1

    .line 1
    iget-object v0, p0, LQK0;->z:Lorg/chromium/chrome/browser/toolbar/MenuButton;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lorg/chromium/chrome/browser/toolbar/MenuButton;->w:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public g(Z)V
    .locals 0

    return-void
.end method

.method public h()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, LQK0;->z:Lorg/chromium/chrome/browser/toolbar/MenuButton;

    return-object v0
.end method

.method public h(Z)V
    .locals 0

    return-void
.end method

.method public i()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public i(Z)V
    .locals 0

    return-void
.end method

.method public j()Landroid/content/res/ColorStateList;
    .locals 2

    .line 1
    iget-object v0, p0, LQK0;->H:Lf00;

    if-nez v0, :cond_0

    iget-object v0, p0, LQK0;->A:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lf00;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lf00;->w:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lf00;->x:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0
.end method

.method public j(Z)V
    .locals 0

    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-object v0, p0, LQK0;->B:LSJ0;

    invoke-interface {v0}, LSJ0;->a()Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    iget-object v0, p0, LQK0;->B:LSJ0;

    .line 2
    invoke-interface {v0}, LSJ0;->d()LMm0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, LQK0;->f()LWo0;

    move-result-object v1

    invoke-interface {v1, v0}, LWo0;->a(LMm0;)V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 4

    .line 1
    invoke-virtual {p0}, LQK0;->f()LWo0;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, LQK0;->f()LWo0;

    move-result-object v0

    const/16 v3, 0xc

    invoke-interface {v0, v2, v1, v3}, LGm0;->a(ZLjava/lang/String;I)V

    .line 3
    :cond_0
    iget-object v0, p0, LQK0;->C:LsK0;

    if-eqz v0, :cond_7

    check-cast v0, LkK0;

    if-eqz v0, :cond_6

    const-string v1, "Home"

    .line 4
    invoke-static {v1}, LhV;->a(Ljava/lang/String;)V

    .line 5
    iget-boolean v1, v0, LkK0;->m0:Z

    if-eqz v1, :cond_1

    const-string v1, "MobileBottomToolbarHomeButton"

    .line 6
    invoke-static {v1}, LhV;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "MobileTopToolbarHomeButton"

    .line 7
    invoke-static {v1}, LhV;->a(Ljava/lang/String;)V

    .line 8
    :goto_0
    iget-object v0, v0, LkK0;->F:Lorg/chromium/chrome/browser/toolbar/LocationBarModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->g()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {}, Lpt0;->e()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "chrome-native://newtab/"

    :cond_3
    const-string v3, "about:"

    .line 11
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "chrome:"

    .line 12
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "chrome-native:"

    .line 13
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const/4 v2, 0x1

    :cond_5
    const-string v3, "Navigation.Home.IsChromeInternal"

    .line 14
    invoke-static {v3, v2}, LfV;->a(Ljava/lang/String;Z)V

    .line 15
    new-instance v2, Lorg/chromium/content_public/browser/LoadUrlParams;

    const/high16 v3, 0x4000000

    invoke-direct {v2, v1, v3}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/tab/Tab;->a(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    goto :goto_1

    .line 16
    :cond_6
    throw v1

    :cond_7
    :goto_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0117

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    iget-object v1, p0, LQK0;->D:LqK0;

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v0, v1, v2}, Lwc1;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)I

    .line 5
    iget-object v1, p0, LQK0;->D:LqK0;

    .line 6
    iput-object v0, v1, LqK0;->E:Landroid/view/ViewGroup;

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-wide v0, p0, LQK0;->F:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, LQK0;->F:J

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0b0262

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/toolbar/MenuButton;

    iput-object v0, p0, LQK0;->z:Lorg/chromium/chrome/browser/toolbar/MenuButton;

    .line 3
    new-instance v0, LPK0;

    invoke-direct {v0, p0}, LPK0;-><init>(LQK0;)V

    iput-object v0, p0, LQK0;->B:LSJ0;

    .line 4
    iget-object v0, p0, LQK0;->z:Lorg/chromium/chrome/browser/toolbar/MenuButton;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/MenuButton;->b()V

    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 4
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-object v0, p0, LQK0;->H:Lf00;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf00;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
