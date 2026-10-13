.class public Lcom/facebook/analytics2/logger/BatchDirectoryStructure$BatchFilenameStructure;
.super Ljava/lang/Object;
.source "BatchDirectoryStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/BatchDirectoryStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatchFilenameStructure"
.end annotation


# static fields
.field private static final BATCHES_FILE_PREFIX:Ljava/lang/String; = "batch-"

.field private static final BATCHES_FILE_SUFFIX:Ljava/lang/String; = ".json"

.field public static final BATCH_FILE_FILTER:Ljava/io/FileFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 174
    new-instance v0, Lcom/facebook/analytics2/logger/BatchDirectoryStructure$BatchFilenameStructure$1;

    invoke-direct {v0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure$BatchFilenameStructure$1;-><init>()V

    sput-object v0, Lcom/facebook/analytics2/logger/BatchDirectoryStructure$BatchFilenameStructure;->BATCH_FILE_FILTER:Ljava/io/FileFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createNameWithBatchPrefixAndSuffix(J)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "batch-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ".json"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createNameWithBatchPrefixAndSuffixForNow()Ljava/lang/String;
    .locals 2

    .line 166
    invoke-static {}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->wallTimeNow()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure$BatchFilenameStructure;->createNameWithBatchPrefixAndSuffix(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
