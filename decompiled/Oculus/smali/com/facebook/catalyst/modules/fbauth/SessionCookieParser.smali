.class public Lcom/facebook/catalyst/modules/fbauth/SessionCookieParser;
.super Ljava/lang/Object;
.source "SessionCookieParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseCookie(Lcom/facebook/react/bridge/ReadableMap;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 35
    invoke-static {p0}, Lcom/facebook/catalyst/modules/fbauth/SessionCookieParser;->parseToSessionCookie(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/catalyst/modules/fbauth/SessionCookie;

    move-result-object v0

    .line 36
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/facebook/catalyst/modules/fbauth/HTTPCookieStringUtil;->getHTTPCookieString(Lcom/facebook/catalyst/modules/fbauth/SessionCookie;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static parseToSessionCookie(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/catalyst/modules/fbauth/SessionCookie;
    .locals 8
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 69
    const-string v0, "name"

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    const-string/jumbo v0, "value"

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 71
    const-string v0, "domain"

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 72
    const-string v0, "path"

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 73
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-nez v6, :cond_1

    .line 74
    :cond_0
    const-string v0, "ReactNative"

    const-string v1, "Ignoring FB session cookie missing required attributes"

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x0

    .line 88
    :goto_0
    return-object v0

    .line 78
    :cond_1
    const-string/jumbo v0, "secure"

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "secure"

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 79
    :goto_1
    const-string v7, "httponly"

    invoke-interface {p0, v7}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "httponly"

    invoke-interface {p0, v7}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 80
    :goto_2
    new-instance v2, Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;

    invoke-direct {v2}, Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;-><init>()V

    .line 81
    invoke-virtual {v2, v3}, Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;->setName(Ljava/lang/String;)Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;

    move-result-object v2

    .line 82
    invoke-virtual {v2, v4}, Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;->setValue(Ljava/lang/String;)Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;

    move-result-object v2

    .line 83
    invoke-virtual {v2, v5}, Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;->setDomain(Ljava/lang/String;)Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;

    move-result-object v2

    .line 84
    invoke-virtual {v2, v6}, Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;->setPath(Ljava/lang/String;)Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;

    move-result-object v2

    const-string v3, "expires"

    .line 85
    invoke-interface {p0, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;->setExpires(Ljava/lang/String;)Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;

    move-result-object v2

    .line 86
    invoke-virtual {v2, v0}, Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;->setSecure(Z)Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {v0, v1}, Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;->setHttpOnly(Z)Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;->build()Lcom/facebook/catalyst/modules/fbauth/SessionCookie;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 78
    goto :goto_1

    :cond_3
    move v1, v2

    .line 79
    goto :goto_2
.end method
