.class public Lorg/chromium/chrome/browser/ntp/cards/ProgressIndicatorView;
.super Landroid/widget/ImageView;
.source "PG"


# instance fields
.field public final w:Ljava/lang/Runnable;

.field public final x:LRb1;

.field public y:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, LXm0;

    invoke-direct {p1, p0}, LXm0;-><init>(Lorg/chromium/chrome/browser/ntp/cards/ProgressIndicatorView;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/cards/ProgressIndicatorView;->w:Ljava/lang/Runnable;

    .line 3
    new-instance p1, LRb1;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p0}, LRb1;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/cards/ProgressIndicatorView;->x:LRb1;

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lorg/chromium/chrome/browser/ntp/cards/ProgressIndicatorView;->x:LRb1;

    const v0, 0x7f06016c

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 7
    iget-object p2, p2, LRb1;->y:LQb1;

    .line 8
    iput v0, p2, LQb1;->w:I

    .line 9
    iget-object p2, p0, Lorg/chromium/chrome/browser/ntp/cards/ProgressIndicatorView;->x:LRb1;

    const/16 v0, 0xff

    invoke-virtual {p2, v0}, LRb1;->setAlpha(I)V

    .line 10
    iget-object p2, p0, Lorg/chromium/chrome/browser/ntp/cards/ProgressIndicatorView;->x:LRb1;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x7f0600ee

    .line 11
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 12
    iget-object p1, p2, LRb1;->y:LQb1;

    .line 13
    iput-object v1, p1, LQb1;->j:[I

    .line 14
    invoke-virtual {p1, v2}, LQb1;->a(I)V

    .line 15
    iget-object p1, p2, LRb1;->y:LQb1;

    invoke-virtual {p1, v2}, LQb1;->a(I)V

    .line 16
    iget-object p1, p0, Lorg/chromium/chrome/browser/ntp/cards/ProgressIndicatorView;->x:LRb1;

    invoke-virtual {p1, v0}, LRb1;->a(I)V

    .line 17
    iget-object p1, p0, Lorg/chromium/chrome/browser/ntp/cards/ProgressIndicatorView;->x:LRb1;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    iget-object p1, p0, Lorg/chromium/chrome/browser/ntp/cards/ProgressIndicatorView;->x:LRb1;

    invoke-virtual {p1}, LRb1;->stop()V

    .line 19
    iget-object p1, p0, Lorg/chromium/chrome/browser/ntp/cards/ProgressIndicatorView;->w:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 20
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/ntp/cards/ProgressIndicatorView;->y:Z

    const/16 p1, 0x8

    .line 21
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/cards/ProgressIndicatorView;->y:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/cards/ProgressIndicatorView;->x:LRb1;

    invoke-virtual {v0}, LRb1;->stop()V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/cards/ProgressIndicatorView;->x:LRb1;

    invoke-virtual {v0}, LRb1;->start()V

    :cond_1
    :goto_0
    return-void
.end method
