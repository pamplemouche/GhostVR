.class public Lorg/chromium/chrome/browser/preferences/autofill_assistant/AutofillAssistantPreferences;
.super Lrc;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrc;-><init>()V

    return-void
.end method

.method public static final synthetic a(Ljava/lang/Object;)Z
    .locals 2

    .line 21
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    .line 22
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    check-cast p0, Ljava/lang/Boolean;

    .line 23
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string v1, "autofill_assistant_switch"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 24
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    const p2, 0x7f1304f7

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    .line 2
    iget-object p1, p0, Lrc;->u0:LDc;

    .line 3
    iget-object p2, p1, LDc;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {p1, p2}, LDc;->a(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lrc;->b(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 6
    new-instance p1, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 7
    iget-object p2, p0, Lrc;->u0:LDc;

    .line 8
    iget-object p2, p2, LDc;->a:Landroid/content/Context;

    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p2, v0}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "autofill_assistant_switch"

    .line 10
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->d(Ljava/lang/String;)V

    const v0, 0x7f1304f6

    .line 11
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->d(I)V

    const v0, 0x7f130600

    .line 12
    invoke-virtual {p1, v0}, LKc;->f(I)V

    const v0, 0x7f1305ff

    .line 13
    invoke-virtual {p1, v0}, LKc;->e(I)V

    .line 14
    sget-object v0, Lhz0;->w:Llc;

    .line 15
    iput-object v0, p1, Landroid/support/v7/preference/Preference;->A:Llc;

    .line 16
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 17
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 18
    invoke-virtual {v0, p1}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    .line 19
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    .line 20
    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p1, p2}, LKc;->f(Z)V

    return-void
.end method
