.class public abstract LPE0;
.super LOY;
.source "PG"


# direct methods
.method public static a(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 0

    .line 3
    invoke-static {p1}, Lorg/chromium/chrome/browser/signin/SigninFragment;->h(I)Landroid/os/Bundle;

    move-result-object p1

    .line 4
    invoke-static {p0, p1}, LPE0;->a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lorg/chromium/chrome/browser/signin/SigninFragment;->a(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, LPE0;->a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2

    .line 5
    new-instance v0, Landroid/content/Intent;

    const-class v1, LPE0;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "SigninActivity.FragmentArgs"

    .line 6
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method public static b(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lorg/chromium/chrome/browser/signin/SigninFragment;->b(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, LPE0;->a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;I)Z
    .locals 3

    .line 3
    invoke-static {}, LHE0;->b()Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->f()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 5
    iget-boolean p1, v0, Lorg/chromium/chrome/browser/signin/SigninManager;->i:Z

    xor-int/2addr p1, v2

    if-eqz p1, :cond_0

    .line 6
    invoke-static {p0}, Lsy0;->a(Landroid/content/Context;)V

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 7
    :cond_1
    invoke-static {p1}, Lorg/chromium/chrome/browser/signin/SigninFragment;->g(I)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, LPE0;->a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2
.end method
