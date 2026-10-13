.class public Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity;
.super Landroid/app/Activity;
.source "AddPayPalMethodActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity$CustomWebClient;
    }
.end annotation


# static fields
.field public static final CANCEL_URL:Ljava/net/URL;

.field public static final RETURN_URL:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 31
    :try_start_0
    new-instance v2, Ljava/net/URL;

    const-string v0, "https://ghostvr.pamplemouche.com/www/paypal_accept"

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :try_start_1
    new-instance v0, Ljava/net/URL;

    const-string v3, "https://ghostvr.pamplemouche.com/www/paypal_cancel"

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 36
    :goto_0
    sput-object v1, Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity;->RETURN_URL:Ljava/net/URL;

    .line 37
    sput-object v0, Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity;->CANCEL_URL:Ljava/net/URL;

    .line 38
    return-void

    .line 33
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 97
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    .line 99
    invoke-virtual {v2, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 104
    :cond_0
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 105
    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    .line 106
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 107
    array-length v6, v5

    if-lez v6, :cond_1

    .line 108
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=;expires=Sat, 1 Jan 2000 00:00:01 UTC;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 109
    invoke-virtual {v2, p1, v5}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 112
    :cond_2
    invoke-virtual {v2}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    goto :goto_0
.end method

.method private static clearPayPalCookies(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 119
    const-string v0, "paypal.com"

    invoke-static {p0, v0}, Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity;->clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V

    .line 120
    const-string v0, ".paypal.com"

    invoke-static {p0, v0}, Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity;->clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V

    .line 121
    const-string v0, "https://paypal.com"

    invoke-static {p0, v0}, Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity;->clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    const-string v0, "https://.paypal.com"

    invoke-static {p0, v0}, Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity;->clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method private static getPayPalUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 77
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 80
    const-string v1, "https"

    .line 81
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "www.paypal.com"

    .line 82
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "cgi-bin"

    .line 83
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "webscr"

    .line 84
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "cmd"

    const-string v2, "_express-checkout"

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "token"

    .line 86
    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget v0, Lcom/oculus/horizon/R$layout;->add_paypal_method:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity;->setContentView(I)V

    .line 45
    invoke-static {p0}, Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity;->clearPayPalCookies(Landroid/content/Context;)V

    .line 47
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PAYPAL_TOKEN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    sget v0, Lcom/oculus/horizon/R$id;->commerce_paypal_webview:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/secure/webkit/WebView;

    .line 49
    invoke-virtual {v0}, Lcom/facebook/secure/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 50
    new-instance v2, Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity$CustomWebClient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity$CustomWebClient;-><init>(Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity;Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity$1;)V

    invoke-virtual {v0, v2}, Lcom/facebook/secure/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 51
    invoke-static {v1}, Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity;->getPayPalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/secure/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 52
    return-void
.end method
