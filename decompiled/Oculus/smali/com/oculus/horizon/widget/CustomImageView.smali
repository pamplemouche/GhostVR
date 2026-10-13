.class public Lcom/oculus/horizon/widget/CustomImageView;
.super Landroid/widget/ImageView;
.source "CustomImageView.java"


# instance fields
.field private mAspectRatio:F


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 44
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 45
    int-to-float v0, v0

    iget v1, p0, Lcom/oculus/horizon/widget/CustomImageView;->mAspectRatio:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 46
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 47
    invoke-super {p0, p1, v0}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 48
    return-void
.end method
