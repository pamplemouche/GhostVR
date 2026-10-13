.class public Lorg/chromium/chrome/browser/preferences/password/PasswordReauthenticationFragment;
.super Lz2;
.source "PG"


# instance fields
.field public u0:LH2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/preferences/password/PasswordReauthenticationFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lz2;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 4

    const/4 p3, 0x2

    if-ne p1, p3, :cond_2

    .line 1
    invoke-virtual {p0}, Lz2;->l()LD2;

    const/4 p1, 0x0

    const/4 p3, -0x1

    const/4 v0, 0x0

    if-ne p2, p3, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3
    iget-object p2, p0, Lz2;->C:Landroid/os/Bundle;

    const-string v3, "scope"

    .line 4
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, LxA0;->a:Ljava/lang/Long;

    .line 6
    sput p2, LxA0;->b:I

    goto :goto_0

    .line 7
    :cond_0
    sput-object v0, LxA0;->a:Ljava/lang/Long;

    .line 8
    sput p1, LxA0;->b:I

    .line 9
    :goto_0
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordReauthenticationFragment;->u0:LH2;

    check-cast p2, LY2;

    if-eqz p2, :cond_1

    .line 10
    new-instance v1, LW2;

    invoke-direct {v1, p2, v0, p3, p1}, LW2;-><init>(LY2;Ljava/lang/String;II)V

    invoke-virtual {p2, v1, p1}, LY2;->a(LV2;Z)V

    goto :goto_1

    :cond_1
    throw v0

    :cond_2
    :goto_1
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lz2;->b(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lz2;->N:LY2;

    .line 3
    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordReauthenticationFragment;->u0:LH2;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    const-string v1, "keyguard"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    .line 5
    iget-object v1, p0, Lz2;->C:Landroid/os/Bundle;

    const-string v2, "description"

    .line 6
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lz2;->e(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    .line 8
    invoke-virtual {p0, p1, v0}, Lz2;->a(Landroid/content/Intent;I)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordReauthenticationFragment;->u0:LH2;

    invoke-virtual {p1}, LH2;->c()Z

    :cond_2
    :goto_1
    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "has_been_suspended"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
