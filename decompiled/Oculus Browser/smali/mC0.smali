.class public final synthetic LmC0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmc;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

.field public final x:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;Landroid/support/v7/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LmC0;->w:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    iput-object p2, p0, LmC0;->x:Landroid/support/v7/preference/Preference;

    return-void
.end method


# virtual methods
.method public c(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    iget-object p1, p0, LmC0;->w:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    iget-object v0, p0, LmC0;->x:Landroid/support/v7/preference/Preference;

    if-eqz p1, :cond_0

    .line 1
    sget-object v1, Lzm0;->a:LAm0;

    .line 2
    iget-object v2, p1, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->F0:LyC0;

    .line 3
    iget-object v2, v2, LyC0;->w:LzC0;

    .line 4
    invoke-virtual {v2}, LzC0;->b()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v1, v2}, LAm0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v0, v0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    .line 7
    iget-object v2, p1, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->F0:LyC0;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, LyC0;->b(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p1, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->I0:Ljava/lang/Integer;

    .line 8
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.CHANNEL_NOTIFICATION_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.provider.extra.CHANNEL_ID"

    .line 9
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p1, v2, v0}, Lz2;->a(Landroid/content/Intent;I)V

    return v0

    :cond_0
    const/4 p1, 0x0

    .line 12
    throw p1
.end method
