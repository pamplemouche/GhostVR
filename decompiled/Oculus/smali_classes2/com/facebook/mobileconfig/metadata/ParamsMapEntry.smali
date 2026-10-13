.class public Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;
.super Ljava/lang/Object;
.source "ParamsMapEntry.java"


# instance fields
.field public final configIndex:I

.field public final configName:Ljava/lang/String;

.field public final isSessionless:Z

.field public final key:I

.field public final paramIndex:I

.field public final paramName:Ljava/lang/String;

.field public final paramType:I

.field public final requireCallsiteDefault:Z

.field public final slotId:I

.field public final stdDefaultValue:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIIZZZ)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;->configName:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;->paramName:Ljava/lang/String;

    .line 42
    iput p3, p0, Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;->key:I

    .line 43
    iput p4, p0, Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;->configIndex:I

    .line 44
    iput p5, p0, Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;->paramIndex:I

    .line 45
    iput p6, p0, Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;->slotId:I

    .line 46
    iput p7, p0, Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;->paramType:I

    .line 47
    iput-boolean p8, p0, Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;->isSessionless:Z

    .line 48
    iput-boolean p9, p0, Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;->requireCallsiteDefault:Z

    .line 49
    iput-boolean p10, p0, Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;->stdDefaultValue:Z

    .line 50
    return-void
.end method

