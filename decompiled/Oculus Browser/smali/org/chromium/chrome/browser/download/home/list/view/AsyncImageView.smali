.class public Lorg/chromium/chrome/browser/download/home/list/view/AsyncImageView;
.super Lorg/chromium/chrome/browser/download/home/list/view/ForegroundRoundedCornerImageView;
.source "PG"


# instance fields
.field public F:Landroid/graphics/drawable/Drawable;

.field public G:LJ90;

.field public H:Ljava/lang/Runnable;

.field public I:Z

.field public J:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/chrome/browser/download/home/list/view/ForegroundRoundedCornerImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v1, LeS;->u:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 3
    :goto_0
    invoke-static {p1, p2, v0}, LW90;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4
    invoke-static {v0}, LU90;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/download/home/list/view/AsyncImageView;->F:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    .line 5
    invoke-static {p1, p2, v0}, LW90;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 6
    invoke-static {p1}, LU90;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method


# virtual methods
.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p1

    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lorg/chromium/chrome/browser/download/home/list/view/AsyncImageView;->G:LJ90;

    .line 2
    iput-object v0, p0, Lorg/chromium/chrome/browser/download/home/list/view/AsyncImageView;->J:Ljava/lang/Object;

    .line 3
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/download/home/list/view/AsyncImageView;->I:Z

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/home/list/view/AsyncImageView;->H:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 5
    :cond_0
    iput-object v0, p0, Lorg/chromium/chrome/browser/download/home/list/view/AsyncImageView;->H:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/download/home/list/view/AsyncImageView;->I:Z

    .line 7
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/home/list/view/ForegroundRoundedCornerImageView;->E:LV90;

    invoke-virtual {v1, v0}, LV90;->a(Landroid/graphics/drawable/Drawable;)V

    .line 8
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/ui/widget/RoundedCornerImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
