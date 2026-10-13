.class public final Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;
.super Ljava/lang/Object;
.source "MultiDexClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/dextricks/MultiDexClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation


# static fields
.field static final LOAD_SECONDARY:I = 0x4

.field static final SUPPORTS_LOCATORS:I = 0x1

.field static final SUPPORTS_NAME_BASED_LOCATORS:I = 0x2


# instance fields
.field final allowRetryAddDexOnIOException:Z

.field final coldstartDexBaseNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final coldstartDexCount:I

.field private configFlags:I

.field final disableVerifier:Z

.field final mDexFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ldalvik/system/DexFile;",
            ">;"
        }
    .end annotation
.end field

.field private final mFbColdStartExperiment:Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperiment;

.field final mSecondaryDexFilePaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field storeLocators:[I
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(IIZZLcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperiment;)V
    .locals 1

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->mDexFiles:Ljava/util/ArrayList;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->mSecondaryDexFilePaths:Ljava/util/ArrayList;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->coldstartDexBaseNames:Ljava/util/ArrayList;

    .line 181
    iput p1, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->configFlags:I

    .line 182
    iput p2, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->coldstartDexCount:I

    .line 183
    iput-boolean p3, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->disableVerifier:Z

    .line 184
    iput-boolean p4, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->allowRetryAddDexOnIOException:Z

    .line 185
    iput-object p5, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->mFbColdStartExperiment:Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperiment;

    .line 186
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;)I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->configFlags:I

    return v0
.end method

.method private appendColdstartDexBaseName(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 281
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->coldstartDexBaseNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->coldstartDexCount:I

    if-ge v0, v1, :cond_0

    .line 282
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->coldstartDexBaseNames:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_0
    return-void
.end method


# virtual methods
.method public addDex(Ldalvik/system/DexFile;)V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->mDexFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    return-void
.end method

.method public addDex(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->addDex(Ljava/io/File;Z)V

    .line 209
    return-void
.end method

.method public addDex(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->addDex(Ljava/io/File;Ljava/io/File;Z)V

    .line 200
    return-void
.end method

.method public addDex(Ljava/io/File;Ljava/io/File;Z)V
    .locals 12
    .param p2    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 230
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 231
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 233
    :goto_0
    if-eqz p3, :cond_3

    iget-boolean v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->allowRetryAddDexOnIOException:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    move-object v4, v3

    move v3, v2

    .line 239
    :goto_2
    if-lez v3, :cond_0

    .line 241
    mul-int/lit16 v5, v3, 0x1f4

    int-to-long v8, v5

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :cond_0
    :goto_3
    add-int/lit8 v5, v3, 0x1

    .line 250
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    invoke-static {v3, v6, v8}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 264
    :goto_4
    if-eqz v0, :cond_1

    if-nez v3, :cond_1

    if-le v5, v11, :cond_7

    .line 266
    :cond_1
    if-nez v3, :cond_5

    .line 267
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not load dex file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v6, v3

    .line 231
    goto :goto_0

    :cond_3
    move v0, v2

    .line 233
    goto :goto_1

    .line 242
    :catch_0
    move-exception v5

    .line 243
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3

    .line 251
    :catch_1
    move-exception v3

    .line 257
    const-string v8, "MultiDexClassLoader"

    const-string v9, "Failed loading dex ( %s )"

    new-array v10, v1, [Ljava/lang/Object;

    aput-object v7, v10, v2

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    if-eqz v0, :cond_4

    if-ge v11, v5, :cond_6

    .line 260
    :cond_4
    throw v3

    .line 270
    :cond_5
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->mDexFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-direct {p0, p1}, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->appendColdstartDexBaseName(Ljava/io/File;)V

    .line 273
    return-void

    :cond_6
    move-object v3, v4

    goto :goto_4

    :cond_7
    move-object v4, v3

    move v3, v5

    goto :goto_2
.end method

.method public addDex(Ljava/io/File;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->addDex(Ljava/io/File;Ljava/io/File;Z)V

    .line 219
    return-void
.end method

.method public addSecondaryDexPath(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->mSecondaryDexFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    return-void
.end method

.method public addStoreId(II)V
    .locals 2

    .prologue
    .line 300
    if-lez p1, :cond_2

    .line 301
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->storeLocators:[I

    if-nez v0, :cond_0

    .line 302
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->storeLocators:[I

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->storeLocators:[I

    array-length v0, v0

    if-gt v0, p1, :cond_1

    .line 305
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->storeLocators:[I

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->storeLocators:[I

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->storeLocators:[I

    aput p2, v0, p1

    .line 309
    :cond_2
    return-void
.end method

.method public getConfigFlags()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->configFlags:I

    return v0
.end method

.method public getExperiment()Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperiment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperiment;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->mFbColdStartExperiment:Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperiment;

    return-object v0
.end method

.method public getNumberConfiguredDexFiles()I
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->mDexFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public setConfigFlags(I)V
    .locals 0

    .prologue
    .line 296
    iput p1, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->configFlags:I

    .line 297
    return-void
.end method
