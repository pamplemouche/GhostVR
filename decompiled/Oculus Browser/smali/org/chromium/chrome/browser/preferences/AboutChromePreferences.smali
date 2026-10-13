.class public Lorg/chromium/chrome/browser/preferences/AboutChromePreferences;
.super Lrc;
.source "PG"

# interfaces
.implements Lmc;


# instance fields
.field public E0:I

.field public F0:Lmf1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lrc;-><init>()V

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/developer/DeveloperPreferences;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    .line 3
    :goto_0
    iput v0, p0, Lorg/chromium/chrome/browser/preferences/AboutChromePreferences;->E0:I

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    const p2, 0x7f1304f3

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    const/high16 p1, 0x7f170000

    .line 2
    invoke-static {p0, p1}, Lxy0;->a(Lrc;I)V

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p1}, LJ/N;->M6rRCW6f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge$AboutVersionStrings;

    const-string p2, "application_version"

    .line 5
    invoke-virtual {p0, p2}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    .line 6
    invoke-virtual {p0}, Lz2;->l()LD2;

    .line 7
    iget-object v0, p1, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge$AboutVersionStrings;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {p2, v0}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/CharSequence;)V

    .line 9
    iput-object p0, p2, Landroid/support/v7/preference/Preference;->B:Lmc;

    const-string p2, "os_version"

    .line 10
    invoke-virtual {p0, p2}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    .line 11
    iget-object p1, p1, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge$AboutVersionStrings;->b:Ljava/lang/String;

    .line 12
    invoke-virtual {p2, p1}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/CharSequence;)V

    const-string p1, "legal_information"

    .line 13
    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    .line 14
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const v1, 0x7f130398

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v2

    invoke-virtual {p0, v1, v0}, Lz2;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 16
    throw p1
.end method

.method public c(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    .line 1
    iget p1, p0, Lorg/chromium/chrome/browser/preferences/AboutChromePreferences;->E0:I

    const/4 v0, 0x1

    if-lez p1, :cond_4

    sub-int/2addr p1, v0

    .line 2
    iput p1, p0, Lorg/chromium/chrome/browser/preferences/AboutChromePreferences;->E0:I

    if-nez p1, :cond_1

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/developer/DeveloperPreferences;->O()V

    .line 4
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/AboutChromePreferences;->F0:Lmf1;

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p1, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    const-string v1, "Developer options are now enabled."

    invoke-static {p1, v1, v0}, Lmf1;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Lmf1;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/AboutChromePreferences;->F0:Lmf1;

    .line 7
    iget-object p1, p1, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_1
    if-lez p1, :cond_6

    const/4 v1, 0x5

    if-ge p1, v1, :cond_6

    .line 8
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/AboutChromePreferences;->F0:Lmf1;

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p1, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 10
    :cond_2
    iget p1, p0, Lorg/chromium/chrome/browser/preferences/AboutChromePreferences;->E0:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    const-string p1, "1 more tap to enable Developer options."

    goto :goto_0

    :cond_3
    new-array v2, v0, [Ljava/lang/Object;

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "%s more taps to enable Developer options."

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 12
    :goto_0
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v2

    invoke-static {v2, p1, v1}, Lmf1;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Lmf1;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/AboutChromePreferences;->F0:Lmf1;

    .line 13
    iget-object p1, p1, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_4
    if-gez p1, :cond_6

    .line 14
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/AboutChromePreferences;->F0:Lmf1;

    if-eqz p1, :cond_5

    .line 15
    iget-object p1, p1, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 16
    :cond_5
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    const-string v1, "Developer options are already enabled."

    invoke-static {p1, v1, v0}, Lmf1;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Lmf1;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/AboutChromePreferences;->F0:Lmf1;

    .line 17
    iget-object p1, p1, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_6
    :goto_1
    return v0
.end method
