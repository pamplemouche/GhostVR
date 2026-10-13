.class public Lorg/chromium/chrome/browser/download/home/list/view/CircularProgressView;
.super Lorg/chromium/ui/widget/ChromeImageButton;
.source "PG"


# instance fields
.field public final y:LV90;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/chromium/ui/widget/ChromeImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance v0, LV90;

    invoke-direct {v0, p0}, LV90;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/download/home/list/view/CircularProgressView;->y:LV90;

    .line 3
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 4
    iget-object v2, v0, LV90;->C:Landroid/widget/ImageView$ScaleType;

    const/4 v3, 0x1

    if-ne v2, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iput-object v1, v0, LV90;->C:Landroid/widget/ImageView$ScaleType;

    .line 6
    iput-boolean v3, v0, LV90;->A:Z

    .line 7
    iget-object v1, v0, LV90;->B:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v0, v0, LV90;->z:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-nez p2, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    .line 8
    :cond_2
    sget-object v1, LeS;->K:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 9
    :goto_1
    invoke-static {p1, p2, v3}, LW90;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, LU90;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 10
    invoke-static {p1, p2, v0}, LW90;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, LU90;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x3

    .line 11
    invoke-static {p1, p2, v0}, LW90;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x2

    .line 12
    invoke-static {p1, p2, v0}, LW90;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x4

    .line 13
    invoke-static {p1, p2, v0}, LW90;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_3

    .line 14
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->draw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/home/list/view/CircularProgressView;->y:LV90;

    invoke-virtual {v0, p1}, LV90;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawableStateChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/chromium/ui/widget/ChromeImageButton;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/home/list/view/CircularProgressView;->y:LV90;

    invoke-virtual {v0}, LV90;->a()V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/home/list/view/CircularProgressView;->y:LV90;

    invoke-virtual {v0, p1, p2}, LV90;->a(Landroid/view/View;I)V

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/download/home/list/view/CircularProgressView;->y:LV90;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, v0, LV90;->B:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 3
    throw p1

    :cond_3
    :goto_1
    return v1
.end method
