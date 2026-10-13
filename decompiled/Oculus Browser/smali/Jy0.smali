.class public abstract LJy0;
.super Landroid/support/v7/preference/Preference;
.source "PG"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public i0:F

.field public j0:F

.field public k0:F

.field public l0:F

.field public m0:Ljava/lang/CharSequence;

.field public n0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 2
    iput p1, p0, LJy0;->i0:F

    const/high16 p2, 0x40000000    # 2.0f

    .line 3
    iput p2, p0, LJy0;->j0:F

    const p2, 0x3d4ccccd    # 0.05f

    .line 4
    iput p2, p0, LJy0;->k0:F

    .line 5
    iput p1, p0, LJy0;->l0:F

    return-void
.end method


# virtual methods
.method public final a(F)I
    .locals 1

    .line 12
    iget v0, p0, LJy0;->i0:F

    sub-float/2addr p1, v0

    iget v0, p0, LJy0;->k0:F

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public final a(FZ)V
    .locals 2

    .line 13
    iget v0, p0, LJy0;->j0:F

    iget v1, p0, LJy0;->i0:F

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 14
    iget v0, p0, LJy0;->l0:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 15
    iput p1, p0, LJy0;->l0:F

    if-eqz p2, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->o()V

    :cond_0
    return-void
.end method

.method public a(LGc;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->a(LGc;)V

    const v0, 0x7f0b03bb

    .line 2
    invoke-virtual {p1, v0}, LGc;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 3
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 4
    iget v1, p0, LJy0;->j0:F

    invoke-virtual {p0, v1}, LJy0;->a(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 5
    iget v1, p0, LJy0;->l0:F

    invoke-virtual {p0, v1}, LJy0;->a(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 6
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->n()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    const v0, 0x7f0b03bc

    .line 7
    invoke-virtual {p1, v0}, LGc;->c(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, LJy0;->n0:Landroid/widget/TextView;

    .line 8
    iget-object v0, p0, LJy0;->m0:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 9
    iget-object v0, p0, LJy0;->m0:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 10
    :cond_0
    iput-object p1, p0, LJy0;->m0:Ljava/lang/CharSequence;

    .line 11
    iget-object v0, p0, LJy0;->n0:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public l()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, LJy0;->m0:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_1

    .line 1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    .line 2
    iget p3, p0, LJy0;->i0:F

    int-to-float p2, p2

    iget v0, p0, LJy0;->k0:F

    mul-float p2, p2, v0

    add-float/2addr p2, p3

    .line 3
    iget p3, p0, LJy0;->l0:F

    cmpl-float p3, p2, p3

    if-eqz p3, :cond_1

    .line 4
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p2, p1}, LJy0;->a(FZ)V

    goto :goto_0

    .line 6
    :cond_0
    iget p2, p0, LJy0;->l0:F

    invoke-virtual {p0, p2}, LJy0;->a(F)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
