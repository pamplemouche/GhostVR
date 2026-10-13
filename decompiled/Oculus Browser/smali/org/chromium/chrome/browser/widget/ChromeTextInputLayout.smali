.class public Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;
.super Landroid/widget/LinearLayout;
.source "PG"


# instance fields
.field public A:Ljava/util/HashSet;

.field public B:Ljava/lang/CharSequence;

.field public C:Z

.field public D:I

.field public E:Landroid/content/res/ColorStateList;

.field public F:I

.field public G:F

.field public H:F

.field public I:F

.field public w:Landroid/widget/EditText;

.field public x:Landroid/widget/TextView;

.field public y:Landroid/widget/TextView;

.field public z:Landroid/widget/FrameLayout;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->A:Ljava/util/HashSet;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4
    sget-object v2, LeS;->J:[I

    .line 5
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 6
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->B:Ljava/lang/CharSequence;

    .line 7
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->x:Landroid/widget/TextView;

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0702f5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 9
    invoke-virtual {v2, v3, v0, v0, v0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 10
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->x:Landroid/widget/TextView;

    const v3, 0x7f1401ba

    const/4 v5, 0x2

    .line 11
    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 12
    invoke-static {v2, v3}, LdT;->a(Landroid/widget/TextView;I)V

    .line 13
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->x:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPivotX(F)V

    .line 14
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->x:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPivotY(F)V

    .line 15
    iput v0, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->D:I

    .line 16
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->x:Landroid/widget/TextView;

    const/4 v3, -0x2

    invoke-virtual {p0, v2, v3, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 17
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->x:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iput v2, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->H:F

    .line 18
    iget-object v3, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->x:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 19
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->z:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    .line 20
    invoke-virtual {p0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 21
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->y:Landroid/widget/TextView;

    .line 22
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f1401ee

    .line 23
    invoke-virtual {p2, v0, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 24
    invoke-virtual {v2, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 25
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->y:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->y:Landroid/widget/TextView;

    .line 27
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 28
    invoke-virtual {v2, v4, v0, v0, v0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 29
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->y:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    iput v2, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->F:I

    .line 30
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->y:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 31
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    new-instance p2, Landroid/content/res/ColorStateList;

    new-array v2, v5, [[I

    new-array v3, v1, [I

    const v4, 0x101009c

    aput v4, v3, v0

    aput-object v3, v2, v0

    new-array v3, v0, [I

    aput-object v3, v2, v1

    new-array v3, v5, [I

    const v4, 0x7f040095

    .line 33
    invoke-virtual {p0, p1, v4}, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->a(Landroid/content/Context;I)I

    move-result v6

    aput v6, v3, v0

    const v6, 0x7f040097

    .line 34
    invoke-virtual {p0, p1, v6}, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->a(Landroid/content/Context;I)I

    move-result v6

    aput v6, v3, v1

    invoke-direct {p2, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object p2, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->E:Landroid/content/res/ColorStateList;

    .line 35
    iget-object p2, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->x:Landroid/widget/TextView;

    new-instance v2, Landroid/content/res/ColorStateList;

    new-array v3, v5, [[I

    new-array v6, v1, [I

    const v7, 0x10102fe

    aput v7, v6, v0

    aput-object v6, v3, v0

    new-array v6, v0, [I

    aput-object v6, v3, v1

    new-array v5, v5, [I

    .line 36
    invoke-virtual {p0, p1, v4}, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->a(Landroid/content/Context;I)I

    move-result p1

    aput p1, v5, v0

    iget-object p1, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->x:Landroid/widget/TextView;

    .line 37
    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p1

    aput p1, v5, v1

    invoke-direct {v2, v3, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 38
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 39
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 40
    new-instance p1, LdQ0;

    invoke-direct {p1, p0}, LdQ0;-><init>(Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;)V

    invoke-static {p0, p1}, LA7;->a(Landroid/view/View;Lh7;)V

    return-void
.end method

.method public static synthetic a(Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->a(Z)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;I)I
    .locals 3

    .line 58
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 60
    iget p2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz p2, :cond_0

    .line 61
    invoke-static {p1, p2}, LR3;->a(Landroid/content/Context;I)I

    move-result p1

    return p1

    .line 62
    :cond_0
    iget p1, v0, Landroid/util/TypedValue;->type:I

    const/16 p2, 0x1c

    if-lt p1, p2, :cond_1

    const/16 p2, 0x1f

    if-gt p1, p2, :cond_1

    .line 63
    iget p1, v0, Landroid/util/TypedValue;->data:I

    return p1

    .line 64
    :cond_1
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    const-string p2, "Attribute not a color."

    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_2
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    const-string p2, "Attribute not found."

    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()V
    .locals 5

    .line 11
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->x:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->B:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 13
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->x:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->x:Landroid/widget/TextView;

    .line 14
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->x:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    .line 15
    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 16
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 17
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->x:Landroid/widget/TextView;

    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setPivotX(F)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 2

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->y:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->C:Z

    .line 4
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->y:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->y:Landroid/widget/TextView;

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->C:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->w:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 7
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->C:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->F:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->E:Landroid/content/res/ColorStateList;

    .line 8
    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 9
    iget-object p1, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->y:Landroid/widget/TextView;

    invoke-static {p1, v1}, LA7;->e(Landroid/view/View;I)V

    .line 10
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->a(Z)V

    return-void
.end method

.method public final a(Z)V
    .locals 5

    .line 18
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->w:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 19
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->w:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    .line 20
    iget-object v3, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->x:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setActivated(Z)V

    .line 21
    iget v3, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->D:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 22
    iget-object v3, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->x:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->clearAnimation()V

    :cond_0
    const-wide/16 v3, 0x96

    if-nez v0, :cond_6

    if-nez v2, :cond_6

    .line 23
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->C:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_5

    .line 24
    iget-object p1, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->x:Landroid/widget/TextView;

    invoke-static {p1}, LA7;->a(Landroid/view/View;)LR7;

    move-result-object p1

    iget v0, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->I:F

    .line 25
    invoke-virtual {p1, v0}, LR7;->b(F)LR7;

    .line 26
    invoke-virtual {p1, v3, v4}, LR7;->a(J)LR7;

    iget v0, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->G:F

    .line 27
    iget-object v1, p1, LR7;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_2

    .line 28
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 29
    :cond_2
    iget v0, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->G:F

    .line 30
    iget-object v1, p1, LR7;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_3

    .line 31
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 32
    :cond_3
    new-instance v0, LcQ0;

    invoke-direct {v0, p0}, LcQ0;-><init>(Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;)V

    .line 33
    iget-object v1, p1, LR7;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_4

    .line 34
    invoke-virtual {p1, v1, v0}, LR7;->a(Landroid/view/View;LS7;)V

    .line 35
    :cond_4
    sget-object v0, LNM0;->c:Lc8;

    .line 36
    invoke-virtual {p1, v0}, LR7;->a(Landroid/view/animation/Interpolator;)LR7;

    .line 37
    invoke-virtual {p1}, LR7;->b()V

    goto/16 :goto_1

    .line 38
    :cond_5
    iget-object p1, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->x:Landroid/widget/TextView;

    iget v0, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->G:F

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setScaleX(F)V

    .line 39
    iget-object p1, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->x:Landroid/widget/TextView;

    iget v0, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->G:F

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setScaleY(F)V

    .line 40
    iget-object p1, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->x:Landroid/widget/TextView;

    iget v0, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->I:F

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 41
    iput v1, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->D:I

    goto :goto_1

    :cond_6
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_a

    .line 42
    iget-object p1, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->x:Landroid/widget/TextView;

    invoke-static {p1}, LA7;->a(Landroid/view/View;)LR7;

    move-result-object p1

    iget v1, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->H:F

    .line 43
    invoke-virtual {p1, v1}, LR7;->b(F)LR7;

    .line 44
    iget-object v1, p1, LR7;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_7

    .line 45
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 46
    :cond_7
    iget-object v1, p1, LR7;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_8

    .line 47
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 48
    :cond_8
    invoke-virtual {p1, v3, v4}, LR7;->a(J)LR7;

    new-instance v0, LbQ0;

    invoke-direct {v0, p0}, LbQ0;-><init>(Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;)V

    .line 49
    iget-object v1, p1, LR7;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_9

    .line 50
    invoke-virtual {p1, v1, v0}, LR7;->a(Landroid/view/View;LS7;)V

    .line 51
    :cond_9
    sget-object v0, LNM0;->c:Lc8;

    .line 52
    invoke-virtual {p1, v0}, LR7;->a(Landroid/view/animation/Interpolator;)LR7;

    .line 53
    invoke-virtual {p1}, LR7;->b()V

    goto :goto_1

    .line 54
    :cond_a
    iget-object p1, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->x:Landroid/widget/TextView;

    iget v1, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->H:F

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 55
    iget-object p1, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->x:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setScaleX(F)V

    .line 56
    iget-object p1, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->x:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setScaleY(F)V

    const/4 p1, 0x0

    .line 57
    iput p1, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->D:I

    :goto_1
    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 2
    move-object p2, p1

    check-cast p2, Landroid/widget/EditText;

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->w:Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 4
    iput-object p2, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->w:Landroid/widget/EditText;

    .line 5
    invoke-virtual {p2}, Landroid/widget/EditText;->getTextSize()F

    move-result p2

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->x:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    div-float/2addr p2, v0

    iput p2, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->G:F

    .line 6
    iget-object p2, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->w:Landroid/widget/EditText;

    new-instance v0, LZP0;

    invoke-direct {v0, p0}, LZP0;-><init>(Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 7
    iget-object p2, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->w:Landroid/widget/EditText;

    new-instance v0, LaQ0;

    invoke-direct {v0, p0}, LaQ0;-><init>(Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 8
    iget-object p2, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->B:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 9
    iget-object p2, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->w:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p2

    .line 10
    iput-object p2, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->B:Ljava/lang/CharSequence;

    .line 11
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->a()V

    const/16 p2, 0x800

    .line 12
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    .line 13
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->a(Z)V

    .line 14
    iget-object p2, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->w:Landroid/widget/EditText;

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 15
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->a()V

    .line 16
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->a(Z)V

    .line 17
    iget-object p2, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->z:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 18
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->z:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 19
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->z:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 20
    iput-object v1, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->z:Landroid/widget/FrameLayout;

    move p2, v0

    goto :goto_0

    .line 21
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "We already have an EditText, can only have one"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2
    iget p1, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->I:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->w:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getBaseline()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->I:F

    .line 4
    iget p2, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->D:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 5
    iget-object p2, p0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->x:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    :cond_0
    return-void
.end method
