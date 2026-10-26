.class public Lcom/oculus/http/core/util/CustomApiEndpointValidator;
.super Ljava/lang/Object;
.source "CustomApiEndpointValidator.java"


# static fields
.field private static final DISABLE_CERT_CHECK_HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

.field private static final DISABLE_CERT_CHECK_URI_PATTERN:Ljava/util/regex/Pattern;

.field private static final SAFE_URI_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/oculus/http/core/util/CustomApiEndpointValidator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/http/core/util/CustomApiEndpointValidator;->TAG:Ljava/lang/String;

    .line 47
    const-string v0, "^https://(graph[.])?ghostvr[.]pamplemouche[.]com$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/oculus/http/core/util/CustomApiEndpointValidator;->SAFE_URI_PATTERN:Ljava/util/regex/Pattern;

    .line 49
    const-string v0, "^graph[.]ghostvr[.]pamplemouche[.]com$"

    .line 50
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/oculus/http/core/util/CustomApiEndpointValidator;->DISABLE_CERT_CHECK_HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 52
    const-string v0, "^https://graph[.]ghostvr[.]pamplemouche[.]com$"

    .line 53
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/oculus/http/core/util/CustomApiEndpointValidator;->DISABLE_CERT_CHECK_URI_PATTERN:Ljava/util/regex/Pattern;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableCertCheckForHttpClient(Lokhttp3/OkHttpClient$Builder;)V
    .locals 5

    .prologue
    .line 73
    new-instance v0, Lcom/oculus/http/core/util/CustomApiEndpointValidator$1;

    invoke-direct {v0}, Lcom/oculus/http/core/util/CustomApiEndpointValidator$1;-><init>()V

    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 80
    new-instance v0, Lcom/oculus/http/core/util/CustomApiEndpointValidator$2;

    invoke-direct {v0}, Lcom/oculus/http/core/util/CustomApiEndpointValidator$2;-><init>()V

    .line 102
    :try_start_0
    const-string v1, "TLSv1.2"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 103
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 104
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    sget-object v1, Lcom/oculus/http/core/util/CustomApiEndpointValidator;->TAG:Ljava/lang/String;

    const-string v2, "NoSuchAlgorithmException when trying to initialize SSL Context."

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 107
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 108
    :catch_1
    move-exception v0

    .line 109
    sget-object v1, Lcom/oculus/http/core/util/CustomApiEndpointValidator;->TAG:Ljava/lang/String;

    const-string v2, "KeyManagementException when trying to initialize SSL Context."

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 110
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static isDisableHostNameValid(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/oculus/http/core/util/CustomApiEndpointValidator;->DISABLE_CERT_CHECK_HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static isDisabledUriValid(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/oculus/http/core/util/CustomApiEndpointValidator;->DISABLE_CERT_CHECK_URI_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
