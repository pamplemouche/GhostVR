.class public Lorg/chromium/chrome/browser/preferences/password/PasswordEditingBridge;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object p1, LlA0;->a:LlA0;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public static create(J)Lorg/chromium/chrome/browser/preferences/password/PasswordEditingBridge;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/preferences/password/PasswordEditingBridge;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/preferences/password/PasswordEditingBridge;-><init>(J)V

    return-object v0
.end method

.method private showEditingUI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "credentialUrl"

    .line 2
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "credentialName"

    .line 3
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "credentialPassword"

    .line 4
    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    const-class p2, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;

    invoke-static {p1, p2, v0}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method
