.class public LBi0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LXF0;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/locale/LocaleManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget-object p1, LzT;->a:Landroid/content/Context;

    .line 2
    const-class v0, Lorg/chromium/chrome/browser/preferences/SearchEnginePreference;

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v0, v1}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method
