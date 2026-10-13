.class public Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;
.super LQK0;
.source "PG"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field public static final h0:Ljava/lang/Object;

.field public static final i0:Ljava/util/regex/Pattern;


# instance fields
.field public I:Landroid/view/View;

.field public J:Landroid/view/View;

.field public K:Landroid/widget/TextView;

.field public L:Landroid/view/View;

.field public M:Landroid/view/View;

.field public N:LMp0;

.field public O:Landroid/widget/TextView;

.field public P:Landroid/widget/ImageButton;

.field public Q:Landroid/widget/LinearLayout;

.field public R:Landroid/widget/ImageButton;

.field public S:Landroid/widget/ImageButton;

.field public T:Z

.field public final U:Landroid/content/res/ColorStateList;

.field public final V:Landroid/content/res/ColorStateList;

.field public W:Landroid/animation/ValueAnimator;

.field public a0:Z

.field public b0:LHK0;

.field public c0:I

.field public d0:Ljava/lang/String;

.field public e0:LSJ0;

.field public f0:LWo0;

.field public g0:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->h0:Ljava/lang/Object;

    const-string v0, "^(www[0-9]*|web|ftp|wap|home|mobile|amp)\\."

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->i0:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, LQK0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 2
    iput p2, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->c0:I

    .line 3
    new-instance v0, LAK0;

    invoke-direct {v0, p0}, LAK0;-><init>(Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->g0:Ljava/lang/Runnable;

    .line 4
    invoke-static {p1, p2}, LAO0;->b(Landroid/content/Context;Z)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->U:Landroid/content/res/ColorStateList;

    const/4 p2, 0x1

    .line 5
    invoke-static {p1, p2}, LAO0;->b(Landroid/content/Context;Z)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->V:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public static synthetic a(Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 0

    .line 7
    iget-object p0, p0, LQK0;->B:LSJ0;

    .line 8
    invoke-interface {p0}, LSJ0;->g()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(LSJ0;LsK0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LQK0;->B:LSJ0;

    .line 2
    iput-object p2, p0, LQK0;->C:LsK0;

    .line 3
    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->f0:LWo0;

    invoke-interface {p1}, LWo0;->k()V

    return-void
.end method

.method public final a(Landroid/widget/ImageButton;)V
    .locals 1

    .line 4
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 5
    instance-of v0, p1, LDM0;

    if-eqz v0, :cond_1

    .line 6
    check-cast p1, LDM0;

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->T:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->U:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->V:Landroid/content/res/ColorStateList;

    :goto_0
    invoke-virtual {p1, v0}, LDM0;->a(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, LQK0;->h()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lwc1;->a(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, LQK0;->z:Lorg/chromium/chrome/browser/toolbar/MenuButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/MenuButton;->a()V

    .line 4
    iput-object v1, p0, LQK0;->z:Lorg/chromium/chrome/browser/toolbar/MenuButton;

    .line 5
    :cond_0
    iput-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->S:Landroid/widget/ImageButton;

    .line 6
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->Q:Landroid/widget/LinearLayout;

    .line 7
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 9
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->Q:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public d(Z)V
    .locals 6

    .line 10
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->a0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->W:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 11
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->getBackground()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    .line 13
    iget-object v2, p0, LQK0;->B:LSJ0;

    .line 14
    invoke-interface {v2}, LSJ0;->f()I

    move-result v2

    .line 15
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v3

    if-ne v3, v2, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 16
    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->W:Landroid/animation/ValueAnimator;

    .line 17
    sget-object v4, Lvd1;->g:Lvd1;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 18
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->W:Landroid/animation/ValueAnimator;

    new-instance v4, LBK0;

    invoke-direct {v4, p0, v1, v2, v0}, LBK0;-><init>(Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;IILandroid/graphics/drawable/ColorDrawable;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 19
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->W:Landroid/animation/ValueAnimator;

    new-instance v2, LCK0;

    invoke-direct {v2, p0, v0}, LCK0;-><init>(Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;Landroid/graphics/drawable/ColorDrawable;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 20
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->W:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->a0:Z

    if-nez p1, :cond_2

    .line 22
    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->W:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public f()LWo0;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->f0:LWo0;

    return-object v0
.end method

.method public g()Landroid/widget/ImageButton;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->S:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getBackground()Landroid/graphics/drawable/ColorDrawable;
    .locals 1

    .line 2
    invoke-super {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method public bridge synthetic getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->getBackground()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    return-object v0
.end method

.method public h()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->S:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public i()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->f0:LWo0;

    invoke-interface {v0}, LWo0;->a()V

    .line 2
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->c0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->d0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, LQK0;->B:LSJ0;

    .line 5
    invoke-interface {v0}, LSJ0;->g()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->d0:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->d0:Ljava/lang/String;

    .line 7
    iget-object v2, p0, LQK0;->B:LSJ0;

    .line 8
    invoke-interface {v2}, LSJ0;->g()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 9
    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->c0:I

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_3

    .line 10
    iput v2, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->c0:I

    .line 11
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->O:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->K:Landroid/widget/TextView;

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 14
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 15
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->K:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->O:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 18
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->O:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->O:Landroid/widget/TextView;

    .line 20
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 21
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 22
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->f0:LWo0;

    invoke-interface {v0}, LWo0;->l()V

    .line 23
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->f0:LWo0;

    invoke-interface {v0}, LWo0;->l()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->f0:LWo0;

    invoke-interface {p1}, LWo0;->a()V

    .line 3
    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->f0:LWo0;

    invoke-interface {p1}, LWo0;->d()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 4

    .line 1
    invoke-super {p0}, LQK0;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, LAO0;->a(Landroid/content/res/Resources;Z)I

    move-result v0

    .line 3
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-static {v0}, LAO0;->d(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->T:Z

    const v0, 0x7f0b04d1

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->K:Landroid/widget/TextView;

    const-string v2, ""

    .line 6
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->K:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    const v0, 0x7f0b04d2

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->L:Landroid/view/View;

    const v0, 0x7f0b04d3

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->M:Landroid/view/View;

    .line 10
    new-instance v0, LMp0;

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->K:Landroid/widget/TextView;

    check-cast v2, LKp0;

    invoke-direct {v0, v2}, LMp0;-><init>(LKp0;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->N:LMp0;

    .line 11
    new-instance v0, LEK0;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, LEK0;-><init>(Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;LAK0;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->f0:LWo0;

    .line 12
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->N:LMp0;

    .line 13
    iget-object v2, v2, LMp0;->b:LQp0;

    .line 14
    iget-object v2, v2, LQp0;->w:Lle1;

    sget-object v3, LTp0;->d:Lke1;

    invoke-virtual {v2, v3, v0}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 15
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->N:LMp0;

    .line 16
    iget-object v0, v0, LMp0;->b:LQp0;

    .line 17
    iget-object v0, v0, LQp0;->w:Lle1;

    sget-object v2, LTp0;->b:Lhe1;

    invoke-virtual {v0, v2, v1}, Lle1;->a(Lhe1;Z)V

    const v0, 0x7f0b0497

    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->O:Landroid/widget/TextView;

    const v0, 0x7f0b0246

    .line 19
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->I:Landroid/view/View;

    const v0, 0x7f0b049f

    .line 20
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->J:Landroid/view/View;

    .line 21
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v0, 0x7f0b03b8

    .line 22
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->P:Landroid/widget/ImageButton;

    const v0, 0x7f0b0021

    .line 23
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->Q:Landroid/widget/LinearLayout;

    const v0, 0x7f0b00d5

    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->R:Landroid/widget/ImageButton;

    .line 25
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v0, 0x7f0b0260

    .line 26
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->S:Landroid/widget/ImageButton;

    .line 27
    new-instance v0, LHK0;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->P:Landroid/widget/ImageButton;

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->J:Landroid/view/View;

    invoke-direct {v0, v1, v2}, LHK0;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->b0:LHK0;

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->R:Landroid/widget/ImageButton;

    if-eq p1, v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->Q:Landroid/widget/LinearLayout;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->J:Landroid/view/View;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 3
    iget-object p1, p0, LQK0;->B:LSJ0;

    .line 4
    invoke-interface {p1}, LSJ0;->g()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-static {}, Lorg/chromium/ui/base/Clipboard;->getInstance()Lorg/chromium/ui/base/Clipboard;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/chromium/ui/base/Clipboard;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1

    .line 6
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lmf1;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public onMeasure(II)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, -0x1

    if-ge v1, v3, :cond_8

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3
    iget-object v6, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->R:Landroid/widget/ImageButton;

    if-ne v3, v6, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v4, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700aa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_3

    .line 5
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v4, :cond_7

    .line 6
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 7
    invoke-virtual {v6}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v7

    if-eq v7, v2, :cond_1

    .line 8
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 9
    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    :cond_1
    iget-object v7, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->I:Landroid/view/View;

    if-ne v3, v7, :cond_2

    goto :goto_4

    .line 11
    :cond_2
    iget v4, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/high16 v7, -0x80000000

    const/4 v8, -0x2

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v4, v8, :cond_3

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_1

    :cond_3
    if-ne v4, v5, :cond_4

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_1

    .line 14
    :cond_4
    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 15
    :goto_1
    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v6, v8, :cond_5

    .line 16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_2

    :cond_5
    if-ne v6, v5, :cond_6

    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_2

    .line 18
    :cond_6
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 19
    :goto_2
    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 20
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    :goto_3
    add-int/2addr v3, v2

    move v2, v3

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    const/4 v1, -0x1

    :goto_4
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    .line 21
    :goto_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_a

    .line 22
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 23
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v4, :cond_9

    .line 24
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    move v2, v3

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 25
    :cond_a
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->I:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 26
    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v3

    if-eq v3, v2, :cond_b

    .line 27
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 28
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->I:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    :cond_b
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->J:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 30
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->P:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_c

    .line 31
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_6

    .line 32
    :cond_c
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->P:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 33
    :goto_6
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->J:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
