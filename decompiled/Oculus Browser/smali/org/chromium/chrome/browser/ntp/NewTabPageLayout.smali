.class public Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;
.super Landroid/widget/LinearLayout;
.source "PG"

# interfaces
.implements LSO0;


# instance fields
.field public A:Landroid/view/View;

.field public B:Landroid/view/ViewGroup;

.field public C:Landroid/view/View;

.field public D:Z

.field public E:Z

.field public final w:I

.field public x:I

.field public y:Landroid/view/View;

.field public z:Lorg/chromium/chrome/browser/ntp/LogoView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->x:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->E:Z

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070301

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->w:I

    return-void
.end method

.method public static a(Landroid/view/View;II)V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    .line 1
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->D:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->D:Z

    const/4 v0, 0x0

    .line 4
    throw v0
.end method

.method public onFinishInflate()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0b02e2

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->y:Landroid/view/View;

    const v0, 0x7f0b03af

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ntp/LogoView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->z:Lorg/chromium/chrome/browser/ntp/LogoView;

    const v0, 0x7f0b03a5

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->A:Landroid/view/View;

    .line 5
    new-instance v0, LTm0;

    .line 6
    new-instance v1, LNm0;

    invoke-direct {v1, p0}, LNm0;-><init>(Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;)V

    .line 7
    invoke-direct {v0, p0, v1}, LTm0;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0e01a7

    .line 9
    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 10
    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->B:Landroid/view/ViewGroup;

    .line 11
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v2, -0x2

    .line 12
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 13
    invoke-static {}, LJ/N;->MwBQ$0Eq()I

    move-result v2

    .line 14
    invoke-static {v2}, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesBridge;->a(I)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-eqz v3, :cond_1

    if-ne v2, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    .line 15
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 16
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f070306

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 17
    :cond_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->B:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->y:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v4

    .line 19
    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->B:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 20
    invoke-static {}, LJ/N;->MwBQ$0Eq()I

    move-result v0

    .line 21
    invoke-static {v0}, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesBridge;->a(I)Z

    move-result v2

    const v3, 0x7f0b01b8

    if-eqz v2, :cond_3

    if-ne v0, v5, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_3

    .line 22
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->C:Landroid/view/View;

    goto :goto_2

    :cond_3
    if-ne v0, v4, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_5

    .line 23
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    const v1, 0x7f0e00b6

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 25
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->C:Landroid/view/View;

    .line 26
    :cond_5
    :goto_2
    invoke-static {}, Lyp0;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07029a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 28
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->A:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->A:Landroid/view/View;

    .line 29
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 30
    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_6
    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2
    iget-object p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->B:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_0

    .line 3
    iget-object p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->B:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->w:I

    sub-int/2addr p1, p2

    .line 4
    iget-object p2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->A:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->a(Landroid/view/View;II)V

    .line 5
    iget-object p2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->z:Lorg/chromium/chrome/browser/ntp/LogoView;

    .line 6
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 7
    invoke-static {p2, p1, v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->a(Landroid/view/View;II)V

    .line 8
    iget-object p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->C:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 9
    iget-object p2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->B:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->C:Landroid/view/View;

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 11
    invoke-static {p1, p2, v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->a(Landroid/view/View;II)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->C:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->w:I

    sub-int/2addr p1, p2

    .line 14
    iget-object p2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->A:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->a(Landroid/view/View;II)V

    .line 15
    iget-object p2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->z:Lorg/chromium/chrome/browser/ntp/LogoView;

    .line 16
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 17
    invoke-static {p2, p1, v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->a(Landroid/view/View;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    const/4 p1, 0x0

    .line 2
    throw p1
.end method
