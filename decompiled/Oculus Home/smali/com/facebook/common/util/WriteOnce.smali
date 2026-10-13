.class public final Lcom/facebook/common/util/WriteOnce;
.super Ljava/lang/Object;
.source "WriteOnce.java"


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
.field private mIsSet:Z

.field private mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    .local p0, "this":Lcom/facebook/common/util/WriteOnce;, "Lcom/facebook/common/util/WriteOnce<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Lcom/facebook/common/util/WriteOnce;, "Lcom/facebook/common/util/WriteOnce<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/common/util/WriteOnce;->mIsSet:Z

    .line 19
    iput-object p1, p0, Lcom/facebook/common/util/WriteOnce;->mValue:Ljava/lang/Object;

    .line 20
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/facebook/common/util/WriteOnce;, "Lcom/facebook/common/util/WriteOnce<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/common/util/WriteOnce;->mIsSet:Z

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/facebook/common/util/WriteOnce;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public isSet()Z
    .locals 1

    .prologue
    .line 23
    .local p0, "this":Lcom/facebook/common/util/WriteOnce;, "Lcom/facebook/common/util/WriteOnce<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/common/util/WriteOnce;->mIsSet:Z

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/facebook/common/util/WriteOnce;, "Lcom/facebook/common/util/WriteOnce<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lcom/facebook/common/util/WriteOnce;->mIsSet:Z

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/facebook/common/util/WriteOnce;->mValue:Ljava/lang/Object;

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/common/util/WriteOnce;->mIsSet:Z

    .line 39
    return-void
.end method

.method public trySet(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/facebook/common/util/WriteOnce;, "Lcom/facebook/common/util/WriteOnce<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    .line 42
    iget-boolean v1, p0, Lcom/facebook/common/util/WriteOnce;->mIsSet:Z

    if-eqz v1, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 47
    :goto_0
    return v0

    .line 45
    :cond_0
    iput-object p1, p0, Lcom/facebook/common/util/WriteOnce;->mValue:Ljava/lang/Object;

    .line 46
    iput-boolean v0, p0, Lcom/facebook/common/util/WriteOnce;->mIsSet:Z

    goto :goto_0
.end method
