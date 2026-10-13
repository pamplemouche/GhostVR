.class public Lcom/facebook/catalyst/modules/fbauth/FBLoginAuthHelper;
.super Ljava/lang/Object;
.source "FBLoginAuthHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAuthInfo(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 53
    const-string v0, "LoginPreferences"

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 55
    const-string v1, "UserId"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 56
    const-string v1, "AccessToken"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 57
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 58
    invoke-static {p0}, Lcom/facebook/catalyst/modules/fbauth/FBLoginAuthHelper;->clearCookies(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method private static clearCookies(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 102
    invoke-static {p0}, Lcom/facebook/catalyst/modules/fbauth/FBLoginAuthHelper;->initializeCookies(Landroid/content/Context;)V

    .line 103
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 104
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 105
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 106
    invoke-static {p0}, Lcom/facebook/catalyst/modules/fbauth/FBLoginAuthHelper;->syncCookies(Landroid/content/Context;)V

    .line 107
    return-void
.end method

.method public static getAccessToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 30
    const-string v0, "LoginPreferences"

    const/4 v1, 0x0

    .line 31
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "AccessToken"

    const/4 v2, 0x0

    .line 32
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 37
    const-string v0, "LoginPreferences"

    const/4 v1, 0x0

    .line 38
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "UserId"

    const/4 v2, 0x0

    .line 39
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static initializeCookies(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 64
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    .line 65
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 68
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 70
    :cond_0
    return-void
.end method

.method public static setAuthInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 2
    .param p3    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 44
    const-string v0, "LoginPreferences"

    const/4 v1, 0x0

    .line 45
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 46
    const-string v1, "UserId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    const-string v1, "AccessToken"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 49
    invoke-static {p0, p3}, Lcom/facebook/catalyst/modules/fbauth/FBLoginAuthHelper;->updateCookies(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 50
    return-void
.end method

.method private static syncCookies(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 73
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 75
    return-void
.end method

.method private static updateCookies(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 5
    .param p1    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 78
    invoke-static {p0}, Lcom/facebook/catalyst/modules/fbauth/FBLoginAuthHelper;->initializeCookies(Landroid/content/Context;)V

    .line 80
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    .line 81
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 82
    if-eqz p1, :cond_2

    .line 83
    invoke-virtual {v2}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 84
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    .line 85
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    .line 87
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getType(I)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    sget-object v4, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    if-ne v0, v4, :cond_0

    .line 88
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    :goto_1
    if-nez v0, :cond_1

    .line 85
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 89
    :cond_0
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/catalyst/modules/fbauth/SessionCookieParser;->parseCookie(Lcom/facebook/react/bridge/ReadableMap;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 93
    :cond_1
    const-string v4, "https://m.facebook.com"

    invoke-virtual {v2, v4, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 98
    :cond_2
    invoke-static {p0}, Lcom/facebook/catalyst/modules/fbauth/FBLoginAuthHelper;->syncCookies(Landroid/content/Context;)V

    .line 99
    return-void
.end method
