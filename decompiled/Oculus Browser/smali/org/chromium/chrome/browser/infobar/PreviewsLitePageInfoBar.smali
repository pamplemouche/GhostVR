.class public Lorg/chromium/chrome/browser/infobar/PreviewsLitePageInfoBar;
.super Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;
.source "PG"


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v2, 0x7f0600e9

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 1
    invoke-direct/range {v0 .. v7}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;-><init>(IILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static show(ILjava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/infobar/InfoBar;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/infobar/PreviewsLitePageInfoBar;

    .line 2
    invoke-static {p0}, LGZ;->a(I)I

    move-result p0

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/infobar/PreviewsLitePageInfoBar;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public d()V
    .locals 3

    .line 1
    invoke-super {p0}, Lorg/chromium/chrome/browser/infobar/InfoBar;->d()V

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "FromInfoBar"

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->C:Landroid/content/Context;

    .line 5
    const-class v2, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferenceFragment;

    .line 6
    invoke-static {v1, v2, v0}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method
