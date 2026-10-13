.class public abstract Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TimestampDirectoryNode;
.super Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;
.source "BatchDirectoryStructureIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TimestampDirectoryNode"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 261
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public asTimestamp(I)J
    .locals 2

    .line 266
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TimestampDirectoryNode;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    int-to-long v0, p1

    return-wide v0
.end method
