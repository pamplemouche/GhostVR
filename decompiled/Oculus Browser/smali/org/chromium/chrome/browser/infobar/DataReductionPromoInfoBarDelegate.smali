.class public Lorg/chromium/chrome/browser/infobar/DataReductionPromoInfoBarDelegate;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static accept()V
    .locals 3

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    const/16 v1, 0xb

    .line 2
    invoke-static {v1}, LO60;->a(I)V

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->e()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->a(Z)V

    const v1, 0x7f13027e

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lmf1;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Lmf1;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static onNativeDestroyed()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->e()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xc

    .line 2
    invoke-static {v0}, LO60;->a(I)V

    return-void
.end method

.method public static showPromoInfoBar()Lorg/chromium/chrome/browser/infobar/InfoBar;
    .locals 1

    .line 1
    new-instance v0, LZe0;

    invoke-direct {v0}, LZe0;-><init>()V

    return-object v0
.end method
