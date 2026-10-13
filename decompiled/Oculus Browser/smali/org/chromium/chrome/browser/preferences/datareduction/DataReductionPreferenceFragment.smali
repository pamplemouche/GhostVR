.class public Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferenceFragment;
.super Lrc;
.source "PG"


# instance fields
.field public E0:Z

.field public F0:Z

.field public G0:Z

.field public H0:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrc;-><init>()V

    return-void
.end method

.method public static final synthetic O()Z
    .locals 2

    .line 1
    invoke-static {}, LwT;->c()LwT;

    move-result-object v0

    const-string v1, "enable-spdy-proxy-auth"

    invoke-virtual {v0, v1}, LwT;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->e()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static a(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 8

    .line 20
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->e()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->e()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v0

    .line 22
    iget-wide v1, v0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->b:J

    .line 23
    invoke-static {v1, v2, v0}, LJ/N;->MG86mkwd(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings$ContentLengths;

    .line 24
    iget-wide v1, v0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings$ContentLengths;->b:J

    const-wide/16 v3, 0x400

    .line 25
    div-long v3, v1, v3

    const-wide/16 v5, 0x64

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    const-string p0, ""

    return-object p0

    .line 26
    :cond_0
    iget-wide v3, v0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings$ContentLengths;->a:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    sub-long v0, v3, v1

    long-to-double v0, v0

    long-to-double v2, v3

    div-double/2addr v0, v2

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    .line 27
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v2

    .line 28
    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f130281

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 29
    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const v0, 0x7f1305ff

    .line 30
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public H()V
    .locals 4

    .line 1
    invoke-super {p0}, Lz2;->H()V

    .line 2
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferenceFragment;->F0:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferenceFragment;->E0:Z

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, LJ/N;->M6rRCW6f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge$AboutVersionStrings;

    .line 5
    sget-object v1, LyT;->a:Landroid/content/SharedPreferences;

    .line 6
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "displayed_data_reduction_infobar_promo"

    const/4 v3, 0x1

    .line 7
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 8
    iget-object v0, v0, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge$AboutVersionStrings;->a:Ljava/lang/String;

    const-string v2, "displayed_data_reduction_infobar_promo_version"

    .line 9
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 11
    throw v0

    .line 12
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferenceFragment;->G0:Z

    if-eqz v0, :cond_5

    .line 13
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferenceFragment;->F0:Z

    if-eqz v0, :cond_3

    .line 14
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferenceFragment;->E0:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x13

    goto :goto_1

    :cond_2
    const/16 v0, 0x12

    goto :goto_1

    .line 15
    :cond_3
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferenceFragment;->E0:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x11

    goto :goto_1

    :cond_4
    const/16 v0, 0x10

    goto :goto_1

    .line 16
    :cond_5
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferenceFragment;->H0:Z

    if-eqz v0, :cond_9

    .line 17
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferenceFragment;->F0:Z

    if-eqz v0, :cond_7

    .line 18
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferenceFragment;->E0:Z

    if-eqz v0, :cond_6

    const/16 v0, 0x1f

    goto :goto_1

    :cond_6
    const/16 v0, 0x1e

    goto :goto_1

    .line 19
    :cond_7
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferenceFragment;->E0:Z

    if-eqz v0, :cond_8

    const/16 v0, 0x1d

    goto :goto_1

    :cond_8
    const/16 v0, 0x1c

    goto :goto_1

    .line 20
    :cond_9
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferenceFragment;->F0:Z

    if-eqz v0, :cond_b

    .line 21
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferenceFragment;->E0:Z

    if-eqz v0, :cond_a

    const/16 v0, 0x8

    goto :goto_1

    :cond_a
    const/4 v0, 0x7

    goto :goto_1

    .line 22
    :cond_b
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferenceFragment;->E0:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x6

    goto :goto_1

    :cond_c
    const/4 v0, 0x5

    .line 23
    :goto_1
    invoke-static {v0}, LO60;->a(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    const p1, 0x7f170008

    .line 1
    invoke-static {p0, p1}, Lxy0;->a(Lrc;I)V

    .line 2
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    const p2, 0x7f13028c

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->e()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->c()Z

    move-result p1

    xor-int/lit8 p2, p1, 0x1

    .line 4
    iput-boolean p2, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferenceFragment;->E0:Z

    .line 5
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferenceFragment;->F0:Z

    .line 6
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferenceFragment;->g(Z)V

    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Lz2;->c(Z)V

    .line 8
    iget-object p1, p0, Lz2;->C:Landroid/os/Bundle;

    const/4 p2, 0x0

    const-string v0, "FromMainMenu"

    .line 9
    invoke-static {p1, v0, p2}, LCO0;->a(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferenceFragment;->G0:Z

    .line 10
    iget-object p1, p0, Lz2;->C:Landroid/os/Bundle;

    const-string v0, "FromInfoBar"

    .line 11
    invoke-static {p1, v0, p2}, LCO0;->a(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferenceFragment;->H0:Z

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 12
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const p2, 0x7f1303bf

    const/4 v0, 0x0

    const v1, 0x7f0b026d

    .line 13
    invoke-interface {p1, v0, v1, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 14
    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    invoke-virtual {v0}, LP3;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f080160

    .line 15
    invoke-static {p2, v1, v0}, LY0;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)LY0;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 4

    .line 16
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0b026d

    if-ne p1, v0, :cond_0

    .line 17
    invoke-static {}, Lue0;->a()Lue0;

    move-result-object p1

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    const v1, 0x7f13032e

    .line 18
    invoke-virtual {p0, v1}, Lz2;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v2

    const/4 v3, 0x0

    .line 19
    invoke-virtual {p1, v0, v1, v2, v3}, Lue0;->a(Landroid/app/Activity;Ljava/lang/String;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public g(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferenceFragment;->E0:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 3
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 4
    invoke-virtual {v0}, Lvc;->y()V

    .line 5
    new-instance v0, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 6
    iget-object v1, p0, Lrc;->u0:LDc;

    .line 7
    iget-object v1, v1, LDc;->a:Landroid/content/Context;

    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v1, "data_reduction_switch"

    .line 9
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->d(Ljava/lang/String;)V

    const v1, 0x7f130600

    .line 10
    invoke-virtual {v0, v1}, LKc;->f(I)V

    const v1, 0x7f1305ff

    .line 11
    invoke-virtual {v0, v1}, LKc;->e(I)V

    .line 12
    new-instance v1, Ljz0;

    invoke-direct {v1, p0, v0}, Ljz0;-><init>(Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferenceFragment;Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;)V

    .line 13
    iput-object v1, v0, Landroid/support/v7/preference/Preference;->A:Llc;

    .line 14
    sget-object v1, Lkz0;->a:Lqy0;

    .line 15
    iput-object v1, v0, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->q0:Lqy0;

    .line 16
    invoke-static {v1, v0}, Lsy0;->b(Lqy0;Landroid/support/v7/preference/Preference;)V

    .line 17
    iget-object v1, p0, Lrc;->u0:LDc;

    .line 18
    iget-object v1, v1, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 19
    invoke-virtual {v1, v0}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    .line 20
    invoke-virtual {v0, p1}, LKc;->f(Z)V

    if-eqz p1, :cond_1

    const v0, 0x7f170008

    .line 21
    invoke-static {p0, v0}, Lxy0;->a(Lrc;I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f170009

    .line 22
    invoke-static {p0, v0}, Lxy0;->a(Lrc;I)V

    .line 23
    :goto_0
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferenceFragment;->E0:Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lrc;->v0:Landroid/support/v7/widget/RecyclerView;

    .line 2
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    .line 3
    iget-object p1, p1, LBg;->w:LCg;

    invoke-virtual {p1}, LCg;->b()V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lz2;->c0:Z

    return-void
.end method
