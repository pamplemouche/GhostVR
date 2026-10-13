.class public LNB0;
.super Landroid/support/v7/preference/Preference;
.source "PG"

# interfaces
.implements Lmc;


# instance fields
.field public i0:LMB0;

.field public j0:I

.field public k0:Ljava/lang/String;

.field public l0:I

.field public m0:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;LMB0;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    iput-object p3, p0, LNB0;->k0:Ljava/lang/String;

    .line 3
    iput-object p4, p0, LNB0;->i0:LMB0;

    .line 4
    iput-object p0, p0, Landroid/support/v7/preference/Preference;->B:Lmc;

    .line 5
    invoke-virtual {p0, p2}, Landroid/support/v7/preference/Preference;->d(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06014b

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    .line 9
    iput p2, p0, LNB0;->j0:I

    const p2, 0x7f060088

    .line 10
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, LNB0;->l0:I

    const p2, 0x7f06008c

    .line 11
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, LNB0;->m0:I

    const p2, 0x7f0802a8

    .line 12
    invoke-static {p1, p2}, LdT;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 13
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 14
    iget p3, p0, LNB0;->j0:I

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 15
    invoke-virtual {p0, p2}, Landroid/support/v7/preference/Preference;->a(Landroid/graphics/drawable/Drawable;)V

    const p2, 0x7f130663

    .line 16
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public a(LGc;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->a(LGc;)V

    const v0, 0x1020016

    .line 2
    invoke-virtual {p1, v0}, LGc;->c(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 4
    iget v0, p0, LNB0;->j0:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public c(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    .line 1
    iget-object p1, p0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0e0027

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0b03fe

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 5
    new-instance v1, LJB0;

    invoke-direct {v1, p0, v0}, LJB0;-><init>(LNB0;Landroid/widget/EditText;)V

    .line 6
    new-instance v2, LO8;

    .line 7
    iget-object v3, p0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    const v4, 0x7f140245

    .line 8
    invoke-direct {v2, v3, v4}, LO8;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f13066e

    .line 9
    invoke-virtual {v2, v3}, LO8;->b(I)LO8;

    iget-object v3, p0, LNB0;->k0:Ljava/lang/String;

    .line 10
    iget-object v4, v2, LO8;->a:LK8;

    iput-object v3, v4, LK8;->h:Ljava/lang/CharSequence;

    .line 11
    iput-object p1, v4, LK8;->u:Landroid/view/View;

    const/4 p1, 0x0

    .line 12
    iput p1, v4, LK8;->t:I

    .line 13
    iput-boolean p1, v4, LK8;->v:Z

    const v3, 0x7f130664

    .line 14
    invoke-virtual {v2, v3, v1}, LO8;->b(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    const v3, 0x7f1301d4

    .line 15
    invoke-virtual {v2, v3, v1}, LO8;->a(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    .line 16
    invoke-virtual {v2}, LO8;->a()LP8;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lm9;->a()LS8;

    move-result-object v2

    check-cast v2, Lk9;

    .line 18
    iput-boolean p1, v2, Lk9;->N:Z

    .line 19
    new-instance v2, LKB0;

    invoke-direct {v2, p0, v0}, LKB0;-><init>(LNB0;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 20
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    const/4 v2, -0x1

    .line 21
    invoke-virtual {v1, v2}, LP8;->a(I)Landroid/widget/Button;

    move-result-object v1

    .line 22
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 23
    new-instance p1, LLB0;

    invoke-direct {p1, p0, v1, v0}, LLB0;-><init>(LNB0;Landroid/widget/Button;Landroid/widget/EditText;)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 p1, 0x1

    return p1
.end method
