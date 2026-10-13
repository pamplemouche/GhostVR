.class public interface abstract Lcom/facebook/secure/trustedapp/checker/Checker;
.super Ljava/lang/Object;
.source "Checker.java"


# virtual methods
.method public abstract and(Lcom/facebook/secure/trustedapp/checker/Checker;)Lcom/facebook/secure/trustedapp/checker/Checker;
.end method

.method public abstract shouldAllowIntent(Landroid/content/Context;Ljava/lang/Object;Landroid/content/Intent;Lcom/facebook/secure/logger/Reporter;)Z
    .param p4    # Lcom/facebook/secure/logger/Reporter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method
