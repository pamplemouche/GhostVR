.class Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$SnapshotDirectoryIterable;
.super Ljava/lang/Object;
.source "BatchDirectoryStructureIterator.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SnapshotDirectoryIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private final mChildren:[Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/FileFilter;Ljava/util/Comparator;)V
    .locals 1
    .param p2    # Ljava/io/FileFilter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FileFilter;",
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    invoke-static {p1, p2, p3}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$SnapshotDirectoryIterable;->collectChildren(Ljava/io/File;Ljava/io/FileFilter;Ljava/util/Comparator;)[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$SnapshotDirectoryIterable;->mChildren:[Ljava/io/File;

    .line 319
    return-void
.end method

.method private static collectChildren(Ljava/io/File;Ljava/io/FileFilter;Ljava/util/Comparator;)[Ljava/io/File;
    .locals 1
    .param p1    # Ljava/io/FileFilter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FileFilter;",
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;)[",
            "Ljava/io/File;"
        }
    .end annotation

    .prologue
    .line 324
    if-eqz p1, :cond_1

    .line 325
    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 329
    :goto_0
    if-eqz v0, :cond_2

    .line 330
    if-eqz p2, :cond_0

    .line 331
    invoke-static {v0, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 336
    :cond_0
    :goto_1
    return-object v0

    .line 327
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 334
    :cond_2
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    goto :goto_1
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    new-instance v0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FastArrayIterator;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$SnapshotDirectoryIterable;->mChildren:[Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FastArrayIterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
