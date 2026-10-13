.class public Lcom/facebook/common/util/GenericTriState;
.super Ljava/lang/Object;
.source "GenericTriState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private isSet:Z

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 11
    .local p0, "this":Lcom/facebook/common/util/GenericTriState;, "Lcom/facebook/common/util/GenericTriState<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/common/util/GenericTriState;->isSet:Z

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/common/util/GenericTriState;->value:Ljava/lang/Object;

    .line 14
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "this":Lcom/facebook/common/util/GenericTriState;, "Lcom/facebook/common/util/GenericTriState<TT;>;"
    .local p1, "initValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/common/util/GenericTriState;->isSet:Z

    .line 18
    iput-object p1, p0, Lcom/facebook/common/util/GenericTriState;->value:Ljava/lang/Object;

    .line 19
    return-void
.end method

.method public static empty()Lcom/facebook/common/util/GenericTriState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/facebook/common/util/GenericTriState",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Lcom/facebook/common/util/GenericTriState;

    invoke-direct {v0}, Lcom/facebook/common/util/GenericTriState;-><init>()V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lcom/facebook/common/util/GenericTriState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/facebook/common/util/GenericTriState",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "initValue":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/facebook/common/util/GenericTriState;

    invoke-direct {v0, p0}, Lcom/facebook/common/util/GenericTriState;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public isSet()Z
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lcom/facebook/common/util/GenericTriState;, "Lcom/facebook/common/util/GenericTriState<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/common/util/GenericTriState;->isSet:Z

    return v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/facebook/common/util/GenericTriState;, "Lcom/facebook/common/util/GenericTriState<TT;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/common/util/GenericTriState;->isSet:Z

    .line 54
    iput-object p1, p0, Lcom/facebook/common/util/GenericTriState;->value:Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public unset()V
    .locals 1

    .prologue
    .line 34
    .local p0, "this":Lcom/facebook/common/util/GenericTriState;, "Lcom/facebook/common/util/GenericTriState<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/common/util/GenericTriState;->isSet:Z

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/common/util/GenericTriState;->value:Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public value()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/facebook/common/util/GenericTriState;, "Lcom/facebook/common/util/GenericTriState<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/common/util/GenericTriState;->isSet:Z

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be set in order to get value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/facebook/common/util/GenericTriState;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public valueOrNull()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/facebook/common/util/GenericTriState;, "Lcom/facebook/common/util/GenericTriState<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/common/util/GenericTriState;->isSet:Z

    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/common/util/GenericTriState;->value:Ljava/lang/Object;

    goto :goto_0
.end method
