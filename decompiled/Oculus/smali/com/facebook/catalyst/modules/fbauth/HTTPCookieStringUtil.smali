.class public Lcom/facebook/catalyst/modules/fbauth/HTTPCookieStringUtil;
.super Ljava/lang/Object;
.source "HTTPCookieStringUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/catalyst/modules/fbauth/HTTPCookieStringUtil$HTTPCookieStringBuilder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHTTPCookieString(Lcom/facebook/catalyst/modules/fbauth/SessionCookie;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 19
    new-instance v0, Lcom/facebook/catalyst/modules/fbauth/HTTPCookieStringUtil$HTTPCookieStringBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/catalyst/modules/fbauth/HTTPCookieStringUtil$HTTPCookieStringBuilder;-><init>(Lcom/facebook/catalyst/modules/fbauth/HTTPCookieStringUtil$1;)V

    .line 20
    invoke-virtual {p0}, Lcom/facebook/catalyst/modules/fbauth/SessionCookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/catalyst/modules/fbauth/SessionCookie;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/catalyst/modules/fbauth/HTTPCookieStringUtil$HTTPCookieStringBuilder;->appendAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/catalyst/modules/fbauth/HTTPCookieStringUtil$HTTPCookieStringBuilder;

    move-result-object v0

    .line 21
    invoke-virtual {p0}, Lcom/facebook/catalyst/modules/fbauth/SessionCookie;->getExpires()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 22
    const-string v1, "Expires"

    invoke-virtual {p0}, Lcom/facebook/catalyst/modules/fbauth/SessionCookie;->getExpires()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/catalyst/modules/fbauth/HTTPCookieStringUtil$HTTPCookieStringBuilder;->appendAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/catalyst/modules/fbauth/HTTPCookieStringUtil$HTTPCookieStringBuilder;

    .line 24
    :cond_0
    const-string v1, "Domain"

    invoke-virtual {p0}, Lcom/facebook/catalyst/modules/fbauth/SessionCookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/catalyst/modules/fbauth/HTTPCookieStringUtil$HTTPCookieStringBuilder;->appendAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/catalyst/modules/fbauth/HTTPCookieStringUtil$HTTPCookieStringBuilder;

    move-result-object v1

    const-string v2, "Path"

    invoke-virtual {p0}, Lcom/facebook/catalyst/modules/fbauth/SessionCookie;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/facebook/catalyst/modules/fbauth/HTTPCookieStringUtil$HTTPCookieStringBuilder;->appendAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/catalyst/modules/fbauth/HTTPCookieStringUtil$HTTPCookieStringBuilder;

    .line 25
    invoke-virtual {p0}, Lcom/facebook/catalyst/modules/fbauth/SessionCookie;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26
    const-string/jumbo v1, "secure"

    invoke-virtual {v0, v1}, Lcom/facebook/catalyst/modules/fbauth/HTTPCookieStringUtil$HTTPCookieStringBuilder;->appendAttribute(Ljava/lang/String;)Lcom/facebook/catalyst/modules/fbauth/HTTPCookieStringUtil$HTTPCookieStringBuilder;

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/catalyst/modules/fbauth/SessionCookie;->isHttpOnly()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 29
    const-string v1, "HttpOnly"

    invoke-virtual {v0, v1}, Lcom/facebook/catalyst/modules/fbauth/HTTPCookieStringUtil$HTTPCookieStringBuilder;->appendAttribute(Ljava/lang/String;)Lcom/facebook/catalyst/modules/fbauth/HTTPCookieStringUtil$HTTPCookieStringBuilder;

    .line 31
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/catalyst/modules/fbauth/HTTPCookieStringUtil$HTTPCookieStringBuilder;->build()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
