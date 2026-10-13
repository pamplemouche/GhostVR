.class final Lcom/oculus/http/core/util/CustomApiEndpointValidator$1;
.super Ljava/lang/Object;
.source "CustomApiEndpointValidator.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/http/core/util/CustomApiEndpointValidator;->disableCertCheckForHttpClient(Lokhttp3/OkHttpClient$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1

    .prologue
    .line 77
    invoke-static {p1}, Lcom/oculus/http/core/util/CustomApiEndpointValidator;->isDisableHostNameValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
