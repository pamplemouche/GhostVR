.class public Lorg/chromium/chrome/browser/preferences/website/TriStateSiteSettingsPreference;
.super Landroid/support/v7/preference/Preference;
.source "PG"

# interfaces
.implements LBM0;


# instance fields
.field public i0:I

.field public j0:[I

.field public k0:Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

.field public l0:Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

.field public m0:Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lorg/chromium/chrome/browser/preferences/website/TriStateSiteSettingsPreference;->i0:I

    const p2, 0x7f0e01d2

    .line 3
    iput p2, p0, Landroid/support/v7/preference/Preference;->b0:I

    .line 4
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->d(Z)V

    return-void
.end method


# virtual methods
.method public a(LGc;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->a(LGc;)V

    const v0, 0x7f0b0046

    .line 2
    invoke-virtual {p1, v0}, LGc;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/TriStateSiteSettingsPreference;->k0:Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    const v0, 0x7f0b0054

    .line 3
    invoke-virtual {p1, v0}, LGc;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/TriStateSiteSettingsPreference;->l0:Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    const v0, 0x7f0b0062

    .line 4
    invoke-virtual {p1, v0}, LGc;->c(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/TriStateSiteSettingsPreference;->m0:Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    .line 5
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/TriStateSiteSettingsPreference;->j0:[I

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 6
    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/website/TriStateSiteSettingsPreference;->k0:Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    .line 7
    iget-object v4, p0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    .line 8
    aget p1, p1, v0

    invoke-virtual {v4, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;->a(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/TriStateSiteSettingsPreference;->l0:Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    .line 10
    iget-object v3, p0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    .line 11
    iget-object v4, p0, Lorg/chromium/chrome/browser/preferences/website/TriStateSiteSettingsPreference;->j0:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;->a(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/TriStateSiteSettingsPreference;->m0:Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    .line 13
    iget-object v3, p0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    .line 14
    iget-object v4, p0, Lorg/chromium/chrome/browser/preferences/website/TriStateSiteSettingsPreference;->j0:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;->a(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p1, 0x3

    new-array v3, p1, [Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    .line 15
    iget-object v4, p0, Lorg/chromium/chrome/browser/preferences/website/TriStateSiteSettingsPreference;->k0:Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    aput-object v4, v3, v0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/TriStateSiteSettingsPreference;->l0:Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    aput-object v0, v3, v2

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/TriStateSiteSettingsPreference;->m0:Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    aput-object v0, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    .line 17
    iput-object v0, v4, Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;->A:Ljava/util/List;

    .line 18
    iput-object p0, v4, Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;->z:LBM0;

    goto :goto_0

    .line 19
    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/website/TriStateSiteSettingsPreference;->i0:I

    if-ne v0, v2, :cond_2

    .line 20
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/TriStateSiteSettingsPreference;->k0:Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    goto :goto_1

    :cond_2
    if-ne v0, p1, :cond_3

    .line 21
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/TriStateSiteSettingsPreference;->l0:Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    goto :goto_1

    :cond_3
    if-ne v0, v1, :cond_4

    .line 22
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/TriStateSiteSettingsPreference;->m0:Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_5

    .line 23
    invoke-virtual {p1, v2}, Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;->a(Z)V

    :cond_5
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/TriStateSiteSettingsPreference;->k0:Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/chromium/chrome/browser/preferences/website/TriStateSiteSettingsPreference;->i0:I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/TriStateSiteSettingsPreference;->l0:Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lorg/chromium/chrome/browser/preferences/website/TriStateSiteSettingsPreference;->i0:I

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/TriStateSiteSettingsPreference;->m0:Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 6
    iput v0, p0, Lorg/chromium/chrome/browser/preferences/website/TriStateSiteSettingsPreference;->i0:I

    .line 7
    :cond_2
    :goto_0
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/website/TriStateSiteSettingsPreference;->i0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/Object;)Z

    return-void
.end method
