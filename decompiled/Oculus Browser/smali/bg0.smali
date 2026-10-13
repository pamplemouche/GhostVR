.class public Lbg0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/infobar/ReaderModeInfoBar;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/infobar/ReaderModeInfoBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbg0;->w:Lorg/chromium/chrome/browser/infobar/ReaderModeInfoBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lbg0;->w:Lorg/chromium/chrome/browser/infobar/ReaderModeInfoBar;

    .line 2
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/infobar/ReaderModeInfoBar;->l()LG70;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 3
    iget-object p1, p0, Lbg0;->w:Lorg/chromium/chrome/browser/infobar/ReaderModeInfoBar;

    .line 4
    iget-boolean v0, p1, Lorg/chromium/chrome/browser/infobar/ReaderModeInfoBar;->G:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 5
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/infobar/ReaderModeInfoBar;->l()LG70;

    move-result-object p1

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    const-string v1, "DomDistiller.InfoBarUsage"

    .line 6
    invoke-static {v1, v0}, LfV;->a(Ljava/lang/String;Z)V

    .line 7
    invoke-static {}, LPY;->a()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "ReaderModeInCCT"

    .line 8
    invoke-static {v1}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_7

    .line 9
    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v1

    if-nez v1, :cond_7

    .line 10
    invoke-virtual {p1}, LG70;->b()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 11
    iget-object v2, p1, LG70;->z:Lorg/chromium/chrome/browser/ChromeActivity;

    if-eqz v2, :cond_c

    iget-object v2, p1, LG70;->A:LpI0;

    if-nez v2, :cond_2

    goto/16 :goto_3

    .line 12
    :cond_2
    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->f()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    goto/16 :goto_3

    .line 13
    :cond_3
    iget-object v3, p1, LG70;->y:Ljava/util/Map;

    iget-object v4, p1, LG70;->A:LpI0;

    check-cast v4, LrI0;

    invoke-virtual {v4}, LrI0;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LH70;

    if-eqz v3, :cond_4

    .line 14
    invoke-virtual {v3}, LH70;->b()V

    .line 15
    :cond_4
    invoke-static {v1}, LJ/N;->M2whIOZH(Ljava/lang/Object;)V

    .line 16
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    const-string v1, "chrome-distiller"

    .line 17
    invoke-static {v1, v2}, LJ/N;->MhGk9eKu(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 18
    :goto_1
    new-instance v1, LCi;

    invoke-direct {v1}, LCi;-><init>()V

    .line 19
    invoke-virtual {v1, v0}, LCi;->a(Z)LCi;

    .line 20
    iget-object v3, p1, LG70;->z:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v3}, LOY;->H()LIl0;

    move-result-object v3

    invoke-interface {v3}, LIl0;->b()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v0, 0x2

    :cond_6
    invoke-virtual {v1, v0}, LCi;->a(I)LCi;

    .line 21
    invoke-virtual {v1}, LCi;->a()LDi;

    move-result-object v0

    .line 22
    iget-object v1, v0, LDi;->a:Landroid/content/Intent;

    iget-object v3, p1, LG70;->z:Lorg/chromium/chrome/browser/ChromeActivity;

    const-class v4, Lp60;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    iget-object v1, v0, LDi;->a:Landroid/content/Intent;

    invoke-static {v1}, Lu60;->b(Landroid/content/Intent;)V

    .line 24
    iget-object v1, v0, LDi;->a:Landroid/content/Intent;

    iget-object v3, p1, LG70;->A:LpI0;

    .line 25
    check-cast v3, LrI0;

    invoke-virtual {v3}, LrI0;->c()I

    move-result v3

    const-string v4, "org.chromium.chrome.browser.dom_distiller.EXTRA_READER_MODE_PARENT"

    .line 26
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 27
    iget-object p1, p1, LG70;->z:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 28
    iget-object v2, v0, LDi;->a:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 29
    iget-object v1, v0, LDi;->a:Landroid/content/Intent;

    iget-object v0, v0, LDi;->b:Landroid/os/Bundle;

    invoke-static {p1, v1, v0}, LR3;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_3

    .line 30
    :cond_7
    invoke-virtual {p1}, LG70;->b()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 31
    iget-object v1, p1, LG70;->z:Lorg/chromium/chrome/browser/ChromeActivity;

    if-eqz v1, :cond_c

    iget-object v1, p1, LG70;->A:LpI0;

    if-nez v1, :cond_8

    goto :goto_3

    .line 32
    :cond_8
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_3

    .line 33
    :cond_9
    iget-object v0, p1, LG70;->y:Ljava/util/Map;

    iget-object v1, p1, LG70;->A:LpI0;

    check-cast v1, LrI0;

    invoke-virtual {v1}, LrI0;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LH70;

    if-eqz v0, :cond_a

    .line 34
    invoke-virtual {v0}, LH70;->b()V

    .line 35
    :cond_a
    iget-object v0, p1, LG70;->A:LpI0;

    check-cast v0, LrI0;

    invoke-virtual {v0}, LrI0;->b()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->d()V

    .line 37
    iget-object v0, p1, LG70;->z:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->A0()Lbd0;

    move-result-object v0

    .line 38
    instance-of v1, v0, Lbd0;

    if-nez v1, :cond_b

    goto :goto_2

    .line 39
    :cond_b
    iget-object v0, v0, Lbd0;->x:LOc0;

    .line 40
    invoke-virtual {v0}, LOc0;->e()V

    .line 41
    :goto_2
    invoke-virtual {p1}, LG70;->b()Lorg/chromium/content_public/browser/WebContents;

    move-result-object p1

    .line 42
    invoke-static {p1}, LJ/N;->MAJeztUL(Ljava/lang/Object;)V

    :cond_c
    :goto_3
    return-void

    :cond_d
    const/4 p1, 0x0

    .line 43
    throw p1

    :cond_e
    :goto_4
    return-void
.end method
