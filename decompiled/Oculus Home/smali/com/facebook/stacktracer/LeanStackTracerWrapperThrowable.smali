.class public Lcom/facebook/stacktracer/LeanStackTracerWrapperThrowable;
.super Ljava/lang/Throwable;
.source "LeanStackTracerWrapperThrowable.java"


# instance fields
.field private final mInner:Ljava/lang/Throwable;

.field private final mOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Ljava/util/List;)V
    .locals 0
    .param p1, "inner"    # Ljava/lang/Throwable;
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p2, "offsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/facebook/stacktracer/LeanStackTracerWrapperThrowable;->mInner:Ljava/lang/Throwable;

    .line 15
    iput-object p2, p0, Lcom/facebook/stacktracer/LeanStackTracerWrapperThrowable;->mOffsets:Ljava/util/List;

    .line 16
    return-void
.end method


# virtual methods
.method public getInner()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/facebook/stacktracer/LeanStackTracerWrapperThrowable;->mInner:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getOffsets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/facebook/stacktracer/LeanStackTracerWrapperThrowable;->mOffsets:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/stacktracer/LeanStackTracerWrapperThrowable;->mOffsets:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
