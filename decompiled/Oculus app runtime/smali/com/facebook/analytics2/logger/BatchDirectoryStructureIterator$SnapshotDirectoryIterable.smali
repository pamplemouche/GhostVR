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
        "Ljava/lang/Iterable<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private final mChildren:[Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/FileFilter;Ljava/util/Comparator;)V
    .locals 0
    .param p2    # Ljava/io/FileFilter;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Comparator;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FileFilter;",
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    invoke-static {p1, p2, p3}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$SnapshotDirectoryIterable;->collectChildren(Ljava/io/File;Ljava/io/FileFilter;Ljava/util/Comparator;)[Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$SnapshotDirectoryIterable;->mChildren:[Ljava/io/File;

    return-void
.end method

.method private static collectChildren(Ljava/io/File;Ljava/io/FileFilter;Ljava/util/Comparator;)[Ljava/io/File;
    .locals 0
    .param p1    # Ljava/io/FileFilter;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Comparator;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FileFilter;",
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;)[",
            "Ljava/io/File;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 325
    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    goto :goto_0

    .line 327
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    if-eqz p2, :cond_2

    .line 331
    invoke-static {p0, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 334
    new-array p0, p0, [Ljava/io/File;

    :cond_2
    :goto_1
    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 341
    new-instance v0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FastArrayIterator;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$SnapshotDirectoryIterable;->mChildren:[Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FastArrayIterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
