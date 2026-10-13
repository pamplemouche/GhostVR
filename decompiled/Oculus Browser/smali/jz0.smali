.class public final synthetic Ljz0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Llc;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferenceFragment;

.field public final x:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferenceFragment;Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljz0;->w:Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferenceFragment;

    iput-object p2, p0, Ljz0;->x:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object p1, p0, Ljz0;->w:Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferenceFragment;

    iget-object v0, p0, Ljz0;->x:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->e()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v1

    .line 2
    iget-object v0, v0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    .line 3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 4
    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->a(Z)V

    .line 5
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferenceFragment;->g(Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 6
    throw p1
.end method
