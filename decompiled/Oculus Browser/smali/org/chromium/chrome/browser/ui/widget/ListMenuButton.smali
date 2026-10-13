.class public Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;
.super Lorg/chromium/ui/widget/ChromeImageButton;
.source "PG"

# interfaces
.implements Ldf1;


# instance fields
.field public A:LuM0;

.field public B:LWT;

.field public final y:I

.field public z:Lef1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/chromium/ui/widget/ChromeImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;->B:LWT;

    .line 3
    sget-object v0, LeS;->g0:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070185

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;->y:I

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1300e5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(ZIIIILandroid/graphics/Rect;)V
    .locals 0

    .line 2
    iget-object p2, p0, Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;->z:Lef1;

    if-eqz p1, :cond_0

    const p1, 0x7f14011a

    goto :goto_0

    :cond_0
    const p1, 0x7f14011b

    .line 3
    :goto_0
    iget-object p2, p2, Lef1;->B:Landroid/widget/PopupWindow;

    invoke-virtual {p2, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;->z:Lef1;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, v0, Lef1;->B:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;->b()V

    .line 2
    invoke-super {p0}, Landroid/widget/ImageButton;->onDetachedFromWindow()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageButton;->onFinishInflate()V

    const-string v0, ""

    .line 2
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;->a(Ljava/lang/String;)V

    .line 3
    new-instance v0, LpM0;

    invoke-direct {v0, p0}, LpM0;-><init>(Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
