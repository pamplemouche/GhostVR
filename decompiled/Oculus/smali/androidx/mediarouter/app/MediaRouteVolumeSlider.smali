.class Landroidx/mediarouter/app/MediaRouteVolumeSlider;
.super Landroidx/appcompat/widget/AppCompatSeekBar;
.source "MediaRouteVolumeSlider.java"


# instance fields
.field private mBackgroundColor:I

.field private final mDisabledAlpha:F

.field private mHideThumb:Z

.field private mProgressAndThumbColor:I

.field private mThumb:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/mediarouter/app/MediaRouteVolumeSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 46
    sget v0, Landroidx/appcompat/R$attr;->seekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/mediarouter/app/MediaRouteVolumeSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-static {p1}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getDisabledAlpha(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->mDisabledAlpha:F

    .line 52
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 6

    .prologue
    .line 56
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatSeekBar;->drawableStateChanged()V

    .line 58
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    move v1, v0

    .line 62
    :goto_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->mProgressAndThumbColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 63
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 65
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 66
    const v2, 0x102000d

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 67
    const/high16 v3, 0x1020000

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 69
    iget v4, p0, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->mProgressAndThumbColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 70
    iget v2, p0, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->mBackgroundColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 71
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setAlpha(I)V

    .line 72
    return-void

    .line 58
    :cond_0
    const/high16 v0, 0x437f0000    # 255.0f

    iget v1, p0, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->mDisabledAlpha:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    move v1, v0

    goto :goto_0
.end method

.method public setColor(I)V
    .locals 0

    .prologue
    .line 92
    invoke-virtual {p0, p1, p1}, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->setColor(II)V

    .line 93
    return-void
.end method

.method public setColor(II)V
    .locals 4

    .prologue
    const/16 v3, 0xff

    .line 105
    iget v0, p0, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->mProgressAndThumbColor:I

    if-eq v0, p1, :cond_1

    .line 106
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 107
    const-string v0, "MediaRouteVolumeSlider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume slider progress and thumb color cannot be translucent: #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 108
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    iput p1, p0, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->mProgressAndThumbColor:I

    .line 114
    :cond_1
    iget v0, p0, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->mBackgroundColor:I

    if-eq v0, p2, :cond_3

    .line 115
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 116
    const-string v0, "MediaRouteVolumeSlider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume slider background color cannot be translucent: #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 117
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_2
    iput p2, p0, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->mBackgroundColor:I

    .line 121
    :cond_3
    return-void
.end method

.method public setHideThumb(Z)V
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->mHideThumb:Z

    if-ne v0, p1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iput-boolean p1, p0, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->mHideThumb:Z

    .line 88
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->mHideThumb:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 76
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 77
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->mHideThumb:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 78
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
