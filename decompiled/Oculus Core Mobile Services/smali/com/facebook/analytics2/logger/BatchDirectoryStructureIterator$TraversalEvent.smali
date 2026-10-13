.class public final Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalEvent;
.super Ljava/lang/Object;
.source "BatchDirectoryStructureIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TraversalEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalEvent$EventType;
    }
.end annotation


# instance fields
.field public final eventType:I
    .annotation build Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalEvent$EventType;
    .end annotation
.end field

.field public final fileNode:Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;


# direct methods
.method public constructor <init>(Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;I)V
    .locals 0
    .param p2    # I
        .annotation build Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalEvent$EventType;
        .end annotation
    .end param

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalEvent;->fileNode:Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;

    .line 154
    iput p2, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalEvent;->eventType:I

    .line 155
    return-void
.end method