.method public static parseAllParamsMapResource(Ljava/lang/String;Z)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    const-string v2, "v2,"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "current ParamsMap parsing only supports version 2"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_0
    new-instance v19, Ljava/util/LinkedList;

    invoke-direct/range {v19 .. v19}, Ljava/util/LinkedList;-><init>()V

    .line 88
    const/16 v16, 0x1

    .line 89
    const/16 v17, 0x0

    .line 90
    const/4 v6, -0x1

    const/4 v15, -0x1

    const/4 v14, -0x1

    .line 91
    const/4 v2, 0x6

    new-array v0, v2, [I

    move-object/from16 v20, v0

    .line 92
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x6

    if-ge v2, v3, :cond_1

    const/4 v3, -0x1

    aput v3, v20, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    :cond_1
    const-string v3, ""

    const-string v2, ""

    .line 95
    const-string v2, "\\r?\\n"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    const/4 v2, 0x0

    move/from16 v18, v2

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_16

    aget-object v2, v21, v18

    .line 96
    if-eqz v16, :cond_2

    .line 98
    const/4 v2, 0x0

    move v7, v15

    move v4, v2

    move v2, v14

    .line 95
    :goto_2
    add-int/lit8 v5, v18, 0x1

    move/from16 v18, v5

    move v14, v2

    move v15, v7

    move/from16 v16, v4

    goto :goto_1

    .line 102
    :cond_2
    const-string v4, "END"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 104
    const/4 v2, 0x1

    .line 184
    :goto_3
    if-nez v2, :cond_15

    .line 185
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Invalid paramsMapContent: no END marker found"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    :cond_3
    const-string v4, ","

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 109
    const/4 v4, 0x0

    aget-object v4, v5, v4

    const-string v7, "+"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x0

    aget-object v4, v5, v4

    const-string v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 111
    :cond_4
    const/4 v2, 0x0

    aget-object v2, v5, v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 112
    add-int/lit8 v6, v6, 0x1

    .line 114
    const/4 v2, 0x0

    aget-object v2, v5, v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_5

    const/4 v10, 0x1

    .line 116
    :goto_4
    const/4 v9, 0x1

    .line 117
    array-length v2, v5

    const/4 v3, 0x1

    if-le v2, v3, :cond_6

    const/4 v2, 0x1

    aget-object v2, v5, v2

    .line 118
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    aget-object v2, v5, v2

    const/16 v3, 0x10

    .line 119
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 122
    :goto_5
    new-instance v2, Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gk_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIZZZ)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-object v3, v13

    move v2, v14

    move v7, v15

    move/from16 v4, v16

    .line 135
    goto/16 :goto_2

    .line 114
    :cond_5
    const/4 v10, 0x0

    goto :goto_4

    .line 119
    :cond_6
    aget v2, v20, v9

    add-int/lit8 v8, v2, 0x1

    aput v8, v20, v9

    goto :goto_5

    .line 135
    :cond_7
    const/4 v4, 0x0

    aget-object v4, v5, v4

    const-string v7, "*"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 136
    const/4 v2, 0x0

    aget-object v2, v5, v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 137
    add-int/lit8 v6, v6, 0x1

    .line 138
    array-length v2, v5

    const/4 v4, 0x1

    if-le v2, v4, :cond_8

    const/4 v2, 0x1

    aget-object v2, v5, v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 139
    const/4 v2, 0x1

    aget-object v2, v5, v2

    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 143
    :goto_6
    const/4 v7, -0x1

    move/from16 v4, v16

    goto/16 :goto_2

    .line 141
    :cond_8
    const/4 v2, 0x0

    goto :goto_6

    .line 144
    :cond_9
    array-length v4, v5

    const/4 v7, 0x1

    if-le v4, v7, :cond_14

    .line 145
    const/4 v2, 0x0

    aget-object v2, v5, v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v4, "_"

    .line 146
    :goto_7
    add-int/lit8 v7, v15, 0x1

    .line 147
    const/4 v2, 0x1

    aget-object v2, v5, v2

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    move v13, v2

    .line 148
    :goto_8
    array-length v2, v5

    const/4 v8, 0x2

    if-le v2, v8, :cond_e

    const/4 v2, 0x2

    aget-object v2, v5, v2

    .line 149
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    const/4 v2, 0x2

    aget-object v2, v5, v2

    const/16 v8, 0x10

    invoke-static {v2, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 150
    :goto_9
    and-int/lit8 v8, v2, 0x1c

    shr-int/lit8 v9, v8, 0x2

    .line 151
    and-int/lit8 v8, v2, 0x40

    if-eqz v8, :cond_f

    const/4 v12, 0x1

    .line 154
    :goto_a
    array-length v8, v5

    const/4 v10, 0x3

    if-le v8, v10, :cond_10

    const/4 v8, 0x3

    aget-object v8, v5, v8

    .line 155
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_10

    const/4 v8, 0x3

    aget-object v8, v5, v8

    const/16 v10, 0x10

    .line 156
    invoke-static {v8, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 158
    :goto_b
    div-int/lit8 v10, v2, 0x2

    rem-int/lit8 v10, v10, 0x2

    const/4 v11, 0x1

    if-ne v10, v11, :cond_11

    const/4 v10, 0x1

    .line 159
    :goto_c
    rem-int/lit8 v2, v2, 0x2

    const/4 v11, 0x1

    if-ne v2, v11, :cond_12

    const/4 v11, 0x1

    .line 160
    :goto_d
    array-length v2, v5

    const/4 v15, 0x3

    if-le v2, v15, :cond_13

    const/4 v2, 0x3

    aget-object v2, v5, v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    const/4 v2, 0x1

    .line 164
    :goto_e
    if-eqz v2, :cond_a

    if-eqz p1, :cond_b

    .line 165
    :cond_a
    new-instance v2, Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;

    add-int v5, v14, v13

    .line 173
    invoke-static {v9}, Lcom/facebook/mobileconfig/specifier/MobileConfigParamTypeUtil;->valueOf(I)I

    move-result v9

    invoke-direct/range {v2 .. v12}, Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIZZZ)V

    .line 165
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_b
    add-int v2, v14, v13

    move/from16 v4, v16

    .line 179
    goto/16 :goto_2

    .line 145
    :cond_c
    const/4 v2, 0x0

    aget-object v4, v5, v2

    goto :goto_7

    .line 147
    :cond_d
    const/4 v2, 0x1

    aget-object v2, v5, v2

    const/16 v8, 0x10

    invoke-static {v2, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    move v13, v2

    goto :goto_8

    .line 149
    :cond_e
    const/4 v2, 0x4

    goto :goto_9

    .line 151
    :cond_f
    const/4 v12, 0x0

    goto :goto_a

    .line 156
    :cond_10
    aget v8, v20, v9

    add-int/lit8 v8, v8, 0x1

    aput v8, v20, v9

    goto :goto_b

    .line 158
    :cond_11
    const/4 v10, 0x0

    goto :goto_c

    .line 159
    :cond_12
    const/4 v11, 0x0

    goto :goto_d

    .line 160
    :cond_13
    const/4 v2, 0x0

    goto :goto_e

    .line 180
    :cond_14
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found incognible line : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 187
    :cond_15
    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2

    :cond_16
    move/from16 v2, v17

    goto/16 :goto_3
.end method

.method public static parseParamsMapResource(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;->parseAllParamsMapResource(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSpecifier()J
    .locals 7

    .prologue
    .line 53
    iget v0, p0, Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;->paramType:I

    iget v1, p0, Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;->configIndex:I

    iget v2, p0, Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;->paramIndex:I

    iget v3, p0, Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;->slotId:I

    iget-boolean v4, p0, Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;->isSessionless:Z

    iget-boolean v5, p0, Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;->requireCallsiteDefault:Z

    iget-boolean v6, p0, Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;->stdDefaultValue:Z

    invoke-static/range {v0 .. v6}, Lcom/facebook/mobileconfig/specifier/MobileConfigSpecifierUtil;->makeSpecifier(IIIIZZZ)J

    move-result-wide v0

    return-wide v0
.end method
