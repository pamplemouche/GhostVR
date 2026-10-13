.class public interface abstract Lcom/facebook/stetho/inspector/elements/NodeDescriptor;
.super Ljava/lang/Object;
.source "NodeDescriptor.java"

# interfaces
.implements Lcom/facebook/stetho/common/ThreadBound;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/stetho/common/ThreadBound;"
    }
.end annotation


# virtual methods
.method public abstract getChildren(Ljava/lang/Object;Lcom/facebook/stetho/common/Accumulator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/facebook/stetho/common/Accumulator",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getComputedStyles(Ljava/lang/Object;Lcom/facebook/stetho/inspector/elements/ComputedStyleAccumulator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/facebook/stetho/inspector/elements/ComputedStyleAccumulator;",
            ")V"
        }
    .end annotation
.end method

.method public abstract hook(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method
