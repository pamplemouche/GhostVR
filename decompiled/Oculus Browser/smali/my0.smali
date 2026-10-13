.class public final synthetic Lmy0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmc;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/preferences/MainPreferences;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/MainPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmy0;->w:Lorg/chromium/chrome/browser/preferences/MainPreferences;

    return-void
.end method


# virtual methods
.method public c(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    iget-object p1, p0, Lmy0;->w:Lorg/chromium/chrome/browser/preferences/MainPreferences;

    .line 1
    invoke-virtual {p1}, Lz2;->l()LD2;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->a(Landroid/app/Activity;I)V

    const/4 p1, 0x1

    return p1
.end method
