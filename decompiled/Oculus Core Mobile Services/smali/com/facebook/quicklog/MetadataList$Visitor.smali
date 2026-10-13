.class public interface abstract Lcom/facebook/quicklog/MetadataList$Visitor;
.super Ljava/lang/Object;
.source "MetadataList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/quicklog/MetadataList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Visitor"
.end annotation


# virtual methods
.method public abstract visitEntry(Ljava/lang/String;D)V
.end method

.method public abstract visitEntry(Ljava/lang/String;I)V
.end method

.method public abstract visitEntry(Ljava/lang/String;J)V
.end method

.method public abstract visitEntry(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract visitEntry(Ljava/lang/String;Z)V
.end method

.method public abstract visitEntry(Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract visitNewCategory(Ljava/lang/String;)V
.end method
