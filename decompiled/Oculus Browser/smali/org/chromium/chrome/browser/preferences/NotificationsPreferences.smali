.class public Lorg/chromium/chrome/browser/preferences/NotificationsPreferences;
.super Lrc;
.source "PG"


# instance fields
.field public E0:Landroid/support/v7/preference/Preference;

.field public F0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/preferences/NotificationsPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrc;-><init>()V

    return-void
.end method

.method public static final synthetic a(Ljava/lang/Object;)Z
    .locals 2

    .line 10
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 11
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const-string v1, "prefetch_notification_enabled"

    .line 12
    invoke-static {v0, v1, p0}, LZi;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public L()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lz2;->c0:Z

    .line 2
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/NotificationsPreferences;->F0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    if-eqz v1, :cond_2

    .line 3
    invoke-static {}, LDn0;->a()Z

    move-result v1

    .line 4
    sget-object v2, LyT;->a:Landroid/content/SharedPreferences;

    const-string v3, "prefetch_notification_enabled"

    .line 5
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 6
    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/NotificationsPreferences;->F0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3, v0}, LKc;->f(Z)V

    .line 7
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/NotificationsPreferences;->F0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->c(Z)V

    .line 8
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/NotificationsPreferences;->F0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    if-eqz v1, :cond_1

    const v1, 0x7f13042f

    goto :goto_1

    :cond_1
    const v1, 0x7f130430

    :goto_1
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->c(I)V

    .line 9
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/NotificationsPreferences;->E0:Landroid/support/v7/preference/Preference;

    .line 10
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->a(I)Z

    move-result v1

    .line 11
    invoke-static {v2, v1}, LYB0;->a(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->c(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    const p1, 0x7f170014

    .line 1
    invoke-static {p0, p1}, Lxy0;->a(Lrc;I)V

    .line 2
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    const p2, 0x7f1304f9

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    const-string p1, "content_suggestions"

    .line 3
    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/NotificationsPreferences;->F0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 4
    sget-object p2, Lty0;->w:Llc;

    .line 5
    iput-object p2, p1, Landroid/support/v7/preference/Preference;->A:Llc;

    const-string p1, "from_websites"

    .line 6
    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/NotificationsPreferences;->E0:Landroid/support/v7/preference/Preference;

    .line 7
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->h()Landroid/os/Bundle;

    move-result-object p1

    const/16 p2, 0xa

    .line 8
    invoke-static {p2}, LuC0;->e(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "category"

    .line 9
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
