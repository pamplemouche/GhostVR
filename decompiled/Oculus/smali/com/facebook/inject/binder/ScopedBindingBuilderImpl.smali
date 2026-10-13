.class public Lcom/facebook/inject/binder/ScopedBindingBuilderImpl;
.super Ljava/lang/Object;
.source "ScopedBindingBuilderImpl.java"

# interfaces
.implements Lcom/facebook/inject/binder/ScopedBindingBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/inject/binder/ScopedBindingBuilder;"
    }
.end annotation


# instance fields
.field protected final mBinding:Lcom/facebook/inject/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/inject/Binding",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/inject/Binding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/inject/Binding",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/facebook/inject/binder/ScopedBindingBuilderImpl;->mBinding:Lcom/facebook/inject/Binding;

    .line 17
    return-void
.end method
