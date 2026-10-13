.class public Lorg/chromium/chrome/browser/contacts_picker/ContactsPickerToolbar;
.super LpR0;
.source "PG"


# instance fields
.field public T0:LL30;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LpR0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 4

    .line 3
    invoke-super {p0, p1}, LpR0;->a(Ljava/util/List;)V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const v0, 0x7f0b016a

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/widget/ButtonCompat;

    const/4 v1, 0x1

    if-lez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 6
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    const v2, 0x7f0b039f

    .line 7
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AppCompatImageView;

    .line 8
    iget-boolean v3, p0, LpR0;->m0:Z

    xor-int/2addr v3, v1

    if-eqz v3, :cond_1

    .line 9
    iget-object v3, p0, LpR0;->J0:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 10
    :cond_1
    iget-object v3, p0, LpR0;->K0:Landroid/content/res/ColorStateList;

    .line 11
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    if-lez p1, :cond_2

    const p1, 0x7f1401ce

    .line 12
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_2

    :cond_2
    const p1, 0x7f1401be

    .line 13
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 14
    invoke-virtual {p0, v1}, LpR0;->e(I)V

    :goto_2
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
    iget-boolean v0, p0, LpR0;->o0:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0}, LpR0;->m()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/contacts_picker/ContactsPickerToolbar;->T0:LL30;

    check-cast v0, LK30;

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    :goto_0
    return-void
.end method
