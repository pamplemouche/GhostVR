.class public Lorg/chromium/chrome/browser/history/HistoryItemView;
.super LhR0;
.source "PG"

# interfaces
.implements Lorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;


# instance fields
.field public N:Landroid/widget/ImageButton;

.field public O:Landroid/view/View;

.field public final P:LCM0;

.field public final Q:I

.field public final R:I

.field public final S:I

.field public T:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, LhR0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700b5

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lorg/chromium/chrome/browser/history/HistoryItemView;->Q:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700b6

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lorg/chromium/chrome/browser/history/HistoryItemView;->R:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2}, LEa0;->a(Landroid/content/res/Resources;)LCM0;

    move-result-object p2

    iput-object p2, p0, Lorg/chromium/chrome/browser/history/HistoryItemView;->P:LCM0;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07029c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lorg/chromium/chrome/browser/history/HistoryItemView;->S:I

    const p2, 0x7f06007e

    .line 6
    invoke-static {p1, p2}, Lsa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, LhR0;->L:Landroid/content/res/ColorStateList;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, LiR0;->A:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 2
    check-cast v0, Lxe0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 5

    .line 1
    invoke-super {p0}, LhR0;->onFinishInflate()V

    .line 2
    iget-object v0, p0, LhR0;->I:Landroid/widget/ImageView;

    const v1, 0x7f0800d4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0b00e9

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/history/HistoryItemView;->O:Landroid/view/View;

    const v0, 0x7f0b037f

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/history/HistoryItemView;->N:Landroid/widget/ImageButton;

    .line 5
    new-instance v1, Lye0;

    invoke-direct {v1, p0}, Lye0;-><init>(Lorg/chromium/chrome/browser/history/HistoryItemView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, LJ/N;->MVEXC539(Ljava/lang/Object;I)Z

    move-result v0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 8
    :goto_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/history/HistoryItemView;->N:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-ne v0, v2, :cond_1

    .line 9
    iget v1, p0, Lorg/chromium/chrome/browser/history/HistoryItemView;->S:I

    .line 10
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/history/HistoryItemView;->O:Landroid/view/View;

    invoke-static {v0}, LA7;->m(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/history/HistoryItemView;->O:Landroid/view/View;

    .line 11
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lorg/chromium/chrome/browser/history/HistoryItemView;->O:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 12
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 13
    throw v0
.end method

.method public onLargeIconAvailable(Landroid/graphics/Bitmap;IZI)V
    .locals 6

    .line 1
    iget-object p3, p0, LiR0;->A:Ljava/lang/Object;

    .line 2
    check-cast p3, Lxe0;

    .line 3
    iget-object v1, p3, Lxe0;->a:Ljava/lang/String;

    .line 4
    iget-object v3, p0, Lorg/chromium/chrome/browser/history/HistoryItemView;->P:LCM0;

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lorg/chromium/chrome/browser/history/HistoryItemView;->R:I

    move-object v0, p1

    move v2, p2

    .line 6
    invoke-static/range {v0 .. v5}, LEa0;->a(Landroid/graphics/Bitmap;Ljava/lang/String;ILCM0;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 7
    iput-object p1, p0, LhR0;->M:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, LhR0;->b(Z)V

    return-void
.end method
