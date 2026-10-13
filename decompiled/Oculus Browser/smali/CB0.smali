.class public final synthetic LCB0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqy0;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LCB0;->a:Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, LCB0;->a:Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 1
    iget-object p1, p1, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    const-string v2, "navigation_error"

    .line 2
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    iget-object p1, v0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->F0:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p1}, LJ/N;->MFDUttHe(Ljava/lang/Object;)Z

    move-result p1

    goto/16 :goto_0

    :cond_0
    throw v1

    :cond_1
    const-string v2, "search_suggestions"

    .line 5
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6
    iget-object p1, v0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->F0:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    if-eqz p1, :cond_2

    .line 7
    invoke-static {p1}, LJ/N;->MkatYRWO(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_2
    throw v1

    :cond_3
    const-string v2, "safe_browsing_scout_reporting"

    .line 8
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 9
    iget-object p1, v0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->F0:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    if-eqz p1, :cond_4

    .line 10
    invoke-static {p1}, LJ/N;->MbQOF1Jc(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_4
    throw v1

    :cond_5
    const-string v2, "safe_browsing"

    .line 11
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 12
    iget-object p1, v0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->F0:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    if-eqz p1, :cond_6

    .line 13
    invoke-static {p1}, LJ/N;->M3eh8hCL(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_6
    throw v1

    :cond_7
    const-string v2, "password_leak_detection"

    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 15
    iget-object p1, v0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->F0:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    const/16 v0, 0x10

    if-eqz p1, :cond_8

    .line 16
    invoke-static {p1, v0}, LJ/N;->MfrE5AXj(Ljava/lang/Object;I)Z

    move-result p1

    goto :goto_0

    :cond_8
    throw v1

    :cond_9
    const-string v2, "usage_and_crash_reports"

    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 18
    iget-object p1, v0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->F0:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    if-eqz p1, :cond_a

    .line 19
    invoke-static {p1}, LJ/N;->M3rwZFxd(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_a
    throw v1

    :cond_b
    const-string v0, "url_keyed_anonymized_data"

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 21
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object p1

    .line 22
    invoke-static {p1}, LJ/N;->M$I9xO2H(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_c
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 23
    :cond_d
    throw v1
.end method

.method public b(Landroid/support/v7/preference/Preference;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/support/v7/preference/Preference;)Z
    .locals 0

    invoke-static {p0, p1}, Lpy0;->a(Lqy0;Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method
