.class public final synthetic LUx0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmc;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LUx0;->w:Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;

    return-void
.end method


# virtual methods
.method public c(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    iget-object p1, p0, LUx0;->w:Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.CAPTIONING_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p1, v0}, Lz2;->a(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method
