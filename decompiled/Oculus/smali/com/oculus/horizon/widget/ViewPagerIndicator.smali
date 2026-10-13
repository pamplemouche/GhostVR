.class public Lcom/oculus/horizon/widget/ViewPagerIndicator;
.super Landroid/widget/LinearLayout;
.source "ViewPagerIndicator.java"


# instance fields
.field private mLayoutResId:I

.field private final mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v0, Lcom/oculus/horizon/widget/ViewPagerIndicator$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/widget/ViewPagerIndicator$1;-><init>(Lcom/oculus/horizon/widget/ViewPagerIndicator;)V

    iput-object v0, p0, Lcom/oculus/horizon/widget/ViewPagerIndicator;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 35
    invoke-direct {p0}, Lcom/oculus/horizon/widget/ViewPagerIndicator;->init()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance v0, Lcom/oculus/horizon/widget/ViewPagerIndicator$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/widget/ViewPagerIndicator$1;-><init>(Lcom/oculus/horizon/widget/ViewPagerIndicator;)V

    iput-object v0, p0, Lcom/oculus/horizon/widget/ViewPagerIndicator;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 40
    invoke-direct {p0}, Lcom/oculus/horizon/widget/ViewPagerIndicator;->init()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    new-instance v0, Lcom/oculus/horizon/widget/ViewPagerIndicator$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/widget/ViewPagerIndicator$1;-><init>(Lcom/oculus/horizon/widget/ViewPagerIndicator;)V

    iput-object v0, p0, Lcom/oculus/horizon/widget/ViewPagerIndicator;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 45
    invoke-direct {p0}, Lcom/oculus/horizon/widget/ViewPagerIndicator;->init()V

    .line 46
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/oculus/horizon/R$layout;->pager_indicator:I

    iput v0, p0, Lcom/oculus/horizon/widget/ViewPagerIndicator;->mLayoutResId:I

    .line 50
    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 5

    .prologue
    .line 79
    iget-object v0, p0, Lcom/oculus/horizon/widget/ViewPagerIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    .line 80
    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    .line 85
    invoke-virtual {p0}, Lcom/oculus/horizon/widget/ViewPagerIndicator;->getChildCount()I

    move-result v0

    .line 86
    if-ge v0, v1, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/oculus/horizon/widget/ViewPagerIndicator;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 88
    :goto_1
    if-ge v0, v1, :cond_2

    .line 89
    iget v3, p0, Lcom/oculus/horizon/widget/ViewPagerIndicator;->mLayoutResId:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 91
    :cond_1
    if-le v0, v1, :cond_2

    .line 92
    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Lcom/oculus/horizon/widget/ViewPagerIndicator;->removeViews(II)V

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/widget/ViewPagerIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/ViewPagerIndicator;->setCurrentItem(I)V

    goto :goto_0
.end method

.method public setCurrentItem(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 68
    iget-object v0, p0, Lcom/oculus/horizon/widget/ViewPagerIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/oculus/horizon/widget/ViewPagerIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/widget/ViewPagerIndicator;->getChildCount()I

    move-result v3

    move v2, v1

    .line 73
    :goto_0
    if-ge v2, v3, :cond_2

    .line 74
    invoke-virtual {p0, v2}, Lcom/oculus/horizon/widget/ViewPagerIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne p1, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setActivated(Z)V

    .line 73
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 74
    goto :goto_1

    .line 76
    :cond_2
    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/oculus/horizon/widget/ViewPagerIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-ne p1, v0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/widget/ViewPagerIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/oculus/horizon/widget/ViewPagerIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/oculus/horizon/widget/ViewPagerIndicator;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 59
    :cond_2
    iput-object p1, p0, Lcom/oculus/horizon/widget/ViewPagerIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 60
    iget-object v0, p0, Lcom/oculus/horizon/widget/ViewPagerIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/oculus/horizon/widget/ViewPagerIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/oculus/horizon/widget/ViewPagerIndicator;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 64
    invoke-virtual {p0}, Lcom/oculus/horizon/widget/ViewPagerIndicator;->notifyDataSetChanged()V

    goto :goto_0
.end method
