.class public Lorg/chromium/chrome/browser/preferences/developer/DeveloperPreferences;
.super Lrc;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrc;-><init>()V

    return-void
.end method

.method public static O()V
    .locals 3

    .line 1
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const-string v1, "developer"

    const/4 v2, 0x1

    .line 2
    invoke-static {v0, v1, v2}, LZi;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static P()Z
    .locals 3

    .line 1
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const-string v1, "developer"

    const/4 v2, 0x0

    .line 2
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    const-string p2, "Developer options"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f17000a

    .line 2
    invoke-static {p0, p1}, Lxy0;->a(Lrc;I)V

    .line 3
    iget-object p1, p0, Lrc;->u0:LDc;

    .line 4
    iget-object p1, p1, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    const-string p2, "beta_stable_hint"

    .line 5
    invoke-virtual {p0, p2}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    invoke-virtual {p1, p2}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method
