.class public final Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$BatchFileNode;
.super Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;
.source "BatchDirectoryStructureIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BatchFileNode"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;-><init>(Ljava/io/File;)V

    .line 302
    return-void
.end method
