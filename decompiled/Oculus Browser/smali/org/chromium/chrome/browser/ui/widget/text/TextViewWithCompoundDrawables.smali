.class public Lorg/chromium/chrome/browser/ui/widget/text/TextViewWithCompoundDrawables;
.super LSe;
.source "PG"


# instance fields
.field public A:I

.field public B:Landroid/content/res/ColorStateList;

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, LSe;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    sget-object v1, LeS;->P0:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, -0x1

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lorg/chromium/chrome/browser/ui/widget/text/TextViewWithCompoundDrawables;->z:I

    const/4 v2, 0x1

    .line 4
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lorg/chromium/chrome/browser/ui/widget/text/TextViewWithCompoundDrawables;->A:I

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lorg/chromium/chrome/browser/ui/widget/text/TextViewWithCompoundDrawables;->B:Landroid/content/res/ColorStateList;

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 7
    iget p1, p0, Lorg/chromium/chrome/browser/ui/widget/text/TextViewWithCompoundDrawables;->z:I

    if-gtz p1, :cond_0

    iget p1, p0, Lorg/chromium/chrome/browser/ui/widget/text/TextViewWithCompoundDrawables;->A:I

    if-gtz p1, :cond_0

    iget-object p1, p0, Lorg/chromium/chrome/browser/ui/widget/text/TextViewWithCompoundDrawables;->B:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_0

    goto :goto_2

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 9
    array-length p2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_6

    aget-object v4, p1, v3

    if-nez v4, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    iget v5, p0, Lorg/chromium/chrome/browser/ui/widget/text/TextViewWithCompoundDrawables;->z:I

    if-gtz v5, :cond_2

    iget v5, p0, Lorg/chromium/chrome/browser/ui/widget/text/TextViewWithCompoundDrawables;->A:I

    if-lez v5, :cond_5

    .line 11
    :cond_2
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 12
    iget v6, p0, Lorg/chromium/chrome/browser/ui/widget/text/TextViewWithCompoundDrawables;->z:I

    if-lez v6, :cond_3

    .line 13
    iget v7, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 14
    :cond_3
    iget v6, p0, Lorg/chromium/chrome/browser/ui/widget/text/TextViewWithCompoundDrawables;->A:I

    if-lez v6, :cond_4

    .line 15
    iget v7, v5, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 16
    :cond_4
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 17
    :cond_6
    iget-object p2, p0, Lorg/chromium/chrome/browser/ui/widget/text/TextViewWithCompoundDrawables;->B:Landroid/content/res/ColorStateList;

    if-eqz p2, :cond_7

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/ui/widget/text/TextViewWithCompoundDrawables;->a([Landroid/graphics/drawable/Drawable;)V

    .line 18
    :cond_7
    aget-object p2, p1, v0

    aget-object v0, p1, v2

    aget-object v1, p1, v1

    const/4 v2, 0x3

    aget-object p1, p1, v2

    invoke-virtual {p0, p2, v0, v1, p1}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public final a([Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    if-nez v3, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 3
    iget-object v4, p0, Lorg/chromium/chrome/browser/ui/widget/text/TextViewWithCompoundDrawables;->B:Landroid/content/res/ColorStateList;

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 5
    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public drawableStateChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, LSe;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/ui/widget/text/TextViewWithCompoundDrawables;->B:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ui/widget/text/TextViewWithCompoundDrawables;->a([Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
