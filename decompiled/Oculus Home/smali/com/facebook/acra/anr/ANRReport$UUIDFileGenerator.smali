.class Lcom/facebook/acra/anr/ANRReport$UUIDFileGenerator;
.super Ljava/lang/Object;
.source "ANRReport.java"

# interfaces
.implements Lcom/facebook/acra/FileGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/acra/anr/ANRReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UUIDFileGenerator"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDirectory:Ljava/lang/String;

.field private final mExtension:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extension"    # Ljava/lang/String;
    .param p3, "directory"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/facebook/acra/anr/ANRReport$UUIDFileGenerator;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/facebook/acra/anr/ANRReport$UUIDFileGenerator;->mExtension:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/facebook/acra/anr/ANRReport$UUIDFileGenerator;->mDirectory:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public generate()Ljava/io/File;
    .locals 4

    .prologue
    .line 69
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/acra/anr/ANRReport$UUIDFileGenerator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/acra/anr/ANRReport$UUIDFileGenerator;->mDirectory:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/acra/anr/ANRReport$UUIDFileGenerator;->mExtension:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
