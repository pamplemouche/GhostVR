.class public Lcom/oculus/systemutilities/SystemUtilitiesUserAgentBuilder;
.super Ljava/lang/Object;
.source "SystemUtilitiesUserAgentBuilder.java"

# interfaces
.implements Lcom/oculus/device/IUserAgentBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "httpAgent"    # Ljava/lang/String;
    .param p3, "mobileAppName"    # Ljava/lang/String;
    .param p4, "appVersion"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "buildVersion"    # Ljava/lang/String;
    .param p7, "locale"    # Ljava/lang/String;

    .prologue
    .line 19
    new-instance v0, Lcom/oculus/http/useragent/UserAgentBuilder;

    invoke-direct {v0, p1}, Lcom/oculus/http/useragent/UserAgentBuilder;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {v0, p2}, Lcom/oculus/http/useragent/UserAgentBuilder;->setHttpAgent(Ljava/lang/String;)Lcom/oculus/http/useragent/UserAgentBuilder;

    move-result-object v0

    .line 21
    invoke-virtual {v0, p3}, Lcom/oculus/http/useragent/UserAgentBuilder;->setAppName(Ljava/lang/String;)Lcom/oculus/http/useragent/UserAgentBuilder;

    move-result-object v0

    .line 22
    invoke-virtual {v0, p4}, Lcom/oculus/http/useragent/UserAgentBuilder;->setAppVersion(Ljava/lang/String;)Lcom/oculus/http/useragent/UserAgentBuilder;

    move-result-object v0

    .line 23
    invoke-virtual {v0, p6}, Lcom/oculus/http/useragent/UserAgentBuilder;->setBuildVersion(Ljava/lang/String;)Lcom/oculus/http/useragent/UserAgentBuilder;

    move-result-object v0

    .line 24
    invoke-virtual {v0, p7}, Lcom/oculus/http/useragent/UserAgentBuilder;->setLocale(Ljava/lang/String;)Lcom/oculus/http/useragent/UserAgentBuilder;

    move-result-object v0

    .line 25
    invoke-virtual {v0, p5}, Lcom/oculus/http/useragent/UserAgentBuilder;->setPackageName(Ljava/lang/String;)Lcom/oculus/http/useragent/UserAgentBuilder;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/oculus/http/useragent/UserAgentBuilder;->build()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
