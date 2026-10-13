.class public Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;
.super Landroid/widget/RelativeLayout;
.source "PG"


# instance fields
.field public A:Landroid/widget/ImageView;

.field public B:Landroid/widget/ImageView;

.field public C:Z

.field public D:Z

.field public E:Landroid/graphics/drawable/Drawable;

.field public w:Lrs0;

.field public x:Landroid/view/View;

.field public y:Landroid/widget/TextView;

.field public z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;->E:Landroid/graphics/drawable/Drawable;

    .line 16
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;->A:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 17
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;->C:Z

    if-eqz v2, :cond_0

    const v2, 0x7f060083

    goto :goto_0

    :cond_0
    const v2, 0x7f0601a5

    :goto_0
    const v3, 0x7f08021e

    .line 18
    invoke-static {v1, v3, v2}, LDM0;->a(Landroid/content/Context;II)LDM0;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 19
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;->A:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070223

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0700bd

    .line 3
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x1

    .line 4
    invoke-static {p1, v1, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 5
    new-instance v1, Ly4;

    invoke-direct {v1, v0, p1}, Ly4;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    int-to-float p1, v2

    .line 6
    invoke-virtual {v1, p1}, Lz4;->a(F)V

    .line 7
    iput-boolean v3, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;->D:Z

    .line 8
    iget-object p1, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;->E:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    instance-of p1, p1, Landroid/graphics/drawable/TransitionDrawable;

    if-nez p1, :cond_0

    .line 9
    new-instance p1, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iget-object v4, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;->E:Landroid/graphics/drawable/Drawable;

    aput-object v4, v0, v2

    aput-object v1, v0, v3

    invoke-direct {p1, v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 10
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    const/16 v0, 0x12c

    .line 11
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 12
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    iget-object p1, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;->A:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 14
    iput-object v1, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;->E:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;->w:Lrs0;

    if-eqz v0, :cond_3

    .line 2
    check-cast v0, Lws0;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v0, Lws0;->b:Lcs0;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    check-cast v0, Lhr0;

    .line 5
    iget-object v0, v0, Lhr0;->c:Lmr0;

    .line 6
    iput-wide v1, v0, Lmr0;->V:J

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, v0, Lws0;->b:Lcs0;

    check-cast v0, Lhr0;

    invoke-virtual {v0}, Lhr0;->a()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 8
    throw p1

    .line 9
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0b02f5

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;->y:Landroid/widget/TextView;

    const v0, 0x7f0b02f2

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;->z:Landroid/widget/TextView;

    const v0, 0x7f0b02f3

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;->A:Landroid/widget/ImageView;

    const v0, 0x7f0b02f1

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;->x:Landroid/view/View;

    const v0, 0x7f0b02f4

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;->B:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;->a()V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;->x:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;->w:Lrs0;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isInTouchMode()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;->w:Lrs0;

    check-cast p1, Lws0;

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Lus0;

    invoke-direct {v0, p1}, Lus0;-><init>(Lws0;)V

    .line 6
    iget-object p1, p1, Lws0;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lus0;->run()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    throw p1

    :cond_1
    :goto_0
    return-void
.end method
