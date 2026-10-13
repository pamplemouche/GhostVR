.class public Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerProfilePreferences;
.super Lrc;
.source "PG"

# interfaces
.implements Lmc;


# instance fields
.field public E0:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerProfilePreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrc;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    const p1, 0x7f170004

    .line 1
    invoke-static {p0, p1}, Lxy0;->a(Lrc;I)V

    .line 2
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    const p2, 0x7f130174

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    .line 3
    iget-object p1, p0, Lz2;->C:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string p2, "guid"

    .line 4
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerProfilePreferences;->E0:Ljava/lang/String;

    .line 5
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object p1

    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerProfilePreferences;->E0:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a(Ljava/lang/String;)Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    move-result-object p1

    if-nez p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const-string p2, "server_profile_description"

    .line 7
    invoke-virtual {p0, p2}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    .line 8
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getStreetAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/CharSequence;)V

    const-string p1, "server_profile_edit_link"

    .line 10
    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    .line 11
    iput-object p0, p1, Landroid/support/v7/preference/Preference;->B:Lmc;

    return-void
.end method

.method public c(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    const-string v0, "https://payments.google.com/#paymentMethods"

    .line 2
    invoke-static {p1, v0}, Lp60;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
