.class public Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;
.super Lrc;
.source "PG"

# interfaces
.implements Llc;


# instance fields
.field public E0:Ljava/text/NumberFormat;

.field public F0:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

.field public G0:Lorg/chromium/chrome/browser/preferences/TextScalePreference;

.field public H0:Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

.field public I0:Ll00;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lrc;-><init>()V

    .line 2
    new-instance v0, LVx0;

    invoke-direct {v0, p0}, LVx0;-><init>(Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->I0:Ll00;

    return-void
.end method


# virtual methods
.method public M()V
    .locals 5

    .line 1
    invoke-super {p0}, Lrc;->M()V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->F0:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->c()F

    move-result v0

    .line 3
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->G0:Lorg/chromium/chrome/browser/preferences/TextScalePreference;

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v0, v2}, LJy0;->a(FZ)V

    .line 5
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->G0:Lorg/chromium/chrome/browser/preferences/TextScalePreference;

    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->E0:Ljava/text/NumberFormat;

    float-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, LJy0;->a(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->H0:Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->F0:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    .line 7
    iget-wide v2, v1, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->a:J

    .line 8
    invoke-static {v2, v3, v1}, LJ/N;->MOnmBKet(JLjava/lang/Object;)Z

    move-result v1

    .line 9
    invoke-virtual {v0, v1}, LKc;->f(Z)V

    .line 10
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->G0:Lorg/chromium/chrome/browser/preferences/TextScalePreference;

    .line 11
    iget-object v1, v0, Lorg/chromium/chrome/browser/preferences/TextScalePreference;->p0:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    iget-object v2, v0, Lorg/chromium/chrome/browser/preferences/TextScalePreference;->q0:Ll00;

    .line 12
    iget-object v1, v1, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->b:LWT;

    invoke-virtual {v1, v2}, LWT;->a(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/TextScalePreference;->w()V

    .line 14
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->F0:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->I0:Ll00;

    .line 15
    iget-object v0, v0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->b:LWT;

    invoke-virtual {v0, v1}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public N()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->G0:Lorg/chromium/chrome/browser/preferences/TextScalePreference;

    .line 2
    iget-object v1, v0, Lorg/chromium/chrome/browser/preferences/TextScalePreference;->p0:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    iget-object v0, v0, Lorg/chromium/chrome/browser/preferences/TextScalePreference;->q0:Ll00;

    .line 3
    iget-object v1, v1, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->b:LWT;

    invoke-virtual {v1, v0}, LWT;->b(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->F0:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->I0:Ll00;

    .line 5
    iget-object v0, v0, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->b:LWT;

    invoke-virtual {v0, v1}, LWT;->b(Ljava/lang/Object;)Z

    .line 6
    invoke-super {p0}, Lrc;->N()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lz2;->c0:Z

    const/4 p1, 0x0

    .line 49
    invoke-virtual {p0, p1}, Lrc;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    const p2, 0x7f1304f4

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    const p1, 0x7f170001

    .line 2
    invoke-static {p0, p1}, Lxy0;->a(Lrc;I)V

    .line 3
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->E0:Ljava/text/NumberFormat;

    .line 4
    invoke-static {}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->d()Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->F0:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    const-string p1, "text_scale"

    .line 5
    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/preferences/TextScalePreference;

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->G0:Lorg/chromium/chrome/browser/preferences/TextScalePreference;

    .line 6
    iput-object p0, p1, Landroid/support/v7/preference/Preference;->A:Llc;

    const-string p1, "force_enable_zoom"

    .line 7
    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->H0:Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    .line 8
    iput-object p0, p1, Landroid/support/v7/preference/Preference;->A:Llc;

    const-string p1, "reader_for_accessibility"

    .line 9
    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    .line 10
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object p2

    const/4 v0, 0x4

    if-eqz p2, :cond_2

    .line 11
    invoke-static {p2, v0}, LJ/N;->MVEXC539(Ljava/lang/Object;I)Z

    move-result p2

    .line 12
    invoke-virtual {p1, p2}, LKc;->f(Z)V

    .line 13
    iput-object p0, p1, Landroid/support/v7/preference/Preference;->A:Llc;

    const-string p1, "accessibility_tab_switcher"

    .line 14
    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    check-cast p2, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    .line 15
    invoke-static {}, LuO0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    sget-object v0, Lay0;->a:Lcy0;

    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, p1, v1}, Lcy0;->a(Ljava/lang/String;Z)Z

    move-result p1

    .line 18
    invoke-virtual {p2, p1}, LKc;->f(Z)V

    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lrc;->u0:LDc;

    .line 20
    iget-object p1, p1, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 21
    invoke-virtual {p1, p2}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    :goto_0
    const-string p1, "captions"

    .line 22
    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    const-string p2, "CaptionSettings"

    .line 23
    invoke-static {p2}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 24
    new-instance p2, LUx0;

    invoke-direct {p2, p0}, LUx0;-><init>(Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;)V

    .line 25
    iput-object p2, p1, Landroid/support/v7/preference/Preference;->B:Lmc;

    goto :goto_1

    .line 26
    :cond_1
    iget-object p2, p0, Lrc;->u0:LDc;

    .line 27
    iget-object p2, p2, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 28
    invoke-virtual {p2, p1}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    :goto_1
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 29
    throw p1
.end method

.method public a(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 30
    iget-object v0, p1, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    const-string v1, "text_scale"

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 32
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->F0:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    if-eqz p1, :cond_0

    .line 33
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    .line 34
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "user_font_scale_factor"

    .line 35
    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 36
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 37
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->b()F

    move-result v0

    mul-float v0, v0, p2

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->a(F)V

    goto :goto_0

    .line 38
    :cond_0
    throw v2

    .line 39
    :cond_1
    iget-object v0, p1, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    const-string v3, "force_enable_zoom"

    .line 40
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->F0:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 42
    invoke-virtual {p1, p2, v1}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->a(ZZ)V

    goto :goto_0

    .line 43
    :cond_2
    iget-object p1, p1, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    const-string v0, "reader_for_accessibility"

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 45
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object p1

    const/4 v0, 0x4

    check-cast p2, Ljava/lang/Boolean;

    .line 46
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p1, :cond_3

    .line 47
    invoke-static {p1, v0, p2}, LJ/N;->MtxNNFos(Ljava/lang/Object;IZ)V

    goto :goto_0

    :cond_3
    throw v2

    :cond_4
    :goto_0
    return v1
.end method
