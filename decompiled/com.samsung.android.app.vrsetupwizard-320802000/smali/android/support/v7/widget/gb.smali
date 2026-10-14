.class Landroid/support/v7/widget/gb;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/fz;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/fz;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/gb;->a:Landroid/support/v7/widget/fz;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/gb;->a:Landroid/support/v7/widget/fz;

    iget-object v0, v0, Landroid/support/v7/widget/fz;->b:Landroid/support/v7/widget/cy;

    invoke-virtual {v0}, Landroid/support/v7/widget/cy;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/gb;->a:Landroid/support/v7/widget/fz;

    iget-object v0, v0, Landroid/support/v7/widget/fz;->b:Landroid/support/v7/widget/cy;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/cy;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/gd;

    invoke-virtual {p1}, Landroid/support/v7/widget/gd;->b()Landroid/support/v7/app/d;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    if-nez p2, :cond_0

    iget-object p2, p0, Landroid/support/v7/widget/gb;->a:Landroid/support/v7/widget/fz;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/gb;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/app/d;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/support/v7/widget/fz;->a(Landroid/support/v7/app/d;Z)Landroid/support/v7/widget/gd;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p3, p2

    check-cast p3, Landroid/support/v7/widget/gd;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/gb;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/app/d;

    invoke-virtual {p3, p1}, Landroid/support/v7/widget/gd;->a(Landroid/support/v7/app/d;)V

    :goto_0
    return-object p2
.end method
