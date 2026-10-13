.class public interface abstract Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$ProcessDirectoryProgressCallback;
.super Ljava/lang/Object;
.source "FileBatchPayloadIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProcessDirectoryProgressCallback"
.end annotation


# virtual methods
.method public abstract onExhaustedProcessDir(Ljava/io/File;Ljava/io/File;)V
    .param p2    # Ljava/io/File;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method
