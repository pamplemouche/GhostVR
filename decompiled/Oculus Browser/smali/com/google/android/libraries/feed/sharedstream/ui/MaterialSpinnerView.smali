.class public Lcom/google/android/libraries/feed/sharedstream/ui/MaterialSpinnerView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "PG"


# instance fields
.field public final y:Lm8;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p2, Lm8;

    invoke-direct {p2, p1}, Lm8;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/libraries/feed/sharedstream/ui/MaterialSpinnerView;->y:Lm8;

    const/high16 v1, 0x40f00000    # 7.5f

    const/high16 v2, 0x40200000    # 2.5f

    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v4, 0x40a00000    # 5.0f

    .line 3
    invoke-virtual {p2, v1, v2, v3, v4}, Lm8;->a(FFFF)V

    .line 4
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 5
    iget-object p2, p0, Lcom/google/android/libraries/feed/sharedstream/ui/MaterialSpinnerView;->y:Lm8;

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v1, 0x7f040101

    const/4 v2, 0x1

    .line 8
    invoke-virtual {p1, v1, p2, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 9
    iget-object p1, p0, Lcom/google/android/libraries/feed/sharedstream/ui/MaterialSpinnerView;->y:Lm8;

    new-array v1, v2, [I

    iget p2, p2, Landroid/util/TypedValue;->data:I

    aput p2, v1, v0

    .line 10
    iget-object p2, p1, Lm8;->w:Ll8;

    .line 11
    iput-object v1, p2, Ll8;->i:[I

    .line 12
    invoke-virtual {p2, v0}, Ll8;->a(I)V

    .line 13
    iget-object p2, p1, Lm8;->w:Ll8;

    invoke-virtual {p2, v0}, Ll8;->a(I)V

    .line 14
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 15
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 16
    iget-object p1, p0, Lcom/google/android/libraries/feed/sharedstream/ui/MaterialSpinnerView;->y:Lm8;

    invoke-virtual {p1}, Lm8;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public setVisibility(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/google/android/libraries/feed/sharedstream/ui/MaterialSpinnerView;->y:Lm8;

    invoke-virtual {p1}, Lm8;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/libraries/feed/sharedstream/ui/MaterialSpinnerView;->y:Lm8;

    invoke-virtual {p1}, Lm8;->stop()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/feed/sharedstream/ui/MaterialSpinnerView;->y:Lm8;

    invoke-virtual {p1}, Lm8;->isRunning()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/google/android/libraries/feed/sharedstream/ui/MaterialSpinnerView;->y:Lm8;

    invoke-virtual {p1}, Lm8;->start()V

    :cond_1
    :goto_0
    return-void
.end method
