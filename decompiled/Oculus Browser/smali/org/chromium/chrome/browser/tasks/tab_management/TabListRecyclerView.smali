.class public Lorg/chromium/chrome/browser/tasks/tab_management/TabListRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "PG"


# instance fields
.field public d1:Landroid/widget/ImageView;

.field public e1:LsJ0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/tasks/tab_management/TabListRecyclerView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    return-void
.end method


# virtual methods
.method public e(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabListRecyclerView;->d1:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabListRecyclerView;->d1:Landroid/widget/ImageView;

    const v3, 0x7f080262

    .line 4
    invoke-static {v0, v3}, Lsa;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object v2, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabListRecyclerView;->d1:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/FrameLayout;

    const v3, 0x7f070322

    const/4 v4, -0x1

    if-eqz v2, :cond_0

    .line 8
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 9
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/16 v3, 0x30

    invoke-direct {v2, v4, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 10
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 11
    iget-object v0, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabListRecyclerView;->d1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 13
    iget-object v2, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabListRecyclerView;->d1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_2

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 16
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 17
    instance-of v6, v5, Lorg/chromium/chrome/browser/tasks/tab_management/TabGroupUiToolbarView;

    if-nez v6, :cond_1

    return-void

    .line 18
    :cond_1
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 19
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {v6, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x3

    .line 20
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v6, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 21
    iget-object v0, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabListRecyclerView;->d1:Landroid/widget/ImageView;

    invoke-virtual {v2, v0, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 22
    iget-object v0, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabListRecyclerView;->d1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    iget-object p1, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabListRecyclerView;->d1:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    .line 24
    iget-object p1, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabListRecyclerView;->d1:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_4

    .line 25
    iget-object p1, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabListRecyclerView;->d1:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object p1

    return-object p1
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onAttachedToWindow()V

    .line 2
    new-instance v0, LsJ0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LsJ0;-><init>(Lorg/chromium/chrome/browser/tasks/tab_management/TabListRecyclerView;LrJ0;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabListRecyclerView;->e1:LsJ0;

    .line 3
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(LUg;)V

    return-void
.end method

.method public onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabListRecyclerView;->d1:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 4
    iput-object v1, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabListRecyclerView;->d1:Landroid/widget/ImageView;

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabListRecyclerView;->e1:LsJ0;

    if-eqz v0, :cond_2

    .line 6
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->D0:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 7
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    iput-object v1, p0, Lorg/chromium/chrome/browser/tasks/tab_management/TabListRecyclerView;->e1:LsJ0;

    :cond_2
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
