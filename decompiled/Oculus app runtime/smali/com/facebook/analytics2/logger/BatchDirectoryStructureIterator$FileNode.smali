.class public abstract Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;
.super Ljava/lang/Object;
.source "BatchDirectoryStructureIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FileNode"
.end annotation


# static fields
.field private static final EMPTY_CHILD_ITERATOR:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 164
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    sput-object v0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;->EMPTY_CHILD_ITERATOR:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;->mFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method children()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;",
            ">;"
        }
    .end annotation

    .line 177
    sget-object v0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;->EMPTY_CHILD_ITERATOR:Ljava/util/Iterator;

    return-object v0
.end method

.method public final getFile()Ljava/io/File;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;->mFile:Ljava/io/File;

    return-object v0
.end method
