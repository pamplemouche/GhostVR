.class public Lorg/chromium/chrome/browser/preferences/privacy/UsageAndCrashReportsPreferenceFragment;
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
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, LJ/N;->M3rwZFxd(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public static final synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 11
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->a(Z)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f17001d

    .line 1
    invoke-static {p0, p1}, Lxy0;->a(Lrc;I)V

    .line 2
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    const p2, 0x7f13063d

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    const-string p1, "usage_and_crash_reports_switch"

    .line 3
    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 4
    invoke-static {}, LeB0;->d()LeB0;

    move-result-object p2

    invoke-virtual {p2}, LeB0;->a()Z

    move-result p2

    .line 5
    invoke-virtual {p1, p2}, LKc;->f(Z)V

    .line 6
    sget-object p2, LfB0;->w:Llc;

    .line 7
    iput-object p2, p1, Landroid/support/v7/preference/Preference;->A:Llc;

    .line 8
    sget-object p2, LgB0;->a:Lqy0;

    .line 9
    iput-object p2, p1, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->q0:Lqy0;

    .line 10
    invoke-static {p2, p1}, Lsy0;->b(Lqy0;Landroid/support/v7/preference/Preference;)V

    return-void
.end method
