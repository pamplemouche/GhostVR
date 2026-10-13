.class public Lcom/facebook/analytics2/logger/Analytics2BatchDirectory;
.super Ljava/lang/Object;
.source "Analytics2BatchDirectory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBaseDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    .prologue
    .line 13
    invoke-static {p0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->getBaseDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
