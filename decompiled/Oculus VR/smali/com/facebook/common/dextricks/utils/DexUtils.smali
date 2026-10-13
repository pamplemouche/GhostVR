.class public final Lcom/facebook/common/dextricks/utils/DexUtils;
.super Ljava/lang/Object;
.source "DexUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/dextricks/utils/DexUtils$FindApplicationDexException;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findApplicationDexFiles(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/util/List;Ljava/util/List;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List",
            "<",
            "Ldalvik/system/DexFile;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ldalvik/system/DexFile;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/common/dextricks/utils/DexUtils$FindApplicationDexException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 86
    invoke-static {}, Lcom/facebook/common/hiddenapis/StrictModeAllowHiddenApis;->canTryToCallHiddenApis()Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    new-instance v2, Lcom/facebook/common/dextricks/utils/DexUtils$FindApplicationDexException;

    const-string v3, "Cannot call needed hidden apis on this platform"

    invoke-direct {v2, v3}, Lcom/facebook/common/dextricks/utils/DexUtils$FindApplicationDexException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :cond_0
    invoke-static {}, Lcom/facebook/common/hiddenapis/StrictModeAllowHiddenApis;->allowCallingHiddenApisAndReturnOldPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v8

    .line 93
    :try_start_0
    const-string v2, "dalvik.system.BaseDexClassLoader"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 94
    const-string v3, "pathList"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 95
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 96
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 97
    const-string v3, "dalvik.system.DexPathList"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 98
    const-string v4, "dexElements"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 99
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 100
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 101
    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 103
    const-string v3, "dalvik.system.DexPathList$Element"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 104
    const-string v4, "dexFile"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 105
    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 106
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v10, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 107
    const-string v3, "DexUtils"

    const-string v4, "primary dex name: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v10, v5, v11

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-nez v10, :cond_1

    .line 109
    new-instance v2, Lcom/facebook/common/dextricks/utils/DexUtils$FindApplicationDexException;

    const-string v3, "Cannot find a primary dex name"

    invoke-direct {v2, v3}, Lcom/facebook/common/dextricks/utils/DexUtils$FindApplicationDexException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :catch_0
    move-exception v2

    .line 136
    :goto_0
    :try_start_1
    new-instance v3, Lcom/facebook/common/dextricks/utils/DexUtils$FindApplicationDexException;

    const-string v4, "Dalvik system code not of expected form"

    invoke-direct {v3, v4, v2}, Lcom/facebook/common/dextricks/utils/DexUtils$FindApplicationDexException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    :catchall_0
    move-exception v2

    invoke-static {v8}, Lcom/facebook/common/hiddenapis/StrictModeAllowHiddenApis;->restoreOldVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    .line 141
    const-string v3, "DexUtils"

    const-string v6, "Setup multi dex took %d ms."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    throw v2

    .line 112
    :cond_1
    const/4 v4, 0x0

    .line 113
    :try_start_2
    array-length v11, v2

    const/4 v3, 0x0

    move v5, v3

    :goto_1
    if-ge v5, v11, :cond_4

    aget-object v3, v2, v5

    .line 114
    invoke-virtual {v9, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 115
    check-cast v3, Ldalvik/system/DexFile;

    .line 116
    if-nez v3, :cond_2

    .line 117
    const-string v3, "DexUtils"

    const-string v4, "Dex Element does not have a dex file"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v3, 0x1

    .line 113
    :goto_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v3

    goto :goto_1

    .line 121
    :cond_2
    invoke-virtual {v3}, Ldalvik/system/DexFile;->getName()Ljava/lang/String;

    move-result-object v12

    .line 122
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 123
    const-string v13, "DexUtils"

    const-string v14, "Found primary dex %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v4

    goto :goto_2

    .line 126
    :cond_3
    const-string v13, "DexUtils"

    const-string v14, "Found system/other dex %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v3, v4

    goto :goto_2

    .line 131
    :cond_4
    if-nez v4, :cond_5

    const/4 v2, 0x1

    .line 138
    :goto_3
    invoke-static {v8}, Lcom/facebook/common/hiddenapis/StrictModeAllowHiddenApis;->restoreOldVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    .line 141
    const-string v3, "DexUtils"

    const-string v6, "Setup multi dex took %d ms."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return v2

    .line 131
    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    .line 132
    :catch_1
    move-exception v2

    goto/16 :goto_0

    :catch_2
    move-exception v2

    goto/16 :goto_0

    :catch_3
    move-exception v2

    goto/16 :goto_0
.end method
