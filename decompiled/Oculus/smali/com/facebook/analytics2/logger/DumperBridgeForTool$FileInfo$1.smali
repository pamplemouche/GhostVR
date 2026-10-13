.class final Lcom/facebook/analytics2/logger/DumperBridgeForTool$FileInfo$1;
.super Ljava/lang/Object;
.source "DumperBridgeForTool.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/DumperBridgeForTool$FileInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/facebook/analytics2/logger/DumperBridgeForTool$FileInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/facebook/analytics2/logger/DumperBridgeForTool$FileInfo;Lcom/facebook/analytics2/logger/DumperBridgeForTool$FileInfo;)I
    .locals 4

    .prologue
    .line 187
    iget-object v0, p1, Lcom/facebook/analytics2/logger/DumperBridgeForTool$FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-object v2, p2, Lcom/facebook/analytics2/logger/DumperBridgeForTool$FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p1, Lcom/facebook/analytics2/logger/DumperBridgeForTool$FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/facebook/analytics2/logger/DumperBridgeForTool$FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 190
    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcom/facebook/analytics2/logger/DumperBridgeForTool$FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-object v2, p2, Lcom/facebook/analytics2/logger/DumperBridgeForTool$FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 184
    check-cast p1, Lcom/facebook/analytics2/logger/DumperBridgeForTool$FileInfo;

    check-cast p2, Lcom/facebook/analytics2/logger/DumperBridgeForTool$FileInfo;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/analytics2/logger/DumperBridgeForTool$FileInfo$1;->compare(Lcom/facebook/analytics2/logger/DumperBridgeForTool$FileInfo;Lcom/facebook/analytics2/logger/DumperBridgeForTool$FileInfo;)I

    move-result v0

    return v0
.end method
