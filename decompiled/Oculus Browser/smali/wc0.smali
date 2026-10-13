.class public abstract Lwc0;
.super Landroid/widget/LinearLayout;
.source "PG"


# instance fields
.field public A:Landroid/widget/ImageButton;

.field public B:Landroid/view/View;

.field public C:Lkc0;

.field public D:LpI0;

.field public final E:LxI0;

.field public final F:LlI0;

.field public G:Lorg/chromium/chrome/browser/tab/Tab;

.field public final H:LpH0;

.field public I:Lorg/chromium/ui/base/WindowAndroid;

.field public J:Lgc0;

.field public K:Lyc0;

.field public L:Ljava/lang/String;

.field public M:Z

.field public N:Z

.field public O:I

.field public P:I

.field public Q:Landroid/os/Handler;

.field public R:Ljava/lang/Runnable;

.field public S:Z

.field public T:Z

.field public w:Landroid/widget/TextView;

.field public x:Lorg/chromium/chrome/browser/findinpage/FindToolbar$FindQuery;

.field public y:Landroid/widget/ImageButton;

.field public z:Landroid/widget/ImageButton;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lwc0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lwc0;->L:Ljava/lang/String;

    const/4 p1, 0x2

    .line 3
    iput p1, p0, Lwc0;->O:I

    .line 4
    iput p1, p0, Lwc0;->P:I

    .line 5
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lwc0;->Q:Landroid/os/Handler;

    .line 6
    new-instance p1, Lnc0;

    invoke-direct {p1, p0}, Lnc0;-><init>(Lwc0;)V

    iput-object p1, p0, Lwc0;->H:LpH0;

    .line 7
    new-instance p1, Loc0;

    invoke-direct {p1, p0}, Loc0;-><init>(Lwc0;)V

    iput-object p1, p0, Lwc0;->E:LxI0;

    .line 8
    new-instance p1, Lpc0;

    invoke-direct {p1, p0}, Lpc0;-><init>(Lwc0;)V

    iput-object p1, p0, Lwc0;->F:LlI0;

    return-void
.end method

