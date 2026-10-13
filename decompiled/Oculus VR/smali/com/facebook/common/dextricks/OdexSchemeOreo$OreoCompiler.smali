.class final Lcom/facebook/common/dextricks/OdexSchemeOreo$OreoCompiler;
.super Lcom/facebook/common/dextricks/OdexScheme$Compiler;
.source "OdexSchemeOreo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/dextricks/OdexSchemeOreo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OreoCompiler"
.end annotation


# instance fields
.field private final mDexStore:Lcom/facebook/common/dextricks/DexStore;


# direct methods
.method constructor <init>(Lcom/facebook/common/dextricks/DexStore;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/facebook/common/dextricks/OdexScheme$Compiler;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/facebook/common/dextricks/OdexSchemeOreo$OreoCompiler;->mDexStore:Lcom/facebook/common/dextricks/DexStore;

    .line 58
    return-void
.end method


# virtual methods
.method compile(Lcom/facebook/common/dextricks/InputDex;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 62
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/common/dextricks/OdexSchemeOreo$OreoCompiler;->mDexStore:Lcom/facebook/common/dextricks/DexStore;

    iget-object v1, v1, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    iget-object v2, p1, Lcom/facebook/common/dextricks/InputDex;->dex:Lcom/facebook/common/dextricks/DexManifest$Dex;

    invoke-static {v2}, Lcom/facebook/common/dextricks/OdexSchemeOreo;->makeDexName(Lcom/facebook/common/dextricks/DexManifest$Dex;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const-string v1, "Attempted to unpack dex file that already exists. Removing and re-unpacking"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-static {v0}, Lcom/facebook/common/dextricks/Fs;->deleteRecursiveNoThrow(Ljava/io/File;)V

    .line 68
    :cond_0
    invoke-virtual {p1, v0}, Lcom/facebook/common/dextricks/InputDex;->extract(Ljava/io/File;)V

    .line 70
    const-string v1, "Unpacked dex file to %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    return-void
.end method
