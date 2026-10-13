.class public Lorg/chromium/chrome/browser/download/home/list/view/ForegroundRoundedCornerImageView;
.super Lorg/chromium/chrome/browser/ui/widget/RoundedCornerImageView;
.source "PG"


# instance fields
.field public final E:LV90;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/chrome/browser/download/home/list/view/ForegroundRoundedCornerImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/ui/widget/RoundedCornerImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p3, LV90;

    invoke-direct {p3, p0}, LV90;-><init>(Landroid/view/View;)V

    iput-object p3, p0, Lorg/chromium/chrome/browser/download/home/list/view/ForegroundRoundedCornerImageView;->E:LV90;

    const/4 p3, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, LeS;->V:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 5
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/home/list/view/ForegroundRoundedCornerImageView;->E:LV90;

    invoke-static {p1, p2, p3}, LW90;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, LU90;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, LV90;->a(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/home/list/view/ForegroundRoundedCornerImageView;->E:LV90;

    invoke-virtual {v0, p1}, LV90;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawableStateChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/home/list/view/ForegroundRoundedCornerImageView;->E:LV90;

    invoke-virtual {v0}, LV90;->a()V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/home/list/view/ForegroundRoundedCornerImageView;->E:LV90;

    invoke-virtual {v0, p1, p2}, LV90;->a(Landroid/view/View;I)V

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/download/home/list/view/ForegroundRoundedCornerImageView;->E:LV90;

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