.method public static synthetic a(Lwc0;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lwc0;->J:Lgc0;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lwc0;->x:Lorg/chromium/chrome/browser/findinpage/FindToolbar$FindQuery;

    invoke-virtual {v0}, Lze;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lwc0;->I:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getKeyboardDelegate()Lrc1;

    move-result-object v0

    iget-object v1, p0, Lwc0;->x:Lorg/chromium/chrome/browser/findinpage/FindToolbar$FindQuery;

    invoke-virtual {v0, v1}, Lrc1;->a(Landroid/view/View;)Z

    .line 5
    iget-object v3, p0, Lwc0;->J:Lgc0;

    const/4 v6, 0x0

    .line 6
    iget-wide v1, v3, Lgc0;->a:J

    move v5, p1

    .line 7
    invoke-static/range {v1 .. v6}, LJ/N;->M1plbBYv(JLjava/lang/Object;Ljava/lang/String;ZZ)V

    .line 8
    iget-object p1, p0, Lwc0;->J:Lgc0;

    .line 9
    iget-wide v0, p1, Lgc0;->a:J

    .line 10
    invoke-static {v0, v1, p1}, LJ/N;->M__7TNNT(JLjava/lang/Object;)V

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lwc0;->S:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public a(ZZ)I
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f0600c9

    goto :goto_0

    :cond_0
    const p1, 0x7f060097

    .line 36
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 37
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method public final a()V
    .locals 2

    .line 12
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->c()V

    .line 13
    invoke-virtual {p0}, Lwc0;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 14
    :cond_0
    iget v0, p0, Lwc0;->O:I

    if-nez v0, :cond_1

    .line 15
    iget-object v0, p0, Lwc0;->x:Lorg/chromium/chrome/browser/findinpage/FindToolbar$FindQuery;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 16
    invoke-virtual {p0}, Lwc0;->g()V

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 17
    iput v1, p0, Lwc0;->P:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Lwc0;->a(I)V

    .line 19
    invoke-virtual {p0}, Lwc0;->d()V

    return-void
.end method

.method public final a(I)V
    .locals 2

    .line 25
    iput p1, p0, Lwc0;->O:I

    .line 26
    iget-object v0, p0, Lwc0;->K:Lyc0;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    if-ne p1, v1, :cond_0

    .line 27
    invoke-interface {v0}, Lyc0;->a()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 28
    invoke-interface {v0}, Lyc0;->b()V

    .line 29
    :cond_1
    :goto_0
    iget p1, p0, Lwc0;->O:I

    if-ne p1, v1, :cond_2

    iget p1, p0, Lwc0;->P:I

    if-nez p1, :cond_2

    .line 30
    invoke-virtual {p0}, Lwc0;->a()V

    goto :goto_1

    .line 31
    :cond_2
    iget p1, p0, Lwc0;->O:I

    if-nez p1, :cond_3

    iget p1, p0, Lwc0;->P:I

    if-ne p1, v1, :cond_3

    .line 32
    invoke-virtual {p0}, Lwc0;->c()V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1

    .line 33
    iget-object v0, p0, Lwc0;->w:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object p1, p0, Lwc0;->w:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 35
    iget-object p1, p0, Lwc0;->w:Landroid/widget/TextView;

    invoke-virtual {p0}, Lwc0;->e()Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Lwc0;->a(ZZ)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 20
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->c()V

    const/4 v0, 0x2

    .line 21
    iput v0, p0, Lwc0;->P:I

    .line 22
    iget v0, p0, Lwc0;->O:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 23
    invoke-virtual {p0, v0}, Lwc0;->a(I)V

    .line 24
    invoke-virtual {p0, p1}, Lwc0;->b(Z)V

    return-void
.end method

.method public b()V
    .locals 4

    const-string v0, ""

    const/4 v1, 0x0

    .line 23
    invoke-virtual {p0, v0, v1}, Lwc0;->a(Ljava/lang/String;Z)V

    .line 24
    iget-object v0, p0, Lwc0;->C:Lkc0;

    if-eqz v0, :cond_0

    new-array v1, v1, [Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 25
    invoke-virtual {v0, v3, v1, v2}, Lkc0;->a(I[Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lwc0;->d(Z)V

    .line 2
    iget-object v0, p0, Lwc0;->D:LpI0;

    iget-object v1, p0, Lwc0;->E:LxI0;

    check-cast v0, LrI0;

    .line 3
    iget-object v0, v0, LrI0;->d:LWT;

    invoke-virtual {v0, v1}, LWT;->b(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lwc0;->D:LpI0;

    check-cast v0, LrI0;

    .line 5
    iget-object v0, v0, LrI0;->a:Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 7
    iget-object v2, p0, Lwc0;->F:LlI0;

    invoke-interface {v1, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->a(LlI0;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lwc0;->G:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v1, p0, Lwc0;->H:LpH0;

    .line 9
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v0, v1}, LWT;->b(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Lwc0;->I:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getKeyboardDelegate()Lrc1;

    move-result-object v0

    iget-object v1, p0, Lwc0;->x:Lorg/chromium/chrome/browser/findinpage/FindToolbar$FindQuery;

    invoke-virtual {v0, v1}, Lrc1;->a(Landroid/view/View;)Z

    .line 11
    iget-object v0, p0, Lwc0;->x:Lorg/chromium/chrome/browser/findinpage/FindToolbar$FindQuery;

    invoke-virtual {v0}, Lze;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 12
    invoke-virtual {p0}, Lwc0;->b()V

    .line 13
    iget-object v0, p0, Lwc0;->J:Lgc0;

    .line 14
    iget-wide v1, v0, Lgc0;->a:J

    .line 15
    invoke-static {v1, v2, v0, p1}, LJ/N;->Mwg$zeYi(JLjava/lang/Object;Z)V

    .line 16
    :cond_1
    iget-object p1, p0, Lwc0;->J:Lgc0;

    .line 17
    iget-wide v0, p1, Lgc0;->a:J

    .line 18
    invoke-static {v0, v1, p1}, LJ/N;->MWhfQNIi(JLjava/lang/Object;)V

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p1, Lgc0;->a:J

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lwc0;->J:Lgc0;

    .line 21
    iput-object p1, p0, Lwc0;->G:Lorg/chromium/chrome/browser/tab/Tab;

    const/4 p1, 0x2

    .line 22
    invoke-virtual {p0, p1}, Lwc0;->a(I)V

    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->c()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lwc0;->P:I

    .line 3
    iget v0, p0, Lwc0;->O:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 4
    invoke-virtual {p0, v0}, Lwc0;->a(I)V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lwc0;->b(Z)V

    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 6
    iget-object v0, p0, Lwc0;->z:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 7
    iget-object v0, p0, Lwc0;->A:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lwc0;->D:LpI0;

    iget-object v1, p0, Lwc0;->E:LxI0;

    check-cast v0, LrI0;

    invoke-virtual {v0, v1}, LrI0;->a(LxI0;)V

    .line 2
    iget-object v0, p0, Lwc0;->D:LpI0;

    check-cast v0, LrI0;

    .line 3
    iget-object v0, v0, LrI0;->a:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 5
    iget-object v2, p0, Lwc0;->F:LlI0;

    invoke-interface {v1, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->b(LlI0;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lwc0;->D:LpI0;

    check-cast v0, LrI0;

    invoke-virtual {v0}, LrI0;->b()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    iput-object v0, p0, Lwc0;->G:Lorg/chromium/chrome/browser/tab/Tab;

    .line 7
    iget-object v1, p0, Lwc0;->H:LpH0;

    .line 8
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v0, v1}, LWT;->a(Ljava/lang/Object;)Z

    .line 9
    new-instance v0, Lgc0;

    iget-object v1, p0, Lwc0;->G:Lorg/chromium/chrome/browser/tab/Tab;

    .line 10
    iget-object v1, v1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 11
    invoke-direct {v0, v1}, Lgc0;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    iput-object v0, p0, Lwc0;->J:Lgc0;

    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lwc0;->M:Z

    .line 13
    iget-wide v2, v0, Lgc0;->a:J

    .line 14
    invoke-static {v2, v3, v0}, LJ/N;->MsReT$HQ(JLjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lwc0;->e()Z

    move-result v2

    if-nez v2, :cond_1

    .line 16
    iget-object v0, p0, Lwc0;->L:Ljava/lang/String;

    .line 17
    :cond_1
    iput-boolean v1, p0, Lwc0;->N:Z

    .line 18
    iget-object v2, p0, Lwc0;->x:Lorg/chromium/chrome/browser/findinpage/FindToolbar$FindQuery;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lwc0;->M:Z

    .line 20
    iget-object v2, p0, Lwc0;->x:Lorg/chromium/chrome/browser/findinpage/FindToolbar$FindQuery;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 21
    invoke-virtual {p0}, Lwc0;->g()V

    .line 22
    invoke-virtual {p0, v1}, Lwc0;->d(Z)V

    .line 23
    invoke-virtual {p0}, Lwc0;->e()Z

    move-result v1

    invoke-virtual {p0, v1}, Lwc0;->e(Z)V

    .line 24
    invoke-virtual {p0, v0}, Lwc0;->a(I)V

    return-void
.end method

.method public final d(Z)V
    .locals 6

    if-eqz p1, :cond_0

    .line 25
    iget-object v0, p0, Lwc0;->C:Lkc0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lwc0;->G:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_0

    .line 27
    new-instance p1, Lkc0;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lwc0;->G:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v2, p0, Lwc0;->J:Lgc0;

    invoke-direct {p1, v0, v1, v2}, Lkc0;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/tab/Tab;Lgc0;)V

    iput-object p1, p0, Lwc0;->C:Lkc0;

    goto :goto_0

    :cond_0
    if-nez p1, :cond_3

    .line 28
    iget-object p1, p0, Lwc0;->C:Lkc0;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p1, Lkc0;->R:Z

    const/4 v1, 0x0

    .line 30
    iput-object v1, p1, Lkc0;->K:Lgc0;

    .line 31
    iget-object v2, p1, Lkc0;->Q:Landroid/animation/Animator;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    iget-object v2, p1, Lkc0;->Q:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 33
    :cond_1
    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v0, v0, [F

    const/4 v3, 0x0

    iget v4, p1, Lkc0;->C:I

    .line 34
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_2

    neg-int v4, v4

    :cond_2
    int-to-float v4, v4

    aput v4, v0, v3

    .line 35
    invoke-static {p1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p1, Lkc0;->Q:Landroid/animation/Animator;

    const-wide/16 v2, 0xc8

    .line 36
    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 37
    iget-object v0, p1, Lkc0;->Q:Landroid/animation/Animator;

    sget-object v2, Lvd1;->h:Lvd1;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 38
    iget-object v0, p1, Lkc0;->J:Lorg/chromium/chrome/browser/tab/Tab;

    .line 39
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->e:Lorg/chromium/ui/base/WindowAndroid;

    .line 40
    iget-object v2, p1, Lkc0;->Q:Landroid/animation/Animator;

    invoke-virtual {v0, v2}, Lorg/chromium/ui/base/WindowAndroid;->startAnimationOverContent(Landroid/animation/Animator;)V

    .line 41
    iget-object v0, p1, Lkc0;->Q:Landroid/animation/Animator;

    new-instance v2, Lic0;

    invoke-direct {v2, p1}, Lic0;-><init>(Lkc0;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 42
    iput-object v1, p0, Lwc0;->C:Lkc0;

    :cond_3
    :goto_0
    return-void
.end method

.method public e(Z)V
    .locals 0

    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lwc0;->D:LpI0;

    if-eqz v0, :cond_0

    check-cast v0, LrI0;

    invoke-virtual {v0}, LrI0;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lwc0;->D:LpI0;

    check-cast v0, LrI0;

    invoke-virtual {v0}, LrI0;->b()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isNativePage()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lwc0;->x:Lorg/chromium/chrome/browser/findinpage/FindToolbar$FindQuery;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lwc0;->T:Z

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lwc0;->I:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getKeyboardDelegate()Lrc1;

    move-result-object v0

    iget-object v1, p0, Lwc0;->x:Lorg/chromium/chrome/browser/findinpage/FindToolbar$FindQuery;

    invoke-virtual {v0, v1}, Lrc1;->b(Landroid/view/View;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    .line 3
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v1, 0x7f0b01cc

    .line 4
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/findinpage/FindToolbar$FindQuery;

    iput-object v1, p0, Lwc0;->x:Lorg/chromium/chrome/browser/findinpage/FindToolbar$FindQuery;

    .line 5
    iput-object p0, v1, Lorg/chromium/chrome/browser/findinpage/FindToolbar$FindQuery;->z:Lwc0;

    const/16 v2, 0xb1

    .line 6
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 7
    iget-object v1, p0, Lwc0;->x:Lorg/chromium/chrome/browser/findinpage/FindToolbar$FindQuery;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 8
    iget-object v1, p0, Lwc0;->x:Lorg/chromium/chrome/browser/findinpage/FindToolbar$FindQuery;

    new-instance v2, Lqc0;

    invoke-direct {v2, p0}, Lqc0;-><init>(Lwc0;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 9
    iget-object v1, p0, Lwc0;->x:Lorg/chromium/chrome/browser/findinpage/FindToolbar$FindQuery;

    new-instance v2, Lrc0;

    invoke-direct {v2, p0}, Lrc0;-><init>(Lwc0;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 10
    iget-object v1, p0, Lwc0;->x:Lorg/chromium/chrome/browser/findinpage/FindToolbar$FindQuery;

    new-instance v2, Lsc0;

    invoke-direct {v2, p0}, Lsc0;-><init>(Lwc0;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v1, 0x7f0b01ce

    .line 11
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lwc0;->w:Landroid/widget/TextView;

    const v1, 0x7f0b01cb

    .line 12
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lwc0;->z:Landroid/widget/ImageButton;

    .line 13
    new-instance v2, Ltc0;

    invoke-direct {v2, p0}, Ltc0;-><init>(Lwc0;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b01ca

    .line 14
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lwc0;->A:Landroid/widget/ImageButton;

    .line 15
    new-instance v2, Luc0;

    invoke-direct {v2, p0}, Luc0;-><init>(Lwc0;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    invoke-virtual {p0, v0}, Lwc0;->c(Z)V

    const v0, 0x7f0b00d6

    .line 17
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lwc0;->y:Landroid/widget/ImageButton;

    .line 18
    new-instance v1, Lvc0;

    invoke-direct {v1, p0}, Lvc0;-><init>(Lwc0;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b01cd

    .line 19
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lwc0;->B:Landroid/view/View;

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 2
    iget-boolean p1, p0, Lwc0;->T:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lwc0;->T:Z

    .line 4
    iget-object p1, p0, Lwc0;->Q:Landroid/os/Handler;

    new-instance v0, Llc0;

    invoke-direct {v0, p0}, Llc0;-><init>(Lwc0;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
