.class public LdG0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Landroid/view/ViewGroup;

.field public final c:Landroid/view/ViewGroup;

.field public final d:Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;

.field public final e:Landroid/widget/TextView;

.field public final f:Landroid/widget/ImageView;

.field public final g:I

.field public final h:Z

.field public i:Landroid/view/ViewGroup;

.field public j:Landroid/view/ViewGroup;

.field public k:LUF0;

.field public l:Z

.field public m:Landroid/view/View;

.field public n:Landroid/graphics/Rect;

.field public o:Landroid/graphics/Rect;

.field public p:[I

.field public q:Landroid/view/View$OnLayoutChangeListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;LUF0;Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, LdG0;->n:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, LdG0;->o:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 4
    iput-object v0, p0, LdG0;->p:[I

    .line 5
    new-instance v0, LaG0;

    invoke-direct {v0, p0}, LaG0;-><init>(LdG0;)V

    iput-object v0, p0, LdG0;->q:Landroid/view/View$OnLayoutChangeListener;

    .line 6
    iput-object p1, p0, LdG0;->a:Landroid/app/Activity;

    .line 7
    invoke-static {p1}, Lorg/chromium/ui/base/DeviceFormFactor;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, LdG0;->h:Z

    if-nez p4, :cond_0

    .line 8
    invoke-virtual {p0, p1}, LdG0;->a(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object p4

    iput-object p4, p0, LdG0;->i:Landroid/view/ViewGroup;

    .line 9
    instance-of p4, p1, Lorg/chromium/chrome/browser/ChromeActivity;

    if-eqz p4, :cond_1

    const/4 p4, 0x1

    iput-boolean p4, p0, LdG0;->l:Z

    goto :goto_0

    .line 10
    :cond_0
    iput-object p4, p0, LdG0;->i:Landroid/view/ViewGroup;

    :cond_1
    :goto_0
    const p4, 0x1020002

    .line 11
    invoke-virtual {p1, p4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p4

    iput-object p4, p0, LdG0;->m:Landroid/view/View;

    .line 12
    iget-object p4, p0, LdG0;->i:Landroid/view/ViewGroup;

    iput-object p4, p0, LdG0;->j:Landroid/view/ViewGroup;

    .line 13
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p4, 0x7f0e01a0

    iget-object v0, p0, LdG0;->j:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p1, p4, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, LdG0;->b:Landroid/view/ViewGroup;

    const p4, 0x7f0b040c

    .line 14
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, LdG0;->c:Landroid/view/ViewGroup;

    .line 15
    iget-object p1, p0, LdG0;->b:Landroid/view/ViewGroup;

    .line 16
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p4, 0x10e0001

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, LdG0;->g:I

    .line 17
    iget-object p1, p0, LdG0;->b:Landroid/view/ViewGroup;

    const p4, 0x7f0b040f

    .line 18
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;

    iput-object p1, p0, LdG0;->d:Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;

    .line 19
    iget-object p1, p0, LdG0;->b:Landroid/view/ViewGroup;

    const p4, 0x7f0b040e

    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, LdG0;->e:Landroid/widget/TextView;

    .line 20
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object p1, p0, LdG0;->b:Landroid/view/ViewGroup;

    const p2, 0x7f0b0410

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, LdG0;->f:Landroid/widget/ImageView;

    .line 22
    invoke-virtual {p0, p3, v1}, LdG0;->a(LUF0;Z)Z

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Landroid/view/ViewGroup;
    .locals 1

    .line 49
    instance-of v0, p1, Lorg/chromium/chrome/browser/ChromeActivity;

    if-eqz v0, :cond_0

    const v0, 0x7f0b0072

    .line 50
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_0
    const v0, 0x1020002

    .line 51
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    return-object p1
.end method

.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, LdG0;->d:Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, LdG0;->d:Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LdG0;->b:Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1301bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Landroid/widget/TextView;Ljava/lang/CharSequence;Z)V
    .locals 1

    .line 52
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    .line 54
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 55
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p2, p0, LdG0;->g:I

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final a(LUF0;Z)Z
    .locals 6

    .line 4
    iget-object v0, p0, LdG0;->k:LUF0;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    .line 5
    :cond_0
    iput-object p1, p0, LdG0;->k:LUF0;

    .line 6
    iget-object v0, p0, LdG0;->d:Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;

    .line 7
    iget-boolean v2, p1, LUF0;->h:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    .line 8
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 9
    iget-object v0, p0, LdG0;->d:Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;

    .line 10
    iget-object v2, p1, LUF0;->c:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v0, :cond_c

    .line 11
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v2, v4

    :cond_2
    iput-object v2, v0, Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;->z:Ljava/lang/String;

    .line 12
    iget-object v0, p0, LdG0;->d:Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;

    .line 13
    iget-object v2, p1, LUF0;->b:Ljava/lang/CharSequence;

    .line 14
    invoke-virtual {p0, v0, v2, p2}, LdG0;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Z)V

    .line 15
    iget-object v0, p1, LUF0;->d:Ljava/lang/String;

    .line 16
    iget-object v2, p0, LdG0;->d:Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;

    .line 17
    iget v4, p1, LUF0;->m:I

    if-ne v4, v3, :cond_3

    const v4, 0x7f1401ce

    goto :goto_1

    .line 18
    :cond_3
    iget v4, p1, LUF0;->g:I

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    const v4, 0x7f1401b8

    .line 19
    :goto_1
    invoke-static {v2, v4}, LdT;->a(Landroid/widget/TextView;I)V

    .line 20
    iget-object v2, p0, LdG0;->e:Landroid/widget/TextView;

    .line 21
    iget v4, p1, LUF0;->m:I

    if-ne v4, v3, :cond_5

    const v4, 0x7f14021d

    goto :goto_2

    :cond_5
    const v4, 0x7f140226

    .line 22
    :goto_2
    invoke-static {v2, v4}, LdT;->a(Landroid/widget/TextView;I)V

    .line 23
    iget-object v2, p0, LdG0;->b:Landroid/view/ViewGroup;

    .line 24
    iget v4, p1, LUF0;->m:I

    if-ne v4, v3, :cond_6

    .line 25
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0600ee

    .line 26
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_3

    .line 27
    :cond_6
    iget v4, p1, LUF0;->f:I

    if-eqz v4, :cond_7

    move v2, v4

    goto :goto_3

    .line 28
    :cond_7
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f060168

    .line 29
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 30
    :goto_3
    iget-boolean v4, p0, LdG0;->h:Z

    if-eqz v4, :cond_8

    .line 31
    iget-object v4, p0, LdG0;->c:Landroid/view/ViewGroup;

    const v5, 0x7f0802c9

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 32
    iget-object v4, p0, LdG0;->c:Landroid/view/ViewGroup;

    .line 33
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/GradientDrawable;

    .line 34
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_4

    .line 35
    :cond_8
    iget-object v4, p0, LdG0;->c:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :goto_4
    const/16 v2, 0x8

    if-eqz v0, :cond_9

    .line 36
    iget-object v0, p0, LdG0;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 37
    iget-object v0, p0, LdG0;->e:Landroid/widget/TextView;

    .line 38
    iget-object v4, p1, LUF0;->d:Ljava/lang/String;

    .line 39
    invoke-virtual {p0, v0, v4, p2}, LdG0;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Z)V

    goto :goto_5

    .line 40
    :cond_9
    iget-object p2, p0, LdG0;->e:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 41
    :goto_5
    iget-object p1, p1, LUF0;->j:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_a

    .line 42
    iget-object p2, p0, LdG0;->f:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    iget-object p2, p0, LdG0;->f:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 44
    :cond_a
    iget-object p1, p0, LdG0;->f:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    :goto_6
    iget-boolean p1, p0, LdG0;->h:Z

    if-eqz p1, :cond_b

    .line 46
    iget-object p1, p0, LdG0;->b:Landroid/view/ViewGroup;

    const p2, 0x7f0b0411

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    iget-object p1, p0, LdG0;->b:Landroid/view/ViewGroup;

    const p2, 0x7f0b0412

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    return v3

    .line 48
    :cond_c
    throw v4
.end method

.method public b()V
    .locals 8

    .line 1
    iget-object v0, p0, LdG0;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 3
    iget v2, p0, LdG0;->g:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4
    new-instance v2, LcG0;

    invoke-direct {v2, p0}, LcG0;-><init>(LdG0;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5
    iget-object v2, p0, LdG0;->b:Landroid/view/ViewGroup;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v5, v4, [F

    .line 6
    invoke-virtual {p0}, LdG0;->d()I

    move-result v6

    int-to-float v6, v6

    aput v6, v5, v1

    .line 7
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 8
    sget-object v3, LNM0;->a:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    iget-object v3, p0, LdG0;->b:Landroid/view/ViewGroup;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v4, [F

    const/4 v7, 0x0

    aput v7, v6, v1

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 10
    sget-object v5, Lvd1;->h:Lvd1;

    invoke-virtual {v3, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v3, v5, v1

    aput-object v2, v5, v4

    .line 11
    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 12
    iget-boolean v1, p0, LdG0;->l:Z

    if-eqz v1, :cond_0

    .line 13
    iget-object v1, p0, LdG0;->a:Landroid/app/Activity;

    check-cast v1, Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v1}, LBg0;->Q()LDc1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/ui/base/WindowAndroid;->startAnimationOverContent(Landroid/animation/Animator;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method

.method public c()I
    .locals 3

    .line 1
    iget-object v0, p0, LdG0;->j:Landroid/view/ViewGroup;

    iget-object v1, p0, LdG0;->p:[I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 2
    iget-object v0, p0, LdG0;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget-object v1, p0, LdG0;->p:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, LdG0;->n:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 3
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 2

    .line 1
    iget-object v0, p0, LdG0;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 2
    iget-object v1, p0, LdG0;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 3
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, LdG0;->j:Landroid/view/ViewGroup;

    iget-object v1, p0, LdG0;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, LdG0;->m:Landroid/view/View;

    iget-object v1, p0, LdG0;->q:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 3
    iget-object v0, p0, LdG0;->b:Landroid/view/ViewGroup;

    new-instance v1, LbG0;

    invoke-direct {v1, p0}, LbG0;-><init>(LdG0;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
