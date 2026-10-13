.class public interface abstract Lcom/facebook/quicklog/IntermediatePoints$Visitor;
.super Ljava/lang/Object;
.source "IntermediatePoints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/quicklog/IntermediatePoints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Visitor"
.end annotation


# virtual methods
.method public abstract visit(JILjava/lang/String;Lcom/facebook/quicklog/PointData;Landroid/util/SparseArray;)V
    .param p3    # I
        .annotation build Lcom/facebook/quicklog/EventLevel;
        .end annotation
    .end param
    .param p5    # Lcom/facebook/quicklog/PointData;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "Lcom/facebook/quicklog/PointData;",
            "Landroid/util/SparseArray",
            "<*>;)V"
        }
    .end annotation
.end method
