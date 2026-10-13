.class Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode$1;
.super Ljava/lang/Object;
.source "BatchDirectoryStructureIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;->children()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;

.field final synthetic val$children:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode$1;->this$0:Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;

    iput-object p2, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode$1;->val$children:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode$1;->val$children:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;
    .locals 2

    .prologue
    .line 209
    iget-object v1, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode$1;->this$0:Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;

    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode$1;->val$children:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v1, v0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;->newChildNode(Ljava/io/File;)Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode$1;->next()Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode$1;->val$children:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 215
    return-void
.end method
