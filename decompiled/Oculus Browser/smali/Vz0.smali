.class public LVz0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Llc;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/languages/LanguagesPreferences;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 3
    invoke-static {p2, p1}, LJ/N;->MciMjUqK(Ljava/lang/Object;Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 4
    :goto_0
    invoke-static {p1}, LTz0;->a(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 5
    throw p1
.end method
