.class public Lorg/chromium/chrome/browser/preferences/privacy/ContextualSearchPreferenceFragment;
.super Lrc;
.source "PG"


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
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0}, LJ/N;->MeAKy4Wp(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 4
    throw v0
.end method

.method public static final synthetic a(Ljava/lang/Object;)Z
    .locals 2

    .line 12
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    const-string v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    .line 13
    :goto_0
    invoke-static {v0, v1}, LJ/N;->MFO4aSnF(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lz50;->b(Z)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    .line 15
    throw p0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    const p1, 0x7f170007

    .line 1
    invoke-static {p0, p1}, Lxy0;->a(Lrc;I)V

    .line 2
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    const p2, 0x7f13025f

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lz2;->c(Z)V

    const-string p2, "contextual_search_switch"

    .line 4
    invoke-virtual {p0, p2}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    check-cast p2, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 5
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->a()Z

    move-result v0

    xor-int/2addr p1, v0

    .line 6
    invoke-virtual {p2, p1}, LKc;->f(Z)V

    .line 7
    sget-object p1, LVA0;->w:Llc;

    .line 8
    iput-object p1, p2, Landroid/support/v7/preference/Preference;->A:Llc;

    .line 9
    sget-object p1, LWA0;->a:Lqy0;

    .line 10
    iput-object p1, p2, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->q0:Lqy0;

    .line 11
    invoke-static {p1, p2}, Lsy0;->b(Lqy0;Landroid/support/v7/preference/Preference;)V

    return-void
.end method
