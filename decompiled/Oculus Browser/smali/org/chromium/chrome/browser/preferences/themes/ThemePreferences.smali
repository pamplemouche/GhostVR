.class public Lorg/chromium/chrome/browser/preferences/themes/ThemePreferences;
.super Lrc;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrc;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcy0;Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;Ljava/lang/Object;)Z
    .locals 2

    const-string v0, "DarkenWebsitesCheckboxInThemesSetting"

    .line 1
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p1, Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;->l0:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    .line 3
    iget-object v0, p0, Lcy0;->a:Landroid/content/SharedPreferences;

    const-string v1, "darken_websites_enabled"

    invoke-static {v0, v1, p1}, LZi;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 4
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 5
    iget-object p0, p0, Lcy0;->a:Landroid/content/SharedPreferences;

    const-string p2, "ui_theme_setting"

    invoke-static {p0, p2, p1}, LZi;->a(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lz2;->c0:Z

    .line 19
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_0

    .line 20
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 21
    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 22
    invoke-static {p1, v0}, Lwc1;->b(Landroid/view/View;Z)V

    :cond_0
    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1}, Lrc;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    const p1, 0x7f17001b

    .line 6
    invoke-static {p0, p1}, Lxy0;->a(Lrc;I)V

    .line 7
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    const p2, 0x7f130504

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    .line 8
    sget-object p1, Lay0;->a:Lcy0;

    const-string p2, "ui_theme_pref"

    .line 9
    invoke-virtual {p0, p2}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    check-cast p2, Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;

    .line 10
    sget-object v0, Lay0;->a:Lcy0;

    const-string v1, "ui_theme_setting"

    const/4 v2, -0x1

    .line 11
    invoke-virtual {v0, v1, v2}, Lcy0;->a(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 12
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->f()Z

    move-result v0

    :cond_0
    const-string v1, "darken_websites_enabled"

    const/4 v2, 0x0

    .line 13
    invoke-virtual {p1, v1, v2}, Lcy0;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 14
    iput v0, p2, Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;->i0:I

    .line 15
    iput-boolean v1, p2, Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;->k0:Z

    .line 16
    new-instance v0, LIB0;

    invoke-direct {v0, p1, p2}, LIB0;-><init>(Lcy0;Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;)V

    .line 17
    iput-object v0, p2, Landroid/support/v7/preference/Preference;->A:Llc;

    return-void
.end method
