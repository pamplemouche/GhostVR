.class public Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;
.super Landroid/widget/FrameLayout;
.source "PG"


# instance fields
.field public final A:Landroid/content/Context;

.field public B:Landroid/view/View;

.field public C:Landroid/widget/TextView;

.field public D:Lorg/chromium/ui/widget/ChromeImageView;

.field public E:Landroid/graphics/drawable/Drawable;

.field public F:Landroid/graphics/drawable/Animatable;

.field public G:Landroid/view/ViewGroup$MarginLayoutParams;

.field public H:Landroid/view/ViewGroup$MarginLayoutParams;

.field public I:Landroid/view/ViewGroup$MarginLayoutParams;

.field public J:Landroid/view/ViewGroup$MarginLayoutParams;

.field public K:Landroid/content/ComponentCallbacks;

.field public final w:I

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    iput-object p1, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->A:Landroid/content/Context;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0702cc

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->w:I

    .line 4
    iget-object p1, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->A:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0702cd

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->x:I

    .line 5
    iget-object p1, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->A:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0702cf

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->y:I

    .line 6
    iget-object p1, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->A:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0702ce

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->z:I

    return-void
.end method

.method public static synthetic a(Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;I)V
    .locals 4

    if-eqz p0, :cond_1

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 4
    iget-object v1, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->A:Landroid/content/Context;

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    .line 6
    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->A:Landroid/content/Context;

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 9
    iget p1, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->w:I

    .line 10
    iget v1, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->y:I

    goto :goto_0

    .line 11
    :cond_0
    iget p1, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->w:I

    .line 12
    iget v1, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->z:I

    move v3, v0

    move v0, p1

    move p1, v3

    .line 13
    :goto_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->G:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v2, p1, v0, p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 14
    iget-object p1, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->H:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->x:I

    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 15
    iget-object p1, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->I:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->x:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 16
    iget-object p1, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->J:Landroid/view/ViewGroup$MarginLayoutParams;

    iget p0, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->x:I

    invoke-virtual {p1, p0, v1, p0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-void

    :cond_1
    const/4 p0, 0x0

    .line 17
    throw p0
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->A:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v1, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->A:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e00e0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->B:Landroid/view/View;

    const v1, 0x7f0b03ed

    .line 4
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v1, 0x7f0b00d7

    .line 5
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/chromium/ui/widget/ChromeImageView;

    iput-object v1, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->D:Lorg/chromium/ui/widget/ChromeImageView;

    const v1, 0x7f0b021e

    .line 6
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08009d

    invoke-static {v2, v3}, Lsa;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 10
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 11
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v2, v1, v1, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 13
    iget-object v1, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->D:Lorg/chromium/ui/widget/ChromeImageView;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    iget-object v1, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->B:Landroid/view/View;

    const v2, 0x7f0b00d5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->C:Landroid/widget/TextView;

    .line 15
    iget-object v1, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->B:Landroid/view/View;

    const v2, 0x7f0b004a

    .line 16
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->E:Landroid/graphics/drawable/Drawable;

    .line 17
    check-cast v1, Landroid/graphics/drawable/Animatable;

    iput-object v1, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->F:Landroid/graphics/drawable/Animatable;

    .line 18
    iget-object v1, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->B:Landroid/view/View;

    const v2, 0x7f0b0494

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 19
    iget-object v2, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->B:Landroid/view/View;

    const v3, 0x7f0b0151

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 20
    iget-object v3, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->B:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 21
    new-instance v3, Landroid/widget/PopupWindow;

    const/4 v4, -0x1

    invoke-direct {v3, v0, v4, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 22
    new-instance v3, LlQ0;

    iget-object v4, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->A:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v0}, LlQ0;-><init>(Landroid/content/Context;LkQ0;Landroid/view/ViewGroup;)V

    .line 23
    iget-object v0, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->B:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object v0, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->G:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 24
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object v0, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->H:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 25
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object v0, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->I:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 26
    iget-object v0, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->C:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object v0, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->J:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 27
    new-instance v0, LqJ0;

    invoke-direct {v0, p0}, LqJ0;-><init>(Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->K:Landroid/content/ComponentCallbacks;

    .line 28
    iget-object v1, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->A:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method
