.class interface abstract Lcom/oculus/auth/credentials/CredentialsModule$DeclaredMultiBindings;
.super Ljava/lang/Object;
.source "CredentialsModule.java"


# annotations
.annotation build Lcom/facebook/inject/DeclareMultiBindings;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/auth/credentials/CredentialsModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "DeclaredMultiBindings"
.end annotation


# virtual methods
.method public abstract getCredentialsChangedHandlers()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/oculus/auth/credentials/CredentialsChangedHandler;",
            ">;"
        }
    .end annotation
.end method
