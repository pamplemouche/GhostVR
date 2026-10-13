.class public Lorg/chromium/chrome/browser/photo_picker/PhotoPickerToolbar;
.super LpR0;
.source "PG"


# instance fields
.field public T0:LJx0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LpR0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3

    .line 3
    invoke-super {p0, p1}, LpR0;->a(Ljava/util/List;)V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0x7f0b016a

    .line 5
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setEnabled(Z)V

    if-lez v0, :cond_1

    const p1, 0x7f1401ce

    .line 7
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1

    :cond_1
    const p1, 0x7f1401be

    .line 8
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 9
    invoke-virtual {p0, v2}, LpR0;->e(I)V

    :goto_1
    return-void
.end method

.method public a(LrR0;IIIZ)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, LpR0;->a(LrR0;IIIZ)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, LpR0;->e(I)V

    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    invoke-super {p0}, LpR0;->m()V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/photo_picker/PhotoPickerToolbar;->T0:LJx0;

    check-cast v0, LIx0;

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, LpR0;->onFinishInflate()V

    const v0, 0x7f130207

    .line 2
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->c(I)V

    return-void
.end method
