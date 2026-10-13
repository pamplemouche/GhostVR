.class public Lorg/chromium/chrome/browser/infobar/SearchGeolocationDisclosureInfoBar;
.super Lorg/chromium/chrome/browser/infobar/InfoBar;
.source "PG"


# instance fields
.field public final G:I

.field public final H:I


# direct methods
.method public constructor <init>(ILjava/lang/String;II)V
    .locals 2

    const v0, 0x7f0600e9

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2, v1}, Lorg/chromium/chrome/browser/infobar/InfoBar;-><init>(IILjava/lang/CharSequence;Landroid/graphics/Bitmap;)V

    .line 2
    iput p3, p0, Lorg/chromium/chrome/browser/infobar/SearchGeolocationDisclosureInfoBar;->G:I

    .line 3
    iput p4, p0, Lorg/chromium/chrome/browser/infobar/SearchGeolocationDisclosureInfoBar;->H:I

    return-void
.end method

.method public static show(ILjava/lang/String;II)Lorg/chromium/chrome/browser/infobar/InfoBar;
    .locals 1

    .line 1
    invoke-static {p0}, LGZ;->a(I)I

    move-result p0

    .line 2
    new-instance v0, Lorg/chromium/chrome/browser/infobar/SearchGeolocationDisclosureInfoBar;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/chrome/browser/infobar/SearchGeolocationDisclosureInfoBar;-><init>(ILjava/lang/String;II)V

    return-object v0
.end method

.method public static showSettingsPage(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    const-class v1, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    .line 3
    invoke-static {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->e(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    .line 4
    invoke-static {v0, v1, p0}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public a(LUf0;)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/chromium/chrome/browser/infobar/SearchGeolocationDisclosureInfoBar;->G:I

    iget v1, p0, Lorg/chromium/chrome/browser/infobar/SearchGeolocationDisclosureInfoBar;->H:I

    .line 2
    iput v0, p1, LUf0;->N:I

    .line 3
    iput v1, p1, LUf0;->O:I

    .line 4
    iget-object v0, p1, LUf0;->I:Landroid/widget/TextView;

    invoke-virtual {p1}, LUf0;->b()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
