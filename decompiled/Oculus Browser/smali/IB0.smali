.class public final synthetic LIB0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Llc;


# instance fields
.field public final w:Lcy0;

.field public final x:Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;


# direct methods
.method public constructor <init>(Lcy0;Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LIB0;->w:Lcy0;

    iput-object p2, p0, LIB0;->x:Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object p1, p0, LIB0;->w:Lcy0;

    iget-object v0, p0, LIB0;->x:Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;

    invoke-static {p1, v0, p2}, Lorg/chromium/chrome/browser/preferences/themes/ThemePreferences;->a(Lcy0;Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method
