.class public Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/ExpandableHeightListView;
.super Landroid/widget/ListView;


# instance fields
.field a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/ExpandableHeightListView;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/ExpandableHeightListView;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/ExpandableHeightListView;->a:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/ExpandableHeightListView;->a:Z

    return v0
.end method

.method public onMeasure(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/ExpandableHeightListView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const p2, 0xffffff

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/ExpandableHeightListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/ExpandableHeightListView;->getMeasuredHeight()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method public setExpanded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/ExpandableHeightListView;->a:Z

    return-void
.end method
