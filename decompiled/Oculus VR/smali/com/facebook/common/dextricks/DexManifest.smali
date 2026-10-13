.class final Lcom/facebook/common/dextricks/DexManifest;
.super Ljava/lang/Object;
.source "DexManifest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/dextricks/DexManifest$Dex;
    }
.end annotation


# instance fields
.field final dexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

.field final id:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final locator_id:I

.field final locators:Z

.field final name_based_locators:Z

.field final requires:[Ljava/lang/String;

.field final rootRelative:Z

.field final superpack_files:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 43
    const/4 v7, 0x0

    .line 44
    const/4 v6, 0x0

    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v3, 0x0

    .line 48
    const-string v1, "dex"

    .line 49
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 50
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v11, "UTF-8"

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v10, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v2, 0x0

    .line 52
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_a

    .line 53
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_0

    .line 56
    const-string v12, "Secondary program dex metadata: [%s]"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    invoke-static {v12, v13}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    const-string v12, ".root_relative"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 58
    const/4 v7, 0x1

    .line 59
    goto :goto_0

    .line 62
    :cond_1
    const-string v12, ".locators"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 63
    const/4 v6, 0x1

    .line 64
    goto :goto_0

    .line 67
    :cond_2
    const-string v12, ".name_based_locators"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 68
    const/4 v5, 0x1

    .line 69
    goto :goto_0

    .line 72
    :cond_3
    const-string v12, ".superpack_files"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 73
    const-string v4, " "

    invoke-virtual {v11, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 74
    const/4 v11, 0x1

    aget-object v4, v4, v11

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 78
    :cond_4
    const-string v12, ".locator_id"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 79
    const-string v3, " "

    invoke-virtual {v11, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 80
    const/4 v11, 0x1

    aget-object v3, v3, v11

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 84
    :cond_5
    const-string v12, ".id"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 85
    const-string v1, " "

    invoke-virtual {v11, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 86
    const/4 v11, 0x1

    aget-object v1, v1, v11

    goto :goto_0

    .line 90
    :cond_6
    const-string v12, ".requires"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 91
    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 92
    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/16 :goto_0

    .line 50
    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :catchall_0
    move-exception v2

    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    :goto_1
    if-eqz v10, :cond_7

    if-eqz v2, :cond_d

    :try_start_2
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_7
    :goto_2
    throw v1

    .line 96
    :cond_8
    :try_start_3
    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 97
    const-string v12, "ignoring dex metadata pragma [%s]"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    invoke-static {v12, v13}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 104
    :catchall_1
    move-exception v1

    goto :goto_1

    .line 101
    :cond_9
    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 102
    new-instance v12, Lcom/facebook/common/dextricks/DexManifest$Dex;

    const/4 v13, 0x0

    aget-object v13, v11, v13

    const/4 v14, 0x1

    aget-object v14, v11, v14

    const/4 v15, 0x2

    aget-object v11, v11, v15

    invoke-direct {v12, v13, v14, v11}, Lcom/facebook/common/dextricks/DexManifest$Dex;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 104
    :cond_a
    if-eqz v10, :cond_b

    if-eqz v2, :cond_c

    :try_start_4
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 106
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/facebook/common/dextricks/DexManifest;->rootRelative:Z

    .line 107
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/facebook/common/dextricks/DexManifest;->locators:Z

    .line 108
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/facebook/common/dextricks/DexManifest;->name_based_locators:Z

    .line 109
    move-object/from16 v0, p0

    iput v4, v0, Lcom/facebook/common/dextricks/DexManifest;->superpack_files:I

    .line 110
    move-object/from16 v0, p0

    iput v3, v0, Lcom/facebook/common/dextricks/DexManifest;->locator_id:I

    .line 111
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/facebook/common/dextricks/DexManifest;->id:Ljava/lang/String;

    .line 112
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/facebook/common/dextricks/DexManifest;->requires:[Ljava/lang/String;

    .line 113
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/facebook/common/dextricks/DexManifest$Dex;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/common/dextricks/DexManifest$Dex;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/facebook/common/dextricks/DexManifest;->dexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

    .line 114
    return-void

    .line 104
    :catch_1
    move-exception v10

    invoke-virtual {v2, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_c
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    goto :goto_3

    :catch_2
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_d
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    goto/16 :goto_2
.end method
