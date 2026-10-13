.class final Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperimentsLoaderWorker;
.super Ljava/lang/Object;
.source "FbColdStartExperimentsLoaderWorker.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defaultValues()Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;
    .locals 133

    .prologue
    .line 1334
    new-instance v0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    const/16 v26, -0x1

    const/16 v27, 0x0

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    const-wide/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x1

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x3

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, -0x1

    const/16 v73, -0x1

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    const/16 v84, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x13

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    const/16 v92, 0x0

    const/16 v93, 0x0

    const/16 v94, 0x0

    const/16 v95, 0x0

    const/16 v96, 0x0

    const/16 v97, 0x0

    const/16 v98, 0x0

    const/16 v99, 0x0

    const/16 v100, 0x0

    const/16 v101, 0x0

    const-wide/16 v102, 0x0

    const/16 v104, 0x0

    const/16 v105, 0x0

    const-wide v106, 0x3ff3333333333333L    # 1.2

    const/16 v108, 0x1

    const/16 v109, 0x0

    const/16 v110, 0x0

    const/16 v111, 0x0

    const/16 v112, 0x0

    const/16 v113, 0x0

    const/16 v114, 0x0

    const/16 v115, 0x0

    const/16 v116, 0x0

    const/16 v117, 0x0

    const/16 v118, 0x0

    const/16 v119, 0x0

    const/16 v120, 0x0

    const/16 v121, 0x0

    const/16 v122, 0x0

    const/16 v123, 0x0

    const/16 v124, 0x0

    const/16 v125, 0x0

    const/16 v126, 0x0

    const/16 v127, 0x0

    const/16 v128, 0x0

    const/16 v129, 0x0

    const/16 v130, 0x0

    const/16 v131, 0x0

    const/16 v132, 0x0

    invoke-direct/range {v0 .. v132}, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;-><init>(Ljava/lang/String;ZIIIIZIZIIZZZIZZZZJZZDIZDDIDZIZIIZIIZZIZZZZZZZZZZZZZZZZZIZIIZZZZZIIIZZZZZZZZZZZIZIZIZZZZZIIZZZIDZZDIIIZZZIIIZZZZIIIIIIIIIIZZ)V

    return-object v0
.end method

