.class public Lorg/chromium/chrome/browser/ntp/LogoView;
.super Landroid/widget/FrameLayout;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public A:Landroid/graphics/Matrix;

.field public B:Z

.field public C:Z

.field public D:Lorg/chromium/chrome/browser/ui/widget/LoadingView;

.field public E:F

.field public final F:Landroid/util/Property;

.field public w:Landroid/graphics/Bitmap;

.field public x:Landroid/graphics/Bitmap;

.field public y:Landroid/graphics/Paint;

.field public z:Landroid/graphics/Matrix;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/ntp/LogoView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, LLm0;

    const-class p2, Ljava/lang/Float;

    const-string v0, ""

    invoke-direct {p1, p0, p2, v0}, LLm0;-><init>(Lorg/chromium/chrome/browser/ntp/LogoView;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->F:Landroid/util/Property;

    .line 3
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->z:Landroid/graphics/Matrix;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->B:Z

    .line 5
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->y:Landroid/graphics/Paint;

    .line 6
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 7
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 10
    new-instance p1, Lorg/chromium/chrome/browser/ui/widget/LoadingView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/chromium/chrome/browser/ui/widget/LoadingView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->D:Lorg/chromium/chrome/browser/ui/widget/LoadingView;

    .line 11
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x11

    .line 12
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 13
    iget-object p2, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->D:Lorg/chromium/chrome/browser/ui/widget/LoadingView;

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-object p1, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->D:Lorg/chromium/chrome/browser/ui/widget/LoadingView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->D:Lorg/chromium/chrome/browser/ui/widget/LoadingView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(IILandroid/graphics/Matrix;Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v0, v0

    int-to-float p1, p1

    div-float v2, v0, p1

    int-to-float v1, v1

    int-to-float p2, p2

    div-float v3, v1, p2

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    if-eqz p4, :cond_0

    const/high16 p4, 0x3f800000    # 1.0f

    .line 4
    invoke-static {p4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    :cond_0
    mul-float p1, p1, v2

    sub-float/2addr v0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float v0, v0, p1

    .line 5
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p4

    mul-float p2, p2, v2

    sub-float/2addr v1, p2

    mul-float v1, v1, p1

    .line 6
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 7
    invoke-virtual {p3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    int-to-float p2, p4

    int-to-float p1, p1

    .line 8
    invoke-virtual {p3, p2, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->w:Landroid/graphics/Bitmap;

    const/high16 v1, 0x43ff0000    # 510.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->E:F

    cmpg-float v4, v0, v3

    if-gez v4, :cond_0

    .line 2
    iget-object v4, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->y:Landroid/graphics/Paint;

    sub-float v0, v3, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->z:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 5
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->w:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->y:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->x:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->E:F

    cmpl-float v4, v0, v3

    if-lez v4, :cond_1

    .line 8
    iget-object v4, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->y:Landroid/graphics/Paint;

    sub-float/2addr v0, v3

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 10
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->A:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 11
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->x:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->y:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_2

    .line 1
    :cond_0
    iget-object p1, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->w:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget-object p2, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->w:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    iget-object p3, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->z:Landroid/graphics/Matrix;

    iget-boolean p4, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->B:Z

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/ntp/LogoView;->a(IILandroid/graphics/Matrix;Z)V

    .line 3
    :cond_1
    iget-object p1, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->x:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget-object p2, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->x:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    iget-object p3, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->A:Landroid/graphics/Matrix;

    iget-boolean p4, p0, Lorg/chromium/chrome/browser/ntp/LogoView;->C:Z

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/ntp/LogoView;->a(IILandroid/graphics/Matrix;Z)V

    :cond_2
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
