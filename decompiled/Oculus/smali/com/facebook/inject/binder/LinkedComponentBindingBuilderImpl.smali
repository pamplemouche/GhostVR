.class public Lcom/facebook/inject/binder/LinkedComponentBindingBuilderImpl;
.super Ljava/lang/Object;
.source "LinkedComponentBindingBuilderImpl.java"

# interfaces
.implements Lcom/facebook/inject/binder/LinkedComponentBindingBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/inject/binder/LinkedComponentBindingBuilder",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final mBinding:Lcom/facebook/inject/ComponentBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/inject/ComponentBinding",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/inject/ComponentBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/inject/ComponentBinding",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/facebook/inject/binder/LinkedComponentBindingBuilderImpl;->mBinding:Lcom/facebook/inject/ComponentBinding;

    .line 15
    return-void
.end method
