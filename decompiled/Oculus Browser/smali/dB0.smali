.class public final synthetic LdB0;
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

    iput-object p1, p0, LdB0;->a:Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LdB0;->a:Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;

    check-cast p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->O()V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 3
    throw p1
.end method
