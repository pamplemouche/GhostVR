.class public final Lcom/facebook/acra/Spool$Descriptor;
.super Ljava/lang/Object;
.source "Spool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/acra/Spool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Descriptor"
.end annotation


# instance fields
.field public final fileBaseName:Ljava/lang/String;

.field final fileName:Ljava/io/File;

.field public final lastModifiedTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/io/File;)V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    iput-object p1, p0, Lcom/facebook/acra/Spool$Descriptor;->fileBaseName:Ljava/lang/String;

    .line 385
    iput-wide p2, p0, Lcom/facebook/acra/Spool$Descriptor;->lastModifiedTime:J

    .line 386
    iput-object p4, p0, Lcom/facebook/acra/Spool$Descriptor;->fileName:Ljava/io/File;

    .line 387
    return-void
.end method