.method public static readBuffer(Ljava/nio/ByteBuffer;)Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;
    .locals 144
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v135

    .line 15
    const/4 v2, 0x1

    move/from16 v0, v135

    if-lt v0, v2, :cond_0

    const/4 v2, 0x2

    move/from16 v0, v135

    if-le v0, v2, :cond_1

    .line 16
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Version incorrect: %d not between 1 and 2"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v135 .. v135}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 18
    :cond_1
    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v136

    .line 20
    const-string v3, ""

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v8, 0x0

    .line 26
    const/4 v9, 0x0

    .line 27
    const/4 v10, 0x0

    .line 28
    const/4 v11, 0x0

    .line 29
    const/4 v12, 0x0

    .line 30
    const/4 v13, 0x0

    .line 31
    const/4 v14, 0x0

    .line 32
    const/4 v15, 0x0

    .line 33
    const/16 v16, 0x1

    .line 34
    const/16 v17, 0x0

    .line 35
    const/16 v18, 0x0

    .line 36
    const/16 v19, 0x0

    .line 37
    const/16 v20, 0x0

    .line 38
    const/16 v21, 0x0

    .line 39
    const-wide/16 v22, 0x0

    .line 40
    const/16 v24, 0x0

    .line 41
    const/16 v25, 0x0

    .line 42
    const-wide/high16 v26, -0x4010000000000000L    # -1.0

    .line 43
    const/16 v28, -0x1

    .line 44
    const/16 v29, 0x0

    .line 45
    const-wide/high16 v30, -0x4010000000000000L    # -1.0

    .line 46
    const-wide/16 v32, 0x0

    .line 47
    const/16 v34, 0x0

    .line 48
    const-wide/16 v35, 0x0

    .line 49
    const/16 v37, 0x0

    .line 50
    const/16 v38, 0x1

    .line 51
    const/16 v39, 0x0

    .line 52
    const/16 v40, 0x0

    .line 53
    const/16 v41, 0x0

    .line 54
    const/16 v42, 0x0

    .line 55
    const/16 v43, 0x0

    .line 56
    const/16 v44, 0x0

    .line 57
    const/16 v45, 0x0

    .line 58
    const/16 v46, 0x0

    .line 59
    const/16 v47, 0x3

    .line 60
    const/16 v48, 0x0

    .line 61
    const/16 v49, 0x0

    .line 62
    const/16 v50, 0x0

    .line 63
    const/16 v51, 0x0

    .line 64
    const/16 v52, 0x0

    .line 65
    const/16 v53, 0x0

    .line 66
    const/16 v54, 0x0

    .line 67
    const/16 v55, 0x0

    .line 68
    const/16 v56, 0x0

    .line 69
    const/16 v57, 0x0

    .line 70
    const/16 v58, 0x0

    .line 71
    const/16 v59, 0x0

    .line 72
    const/16 v60, 0x0

    .line 73
    const/16 v61, 0x0

    .line 74
    const/16 v62, 0x0

    .line 75
    const/16 v63, 0x0

    .line 76
    const/16 v64, 0x0

    .line 77
    const/16 v65, 0x0

    .line 78
    const/16 v66, 0x0

    .line 79
    const/16 v67, 0x0

    .line 80
    const/16 v68, 0x0

    .line 81
    const/16 v69, 0x0

    .line 82
    const/16 v70, 0x0

    .line 83
    const/16 v71, 0x0

    .line 84
    const/16 v72, 0x0

    .line 85
    const/16 v73, 0x0

    .line 86
    const/16 v74, -0x1

    .line 87
    const/16 v75, -0x1

    .line 88
    const/16 v76, 0x0

    .line 89
    const/16 v77, 0x0

    .line 90
    const/16 v78, 0x0

    .line 91
    const/16 v79, 0x0

    .line 92
    const/16 v80, 0x0

    .line 93
    const/16 v81, 0x0

    .line 94
    const/16 v82, 0x0

    .line 95
    const/16 v83, 0x0

    .line 96
    const/16 v84, 0x0

    .line 97
    const/16 v85, 0x0

    .line 98
    const/16 v86, 0x0

    .line 99
    const/16 v87, 0x0

    .line 100
    const/16 v88, 0x13

    .line 101
    const/16 v89, 0x0

    .line 102
    const/16 v90, 0x0

    .line 103
    const/16 v91, 0x0

    .line 104
    const/16 v92, 0x0

    .line 105
    const/16 v93, 0x0

    .line 106
    const/16 v94, 0x0

    .line 107
    const/16 v95, 0x0

    .line 108
    const/16 v96, 0x0

    .line 109
    const/16 v97, 0x0

    .line 110
    const/16 v98, 0x0

    .line 111
    const/16 v99, 0x0

    .line 112
    const/16 v100, 0x0

    .line 113
    const/16 v101, 0x0

    .line 114
    const/16 v102, 0x0

    .line 115
    const/16 v103, 0x0

    .line 116
    const-wide/16 v104, 0x0

    .line 117
    const/16 v106, 0x0

    .line 118
    const/16 v107, 0x0

    .line 119
    const-wide v108, 0x3ff3333333333333L    # 1.2

    .line 120
    const/16 v110, 0x1

    .line 121
    const/16 v111, 0x0

    .line 122
    const/16 v112, 0x0

    .line 123
    const/16 v113, 0x0

    .line 124
    const/16 v114, 0x0

    .line 125
    const/16 v115, 0x0

    .line 126
    const/16 v116, 0x0

    .line 127
    const/16 v117, 0x0

    .line 128
    const/16 v118, 0x0

    .line 129
    const/16 v119, 0x0

    .line 130
    const/16 v120, 0x0

    .line 131
    const/16 v121, 0x0

    .line 132
    const/16 v122, 0x0

    .line 133
    const/16 v123, 0x0

    .line 134
    const/16 v124, 0x0

    .line 135
    const/16 v125, 0x0

    .line 136
    const/16 v126, 0x0

    .line 137
    const/16 v127, 0x0

    .line 138
    const/16 v128, 0x0

    .line 139
    const/16 v129, 0x0

    .line 140
    const/16 v130, 0x0

    .line 141
    const/16 v131, 0x0

    .line 142
    const/16 v132, 0x0

    .line 143
    const/16 v133, 0x0

    .line 144
    const/16 v134, 0x0

    .line 147
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v137

    .line 148
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 149
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v138

    .line 150
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    mul-int/lit8 v139, v138, 0x8

    sub-int v2, v2, v139

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 151
    move/from16 v0, v138

    new-array v0, v0, [J

    move-object/from16 v139, v0

    .line 152
    const/4 v2, 0x0

    :goto_0
    move/from16 v0, v138

    if-ge v2, v0, :cond_2

    .line 153
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v140

    aput-wide v140, v139, v2

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v137

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 159
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 160
    const/16 v137, -0x1

    move/from16 v0, v137

    if-ne v2, v0, :cond_9

    .line 745
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 746
    const/16 v137, -0x1

    move/from16 v0, v137

    if-ne v2, v0, :cond_6d

    .line 1076
    :cond_5
    :goto_3
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 1077
    const/16 v137, -0x1

    move/from16 v0, v137

    if-ne v2, v0, :cond_7c

    .line 1110
    :cond_6
    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 1111
    const/16 v137, -0x1

    move/from16 v0, v137

    if-ne v2, v0, :cond_7f

    .line 1170
    const/4 v2, 0x2

    move/from16 v0, v135

    if-lt v0, v2, :cond_8

    move-object v2, v3

    .line 1174
    :cond_7
    :goto_5
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 1175
    const/16 v135, -0x1

    move/from16 v0, v135

    if-ne v3, v0, :cond_83

    move-object v3, v2

    .line 1206
    :cond_8
    new-instance v2, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;

    invoke-direct/range {v2 .. v134}, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;-><init>(Ljava/lang/String;ZIIIIZIZIIZZZIZZZZJZZDIZDDIDZIZIIZIIZZIZZZZZZZZZZZZZZZZZIZIIZZZZZIIIZZZZZZZZZZZIZIZIZZZZZIIZZZIDZZDIIIZZZIIIZZZZIIIIIIIIIIZZ)V

    return-object v2

    .line 162
    :cond_9
    aget-wide v140, v139, v2

    const-wide v142, 0x7499800059408e3bL    # 4.6738700945639036E253

    cmp-long v137, v140, v142

    if-nez v137, :cond_b

    .line 165
    :goto_6
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 166
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_3

    .line 169
    packed-switch v2, :pswitch_data_0

    .line 175
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    goto :goto_6

    .line 171
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    :goto_7
    move v4, v2

    .line 172
    goto :goto_6

    .line 171
    :cond_a
    const/4 v2, 0x0

    goto :goto_7

    .line 179
    :cond_b
    aget-wide v140, v139, v2

    const-wide v142, -0x2ebc20d463434e2L

    cmp-long v137, v140, v142

    if-nez v137, :cond_f

    .line 182
    :goto_8
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 183
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_3

    .line 186
    sparse-switch v2, :sswitch_data_0

    .line 198
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    goto :goto_8

    .line 188
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    :goto_9
    move v9, v2

    .line 189
    goto :goto_8

    .line 188
    :cond_c
    const/4 v2, 0x0

    goto :goto_9

    .line 191
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    :goto_a
    move v11, v2

    .line 192
    goto :goto_8

    .line 191
    :cond_d
    const/4 v2, 0x0

    goto :goto_a

    .line 194
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    :goto_b
    move v14, v2

    .line 195
    goto :goto_8

    .line 194
    :cond_e
    const/4 v2, 0x0

    goto :goto_b

    .line 202
    :cond_f
    aget-wide v140, v139, v2

    const-wide v142, -0x81979a526636339L    # -3.718669127529469E269

    cmp-long v137, v140, v142

    if-nez v137, :cond_11

    .line 205
    :goto_c
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 206
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_3

    .line 209
    packed-switch v2, :pswitch_data_1

    .line 215
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    goto :goto_c

    .line 211
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    :goto_d
    move v15, v2

    .line 212
    goto :goto_c

    .line 211
    :cond_10
    const/4 v2, 0x0

    goto :goto_d

    .line 219
    :cond_11
    aget-wide v140, v139, v2

    const-wide v142, -0x49c73703343cbb9eL    # -1.6958658633674277E-47

    cmp-long v137, v140, v142

    if-nez v137, :cond_13

    .line 222
    :goto_e
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 223
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_3

    .line 226
    packed-switch v2, :pswitch_data_2

    .line 232
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    goto :goto_e

    .line 228
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    :goto_f
    move/from16 v16, v2

    .line 229
    goto :goto_e

    .line 228
    :cond_12
    const/4 v2, 0x0

    goto :goto_f

    .line 236
    :cond_13
    aget-wide v140, v139, v2

    const-wide v142, 0x43e73e6e834053faL    # 1.3399180971419357E19

    cmp-long v137, v140, v142

    if-nez v137, :cond_16

    .line 239
    :goto_10
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 240
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_3

    .line 243
    packed-switch v2, :pswitch_data_3

    .line 252
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    goto :goto_10

    .line 245
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    :goto_11
    move/from16 v18, v2

    .line 246
    goto :goto_10

    .line 245
    :cond_14
    const/4 v2, 0x0

    goto :goto_11

    .line 248
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    :goto_12
    move/from16 v19, v2

    .line 249
    goto :goto_10

    .line 248
    :cond_15
    const/4 v2, 0x0

    goto :goto_12

    .line 256
    :cond_16
    aget-wide v140, v139, v2

    const-wide v142, 0x7fda47b940a0e228L    # 7.381825320554681E307

    cmp-long v137, v140, v142

    if-nez v137, :cond_18

    .line 259
    :goto_13
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 260
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_3

    .line 263
    packed-switch v2, :pswitch_data_4

    .line 269
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    goto :goto_13

    .line 265
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    :goto_14
    move/from16 v20, v2

    .line 266
    goto :goto_13

    .line 265
    :cond_17
    const/4 v2, 0x0

    goto :goto_14

    .line 273
    :cond_18
    aget-wide v140, v139, v2

    const-wide v142, 0x308b39d188e712a3L    # 7.524065915390022E-75

    cmp-long v137, v140, v142

    if-nez v137, :cond_1c

    .line 276
    :goto_15
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 277
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_3

    .line 280
    packed-switch v2, :pswitch_data_5

    .line 292
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    goto :goto_15

    .line 282
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_19

    const/4 v2, 0x1

    :goto_16
    move/from16 v21, v2

    .line 283
    goto :goto_15

    .line 282
    :cond_19
    const/4 v2, 0x0

    goto :goto_16

    .line 285
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    :goto_17
    move/from16 v24, v2

    .line 286
    goto :goto_15

    .line 285
    :cond_1a
    const/4 v2, 0x0

    goto :goto_17

    .line 288
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    :goto_18
    move/from16 v25, v2

    .line 289
    goto :goto_15

    .line 288
    :cond_1b
    const/4 v2, 0x0

    goto :goto_18

    .line 296
    :cond_1c
    aget-wide v140, v139, v2

    const-wide v142, -0x23a3f33b07588c8cL    # -8.155095756380556E136

    cmp-long v137, v140, v142

    if-nez v137, :cond_1e

    .line 299
    :goto_19
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 300
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_3

    .line 303
    packed-switch v2, :pswitch_data_6

    .line 309
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    goto :goto_19

    .line 305
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    :goto_1a
    move/from16 v29, v2

    .line 306
    goto :goto_19

    .line 305
    :cond_1d
    const/4 v2, 0x0

    goto :goto_1a

    .line 313
    :cond_1e
    aget-wide v140, v139, v2

    const-wide v142, 0x115503da5edbac3bL

    cmp-long v137, v140, v142

    if-nez v137, :cond_21

    .line 316
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 317
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_3

    .line 320
    packed-switch v2, :pswitch_data_7

    .line 329
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    goto :goto_1b

    .line 322
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x1

    :goto_1c
    move/from16 v37, v2

    .line 323
    goto :goto_1b

    .line 322
    :cond_1f
    const/4 v2, 0x0

    goto :goto_1c

    .line 325
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_20

    const/4 v2, 0x1

    :goto_1d
    move/from16 v39, v2

    .line 326
    goto :goto_1b

    .line 325
    :cond_20
    const/4 v2, 0x0

    goto :goto_1d

    .line 333
    :cond_21
    aget-wide v140, v139, v2

    const-wide v142, 0x3e62f084a404d3e5L    # 3.527761238895735E-8

    cmp-long v137, v140, v142

    if-nez v137, :cond_23

    .line 336
    :goto_1e
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 337
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_3

    .line 340
    packed-switch v2, :pswitch_data_8

    .line 346
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    goto :goto_1e

    .line 342
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_22

    const/4 v2, 0x1

    :goto_1f
    move/from16 v42, v2

    .line 343
    goto :goto_1e

    .line 342
    :cond_22
    const/4 v2, 0x0

    goto :goto_1f

    .line 350
    :cond_23
    aget-wide v140, v139, v2

    const-wide v142, 0x7b1144b1307d008cL    # 6.419574187948456E284

    cmp-long v137, v140, v142

    if-nez v137, :cond_25

    .line 353
    :goto_20
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 354
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_3

    .line 357
    packed-switch v2, :pswitch_data_9

    .line 363
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    goto :goto_20

    .line 359
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_24

    const/4 v2, 0x1

    :goto_21
    move/from16 v45, v2

    .line 360
    goto :goto_20

    .line 359
    :cond_24
    const/4 v2, 0x0

    goto :goto_21

    .line 367
    :cond_25
    aget-wide v140, v139, v2

    const-wide v142, -0x21a16c629490f34L

    cmp-long v137, v140, v142

    if-nez v137, :cond_2a

    .line 370
    :goto_22
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 371
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_3

    .line 374
    packed-switch v2, :pswitch_data_a

    .line 389
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    goto :goto_22

    .line 376
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, 0x1

    :goto_23
    move/from16 v46, v2

    .line 377
    goto :goto_22

    .line 376
    :cond_26
    const/4 v2, 0x0

    goto :goto_23

    .line 379
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_27

    const/4 v2, 0x1

    :goto_24
    move/from16 v48, v2

    .line 380
    goto :goto_22

    .line 379
    :cond_27
    const/4 v2, 0x0

    goto :goto_24

    .line 382
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_28

    const/4 v2, 0x1

    :goto_25
    move/from16 v49, v2

    .line 383
    goto :goto_22

    .line 382
    :cond_28
    const/4 v2, 0x0

    goto :goto_25

    .line 385
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_29

    const/4 v2, 0x1

    :goto_26
    move/from16 v50, v2

    .line 386
    goto :goto_22

    .line 385
    :cond_29
    const/4 v2, 0x0

    goto :goto_26

    .line 393
    :cond_2a
    aget-wide v140, v139, v2

    const-wide v142, -0xc90f2bfbe736766L

    cmp-long v137, v140, v142

    if-nez v137, :cond_2e

    .line 396
    :goto_27
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 397
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_3

    .line 400
    packed-switch v2, :pswitch_data_b

    .line 412
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    goto :goto_27

    .line 402
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v2, 0x1

    :goto_28
    move/from16 v51, v2

    .line 403
    goto :goto_27

    .line 402
    :cond_2b
    const/4 v2, 0x0

    goto :goto_28

    .line 405
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_2c

    const/4 v2, 0x1

    :goto_29
    move/from16 v52, v2

    .line 406
    goto :goto_27

    .line 405
    :cond_2c
    const/4 v2, 0x0

    goto :goto_29

    .line 408
    :pswitch_17
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_2d

    const/4 v2, 0x1

    :goto_2a
    move/from16 v53, v2

    .line 409
    goto :goto_27

    .line 408
    :cond_2d
    const/4 v2, 0x0

    goto :goto_2a

    .line 416
    :cond_2e
    aget-wide v140, v139, v2

    const-wide v142, -0x240772b672b41dfdL    # -1.1153296415712993E135

    cmp-long v137, v140, v142

    if-nez v137, :cond_32

    .line 419
    :goto_2b
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 420
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_3

    .line 423
    packed-switch v2, :pswitch_data_c

    .line 435
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    goto :goto_2b

    .line 425
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v2, 0x1

    :goto_2c
    move/from16 v54, v2

    .line 426
    goto :goto_2b

    .line 425
    :cond_2f
    const/4 v2, 0x0

    goto :goto_2c

    .line 428
    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_30

    const/4 v2, 0x1

    :goto_2d
    move/from16 v55, v2

    .line 429
    goto :goto_2b

    .line 428
    :cond_30
    const/4 v2, 0x0

    goto :goto_2d

    .line 431
    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_31

    const/4 v2, 0x1

    :goto_2e
    move/from16 v56, v2

    .line 432
    goto :goto_2b

    .line 431
    :cond_31
    const/4 v2, 0x0

    goto :goto_2e

    .line 439
    :cond_32
    aget-wide v140, v139, v2

    const-wide v142, 0x7ffc4e2ae70d26d0L

    cmp-long v137, v140, v142

    if-nez v137, :cond_36

    .line 442
    :goto_2f
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 443
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_3

    .line 446
    packed-switch v2, :pswitch_data_d

    .line 458
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    goto :goto_2f

    .line 448
    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_33

    const/4 v2, 0x1

    :goto_30
    move/from16 v57, v2

    .line 449
    goto :goto_2f

    .line 448
    :cond_33
    const/4 v2, 0x0

    goto :goto_30

    .line 451
    :pswitch_1c
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_34

    const/4 v2, 0x1

    :goto_31
    move/from16 v58, v2

    .line 452
    goto :goto_2f

    .line 451
    :cond_34
    const/4 v2, 0x0

    goto :goto_31

    .line 454
    :pswitch_1d
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_35

    const/4 v2, 0x1

    :goto_32
    move/from16 v59, v2

    .line 455
    goto :goto_2f

    .line 454
    :cond_35
    const/4 v2, 0x0

    goto :goto_32

    .line 462
    :cond_36
    aget-wide v140, v139, v2

    const-wide v142, -0x30e555e8ecd913b3L    # -1.1777985664727822E73

    cmp-long v137, v140, v142

    if-nez v137, :cond_3a

    .line 465
    :goto_33
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 466
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_3

    .line 469
    packed-switch v2, :pswitch_data_e

    .line 481
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    goto :goto_33

    .line 471
    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_37

    const/4 v2, 0x1

    :goto_34
    move/from16 v60, v2

    .line 472
    goto :goto_33

    .line 471
    :cond_37
    const/4 v2, 0x0

    goto :goto_34

    .line 474
    :pswitch_1f
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_38

    const/4 v2, 0x1

    :goto_35
    move/from16 v61, v2

    .line 475
    goto :goto_33

    .line 474
    :cond_38
    const/4 v2, 0x0

    goto :goto_35

    .line 477
    :pswitch_20
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_39

    const/4 v2, 0x1

    :goto_36
    move/from16 v62, v2

    .line 478
    goto :goto_33

    .line 477
    :cond_39
    const/4 v2, 0x0

    goto :goto_36

    .line 485
    :cond_3a
    aget-wide v140, v139, v2

    const-wide v142, -0x52233f209c4f5cceL    # -9.033802913171843E-88

    cmp-long v137, v140, v142

    if-nez v137, :cond_3e

    .line 488
    :goto_37
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 489
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_3

    .line 492
    packed-switch v2, :pswitch_data_f

    .line 504
    :pswitch_21
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    goto :goto_37

    .line 494
    :pswitch_22
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_3b

    const/4 v2, 0x1

    :goto_38
    move/from16 v63, v2

    .line 495
    goto :goto_37

    .line 494
    :cond_3b
    const/4 v2, 0x0

    goto :goto_38

    .line 497
    :pswitch_23
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_3c

    const/4 v2, 0x1

    :goto_39
    move/from16 v64, v2

    .line 498
    goto :goto_37

    .line 497
    :cond_3c
    const/4 v2, 0x0

    goto :goto_39

    .line 500
    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_3d

    const/4 v2, 0x1

    :goto_3a
    move/from16 v66, v2

    .line 501
    goto :goto_37

    .line 500
    :cond_3d
    const/4 v2, 0x0

    goto :goto_3a

    .line 508
    :cond_3e
    aget-wide v140, v139, v2

    const-wide v142, 0x7ef12ce13a90f30aL    # 2.944559093972289E303

    cmp-long v137, v140, v142

    if-nez v137, :cond_41

    .line 511
    :goto_3b
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 512
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_3

    .line 515
    packed-switch v2, :pswitch_data_10

    .line 524
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    goto :goto_3b

    .line 517
    :pswitch_25
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_3f

    const/4 v2, 0x1

    :goto_3c
    move/from16 v69, v2

    .line 518
    goto :goto_3b

    .line 517
    :cond_3f
    const/4 v2, 0x0

    goto :goto_3c

    .line 520
    :pswitch_26
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_40

    const/4 v2, 0x1

    :goto_3d
    move/from16 v70, v2

    .line 521
    goto :goto_3b

    .line 520
    :cond_40
    const/4 v2, 0x0

    goto :goto_3d

    .line 528
    :cond_41
    aget-wide v140, v139, v2

    const-wide v142, -0x64bcaecfeb4548a2L    # -2.383501271035605E-177

    cmp-long v137, v140, v142

    if-nez v137, :cond_45

    .line 531
    :goto_3e
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 532
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_3

    .line 535
    packed-switch v2, :pswitch_data_11

    .line 547
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    goto :goto_3e

    .line 537
    :pswitch_27
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_42

    const/4 v2, 0x1

    :goto_3f
    move/from16 v71, v2

    .line 538
    goto :goto_3e

    .line 537
    :cond_42
    const/4 v2, 0x0

    goto :goto_3f

    .line 540
    :pswitch_28
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_43

    const/4 v2, 0x1

    :goto_40
    move/from16 v72, v2

    .line 541
    goto :goto_3e

    .line 540
    :cond_43
    const/4 v2, 0x0

    goto :goto_40

    .line 543
    :pswitch_29
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_44

    const/4 v2, 0x1

    :goto_41
    move/from16 v73, v2

    .line 544
    goto :goto_3e

    .line 543
    :cond_44
    const/4 v2, 0x0

    goto :goto_41

    .line 551
    :cond_45
    aget-wide v140, v139, v2

    const-wide v142, 0x5a77d26083d90c76L    # 6.450189637774505E127

    cmp-long v137, v140, v142

    if-nez v137, :cond_47

    .line 554
    :goto_42
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 555
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_3

    .line 558
    packed-switch v2, :pswitch_data_12

    .line 564
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    goto :goto_42

    .line 560
    :pswitch_2a
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_46

    const/4 v2, 0x1

    :goto_43
    move/from16 v77, v2

    .line 561
    goto :goto_42

    .line 560
    :cond_46
    const/4 v2, 0x0

    goto :goto_43

    .line 568
    :cond_47
    aget-wide v140, v139, v2

    const-wide v142, 0x5e0cfed52abc0a4bL    # 1.1314559164265081E145

    cmp-long v137, v140, v142

    if-nez v137, :cond_52

    .line 571
    :goto_44
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 572
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_3

    .line 575
    packed-switch v2, :pswitch_data_13

    .line 608
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    goto :goto_44

    .line 577
    :pswitch_2b
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_48

    const/4 v2, 0x1

    :goto_45
    move/from16 v78, v2

    .line 578
    goto :goto_44

    .line 577
    :cond_48
    const/4 v2, 0x0

    goto :goto_45

    .line 580
    :pswitch_2c
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_49

    const/4 v2, 0x1

    :goto_46
    move/from16 v79, v2

    .line 581
    goto :goto_44

    .line 580
    :cond_49
    const/4 v2, 0x0

    goto :goto_46

    .line 583
    :pswitch_2d
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_4a

    const/4 v2, 0x1

    :goto_47
    move/from16 v80, v2

    .line 584
    goto :goto_44

    .line 583
    :cond_4a
    const/4 v2, 0x0

    goto :goto_47

    .line 586
    :pswitch_2e
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_4b

    const/4 v2, 0x1

    :goto_48
    move/from16 v81, v2

    .line 587
    goto :goto_44

    .line 586
    :cond_4b
    const/4 v2, 0x0

    goto :goto_48

    .line 589
    :pswitch_2f
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_4c

    const/4 v2, 0x1

    :goto_49
    move/from16 v82, v2

    .line 590
    goto :goto_44

    .line 589
    :cond_4c
    const/4 v2, 0x0

    goto :goto_49

    .line 592
    :pswitch_30
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_4d

    const/4 v2, 0x1

    :goto_4a
    move/from16 v83, v2

    .line 593
    goto :goto_44

    .line 592
    :cond_4d
    const/4 v2, 0x0

    goto :goto_4a

    .line 595
    :pswitch_31
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_4e

    const/4 v2, 0x1

    :goto_4b
    move/from16 v84, v2

    .line 596
    goto :goto_44

    .line 595
    :cond_4e
    const/4 v2, 0x0

    goto :goto_4b

    .line 598
    :pswitch_32
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_4f

    const/4 v2, 0x1

    :goto_4c
    move/from16 v85, v2

    .line 599
    goto :goto_44

    .line 598
    :cond_4f
    const/4 v2, 0x0

    goto :goto_4c

    .line 601
    :pswitch_33
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_50

    const/4 v2, 0x1

    :goto_4d
    move/from16 v86, v2

    .line 602
    goto :goto_44

    .line 601
    :cond_50
    const/4 v2, 0x0

    goto :goto_4d

    .line 604
    :pswitch_34
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_51

    const/4 v2, 0x1

    :goto_4e
    move/from16 v87, v2

    .line 605
    goto/16 :goto_44

    .line 604
    :cond_51
    const/4 v2, 0x0

    goto :goto_4e

    .line 612
    :cond_52
    aget-wide v140, v139, v2

    const-wide v142, -0x532fa6b404961ee1L    # -7.837682035766678E-93

    cmp-long v137, v140, v142

    if-nez v137, :cond_54

    .line 615
    :goto_4f
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 616
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_3

    .line 619
    packed-switch v2, :pswitch_data_14

    .line 625
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    goto :goto_4f

    .line 621
    :pswitch_35
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_53

    const/4 v2, 0x1

    :goto_50
    move/from16 v89, v2

    .line 622
    goto :goto_4f

    .line 621
    :cond_53
    const/4 v2, 0x0

    goto :goto_50

    .line 629
    :cond_54
    aget-wide v140, v139, v2

    const-wide v142, -0x1cf53e21da185e0cL    # -1.2622628693082689E169

    cmp-long v137, v140, v142

    if-nez v137, :cond_62

    .line 632
    :goto_51
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 633
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_3

    .line 636
    packed-switch v2, :pswitch_data_15

    .line 678
    :pswitch_36
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    goto :goto_51

    .line 638
    :pswitch_37
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_55

    const/4 v2, 0x1

    :goto_52
    move/from16 v91, v2

    .line 639
    goto :goto_51

    .line 638
    :cond_55
    const/4 v2, 0x0

    goto :goto_52

    .line 641
    :pswitch_38
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_56

    const/4 v2, 0x1

    :goto_53
    move/from16 v93, v2

    .line 642
    goto :goto_51

    .line 641
    :cond_56
    const/4 v2, 0x0

    goto :goto_53

    .line 644
    :pswitch_39
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_57

    const/4 v2, 0x1

    :goto_54
    move/from16 v94, v2

    .line 645
    goto :goto_51

    .line 644
    :cond_57
    const/4 v2, 0x0

    goto :goto_54

    .line 647
    :pswitch_3a
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_58

    const/4 v2, 0x1

    :goto_55
    move/from16 v95, v2

    .line 648
    goto :goto_51

    .line 647
    :cond_58
    const/4 v2, 0x0

    goto :goto_55

    .line 650
    :pswitch_3b
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_59

    const/4 v2, 0x1

    :goto_56
    move/from16 v96, v2

    .line 651
    goto :goto_51

    .line 650
    :cond_59
    const/4 v2, 0x0

    goto :goto_56

    .line 653
    :pswitch_3c
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_5a

    const/4 v2, 0x1

    :goto_57
    move/from16 v97, v2

    .line 654
    goto :goto_51

    .line 653
    :cond_5a
    const/4 v2, 0x0

    goto :goto_57

    .line 656
    :pswitch_3d
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_5b

    const/4 v2, 0x1

    :goto_58
    move/from16 v100, v2

    .line 657
    goto :goto_51

    .line 656
    :cond_5b
    const/4 v2, 0x0

    goto :goto_58

    .line 659
    :pswitch_3e
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_5c

    const/4 v2, 0x1

    :goto_59
    move/from16 v101, v2

    .line 660
    goto :goto_51

    .line 659
    :cond_5c
    const/4 v2, 0x0

    goto :goto_59

    .line 662
    :pswitch_3f
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_5d

    const/4 v2, 0x1

    :goto_5a
    move/from16 v102, v2

    .line 663
    goto :goto_51

    .line 662
    :cond_5d
    const/4 v2, 0x0

    goto :goto_5a

    .line 665
    :pswitch_40
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_5e

    const/4 v2, 0x1

    :goto_5b
    move/from16 v106, v2

    .line 666
    goto/16 :goto_51

    .line 665
    :cond_5e
    const/4 v2, 0x0

    goto :goto_5b

    .line 668
    :pswitch_41
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_5f

    const/4 v2, 0x1

    :goto_5c
    move/from16 v107, v2

    .line 669
    goto/16 :goto_51

    .line 668
    :cond_5f
    const/4 v2, 0x0

    goto :goto_5c

    .line 671
    :pswitch_42
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_60

    const/4 v2, 0x1

    :goto_5d
    move/from16 v113, v2

    .line 672
    goto/16 :goto_51

    .line 671
    :cond_60
    const/4 v2, 0x0

    goto :goto_5d

    .line 674
    :pswitch_43
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_61

    const/4 v2, 0x1

    :goto_5e
    move/from16 v114, v2

    .line 675
    goto/16 :goto_51

    .line 674
    :cond_61
    const/4 v2, 0x0

    goto :goto_5e

    .line 682
    :cond_62
    aget-wide v140, v139, v2

    const-wide v142, 0x44964e5c8da9db4aL    # 2.6334394458566012E22

    cmp-long v137, v140, v142

    if-nez v137, :cond_64

    .line 685
    :goto_5f
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 686
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_3

    .line 689
    packed-switch v2, :pswitch_data_16

    .line 695
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    goto :goto_5f

    .line 691
    :pswitch_44
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_63

    const/4 v2, 0x1

    :goto_60
    move/from16 v115, v2

    .line 692
    goto :goto_5f

    .line 691
    :cond_63
    const/4 v2, 0x0

    goto :goto_60

    .line 699
    :cond_64
    aget-wide v140, v139, v2

    const-wide v142, -0x4249725f5a83ba33L    # -2.0512045484748224E-11

    cmp-long v2, v140, v142

    if-nez v2, :cond_6c

    .line 702
    :goto_61
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 703
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_3

    .line 706
    sparse-switch v2, :sswitch_data_1

    .line 727
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    goto :goto_61

    .line 708
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_65

    const/4 v2, 0x1

    :goto_62
    move/from16 v119, v2

    .line 709
    goto :goto_61

    .line 708
    :cond_65
    const/4 v2, 0x0

    goto :goto_62

    .line 711
    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_66

    const/4 v2, 0x1

    :goto_63
    move/from16 v120, v2

    .line 712
    goto :goto_61

    .line 711
    :cond_66
    const/4 v2, 0x0

    goto :goto_63

    .line 714
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_67

    const/4 v2, 0x1

    :goto_64
    move/from16 v121, v2

    .line 715
    goto :goto_61

    .line 714
    :cond_67
    const/4 v2, 0x0

    goto :goto_64

    .line 717
    :sswitch_6
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_68

    const/4 v2, 0x1

    :goto_65
    move/from16 v122, v2

    .line 718
    goto :goto_61

    .line 717
    :cond_68
    const/4 v2, 0x0

    goto :goto_65

    .line 720
    :sswitch_7
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_69

    const/4 v2, 0x1

    :goto_66
    move/from16 v133, v2

    .line 721
    goto :goto_61

    .line 720
    :cond_69
    const/4 v2, 0x0

    goto :goto_66

    .line 723
    :sswitch_8
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_6a

    const/4 v2, 0x1

    :goto_67
    move/from16 v134, v2

    .line 724
    goto :goto_61

    .line 723
    :cond_6a
    const/4 v2, 0x0

    goto :goto_67

    .line 738
    :cond_6b
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 734
    :cond_6c
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 735
    const/16 v137, -0x1

    move/from16 v0, v137

    if-ne v2, v0, :cond_6b

    goto/16 :goto_1

    .line 748
    :cond_6d
    aget-wide v140, v139, v2

    const-wide v142, -0x2ebc20d463434e2L

    cmp-long v137, v140, v142

    if-nez v137, :cond_6e

    .line 751
    :goto_68
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 752
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_4

    .line 755
    sparse-switch v2, :sswitch_data_2

    .line 779
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    goto :goto_68

    .line 757
    :sswitch_9
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    goto :goto_68

    .line 760
    :sswitch_a
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    goto :goto_68

    .line 763
    :sswitch_b
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    goto :goto_68

    .line 766
    :sswitch_c
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    goto :goto_68

    .line 769
    :sswitch_d
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    goto :goto_68

    .line 772
    :sswitch_e
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    goto :goto_68

    .line 775
    :sswitch_f
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    goto :goto_68

    .line 783
    :cond_6e
    aget-wide v140, v139, v2

    const-wide v142, 0x43e73e6e834053faL    # 1.3399180971419357E19

    cmp-long v137, v140, v142

    if-nez v137, :cond_6f

    .line 786
    :goto_69
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 787
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_4

    .line 790
    packed-switch v2, :pswitch_data_17

    .line 796
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    goto :goto_69

    .line 792
    :pswitch_45
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v17

    goto :goto_69

    .line 800
    :cond_6f
    aget-wide v140, v139, v2

    const-wide v142, -0x23a3f33b07588c8cL    # -8.155095756380556E136

    cmp-long v137, v140, v142

    if-nez v137, :cond_70

    .line 803
    :goto_6a
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 804
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_4

    .line 807
    sparse-switch v2, :sswitch_data_3

    .line 816
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    goto :goto_6a

    .line 809
    :sswitch_10
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v28

    goto :goto_6a

    .line 812
    :sswitch_11
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v34

    goto :goto_6a

    .line 820
    :cond_70
    aget-wide v140, v139, v2

    const-wide v142, 0x115503da5edbac3bL

    cmp-long v137, v140, v142

    if-nez v137, :cond_71

    .line 823
    :goto_6b
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 824
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_4

    .line 827
    packed-switch v2, :pswitch_data_18

    .line 836
    :pswitch_46
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    goto :goto_6b

    .line 829
    :pswitch_47
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v38

    goto :goto_6b

    .line 832
    :pswitch_48
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v40

    goto :goto_6b

    .line 840
    :cond_71
    aget-wide v140, v139, v2

    const-wide v142, 0x3e62f084a404d3e5L    # 3.527761238895735E-8

    cmp-long v137, v140, v142

    if-nez v137, :cond_72

    .line 843
    :goto_6c
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 844
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_4

    .line 847
    packed-switch v2, :pswitch_data_19

    .line 859
    :pswitch_49
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    goto :goto_6c

    .line 849
    :pswitch_4a
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v41

    goto :goto_6c

    .line 852
    :pswitch_4b
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v43

    goto :goto_6c

    .line 855
    :pswitch_4c
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v44

    goto :goto_6c

    .line 863
    :cond_72
    aget-wide v140, v139, v2

    const-wide v142, -0x21a16c629490f34L

    cmp-long v137, v140, v142

    if-nez v137, :cond_73

    .line 866
    :goto_6d
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 867
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_4

    .line 870
    packed-switch v2, :pswitch_data_1a

    .line 876
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    goto :goto_6d

    .line 872
    :pswitch_4d
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v47

    goto :goto_6d

    .line 880
    :cond_73
    aget-wide v140, v139, v2

    const-wide v142, -0x52233f209c4f5cceL    # -9.033802913171843E-88

    cmp-long v137, v140, v142

    if-nez v137, :cond_74

    .line 883
    :goto_6e
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 884
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_4

    .line 887
    packed-switch v2, :pswitch_data_1b

    .line 899
    :pswitch_4e
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    goto :goto_6e

    .line 889
    :pswitch_4f
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v65

    goto :goto_6e

    .line 892
    :pswitch_50
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v67

    goto :goto_6e

    .line 895
    :pswitch_51
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v68

    goto :goto_6e

    .line 903
    :cond_74
    aget-wide v140, v139, v2

    const-wide v142, 0x223e48b5b318ecfdL    # 9.700980725302096E-144

    cmp-long v137, v140, v142

    if-nez v137, :cond_75

    .line 906
    :goto_6f
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 907
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_4

    .line 910
    sparse-switch v2, :sswitch_data_4

    .line 919
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    goto :goto_6f

    .line 912
    :sswitch_12
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v74

    goto :goto_6f

    .line 915
    :sswitch_13
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v75

    goto :goto_6f

    .line 923
    :cond_75
    aget-wide v140, v139, v2

    const-wide v142, -0x5dbd96799f8038c0L

    cmp-long v137, v140, v142

    if-nez v137, :cond_76

    .line 926
    :goto_70
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 927
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_4

    .line 930
    packed-switch v2, :pswitch_data_1c

    .line 936
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    goto :goto_70

    .line 932
    :pswitch_52
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v76

    goto :goto_70

    .line 940
    :cond_76
    aget-wide v140, v139, v2

    const-wide v142, 0x5e0cfed52abc0a4bL    # 1.1314559164265081E145

    cmp-long v137, v140, v142

    if-nez v137, :cond_77

    .line 943
    :goto_71
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 944
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_4

    .line 947
    packed-switch v2, :pswitch_data_1d

    .line 953
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    goto :goto_71

    .line 949
    :pswitch_53
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v88

    goto :goto_71

    .line 957
    :cond_77
    aget-wide v140, v139, v2

    const-wide v142, -0x532fa6b404961ee1L    # -7.837682035766678E-93

    cmp-long v137, v140, v142

    if-nez v137, :cond_78

    .line 960
    :goto_72
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 961
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_4

    .line 964
    packed-switch v2, :pswitch_data_1e

    .line 970
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    goto :goto_72

    .line 966
    :pswitch_54
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v90

    goto :goto_72

    .line 974
    :cond_78
    aget-wide v140, v139, v2

    const-wide v142, -0x1cf53e21da185e0cL    # -1.2622628693082689E169

    cmp-long v137, v140, v142

    if-nez v137, :cond_79

    .line 977
    :goto_73
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 978
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_4

    .line 981
    sparse-switch v2, :sswitch_data_5

    .line 1005
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    goto :goto_73

    .line 983
    :sswitch_14
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v92

    goto :goto_73

    .line 986
    :sswitch_15
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v98

    goto :goto_73

    .line 989
    :sswitch_16
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v99

    goto :goto_73

    .line 992
    :sswitch_17
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v103

    goto :goto_73

    .line 995
    :sswitch_18
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v110

    goto :goto_73

    .line 998
    :sswitch_19
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v111

    goto :goto_73

    .line 1001
    :sswitch_1a
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v112

    goto :goto_73

    .line 1009
    :cond_79
    aget-wide v140, v139, v2

    const-wide v142, -0x4249725f5a83ba33L    # -2.0512045484748224E-11

    cmp-long v2, v140, v142

    if-nez v2, :cond_7b

    .line 1012
    :goto_74
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 1013
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_4

    .line 1016
    packed-switch v2, :pswitch_data_1f

    .line 1058
    :pswitch_55
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    goto :goto_74

    .line 1018
    :pswitch_56
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v116

    goto :goto_74

    .line 1021
    :pswitch_57
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v117

    goto :goto_74

    .line 1024
    :pswitch_58
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v118

    goto :goto_74

    .line 1027
    :pswitch_59
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v123

    goto :goto_74

    .line 1030
    :pswitch_5a
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v124

    goto :goto_74

    .line 1033
    :pswitch_5b
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v125

    goto :goto_74

    .line 1036
    :pswitch_5c
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v126

    goto :goto_74

    .line 1039
    :pswitch_5d
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v127

    goto :goto_74

    .line 1042
    :pswitch_5e
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v128

    goto :goto_74

    .line 1045
    :pswitch_5f
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v129

    goto :goto_74

    .line 1048
    :pswitch_60
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v130

    goto :goto_74

    .line 1051
    :pswitch_61
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v131

    goto :goto_74

    .line 1054
    :pswitch_62
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v132

    goto :goto_74

    .line 1069
    :cond_7a
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 1065
    :cond_7b
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 1066
    const/16 v137, -0x1

    move/from16 v0, v137

    if-ne v2, v0, :cond_7a

    goto/16 :goto_2

    .line 1079
    :cond_7c
    aget-wide v140, v139, v2

    const-wide v142, 0x308b39d188e712a3L    # 7.524065915390022E-75

    cmp-long v2, v140, v142

    if-nez v2, :cond_7e

    .line 1082
    :goto_75
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 1083
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_5

    .line 1086
    packed-switch v2, :pswitch_data_20

    .line 1092
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getLong()J

    goto :goto_75

    .line 1088
    :pswitch_63
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v22

    goto :goto_75

    .line 1103
    :cond_7d
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getLong()J

    .line 1099
    :cond_7e
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 1100
    const/16 v137, -0x1

    move/from16 v0, v137

    if-ne v2, v0, :cond_7d

    goto/16 :goto_3

    .line 1113
    :cond_7f
    aget-wide v140, v139, v2

    const-wide v142, -0x23a3f33b07588c8cL    # -8.155095756380556E136

    cmp-long v137, v140, v142

    if-nez v137, :cond_80

    .line 1116
    :goto_76
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 1117
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_6

    .line 1120
    packed-switch v2, :pswitch_data_21

    .line 1135
    :pswitch_64
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getDouble()D

    goto :goto_76

    .line 1122
    :pswitch_65
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v26

    goto :goto_76

    .line 1125
    :pswitch_66
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v30

    goto :goto_76

    .line 1128
    :pswitch_67
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v32

    goto :goto_76

    .line 1131
    :pswitch_68
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v35

    goto :goto_76

    .line 1139
    :cond_80
    aget-wide v140, v139, v2

    const-wide v142, -0x1cf53e21da185e0cL    # -1.2622628693082689E169

    cmp-long v2, v140, v142

    if-nez v2, :cond_82

    .line 1142
    :goto_77
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 1143
    const/16 v137, -0x1

    move/from16 v0, v137

    if-eq v2, v0, :cond_6

    .line 1146
    packed-switch v2, :pswitch_data_22

    .line 1155
    :pswitch_69
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getDouble()D

    goto :goto_77

    .line 1148
    :pswitch_6a
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v104

    goto :goto_77

    .line 1151
    :pswitch_6b
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v108

    goto :goto_77

    .line 1166
    :cond_81
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getDouble()D

    .line 1162
    :cond_82
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 1163
    const/16 v137, -0x1

    move/from16 v0, v137

    if-ne v2, v0, :cond_81

    goto/16 :goto_4

    .line 1177
    :cond_83
    aget-wide v140, v139, v3

    const-wide v142, 0x7499800059408e3bL    # 4.6738700945639036E253

    cmp-long v3, v140, v142

    if-nez v3, :cond_85

    .line 1180
    :goto_78
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 1181
    const/16 v135, -0x1

    move/from16 v0, v135

    if-eq v3, v0, :cond_7

    .line 1184
    packed-switch v3, :pswitch_data_23

    .line 1190
    invoke-static/range {p0 .. p0}, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperimentsLoaderWorker;->skipString(Ljava/nio/ByteBuffer;)V

    goto :goto_78

    .line 1186
    :pswitch_6c
    move-object/from16 v0, p0

    move-object/from16 v1, v136

    invoke-static {v0, v1}, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperimentsLoaderWorker;->readString(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    goto :goto_78

    .line 1201
    :cond_84
    invoke-static/range {p0 .. p0}, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperimentsLoaderWorker;->skipString(Ljava/nio/ByteBuffer;)V

    .line 1197
    :cond_85
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 1198
    const/16 v135, -0x1

    move/from16 v0, v135

    if-ne v3, v0, :cond_84

    goto/16 :goto_5

    .line 169
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 186
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x5 -> :sswitch_0
        0x1a -> :sswitch_2
    .end sparse-switch

    .line 209
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 226
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    .line 243
    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 263
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch

    .line 280
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_8
    .end packed-switch

    .line 303
    :pswitch_data_6
    .packed-switch 0x3
        :pswitch_a
    .end packed-switch

    .line 320
    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_d
    .end packed-switch

    .line 340
    :pswitch_data_8
    .packed-switch 0x2
        :pswitch_e
    .end packed-switch

    .line 357
    :pswitch_data_9
    .packed-switch 0x1
        :pswitch_f
    .end packed-switch

    .line 374
    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_11
        :pswitch_12
        :pswitch_10
        :pswitch_13
        :pswitch_14
    .end packed-switch

    .line 400
    :pswitch_data_b
    .packed-switch 0x1
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch

    .line 423
    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch

    .line 446
    :pswitch_data_d
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch

    .line 469
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch

    .line 492
    :pswitch_data_f
    .packed-switch 0x1
        :pswitch_22
        :pswitch_23
        :pswitch_21
        :pswitch_24
    .end packed-switch

    .line 515
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_25
        :pswitch_26
    .end packed-switch

    .line 535
    :pswitch_data_11
    .packed-switch 0x1
        :pswitch_27
        :pswitch_28
        :pswitch_29
    .end packed-switch

    .line 558
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_2a
    .end packed-switch

    .line 575
    :pswitch_data_13
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
    .end packed-switch

    .line 619
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_35
    .end packed-switch

    .line 636
    :pswitch_data_15
    .packed-switch 0x1
        :pswitch_37
        :pswitch_36
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_36
        :pswitch_36
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_36
        :pswitch_36
        :pswitch_40
        :pswitch_41
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_42
        :pswitch_43
    .end packed-switch

    .line 689
    :pswitch_data_16
    .packed-switch 0x8
        :pswitch_44
    .end packed-switch

    .line 706
    :sswitch_data_1
    .sparse-switch
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x12 -> :sswitch_7
        0x13 -> :sswitch_8
    .end sparse-switch

    .line 755
    :sswitch_data_2
    .sparse-switch
        0x3 -> :sswitch_e
        0x4 -> :sswitch_f
        0x7 -> :sswitch_c
        0x10 -> :sswitch_a
        0x16 -> :sswitch_d
        0x17 -> :sswitch_b
        0x18 -> :sswitch_9
    .end sparse-switch

    .line 790
    :pswitch_data_17
    .packed-switch 0x1
        :pswitch_45
    .end packed-switch

    .line 807
    :sswitch_data_3
    .sparse-switch
        0x2 -> :sswitch_10
        0x8 -> :sswitch_11
    .end sparse-switch

    .line 827
    :pswitch_data_18
    .packed-switch 0x2
        :pswitch_47
        :pswitch_46
        :pswitch_48
    .end packed-switch

    .line 847
    :pswitch_data_19
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_49
        :pswitch_4b
        :pswitch_4c
    .end packed-switch

    .line 870
    :pswitch_data_1a
    .packed-switch 0x3
        :pswitch_4d
    .end packed-switch

    .line 887
    :pswitch_data_1b
    .packed-switch 0x3
        :pswitch_4f
        :pswitch_4e
        :pswitch_50
        :pswitch_51
    .end packed-switch

    .line 910
    :sswitch_data_4
    .sparse-switch
        0x3 -> :sswitch_12
        0xa -> :sswitch_13
    .end sparse-switch

    .line 930
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_52
    .end packed-switch

    .line 947
    :pswitch_data_1d
    .packed-switch 0xb
        :pswitch_53
    .end packed-switch

    .line 964
    :pswitch_data_1e
    .packed-switch 0x3
        :pswitch_54
    .end packed-switch

    .line 981
    :sswitch_data_5
    .sparse-switch
        0x2 -> :sswitch_14
        0x8 -> :sswitch_15
        0x9 -> :sswitch_16
        0xd -> :sswitch_17
        0x12 -> :sswitch_18
        0x13 -> :sswitch_19
        0x14 -> :sswitch_1a
    .end sparse-switch

    .line 1016
    :pswitch_data_1f
    .packed-switch 0x1
        :pswitch_57
        :pswitch_56
        :pswitch_58
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
    .end packed-switch

    .line 1086
    :pswitch_data_20
    .packed-switch 0x2
        :pswitch_63
    .end packed-switch

    .line 1120
    :pswitch_data_21
    .packed-switch 0x1
        :pswitch_65
        :pswitch_64
        :pswitch_64
        :pswitch_64
        :pswitch_64
        :pswitch_66
        :pswitch_67
        :pswitch_64
        :pswitch_68
    .end packed-switch

    .line 1146
    :pswitch_data_22
    .packed-switch 0xe
        :pswitch_6a
        :pswitch_69
        :pswitch_69
        :pswitch_6b
    .end packed-switch

    .line 1184
    :pswitch_data_23
    .packed-switch 0x1
        :pswitch_6c
    .end packed-switch
.end method

.method private static readString(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1462
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 1463
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1464
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v0, v2, v3, v1, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1465
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1470
    :goto_0
    return-object v0

    .line 1468
    :cond_0
    new-array v1, v1, [B

    .line 1469
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1470
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0
.end method

.method private static skipString(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 1475
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 1476
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1477
    return-void
.end method
