.class public Lorg/chromium/chrome/browser/preferences/privacy/DoNotTrackPreference;
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
    .locals 1

    .line 10
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz v0, :cond_0

    .line 11
    invoke-static {v0, p0}, LJ/N;->Mzw5fXtL(Ljava/lang/Object;Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f17000b

    .line 1
    invoke-static {p0, p1}, Lxy0;->a(Lrc;I)V

    .line 2
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    const p2, 0x7f1302a2

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    const-string p1, "do_not_track_switch"

    .line 3
    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 4
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 5
    invoke-static {p2}, LJ/N;->Mn1GPSh2(Ljava/lang/Object;)Z

    move-result p2

    .line 6
    invoke-virtual {p1, p2}, LKc;->f(Z)V

    .line 7
    sget-object p2, LXA0;->w:Llc;

    .line 8
    iput-object p2, p1, Landroid/support/v7/preference/Preference;->A:Llc;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 9
    throw p1
.end method
