.class public Landroid/support/v7/app/AlertController$RecycleListView;
.super Landroid/widget/ListView;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/AlertController$RecycleListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Landroid/support/v7/b/l;->RecycleListView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Landroid/support/v7/b/l;->RecycleListView_paddingBottomNoButtons:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/app/AlertController$RecycleListView;->b:I

    sget p2, Landroid/support/v7/b/l;->RecycleListView_paddingTopNoTitle:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/app/AlertController$RecycleListView;->a:I

    return-void
.end method


# virtual methods
.method public a(ZZ)V
    .locals 2

    if-eqz p2, :cond_0

    if-nez p1, :cond_3

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/AlertController$RecycleListView;->getPaddingLeft()I

    move-result v0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/app/AlertController$RecycleListView;->getPaddingTop()I

    move-result p1

    goto :goto_0

    :cond_1
    iget p1, p0, Landroid/support/v7/app/AlertController$RecycleListView;->a:I

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/app/AlertController$RecycleListView;->getPaddingRight()I

    move-result v1

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/app/AlertController$RecycleListView;->getPaddingBottom()I

    move-result p2

    goto :goto_1

    :cond_2
    iget p2, p0, Landroid/support/v7/app/AlertController$RecycleListView;->b:I

    :goto_1
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/support/v7/app/AlertController$RecycleListView;->setPadding(IIII)V

    :cond_3
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/widget/ao;->a(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/app/AlertController$RecycleListView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/support/v4/widget/aw;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/aw;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/support/v4/widget/aw;

    invoke-direct {v2, v0}, Landroid/support/v4/widget/aw;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p0}, Landroid/support/v4/widget/aw;->a(Landroid/view/View;)V

    invoke-virtual {v2, p0}, Landroid/support/v4/widget/aw;->a(Landroid/view/View;)V

    invoke-static {p0, v1}, Landroid/support/v4/widget/ao;->a(Landroid/widget/AbsListView;Landroid/widget/EdgeEffect;)V

    invoke-static {p0, v2}, Landroid/support/v4/widget/ao;->b(Landroid/widget/AbsListView;Landroid/widget/EdgeEffect;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/v4/widget/ao;->a(Landroid/widget/AbsListView;Landroid/widget/EdgeEffect;)V

    invoke-static {p0, v0}, Landroid/support/v4/widget/ao;->b(Landroid/widget/AbsListView;Landroid/widget/EdgeEffect;)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    return-void
.end method
