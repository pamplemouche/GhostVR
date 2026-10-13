.class public final synthetic LaB0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaB0;->a:Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LaB0;->a:Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;

    check-cast p1, Landroid/view/View;

    .line 1
    invoke-virtual {v0}, Lz2;->l()LD2;

    move-result-object p1

    const-class v0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->g(Z)Landroid/os/Bundle;

    move-result-object v1

    .line 3
    invoke-static {p1, v0, v1}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method
