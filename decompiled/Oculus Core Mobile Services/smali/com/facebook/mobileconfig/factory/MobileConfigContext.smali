.class public interface abstract Lcom/facebook/mobileconfig/factory/MobileConfigContext;
.super Ljava/lang/Object;
.source "MobileConfigContext.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/ThreadSafe;
.end annotation


# virtual methods
.method public abstract getBoolean(J)Z
    .annotation build Lcom/facebook/infer/annotation/Functional;
    .end annotation
.end method

.method public abstract getBooleanWithOptions(JLcom/facebook/mobileconfig/factory/MobileConfigOptions;)Z
    .annotation build Lcom/facebook/infer/annotation/Functional;
    .end annotation
.end method

.method public abstract getBooleanWithOptions(JZLcom/facebook/mobileconfig/factory/MobileConfigOptions;)Z
    .annotation build Lcom/facebook/infer/annotation/Functional;
    .end annotation
.end method

.method public abstract getLong(J)J
    .annotation build Lcom/facebook/infer/annotation/Functional;
    .end annotation

    .annotation build Lcom/facebook/infer/annotation/ThreadSafe;
    .end annotation
.end method

.method public abstract getLongWithOptions(JJLcom/facebook/mobileconfig/factory/MobileConfigOptions;)J
    .annotation build Lcom/facebook/infer/annotation/Functional;
    .end annotation
.end method

.method public abstract getString(J)Ljava/lang/String;
    .annotation build Lcom/facebook/infer/annotation/Functional;
    .end annotation
.end method

.method public abstract getStringWithOptions(JLjava/lang/String;Lcom/facebook/mobileconfig/factory/MobileConfigOptions;)Ljava/lang/String;
    .annotation build Lcom/facebook/infer/annotation/Functional;
    .end annotation
.end method
