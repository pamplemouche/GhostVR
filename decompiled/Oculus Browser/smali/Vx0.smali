.class public LVx0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ll00;


# instance fields
.field public final synthetic a:Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;)V
    .locals 0

    .line 1
    iput-object p1, p0, LVx0;->a:Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 3

    .line 1
    iget-object p1, p0, LVx0;->a:Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;

    .line 2
    iget-object v0, p1, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->G0:Lorg/chromium/chrome/browser/preferences/TextScalePreference;

    iget-object p1, p1, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->E0:Ljava/text/NumberFormat;

    float-to-double v1, p2

    invoke-virtual {p1, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, LJy0;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 3
    iget-object v0, p0, LVx0;->a:Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;

    .line 4
    iget-object v0, v0, Lorg/chromium/chrome/browser/preferences/AccessibilityPreferences;->H0:Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    .line 5
    invoke-virtual {v0, p1}, LKc;->f(Z)V

    return-void
.end method
