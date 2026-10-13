.class Lcom/facebook/gk/store/AtomicFileHelper;
.super Ljava/lang/Object;
.source "AtomicFileHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/gk/store/AtomicFileHelper$FileSerializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mFileSerializer:Lcom/facebook/gk/store/AtomicFileHelper$FileSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/gk/store/AtomicFileHelper$FileSerializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mOldFile:Ljava/io/File;

.field private final mRegularFile:Ljava/io/File;

.field private final mTemporaryFile:Ljava/io/File;


# direct methods
.method protected constructor <init>(Lcom/facebook/gk/store/AtomicFileHelper$FileSerializer;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/gk/store/AtomicFileHelper$FileSerializer",
            "<TT;>;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/facebook/gk/store/AtomicFileHelper;->mFileSerializer:Lcom/facebook/gk/store/AtomicFileHelper$FileSerializer;

    .line 71
    iput-object p2, p0, Lcom/facebook/gk/store/AtomicFileHelper;->mRegularFile:Ljava/io/File;

    .line 72
    iput-object p3, p0, Lcom/facebook/gk/store/AtomicFileHelper;->mTemporaryFile:Ljava/io/File;

    .line 73
    iput-object p4, p0, Lcom/facebook/gk/store/AtomicFileHelper;->mOldFile:Ljava/io/File;

    .line 74
    return-void
.end method

.method protected constructor <init>(Lcom/facebook/gk/store/AtomicFileHelper$FileSerializer;Ljava/io/File;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/gk/store/AtomicFileHelper$FileSerializer",
            "<TT;>;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".old"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/facebook/gk/store/AtomicFileHelper;-><init>(Lcom/facebook/gk/store/AtomicFileHelper$FileSerializer;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    .line 65
    return-void
.end method
