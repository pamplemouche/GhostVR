.class public final Lcom/facebook/common/dextricks/DexStore$Config;
.super Ljava/lang/Object;
.source "DexStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/dextricks/DexStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/dextricks/DexStore$Config$Builder;
    }
.end annotation


# static fields
.field public static final ART_FILTER_BALANCED:B = 0x4t

.field public static final ART_FILTER_DEFAULT:B = 0x0t

.field public static final ART_FILTER_EVERYTHING:B = 0x6t

.field public static final ART_FILTER_INTERPRET_ONLY:B = 0x2t

.field public static final ART_FILTER_SPACE:B = 0x3t

.field public static final ART_FILTER_SPEED:B = 0x5t

.field public static final ART_FILTER_TIME:B = 0x7t

.field public static final ART_FILTER_VERIFY_NONE:B = 0x1t

.field public static final DALVIK_OPT_ALL:B = 0x3t

.field public static final DALVIK_OPT_DEFAULT:B = 0x0t

.field public static final DALVIK_OPT_FULL:B = 0x4t

.field public static final DALVIK_OPT_NONE:B = 0x1t

.field public static final DALVIK_OPT_VERIFIED:B = 0x2t

.field public static final DALVIK_REGISTER_MAPS_DEFAULT:B = 0x0t

.field public static final DALVIK_REGISTER_MAPS_NO:B = 0x1t

.field public static final DALVIK_REGISTER_MAPS_YES:B = 0x2t

.field public static final DALVIK_VERIFY_ALL:B = 0x3t

.field public static final DALVIK_VERIFY_DEFAULT:B = 0x0t

.field public static final DALVIK_VERIFY_NONE:B = 0x1t

.field public static final DALVIK_VERIFY_REMOTE:B = 0x2t

.field public static final MODE_DEFAULT:B = 0x0t

.field public static final MODE_FORCE_FALLBACK:B = 0x1t

.field public static final MODE_FORCE_TURBO:B = 0x2t

.field public static final MODE_FORCE_XDEX:B = 0x3t

.field public static final SYNC_CONTROL_ASYNC:B = 0x1t

.field public static final SYNC_CONTROL_DEFAULT:B = 0x0t

.field public static final SYNC_CONTROL_SYNC:B = 0x2t

.field public static final VERSION:B = 0x5t


# instance fields
.field public final artFilter:B

.field public final artHugeMethodMax:I

.field public final artLargeMethodMax:I

.field public final artSmallMethodMax:I

.field public final artTinyMethodMax:I

.field public final artTruncatedDexSize:I

.field public final dalvikOptimize:B

.field public final dalvikRegisterMaps:B

.field public final dalvikVerify:B

.field public final enableArtVerifyNone:Z

.field public final enableDex2OatQuickening:Z

.field public final enableMixedMode:Z

.field public final enableMixedModeClassPath:Z

.field public final enableMixedModePgo:Z

.field public final enableOatmeal:Z

.field public final enableOatmealQuickening:Z

.field public final enableQuickening:Z

.field public final mode:B

.field public final pgoCompilerFilter:B

.field public final sync:B


# direct methods
.method private constructor <init>(BBBBBBIIIIIZZZZZZZZB)V
    .locals 1

    .prologue
    .line 2580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2581
    iput-byte p1, p0, Lcom/facebook/common/dextricks/DexStore$Config;->mode:B

    .line 2582
    iput-byte p2, p0, Lcom/facebook/common/dextricks/DexStore$Config;->sync:B

    .line 2583
    iput-byte p3, p0, Lcom/facebook/common/dextricks/DexStore$Config;->dalvikVerify:B

    .line 2584
    iput-byte p4, p0, Lcom/facebook/common/dextricks/DexStore$Config;->dalvikOptimize:B

    .line 2585
    iput-byte p5, p0, Lcom/facebook/common/dextricks/DexStore$Config;->dalvikRegisterMaps:B

    .line 2586
    iput-byte p6, p0, Lcom/facebook/common/dextricks/DexStore$Config;->artFilter:B

    .line 2587
    iput p7, p0, Lcom/facebook/common/dextricks/DexStore$Config;->artHugeMethodMax:I

    .line 2588
    iput p8, p0, Lcom/facebook/common/dextricks/DexStore$Config;->artLargeMethodMax:I

    .line 2589
    iput p9, p0, Lcom/facebook/common/dextricks/DexStore$Config;->artSmallMethodMax:I

    .line 2590
    iput p10, p0, Lcom/facebook/common/dextricks/DexStore$Config;->artTinyMethodMax:I

    .line 2591
    iput p11, p0, Lcom/facebook/common/dextricks/DexStore$Config;->artTruncatedDexSize:I

    .line 2592
    iput-boolean p12, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableArtVerifyNone:Z

    .line 2593
    iput-boolean p13, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableOatmeal:Z

    .line 2594
    iput-boolean p14, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableDex2OatQuickening:Z

    .line 2595
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableOatmealQuickening:Z

    .line 2596
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableQuickening:Z

    .line 2597
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableMixedMode:Z

    .line 2598
    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableMixedModeClassPath:Z

    .line 2599
    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableMixedModePgo:Z

    .line 2600
    move/from16 v0, p20

    iput-byte v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->pgoCompilerFilter:B

    .line 2601
    return-void
