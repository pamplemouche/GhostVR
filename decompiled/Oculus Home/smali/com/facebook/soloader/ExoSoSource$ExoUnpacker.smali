.class final Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;
.super Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
.source "ExoSoSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/ExoSoSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExoUnpacker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/ExoSoSource$ExoUnpacker$FileBackedInputDsoIterator;
    }
.end annotation


# instance fields
.field private final mDsos:[Lcom/facebook/soloader/ExoSoSource$FileDso;

.field final synthetic this$0:Lcom/facebook/soloader/ExoSoSource;


# direct methods
.method constructor <init>(Lcom/facebook/soloader/ExoSoSource;Lcom/facebook/soloader/UnpackingSoSource;)V
    .locals 27
    .param p2, "soSource"    # Lcom/facebook/soloader/UnpackingSoSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;->this$0:Lcom/facebook/soloader/ExoSoSource;

    invoke-direct/range {p0 .. p0}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;-><init>()V

    .line 52
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/facebook/soloader/ExoSoSource;->mContext:Landroid/content/Context;

    .line 53
    .local v7, "context":Landroid/content/Context;
    new-instance v8, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "/data/local/tmp/exopackage/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 55
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/native-libs/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v8, "exoDir":Ljava/io/File;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v16, "providedLibraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/soloader/ExoSoSource$FileDso;>;"
    new-instance v12, Ljava/util/LinkedHashSet;

    invoke-direct {v12}, Ljava/util/LinkedHashSet;-><init>()V

    .line 62
    .local v12, "librariesAbiSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/facebook/soloader/SysUtil;->getSupportedAbis()[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    const/16 v19, 0x0

    move/from16 v22, v19

    :goto_0
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_e

    aget-object v3, v23, v22

    .line 63
    .local v3, "abi":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v8, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    .local v4, "abiDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v19

    if-nez v19, :cond_1

    .line 62
    :cond_0
    :goto_1
    add-int/lit8 v19, v22, 0x1

    move/from16 v22, v19

    goto :goto_0

    .line 68
    :cond_1
    invoke-interface {v12, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v14, Ljava/io/File;

    const-string v19, "metadata.txt"

    move-object/from16 v0, v19

    invoke-direct {v14, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    .local v14, "metadataFileName":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->isFile()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 75
    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v14}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .local v10, "fr":Ljava/io/FileReader;
    const/16 v21, 0x0

    .line 76
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 75
    .local v6, "br":Ljava/io/BufferedReader;
    const/16 v20, 0x0

    .line 78
    :cond_2
    :goto_2
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .local v13, "line":Ljava/lang/String;
    if-eqz v13, :cond_8

    .line 79
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v19

    if-eqz v19, :cond_2

    .line 83
    const/16 v19, 0x20

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    .line 84
    .local v17, "sep":I
    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 85
    new-instance v19, Ljava/lang/RuntimeException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "illegal line in exopackage metadata: ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 75
    .end local v13    # "line":Ljava/lang/String;
    .end local v17    # "sep":I
    :catch_0
    move-exception v19

    :try_start_2
    throw v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    :catchall_0
    move-exception v20

    move-object/from16 v26, v20

    move-object/from16 v20, v19

    move-object/from16 v19, v26

    :goto_3
    if-eqz v6, :cond_3

    if-eqz v20, :cond_b

    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_3
    :goto_4
    :try_start_4
    throw v19
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 75
    .end local v6    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v19

    :try_start_5
    throw v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 109
    :catchall_1
    move-exception v20

    move-object/from16 v26, v20

    move-object/from16 v20, v19

    move-object/from16 v19, v26

    :goto_5
    if-eqz v10, :cond_4

    if-eqz v20, :cond_d

    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    :cond_4
    :goto_6
    throw v19

    .line 88
    .restart local v6    # "br":Ljava/io/BufferedReader;
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v17    # "sep":I
    :cond_5
    :try_start_7
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v25, 0x0

    move/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v25, ".so"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 89
    .local v18, "soName":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 90
    .local v15, "nrAlreadyProvided":I
    const/4 v9, 0x0

    .line 91
    .local v9, "found":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_7
    if-ge v11, v15, :cond_6

    .line 92
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/facebook/soloader/ExoSoSource$FileDso;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/facebook/soloader/ExoSoSource$FileDso;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 93
    const/4 v9, 0x1

    .line 98
    :cond_6
    if-nez v9, :cond_2

    .line 102
    add-int/lit8 v19, v17, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, "backingFileBaseName":Ljava/lang/String;
    new-instance v19, Lcom/facebook/soloader/ExoSoSource$FileDso;

    new-instance v25, Ljava/io/File;

    move-object/from16 v0, v25

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/soloader/ExoSoSource$FileDso;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/16 :goto_2

    .line 109
    .end local v5    # "backingFileBaseName":Ljava/lang/String;
    .end local v9    # "found":Z
    .end local v11    # "i":I
    .end local v13    # "line":Ljava/lang/String;
    .end local v15    # "nrAlreadyProvided":I
    .end local v17    # "sep":I
    .end local v18    # "soName":Ljava/lang/String;
    :catchall_2
    move-exception v19

    goto/16 :goto_3

    .line 91
    .restart local v9    # "found":Z
    .restart local v11    # "i":I
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v15    # "nrAlreadyProvided":I
    .restart local v17    # "sep":I
    .restart local v18    # "soName":Ljava/lang/String;
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 109
    .end local v9    # "found":Z
    .end local v11    # "i":I
    .end local v15    # "nrAlreadyProvided":I
    .end local v17    # "sep":I
    .end local v18    # "soName":Ljava/lang/String;
    :cond_8
    if-eqz v6, :cond_9

    if-eqz v20, :cond_a

    :try_start_8
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_9
    :goto_8
    if-eqz v10, :cond_0

    if-eqz v21, :cond_c

    :try_start_9
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v19

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_3
    move-exception v19

    :try_start_a
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v13    # "line":Ljava/lang/String;
    :catchall_3
    move-exception v19

    move-object/from16 v20, v21

    goto/16 :goto_5

    .restart local v6    # "br":Ljava/io/BufferedReader;
    .restart local v13    # "line":Ljava/lang/String;
    :cond_a
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    goto :goto_8

    .end local v13    # "line":Ljava/lang/String;
    :catch_4
    move-exception v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_b
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto/16 :goto_4

    .restart local v13    # "line":Ljava/lang/String;
    :cond_c
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V

    goto/16 :goto_1

    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v13    # "line":Ljava/lang/String;
    :catch_5
    move-exception v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :cond_d
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V

    goto/16 :goto_6

    .line 112
    .end local v3    # "abi":Ljava/lang/String;
    .end local v4    # "abiDir":Ljava/io/File;
    .end local v10    # "fr":Ljava/io/FileReader;
    .end local v14    # "metadataFileName":Ljava/io/File;
    :cond_e
    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/facebook/soloader/UnpackingSoSource;->setSoSourceAbis([Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Lcom/facebook/soloader/ExoSoSource$FileDso;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Lcom/facebook/soloader/ExoSoSource$FileDso;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;->mDsos:[Lcom/facebook/soloader/ExoSoSource$FileDso;

    .line 114
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;)[Lcom/facebook/soloader/ExoSoSource$FileDso;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;->mDsos:[Lcom/facebook/soloader/ExoSoSource$FileDso;

    return-object v0
.end method


# virtual methods
.method protected getDsoManifest()Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;

    iget-object v1, p0, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;->mDsos:[Lcom/facebook/soloader/ExoSoSource$FileDso;

    invoke-direct {v0, v1}, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;-><init>([Lcom/facebook/soloader/UnpackingSoSource$Dso;)V

    return-object v0
.end method

.method protected openDsoIterator()Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker$FileBackedInputDsoIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker$FileBackedInputDsoIterator;-><init>(Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;Lcom/facebook/soloader/ExoSoSource$1;)V

    return-object v0
.end method
