.class public LtM0;
.super Landroid/widget/ArrayAdapter;
.source "PG"


# instance fields
.field public final synthetic w:[LvM0;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;Landroid/content/Context;I[LvM0;[LvM0;)V
    .locals 0

    .line 1
    iput-object p5, p0, LtM0;->w:[LvM0;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance v0, LsM0;

    invoke-direct {v0, p3, p1}, LsM0;-><init>(Landroid/view/ViewGroup;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object p3, p0, LtM0;->w:[LvM0;

    aget-object p3, p3, p1

    .line 4
    iget-boolean p3, p3, LvM0;->d:Z

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/View;->setEnabled(Z)V

    .line 6
    move-object p3, p2

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, LtM0;->w:[LvM0;

    aget-object p1, v0, p1

    .line 7
    iget p1, p1, LvM0;->c:I

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p3, v0, v0, p1, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, LtM0;->w:[LvM0;

    aget-object p1, v0, p1

    .line 2
    iget-boolean p1, p1, LvM0;->d:Z

    return p1
.end method
