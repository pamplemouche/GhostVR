.class public Lorg/chromium/chrome/browser/preferences/HomepagePreferences;
.super Lrc;
.source "PG"


# instance fields
.field public E0:Lpt0;

.field public F0:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrc;-><init>()V

    return-void
.end method


# virtual methods
.method public L()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lz2;->c0:Z

    .line 2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/HomepagePreferences;->O()V

    return-void
.end method

.method public final O()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/HomepagePreferences;->F0:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/HomepagePreferences;->E0:Lpt0;

    invoke-virtual {v1}, Lpt0;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {}, Lpt0;->d()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/HomepagePreferences;->E0:Lpt0;

    .line 4
    iget-object v1, v1, Lpt0;->a:Landroid/content/SharedPreferences;

    const-string v2, "homepage_custom_uri"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lpt0;->f()Lpt0;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/HomepagePreferences;->E0:Lpt0;

    .line 2
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    const p2, 0x7f13045c

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    const p1, 0x7f17000e

    .line 3
    invoke-static {p0, p1}, Lxy0;->a(Lrc;I)V

    const-string p1, "homepage_switch"

    .line 4
    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 5
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/HomepagePreferences;->E0:Lpt0;

    invoke-virtual {p2}, Lpt0;->a()Z

    move-result p2

    .line 6
    invoke-virtual {p1, p2}, LKc;->f(Z)V

    .line 7
    new-instance p2, Liy0;

    invoke-direct {p2, p0}, Liy0;-><init>(Lorg/chromium/chrome/browser/preferences/HomepagePreferences;)V

    .line 8
    iput-object p2, p1, Landroid/support/v7/preference/Preference;->A:Llc;

    const-string p1, "homepage_edit"

    .line 9
    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/HomepagePreferences;->F0:Landroid/support/v7/preference/Preference;

    .line 10
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/HomepagePreferences;->O()V

    return-void
.end method
