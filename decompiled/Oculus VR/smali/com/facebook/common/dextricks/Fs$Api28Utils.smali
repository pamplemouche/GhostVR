.class final Lcom/facebook/common/dextricks/Fs$Api28Utils;
.super Ljava/lang/Object;
.source "Fs.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation

.annotation build Lcom/facebook/soloader/DoNotOptimize;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/dextricks/Fs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api28Utils"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 529
    invoke-static {p0, p1, p2}, Lcom/facebook/common/dextricks/Fs$Api28Utils;->copyBytes(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;I)I

    move-result v0

    return v0
.end method

.method private static copyBytes(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 532
    new-instance v0, Landroid/system/Int64Ref;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Landroid/system/Int64Ref;-><init>(J)V

    .line 533
    int-to-long v2, p2

    invoke-static {p0, p1, v0, v2, v3}, Landroid/system/Os;->sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
