.class public interface abstract Lcom/oculus/auth/storage/AuthDatastore;
.super Ljava/lang/Object;
.source "AuthDatastore.java"


# virtual methods
.method public abstract clearCredentials()V
.end method

.method public abstract getCredentials()Lcom/oculus/auth/credentials/Credentials;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract storeCredentials(Lcom/oculus/auth/credentials/Credentials;)V
.end method
