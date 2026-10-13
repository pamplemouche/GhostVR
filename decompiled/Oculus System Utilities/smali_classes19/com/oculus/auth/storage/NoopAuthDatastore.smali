.class public Lcom/oculus/auth/storage/NoopAuthDatastore;
.super Ljava/lang/Object;
.source "NoopAuthDatastore.java"

# interfaces
.implements Lcom/oculus/auth/storage/AuthDatastore;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCredentials()V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method public getCredentials()Lcom/oculus/auth/credentials/Credentials;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 13
    const/4 v0, 0x0

    return-object v0
.end method

.method public storeCredentials(Lcom/oculus/auth/credentials/Credentials;)V
    .locals 0
    .param p1, "credentials"    # Lcom/oculus/auth/credentials/Credentials;

    .prologue
    .line 17
    return-void
.end method
