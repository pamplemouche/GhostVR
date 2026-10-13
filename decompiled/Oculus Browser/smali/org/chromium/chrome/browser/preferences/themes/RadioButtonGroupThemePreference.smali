.class public Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;
.super Landroid/support/v7/preference/Preference;
.source "PG"

# interfaces
.implements LBM0;


# instance fields
.field public i0:I

.field public j0:Ljava/util/ArrayList;

.field public k0:Z

.field public l0:Landroid/widget/CheckBox;

.field public m0:Landroid/widget/LinearLayout;

.field public n0:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0e0180

    .line 2
    iput p1, p0, Landroid/support/v7/preference/Preference;->b0:I

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x3

    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;->j0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(LGc;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->a(LGc;)V

    const v0, 0x7f0b00bb

    .line 2
    invoke-virtual {p1, v0}, LGc;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;->n0:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0136

    .line 3
    invoke-virtual {p1, v0}, LGc;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;->l0:Landroid/widget/CheckBox;

    .line 4
    iget-object v0, p1, Ldh;->w:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;->m0:Landroid/widget/LinearLayout;

    .line 5
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;->n0:Landroid/widget/LinearLayout;

    new-instance v1, LHB0;

    invoke-direct {v1, p0}, LHB0;-><init>(Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;->l0:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;->k0:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 7
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;->j0:Ljava/util/ArrayList;

    const v1, 0x7f0b0456

    .line 8
    invoke-virtual {p1, v1}, LGc;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lorg/chromium/base/BuildInfo;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;->j0:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    .line 12
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    const v3, 0x7f130603

    .line 13
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;->a(Ljava/lang/CharSequence;)V

    .line 15
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;->j0:Ljava/util/ArrayList;

    const v1, 0x7f0b0234

    .line 16
    invoke-virtual {p1, v1}, LGc;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    const/4 v3, 0x1

    .line 17
    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;->j0:Ljava/util/ArrayList;

    const/4 v1, 0x2

    const v4, 0x7f0b0134

    .line 19
    invoke-virtual {p1, v4}, LGc;->c(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    .line 20
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 p1, 0x3

    if-ge v2, p1, :cond_1

    .line 21
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;->j0:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;->j0:Ljava/util/ArrayList;

    .line 22
    iput-object v0, p1, Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;->A:Ljava/util/List;

    .line 23
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    .line 24
    iput-object p0, p1, Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;->z:LBM0;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25
    :cond_1
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;->j0:Ljava/util/ArrayList;

    iget v0, p0, Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;->i0:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    invoke-virtual {p1, v3}, Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;->a(Z)V

    .line 26
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;->w()V

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 1
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;->j0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iput v0, p0, Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;->i0:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;->w()V

    .line 4
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;->i0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/Object;)Z

    .line 5
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;->i0:I

    invoke-static {v0}, LGl0;->a(I)V

    return-void
.end method

.method public final w()V
    .locals 3

    const-string v0, "DarkenWebsitesCheckboxInThemesSetting"

    .line 1
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;->i0:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;->n0:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;->m0:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;->n0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;->n0:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;->m0:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;->n0:Landroid/widget/LinearLayout;

    iget v2, p0, Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;->i0:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_2
    :goto_1
    return-void
.end method
