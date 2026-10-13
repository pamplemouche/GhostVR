.class public Lcom/oculus/auth/credentials/CredentialsMethodAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "CredentialsMethodAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/auth/credentials/Credentials;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/oculus/auth/credentials/Credentials;
    .locals 2

    .prologue
    .line 14
    const-string v1, "getMethod_com.oculus.auth.credentials.Credentials"

    invoke-static {v1}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 17
    :try_start_0
    invoke-static {p0}, Lcom/oculus/auth/credentials/CredentialsModule;->$ul_$xXXcom_oculus_auth_credentials_CredentialsManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/auth/credentials/CredentialsManager;

    move-result-object v1

    .line 16
    invoke-static {v1}, Lcom/oculus/auth/credentials/CredentialsModule;->provideCredentials(Lcom/oculus/auth/credentials/CredentialsManager;)Lcom/oculus/auth/credentials/Credentials;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 20
    .local v0, "instance":Lcom/oculus/auth/credentials/Credentials;
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    .end local v0    # "instance":Lcom/oculus/auth/credentials/Credentials;
    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/oculus/auth/credentials/CredentialsMethodAutoProvider;->get()Lcom/oculus/auth/credentials/Credentials;

    move-result-object v0

    return-object v0
.end method