.end method

.method synthetic constructor <init>(BBBBBBIIIIIZZZZZZZZBLcom/facebook/common/dextricks/DexStore$1;)V
    .locals 0

    .prologue
    .line 2500
    invoke-direct/range {p0 .. p20}, Lcom/facebook/common/dextricks/DexStore$Config;-><init>(BBBBBBIIIIIZZZZZZZZB)V

    return-void
.end method

.method public static enableOatmealByDefault()Z
    .locals 1

    .prologue
    .line 2604
    invoke-static {}, Lcom/facebook/common/envflags/InternalEnvFlags;->useOatmeal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2605
    invoke-static {}, Lcom/facebook/common/envflags/EnvFlags;->isCtScan()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/facebook/common/dextricks/DalvikConstants;->FB_REDEX_VERIFY_NONE_ENABLED:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static read(Ljava/io/File;)Lcom/facebook/common/dextricks/DexStore$Config;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2893
    new-instance v24, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v23, 0x0

    .line 2894
    :try_start_0
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v2

    .line 2895
    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    .line 2896
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "unexpected version"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2893
    :catch_0
    move-exception v2

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2941
    :catchall_0
    move-exception v3

    move-object/from16 v25, v3

    move-object v3, v2

    move-object/from16 v2, v25

    :goto_0
    if-eqz v24, :cond_0

    if-eqz v3, :cond_4

    :try_start_2
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_1
    throw v2

    .line 2899
    :cond_1
    :try_start_3
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v3

    .line 2900
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v4

    .line 2901
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v5

    .line 2902
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v6

    .line 2903
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v7

    .line 2904
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v8

    .line 2905
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v9

    .line 2906
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v10

    .line 2907
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v11

    .line 2908
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v12

    .line 2909
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v13

    .line 2910
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v14

    .line 2911
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v15

    .line 2912
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v16

    .line 2913
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v17

    .line 2914
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v18

    .line 2915
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v19

    .line 2916
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v20

    .line 2917
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v21

    .line 2918
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v22

    .line 2920
    new-instance v2, Lcom/facebook/common/dextricks/DexStore$Config;

    invoke-direct/range {v2 .. v22}, Lcom/facebook/common/dextricks/DexStore$Config;-><init>(BBBBBBIIIIIZZZZZZZZB)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2941
    if-eqz v24, :cond_2

    if-eqz v23, :cond_3

    :try_start_4
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_2
    return-object v2

    :catch_1
    move-exception v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_2

    :catch_2
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_1

    :catchall_1
    move-exception v2

    move-object/from16 v3, v23

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2802
    if-ne p0, p1, :cond_1

    .line 2827
    :cond_0
    :goto_0
    return v0

    .line 2803
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 2805
    :cond_3
    check-cast p1, Lcom/facebook/common/dextricks/DexStore$Config;

    .line 2807
    iget-byte v2, p0, Lcom/facebook/common/dextricks/DexStore$Config;->mode:B

    iget-byte v3, p1, Lcom/facebook/common/dextricks/DexStore$Config;->mode:B

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 2808
    :cond_4
    iget-byte v2, p0, Lcom/facebook/common/dextricks/DexStore$Config;->sync:B

    iget-byte v3, p1, Lcom/facebook/common/dextricks/DexStore$Config;->sync:B

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 2809
    :cond_5
    iget-byte v2, p0, Lcom/facebook/common/dextricks/DexStore$Config;->dalvikVerify:B

    iget-byte v3, p1, Lcom/facebook/common/dextricks/DexStore$Config;->dalvikVerify:B

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    .line 2810
    :cond_6
    iget-byte v2, p0, Lcom/facebook/common/dextricks/DexStore$Config;->dalvikOptimize:B

    iget-byte v3, p1, Lcom/facebook/common/dextricks/DexStore$Config;->dalvikOptimize:B

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    .line 2811
    :cond_7
    iget-byte v2, p0, Lcom/facebook/common/dextricks/DexStore$Config;->dalvikRegisterMaps:B

    iget-byte v3, p1, Lcom/facebook/common/dextricks/DexStore$Config;->dalvikRegisterMaps:B

    if-eq v2, v3, :cond_8

    move v0, v1

    goto :goto_0

    .line 2812
    :cond_8
    iget-byte v2, p0, Lcom/facebook/common/dextricks/DexStore$Config;->artFilter:B

    iget-byte v3, p1, Lcom/facebook/common/dextricks/DexStore$Config;->artFilter:B

    if-eq v2, v3, :cond_9

    move v0, v1

    goto :goto_0

    .line 2813
    :cond_9
    iget v2, p0, Lcom/facebook/common/dextricks/DexStore$Config;->artHugeMethodMax:I

    iget v3, p1, Lcom/facebook/common/dextricks/DexStore$Config;->artHugeMethodMax:I

    if-eq v2, v3, :cond_a

    move v0, v1

    goto :goto_0

    .line 2814
    :cond_a
    iget v2, p0, Lcom/facebook/common/dextricks/DexStore$Config;->artLargeMethodMax:I

    iget v3, p1, Lcom/facebook/common/dextricks/DexStore$Config;->artLargeMethodMax:I

    if-eq v2, v3, :cond_b

    move v0, v1

    goto :goto_0

    .line 2815
    :cond_b
    iget v2, p0, Lcom/facebook/common/dextricks/DexStore$Config;->artSmallMethodMax:I

    iget v3, p1, Lcom/facebook/common/dextricks/DexStore$Config;->artSmallMethodMax:I

    if-eq v2, v3, :cond_c

    move v0, v1

    goto :goto_0

    .line 2816
    :cond_c
    iget v2, p0, Lcom/facebook/common/dextricks/DexStore$Config;->artTinyMethodMax:I

    iget v3, p1, Lcom/facebook/common/dextricks/DexStore$Config;->artTinyMethodMax:I

    if-eq v2, v3, :cond_d

    move v0, v1

    goto :goto_0

    .line 2817
    :cond_d
    iget v2, p0, Lcom/facebook/common/dextricks/DexStore$Config;->artTruncatedDexSize:I

    iget v3, p1, Lcom/facebook/common/dextricks/DexStore$Config;->artTruncatedDexSize:I

    if-eq v2, v3, :cond_e

    move v0, v1

    goto :goto_0

    .line 2818
    :cond_e
    iget-boolean v2, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableArtVerifyNone:Z

    iget-boolean v3, p1, Lcom/facebook/common/dextricks/DexStore$Config;->enableArtVerifyNone:Z

    if-eq v2, v3, :cond_f

    move v0, v1

    goto :goto_0

    .line 2819
    :cond_f
    iget-boolean v2, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableOatmeal:Z

    iget-boolean v3, p1, Lcom/facebook/common/dextricks/DexStore$Config;->enableOatmeal:Z

    if-eq v2, v3, :cond_10

    move v0, v1

    goto :goto_0

    .line 2820
    :cond_10
    iget-boolean v2, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableDex2OatQuickening:Z

    iget-boolean v3, p1, Lcom/facebook/common/dextricks/DexStore$Config;->enableDex2OatQuickening:Z

    if-eq v2, v3, :cond_11

    move v0, v1

    goto :goto_0

    .line 2821
    :cond_11
    iget-boolean v2, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableOatmealQuickening:Z

    iget-boolean v3, p1, Lcom/facebook/common/dextricks/DexStore$Config;->enableOatmealQuickening:Z

    if-eq v2, v3, :cond_12

    move v0, v1

    goto/16 :goto_0

    .line 2822
    :cond_12
    iget-boolean v2, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableQuickening:Z

    iget-boolean v3, p1, Lcom/facebook/common/dextricks/DexStore$Config;->enableQuickening:Z

    if-eq v2, v3, :cond_13

    move v0, v1

    goto/16 :goto_0

    .line 2823
    :cond_13
    iget-boolean v2, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableMixedMode:Z

    iget-boolean v3, p1, Lcom/facebook/common/dextricks/DexStore$Config;->enableMixedMode:Z

    if-eq v2, v3, :cond_14

    move v0, v1

    goto/16 :goto_0

    .line 2824
    :cond_14
    iget-boolean v2, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableMixedModeClassPath:Z

    iget-boolean v3, p1, Lcom/facebook/common/dextricks/DexStore$Config;->enableMixedModeClassPath:Z

    if-eq v2, v3, :cond_15

    move v0, v1

    goto/16 :goto_0

    .line 2825
    :cond_15
    iget-boolean v2, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableMixedModePgo:Z

    iget-boolean v3, p1, Lcom/facebook/common/dextricks/DexStore$Config;->enableMixedModePgo:Z

    if-eq v2, v3, :cond_16

    move v0, v1

    goto/16 :goto_0

    .line 2826
    :cond_16
    iget-byte v2, p0, Lcom/facebook/common/dextricks/DexStore$Config;->pgoCompilerFilter:B

    iget-byte v3, p1, Lcom/facebook/common/dextricks/DexStore$Config;->pgoCompilerFilter:B

    if-eq v2, v3, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public equalsForBootstrapPurposes(Lcom/facebook/common/dextricks/DexStore$Config;)Z
    .locals 2

    .prologue
    .line 2786
    if-eqz p1, :cond_0

    iget-byte v0, p1, Lcom/facebook/common/dextricks/DexStore$Config;->mode:B

    iget-byte v1, p0, Lcom/facebook/common/dextricks/DexStore$Config;->mode:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p1, Lcom/facebook/common/dextricks/DexStore$Config;->sync:B

    iget-byte v1, p0, Lcom/facebook/common/dextricks/DexStore$Config;->sync:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p1, Lcom/facebook/common/dextricks/DexStore$Config;->artFilter:B

    iget-byte v1, p0, Lcom/facebook/common/dextricks/DexStore$Config;->artFilter:B

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/facebook/common/dextricks/DexStore$Config;->enableArtVerifyNone:Z

    iget-boolean v1, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableArtVerifyNone:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/facebook/common/dextricks/DexStore$Config;->enableOatmeal:Z

    iget-boolean v1, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableOatmeal:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/facebook/common/dextricks/DexStore$Config;->enableDex2OatQuickening:Z

    iget-boolean v1, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableDex2OatQuickening:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/facebook/common/dextricks/DexStore$Config;->enableOatmealQuickening:Z

    iget-boolean v1, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableOatmealQuickening:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/facebook/common/dextricks/DexStore$Config;->enableMixedMode:Z

    iget-boolean v1, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableMixedMode:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/facebook/common/dextricks/DexStore$Config;->enableMixedModeClassPath:Z

    iget-boolean v1, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableMixedModeClassPath:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/facebook/common/dextricks/DexStore$Config;->enableMixedModePgo:Z

    iget-boolean v1, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableMixedModePgo:Z

    if-ne v0, v1, :cond_0

    iget-byte v0, p1, Lcom/facebook/common/dextricks/DexStore$Config;->pgoCompilerFilter:B

    iget-byte v1, p0, Lcom/facebook/common/dextricks/DexStore$Config;->pgoCompilerFilter:B

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2833
    iget-byte v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->mode:B

    add-int/lit16 v0, v0, 0x294b

    .line 2834
    mul-int/lit8 v0, v0, 0x1f

    iget-byte v3, p0, Lcom/facebook/common/dextricks/DexStore$Config;->sync:B

    add-int/2addr v0, v3

    .line 2835
    mul-int/lit8 v0, v0, 0x1f

    iget-byte v3, p0, Lcom/facebook/common/dextricks/DexStore$Config;->dalvikVerify:B

    add-int/2addr v0, v3

    .line 2836
    mul-int/lit8 v0, v0, 0x1f

    iget-byte v3, p0, Lcom/facebook/common/dextricks/DexStore$Config;->dalvikOptimize:B

    add-int/2addr v0, v3

    .line 2837
    mul-int/lit8 v0, v0, 0x1f

    iget-byte v3, p0, Lcom/facebook/common/dextricks/DexStore$Config;->dalvikRegisterMaps:B

    add-int/2addr v0, v3

    .line 2838
    mul-int/lit8 v0, v0, 0x1f

    iget-byte v3, p0, Lcom/facebook/common/dextricks/DexStore$Config;->artFilter:B

    add-int/2addr v0, v3

    .line 2839
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/dextricks/DexStore$Config;->artHugeMethodMax:I

    add-int/2addr v0, v3

    .line 2840
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/dextricks/DexStore$Config;->artLargeMethodMax:I

    add-int/2addr v0, v3

    .line 2841
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/dextricks/DexStore$Config;->artSmallMethodMax:I

    add-int/2addr v0, v3

    .line 2842
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/dextricks/DexStore$Config;->artTinyMethodMax:I

    add-int/2addr v0, v3

    .line 2843
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/dextricks/DexStore$Config;->artTruncatedDexSize:I

    add-int/2addr v0, v3

    .line 2844
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableArtVerifyNone:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    .line 2845
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableOatmeal:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    .line 2846
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableDex2OatQuickening:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    .line 2847
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableOatmealQuickening:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v3

    .line 2848
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableQuickening:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v3

    .line 2849
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableMixedMode:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v3

    .line 2850
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableMixedModeClassPath:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v3

    .line 2851
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableMixedModePgo:Z

    if-eqz v3, :cond_7

    :goto_7
    add-int/2addr v0, v1

    .line 2852
    mul-int/lit8 v0, v0, 0x1f

    iget-byte v1, p0, Lcom/facebook/common/dextricks/DexStore$Config;->pgoCompilerFilter:B

    add-int/2addr v0, v1

    .line 2853
    return v0

    :cond_0
    move v0, v2

    .line 2844
    goto :goto_0

    :cond_1
    move v0, v2

    .line 2845
    goto :goto_1

    :cond_2
    move v0, v2

    .line 2846
    goto :goto_2

    :cond_3
    move v0, v2

    .line 2847
    goto :goto_3

    :cond_4
    move v0, v2

    .line 2848
    goto :goto_4

    :cond_5
    move v0, v2

    .line 2849
    goto :goto_5

    :cond_6
    move v0, v2

    .line 2850
    goto :goto_6

    :cond_7
    move v1, v2

    .line 2851
    goto :goto_7
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 2889
    new-instance v0, Lcom/facebook/common/dextricks/DexStore$Config$Builder;

    invoke-direct {v0}, Lcom/facebook/common/dextricks/DexStore$Config$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/facebook/common/dextricks/DexStore$Config$Builder;->build()Lcom/facebook/common/dextricks/DexStore$Config;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/common/dextricks/DexStore$Config;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public readDepBlock()[B
    .locals 4

    .prologue
    .line 2857
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2859
    :try_start_0
    iget-byte v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->mode:B

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2860
    iget-byte v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->sync:B

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2861
    iget-byte v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->dalvikVerify:B

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2862
    iget-byte v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->dalvikOptimize:B

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2863
    iget-byte v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->dalvikRegisterMaps:B

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2864
    iget-byte v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->artFilter:B

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2865
    iget v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->artHugeMethodMax:I

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2866
    iget v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->artLargeMethodMax:I

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2867
    iget v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->artSmallMethodMax:I

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2868
    iget v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->artTinyMethodMax:I

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2870
    const/16 v0, 0x8

    new-array v0, v0, [Z

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableArtVerifyNone:Z

    aput-boolean v3, v0, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableOatmeal:Z

    aput-boolean v3, v0, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableDex2OatQuickening:Z

    aput-boolean v3, v0, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableOatmealQuickening:Z

    aput-boolean v3, v0, v2

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableQuickening:Z

    aput-boolean v3, v0, v2

    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableMixedMode:Z

    aput-boolean v3, v0, v2

    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableMixedModeClassPath:Z

    aput-boolean v3, v0, v2

    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableMixedModePgo:Z

    aput-boolean v3, v0, v2

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 2881
    iget-byte v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->pgoCompilerFilter:B

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2882
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2884
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public writeAndSync(Ljava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2945
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v2, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2946
    const/4 v0, 0x5

    :try_start_0
    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 2947
    iget-byte v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->mode:B

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 2948
    iget-byte v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->sync:B

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 2949
    iget-byte v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->dalvikVerify:B

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 2950
    iget-byte v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->dalvikOptimize:B

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 2951
    iget-byte v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->dalvikRegisterMaps:B

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 2952
    iget-byte v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->artFilter:B

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 2953
    iget v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->artHugeMethodMax:I

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 2954
    iget v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->artLargeMethodMax:I

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 2955
    iget v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->artSmallMethodMax:I

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 2956
    iget v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->artTinyMethodMax:I

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 2957
    iget v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->artTruncatedDexSize:I

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 2958
    iget-boolean v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableArtVerifyNone:Z

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    .line 2959
    iget-boolean v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableOatmeal:Z

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    .line 2960
    iget-boolean v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableDex2OatQuickening:Z

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    .line 2961
    iget-boolean v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableOatmealQuickening:Z

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    .line 2962
    iget-boolean v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableQuickening:Z

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    .line 2963
    iget-boolean v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableMixedMode:Z

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    .line 2964
    iget-boolean v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableMixedModeClassPath:Z

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    .line 2965
    iget-boolean v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->enableMixedModePgo:Z

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    .line 2966
    iget-byte v0, p0, Lcom/facebook/common/dextricks/DexStore$Config;->pgoCompilerFilter:B

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 2967
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 2968
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2969
    if-eqz v2, :cond_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2970
    :cond_0
    :goto_0
    return-void

    .line 2969
    :catch_0
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    .line 2945
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2969
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    throw v0

    :catch_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method
