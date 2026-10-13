.class interface abstract Lcom/oculus/auth/credentials/CredentialsModule$AssertedBindings;
.super Ljava/lang/Object;
.source "CredentialsModule.java"


# annotations
.annotation build Lcom/facebook/inject/AssertBindings;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/auth/credentials/CredentialsModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AssertedBindings"
.end annotation


# virtual methods
.method public abstract assertCredentialsManager()Lcom/oculus/auth/credentials/CredentialsManager;
.end method
