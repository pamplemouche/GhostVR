.class public Loy0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqy0;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/MainPreferences;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    const-string v1, "data_reduction"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->e()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->d()Z

    move-result p1

    return p1

    .line 4
    :cond_0
    iget-object p1, p1, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    const-string v0, "search_engine"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-static {}, LcD0;->a()Lorg/chromium/components/search_engines/TemplateUrlService;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/components/search_engines/TemplateUrlService;->c()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/support/v7/preference/Preference;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    .line 1
    iget-object v0, p1, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    const-string v1, "data_reduction"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->e()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->c()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 6
    :cond_1
    iget-object v0, p1, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    const-string v3, "search_engine"

    .line 7
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-static {}, LcD0;->a()Lorg/chromium/components/search_engines/TemplateUrlService;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/components/search_engines/TemplateUrlService;->c()Z

    move-result p1

    return p1

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Loy0;->a(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 v1, 0x0

    :cond_3
    return v1
.end method
