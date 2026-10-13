.class public Lcom/facebook/inject/MultiBinding;
.super Ljava/lang/Object;
.source "MultiBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/inject/MultiBinding$ArrayListSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mValues:Lcom/facebook/inject/MultiBinding$ArrayListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/inject/MultiBinding$ArrayListSet",
            "<",
            "Lcom/google/inject/Key",
            "<+TT;>;>;"
        }
    .end annotation
.end field


# virtual methods
.method public getValues()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/Key",
            "<+TT;>;>;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/inject/MultiBinding;->mValues:Lcom/facebook/inject/MultiBinding$ArrayListSet;

    return-object v0
.end method
