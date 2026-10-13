.class public Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;
.super Landroid/support/v7/preference/Preference;
.source "PG"


# instance fields
.field public A0:J

.field public B0:Ljava/lang/CharSequence;

.field public C0:Ljava/lang/CharSequence;

.field public D0:Ljava/lang/String;

.field public E0:Ljava/lang/String;

.field public i0:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

.field public j0:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

.field public k0:Ljava/util/List;

.field public l0:Lpf1;

.field public m0:Landroid/widget/LinearLayout;

.field public n0:Landroid/widget/TextView;

.field public o0:Landroid/widget/TextView;

.field public p0:Landroid/widget/TextView;

.field public q0:Landroid/widget/TextView;

.field public r0:Landroid/widget/TextView;

.field public s0:Landroid/widget/Button;

.field public t0:Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;

.field public u0:Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;

.field public v0:Z

.field public w0:Z

.field public x0:I

.field public y0:J

.field public z0:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0e0079

    .line 2
    iput p1, p0, Landroid/support/v7/preference/Preference;->c0:I

    return-void
.end method

.method public static a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    const v0, 0x10018

    .line 177
    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([JI)Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;
    .locals 40

    move-object/from16 v0, p0

    .line 42
    array-length v1, v0

    move/from16 v2, p1

    if-le v2, v1, :cond_0

    array-length v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 43
    :goto_0
    new-instance v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    const/4 v3, 0x2

    const-wide/32 v4, 0x5265c00

    invoke-direct {v2, v4, v5, v1, v3}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;-><init>(JII)V

    .line 44
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->e()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v6

    .line 45
    invoke-virtual {v6}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->a()J

    move-result-wide v6

    int-to-long v8, v1

    mul-long v8, v8, v4

    sub-long/2addr v6, v8

    .line 46
    array-length v8, v0

    sub-int/2addr v8, v1

    const/4 v1, 0x0

    const/4 v9, 0x0

    :goto_1
    array-length v10, v0

    if-ge v8, v10, :cond_1d

    .line 47
    sget-object v10, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->H:Ljava/lang/String;

    .line 48
    aget-wide v10, v0, v8

    const-wide/16 v12, 0x0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    int-to-long v14, v9

    mul-long v14, v14, v4

    add-long/2addr v14, v6

    const-wide/32 v16, 0x36ee80

    add-long v4, v14, v16

    const/16 v16, 0x1

    cmp-long v17, v10, v12

    if-ltz v17, :cond_2

    cmp-long v17, v12, v12

    if-ltz v17, :cond_2

    cmp-long v17, v12, v12

    if-ltz v17, :cond_2

    cmp-long v17, v12, v12

    if-ltz v17, :cond_2

    cmp-long v17, v12, v12

    if-gez v17, :cond_1

    goto :goto_2

    :cond_1
    const/16 v17, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    const/16 v17, 0x1

    :goto_3
    if-nez v17, :cond_1c

    .line 49
    iget-wide v12, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->w:J

    rem-long v18, v14, v12

    sub-long v18, v14, v18

    .line 50
    rem-long v20, v4, v12

    sub-long v20, v12, v20

    rem-long v20, v20, v12

    add-long v20, v20, v4

    move-wide/from16 v12, v18

    :goto_4
    cmp-long v17, v12, v20

    if-gez v17, :cond_17

    .line 51
    iget-object v3, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->y:[J

    iget v0, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->x:I

    invoke-static {v3, v1, v0, v12, v13}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    if-gez v0, :cond_16

    not-int v0, v0

    .line 52
    iget v3, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->x:I

    iget-object v1, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->y:[J

    move-wide/from16 v18, v6

    array-length v6, v1

    if-lt v3, v6, :cond_8

    .line 53
    array-length v1, v1

    const/16 v3, 0xa

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    const/4 v3, 0x2

    div-int/2addr v1, v3

    .line 54
    iget-object v6, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->y:[J

    invoke-static {v6, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    iput-object v6, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->y:[J

    .line 55
    iget-object v6, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->z:[J

    if-eqz v6, :cond_3

    invoke-static {v6, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    iput-object v6, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->z:[J

    .line 56
    :cond_3
    iget-object v6, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->A:[J

    if-eqz v6, :cond_4

    invoke-static {v6, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    iput-object v6, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->A:[J

    .line 57
    :cond_4
    iget-object v6, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->B:[J

    if-eqz v6, :cond_5

    invoke-static {v6, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    iput-object v6, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->B:[J

    .line 58
    :cond_5
    iget-object v6, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->C:[J

    if-eqz v6, :cond_6

    invoke-static {v6, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    iput-object v6, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->C:[J

    .line 59
    :cond_6
    iget-object v6, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->D:[J

    if-eqz v6, :cond_7

    invoke-static {v6, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    iput-object v6, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->D:[J

    .line 60
    :cond_7
    iget-object v6, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->E:[J

    if-eqz v6, :cond_9

    invoke-static {v6, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->E:[J

    goto :goto_5

    :cond_8
    const/4 v3, 0x2

    .line 61
    :cond_9
    :goto_5
    iget v1, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->x:I

    if-ge v0, v1, :cond_f

    add-int/lit8 v6, v0, 0x1

    sub-int/2addr v1, v0

    .line 62
    iget-object v7, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->y:[J

    invoke-static {v7, v0, v7, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iget-object v7, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->z:[J

    if-eqz v7, :cond_a

    invoke-static {v7, v0, v7, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    :cond_a
    iget-object v7, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->A:[J

    if-eqz v7, :cond_b

    invoke-static {v7, v0, v7, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    :cond_b
    iget-object v7, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->B:[J

    if-eqz v7, :cond_c

    invoke-static {v7, v0, v7, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    :cond_c
    iget-object v7, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->C:[J

    if-eqz v7, :cond_d

    invoke-static {v7, v0, v7, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    :cond_d
    iget-object v7, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->D:[J

    if-eqz v7, :cond_e

    invoke-static {v7, v0, v7, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    :cond_e
    iget-object v7, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->E:[J

    if-eqz v7, :cond_f

    invoke-static {v7, v0, v7, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    :cond_f
    iget-object v1, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->y:[J

    aput-wide v12, v1, v0

    .line 70
    iget-object v1, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->z:[J

    const-wide/16 v6, 0x0

    if-eqz v1, :cond_10

    .line 71
    aput-wide v6, v1, v0

    .line 72
    :cond_10
    iget-object v1, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->A:[J

    if-eqz v1, :cond_11

    .line 73
    aput-wide v6, v1, v0

    .line 74
    :cond_11
    iget-object v1, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->B:[J

    if-eqz v1, :cond_12

    .line 75
    aput-wide v6, v1, v0

    .line 76
    :cond_12
    iget-object v1, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->C:[J

    if-eqz v1, :cond_13

    .line 77
    aput-wide v6, v1, v0

    .line 78
    :cond_13
    iget-object v1, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->D:[J

    if-eqz v1, :cond_14

    .line 79
    aput-wide v6, v1, v0

    .line 80
    :cond_14
    iget-object v1, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->E:[J

    if-eqz v1, :cond_15

    .line 81
    aput-wide v6, v1, v0

    .line 82
    :cond_15
    iget v0, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->x:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->x:I

    goto :goto_6

    :cond_16
    move-wide/from16 v18, v6

    const/4 v3, 0x2

    .line 83
    :goto_6
    iget-wide v0, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->w:J

    add-long/2addr v12, v0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v6, v18

    goto/16 :goto_4

    :cond_17
    move-wide/from16 v18, v6

    sub-long v0, v4, v14

    .line 84
    invoke-virtual {v2, v4, v5}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->a(J)I

    move-result v6

    move-wide v12, v0

    move-wide v0, v10

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    :goto_7
    if-ltz v6, :cond_1b

    .line 85
    iget-object v7, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->y:[J

    move-wide/from16 v28, v4

    aget-wide v3, v7, v6

    move v5, v8

    .line 86
    iget-wide v7, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->w:J

    add-long/2addr v7, v3

    cmp-long v16, v7, v14

    if-gez v16, :cond_18

    goto/16 :goto_a

    :cond_18
    cmp-long v16, v3, v28

    if-lez v16, :cond_19

    move/from16 v16, v9

    move-wide/from16 v30, v10

    move-wide/from16 v9, v28

    goto :goto_8

    :cond_19
    move/from16 v16, v9

    move-wide/from16 v30, v10

    move-wide/from16 v9, v28

    .line 87
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    sub-long/2addr v7, v3

    const-wide/16 v3, 0x0

    cmp-long v11, v7, v3

    if-gtz v11, :cond_1a

    :goto_8
    move-wide/from16 v32, v9

    move-wide/from16 v34, v14

    goto :goto_9

    :cond_1a
    mul-long v3, v0, v7

    .line 88
    div-long/2addr v3, v12

    mul-long v28, v20, v7

    move-wide/from16 v32, v9

    .line 89
    div-long v9, v28, v12

    mul-long v28, v22, v7

    move-wide/from16 v34, v14

    .line 90
    div-long v14, v28, v12

    mul-long v28, v24, v7

    move-wide/from16 v36, v14

    .line 91
    div-long v14, v28, v12

    mul-long v28, v26, v7

    move-wide/from16 v38, v14

    .line 92
    div-long v14, v28, v12

    .line 93
    iget-object v11, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->z:[J

    invoke-static {v11, v6, v7, v8}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->a([JIJ)V

    .line 94
    iget-object v11, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->A:[J

    invoke-static {v11, v6, v3, v4}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->a([JIJ)V

    sub-long/2addr v0, v3

    .line 95
    iget-object v3, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->B:[J

    invoke-static {v3, v6, v9, v10}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->a([JIJ)V

    sub-long v20, v20, v9

    .line 96
    iget-object v3, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->C:[J

    move-wide/from16 v9, v36

    invoke-static {v3, v6, v9, v10}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->a([JIJ)V

    sub-long v22, v22, v9

    .line 97
    iget-object v3, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->D:[J

    move-wide/from16 v9, v38

    invoke-static {v3, v6, v9, v10}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->a([JIJ)V

    sub-long v24, v24, v9

    .line 98
    iget-object v3, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->E:[J

    invoke-static {v3, v6, v14, v15}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->a([JIJ)V

    sub-long v26, v26, v14

    sub-long/2addr v12, v7

    :goto_9
    add-int/lit8 v6, v6, -0x1

    move v8, v5

    move/from16 v9, v16

    move-wide/from16 v10, v30

    move-wide/from16 v4, v32

    move-wide/from16 v14, v34

    const/4 v3, 0x2

    goto/16 :goto_7

    :cond_1b
    move v5, v8

    :goto_a
    move/from16 v16, v9

    move-wide/from16 v30, v10

    .line 99
    iget-wide v0, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->F:J

    const-wide/16 v3, 0x0

    add-long v10, v30, v3

    add-long/2addr v10, v0

    iput-wide v10, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->F:J

    add-int/lit8 v8, v5, 0x1

    add-int/lit8 v9, v16, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x2

    move-object/from16 v0, p0

    move-wide/from16 v6, v18

    const-wide/32 v4, 0x5265c00

    goto/16 :goto_1

    .line 100
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tried recording negative data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    return-object v2
.end method


# virtual methods
.method public a(J)V
    .locals 13

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->e()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v0

    .line 2
    iget-wide v1, v0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->b:J

    .line 3
    invoke-static {v1, v2, v0}, LJ/N;->M4N7SUZB(JLjava/lang/Object;)[J

    move-result-object v0

    .line 4
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->e()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v1

    .line 5
    iget-wide v2, v1, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->b:J

    .line 6
    invoke-static {v2, v3, v1}, LJ/N;->MmJPih$3(JLjava/lang/Object;)[J

    move-result-object v1

    .line 7
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->e()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->b()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    mul-long v2, v2, v4

    .line 8
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->e()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v6

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->b()J

    .line 9
    rem-long v6, p1, v4

    sub-long v6, p1, v6

    .line 10
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    int-to-long v8, v8

    sub-long/2addr v6, v8

    .line 11
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->e()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v8

    invoke-virtual {v8}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->a()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-nez v12, :cond_0

    move-wide v8, v6

    :cond_0
    cmp-long v12, v8, v6

    if-gez v12, :cond_1

    sub-long v8, v6, v8

    .line 12
    div-long v10, v8, v4

    .line 13
    :cond_1
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    sub-long v6, p1, v6

    .line 14
    iput-wide v6, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->y0:J

    sub-long v2, p1, v2

    .line 15
    div-long/2addr v2, v4

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    .line 16
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    .line 17
    iput-boolean v3, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->w0:Z

    const/16 v6, 0x1e

    .line 18
    iput v6, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->x0:I

    .line 19
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v9, 0x2

    const/4 v11, 0x1

    cmp-long v12, v6, v9

    if-gez v12, :cond_2

    .line 20
    iput-boolean v11, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->w0:Z

    const/4 v2, 0x2

    .line 21
    iput v2, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->x0:I

    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v9, 0x1e

    cmp-long v12, v6, v9

    if-gez v12, :cond_3

    .line 23
    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    iput v2, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->x0:I

    .line 24
    :cond_3
    :goto_0
    iget v2, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->x0:I

    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->a([JI)Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->i0:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    .line 25
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->x0:I

    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->a([JI)Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->j0:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    .line 26
    iget-wide v0, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->F:J

    const-wide/16 v6, 0x400

    .line 27
    div-long/2addr v0, v6

    const-wide/16 v6, 0x64

    cmp-long v2, v0, v6

    if-ltz v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    .line 28
    :goto_1
    iput-boolean v11, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->v0:Z

    .line 29
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->i0:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    .line 30
    iget v1, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->x:I

    const-wide v6, 0x7fffffffffffffffL

    if-lez v1, :cond_5

    .line 31
    iget-object v0, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->y:[J

    aget-wide v1, v0, v3

    goto :goto_2

    :cond_5
    move-wide v1, v6

    .line 32
    :goto_2
    invoke-virtual {v8}, Ljava/lang/Long;->intValue()I

    move-result v0

    int-to-long v9, v0

    mul-long v9, v9, v4

    add-long/2addr v9, v1

    add-long/2addr v9, v4

    iput-wide v9, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->z0:J

    .line 33
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->i0:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->b()J

    move-result-wide v0

    .line 34
    invoke-virtual {v8}, Ljava/lang/Long;->intValue()I

    move-result v2

    int-to-long v2, v2

    mul-long v2, v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->A0:J

    .line 35
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->v0:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->u0:Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;

    if-eqz v0, :cond_6

    .line 36
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const-string v1, "data_reduction_site_breakdown_allowed_date"

    .line 37
    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_6

    .line 38
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->e()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object p1

    iget p2, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->x0:I

    new-instance v0, Lsz0;

    invoke-direct {v0, p0}, Lsz0;-><init>(Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;)V

    .line 39
    iput-object v0, p1, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->a:Lorg/chromium/base/Callback;

    .line 40
    iget-wide v0, p1, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->b:J

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-static {v0, v1, p1, v2, p2}, LJ/N;->MLJ8wHM0(JLjava/lang/Object;Ljava/lang/Object;I)V

    :cond_6
    return-void
.end method

.method public a(LGc;)V
    .locals 11

    .line 101
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->a(LGc;)V

    .line 102
    iget-object v0, p1, Ldh;->w:Landroid/view/View;

    .line 103
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->l0:Lpf1;

    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {v1}, Lpf1;->b()V

    .line 105
    :cond_0
    new-instance v1, Lpf1;

    invoke-direct {v1, v0}, Lpf1;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->l0:Lpf1;

    .line 106
    new-instance v2, Ltz0;

    invoke-direct {v2, p0, v0}, Ltz0;-><init>(Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Lpf1;->a(Lgf1;)V

    const v0, 0x7f0b021c

    .line 107
    invoke-virtual {p1, v0}, LGc;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->n0:Landroid/widget/TextView;

    .line 108
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    .line 109
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800d1

    .line 110
    iget-object v3, p0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    .line 111
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 112
    invoke-static {v1, v2, v3}, LY0;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)LY0;

    move-result-object v1

    const/4 v2, 0x0

    .line 113
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0b0144

    .line 114
    invoke-virtual {p1, v0}, LGc;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->m0:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0145

    .line 115
    invoke-virtual {p1, v0}, LGc;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->p0:Landroid/widget/TextView;

    const v0, 0x7f0b0142

    .line 116
    invoke-virtual {p1, v0}, LGc;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->o0:Landroid/widget/TextView;

    const v0, 0x7f0b0143

    .line 117
    invoke-virtual {p1, v0}, LGc;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->q0:Landroid/widget/TextView;

    const v0, 0x7f0b013b

    .line 118
    invoke-virtual {p1, v0}, LGc;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->r0:Landroid/widget/TextView;

    const v0, 0x7f0b008c

    .line 119
    invoke-virtual {p1, v0}, LGc;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->u0:Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;

    .line 120
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->q0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 121
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->r0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x5

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 122
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->i0:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    if-nez v0, :cond_1

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->a(J)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->k0:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->v0:Z

    if-eqz v1, :cond_2

    .line 125
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->u0:Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->a(Ljava/util/List;)V

    :cond_2
    :goto_0
    const v0, 0x7f0b00b6

    .line 126
    invoke-virtual {p1, v0}, LGc;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->t0:Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;

    .line 127
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->i0:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->j0:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    .line 128
    iget-object v3, v0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->C:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    .line 129
    iput-object v1, v3, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->C:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    .line 130
    invoke-virtual {v3}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->b()V

    .line 131
    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 132
    iget-object v3, v0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->D:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    .line 133
    iput-object v2, v3, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->C:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    .line 134
    invoke-virtual {v3}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->b()V

    .line 135
    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 136
    iget-object v3, v0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->D:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iput-object v1, v0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->E:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    if-eqz v1, :cond_4

    .line 138
    iget-object v2, v0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->C:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    invoke-virtual {v1}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->b()J

    move-result-wide v5

    .line 139
    iput-wide v5, v2, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->K:J

    .line 140
    iget-object v1, v0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->D:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    iget-object v2, v0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->E:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    invoke-virtual {v2}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->b()J

    move-result-wide v2

    .line 141
    iput-wide v2, v1, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->K:J

    .line 142
    :cond_4
    iget-object v1, v0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->C:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    .line 143
    iput-boolean v4, v1, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->M:Z

    .line 144
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 145
    invoke-virtual {v0}, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->a()V

    .line 146
    invoke-virtual {v0}, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->b()V

    .line 147
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 148
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->t0:Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;

    iget-wide v1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->z0:J

    iget-wide v5, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->A0:J

    .line 149
    iget-object v3, v0, LCb1;->w:Lzb1;

    invoke-interface {v3, v1, v2, v5, v6}, Lzb1;->a(JJ)Z

    move-result v3

    .line 150
    iget-object v7, v0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->C:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    .line 151
    iput-wide v1, v7, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->G:J

    .line 152
    iput-wide v5, v7, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->H:J

    .line 153
    iget-wide v8, v7, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->K:J

    cmp-long v10, v5, v8

    if-lez v10, :cond_5

    .line 154
    iput-wide v5, v7, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->K:J

    .line 155
    :cond_5
    iget-object v7, v0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->D:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    .line 156
    iput-wide v1, v7, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->G:J

    .line 157
    iput-wide v5, v7, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->H:J

    .line 158
    iget-wide v8, v7, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->K:J

    cmp-long v10, v5, v8

    if-lez v10, :cond_6

    .line 159
    iput-wide v5, v7, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->K:J

    .line 160
    :cond_6
    iput-wide v1, v0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->F:J

    .line 161
    iput-wide v5, v0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->G:J

    if-eqz v3, :cond_7

    .line 162
    iget-object v1, v0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->C:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    invoke-virtual {v1}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->b()V

    .line 163
    iget-object v1, v0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->D:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    invoke-virtual {v1}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->b()V

    .line 164
    :cond_7
    iget-object v1, v0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->C:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    .line 165
    iput-boolean v4, v1, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->M:Z

    .line 166
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 167
    invoke-virtual {v0}, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->a()V

    .line 168
    invoke-virtual {v0}, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->b()V

    .line 169
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 170
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->e()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v0

    .line 171
    iget-wide v1, v0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->b:J

    .line 172
    invoke-static {v1, v2, v0}, LJ/N;->MdLp8Ai5(JLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "DataSaverStats"

    const-string v2, "Data Saver proxy unreachable when user viewed Data Saver stats"

    .line 173
    invoke-static {v1, v2, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    const v0, 0x7f0b0141

    .line 174
    invoke-virtual {p1, v0}, LGc;->c(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->s0:Landroid/widget/Button;

    if-eqz p1, :cond_9

    .line 175
    new-instance v0, Lvz0;

    invoke-direct {v0, p0}, Lvz0;-><init>(Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    :cond_9
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->w()V

    return-void
.end method

.method public n()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->n()Z

    move-result v0

    return v0
.end method

.method public final w()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    .line 2
    iget-boolean v2, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->v0:Z

    if-eqz v2, :cond_4

    .line 3
    iget-wide v4, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->z0:J

    iget-wide v6, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->y0:J

    add-long/2addr v4, v6

    .line 4
    iget-wide v8, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->A0:J

    add-long/2addr v8, v6

    .line 5
    iget-object v2, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->j0:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    .line 6
    iget-wide v6, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->F:J

    .line 7
    invoke-static {v1, v6, v7}, LBO0;->a(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->C0:Ljava/lang/CharSequence;

    .line 8
    iget-object v2, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->i0:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    .line 9
    iget-wide v10, v2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->F:J

    sub-long v12, v10, v6

    const-wide/16 v14, 0x0

    move-wide/from16 v16, v4

    .line 10
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 11
    invoke-static {v1, v3, v4}, LBO0;->a(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->B0:Ljava/lang/CharSequence;

    .line 12
    iget-boolean v5, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->w0:Z

    if-eqz v5, :cond_0

    .line 13
    invoke-static {v1, v8, v9}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->D0:Ljava/lang/String;

    const/4 v5, 0x0

    .line 14
    iput-object v5, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->E0:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-wide/from16 v14, v16

    .line 15
    invoke-static {v1, v14, v15}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->D0:Ljava/lang/String;

    .line 16
    invoke-static {v1, v8, v9}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->E0:Ljava/lang/String;

    :goto_0
    const-wide/16 v8, 0x400

    .line 17
    div-long/2addr v10, v8

    long-to-int v5, v10

    const/16 v10, 0x64

    const v11, 0x3b9aca00

    const-string v14, "DataReductionProxy.UserViewedOriginalSize"

    const/4 v2, 0x1

    .line 18
    invoke-static {v14, v5, v2, v11, v10}, LfV;->a(Ljava/lang/String;IIII)V

    .line 19
    div-long/2addr v12, v8

    long-to-int v5, v12

    const-string v8, "DataReductionProxy.UserViewedSavingsSize"

    .line 20
    invoke-static {v8, v5, v2, v11, v10}, LfV;->a(Ljava/lang/String;IIII)V

    .line 21
    iget-object v5, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->k0:Ljava/util/List;

    if-nez v5, :cond_1

    goto :goto_2

    .line 22
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Liz0;

    .line 23
    invoke-virtual {v12}, Liz0;->a()J

    move-result-wide v13

    add-long/2addr v8, v13

    .line 24
    iget-wide v12, v12, Liz0;->b:J

    add-long/2addr v10, v12

    goto :goto_1

    :cond_2
    sub-long v12, v8, v3

    .line 25
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    sub-long v14, v10, v6

    .line 26
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    add-long/2addr v8, v3

    add-long/2addr v10, v6

    const-wide/16 v3, 0x0

    cmp-long v5, v8, v3

    if-lez v5, :cond_4

    cmp-long v5, v10, v3

    if-gtz v5, :cond_3

    goto :goto_2

    .line 27
    :cond_3
    div-long/2addr v12, v8

    const-wide/16 v3, 0x64

    mul-long v12, v12, v3

    long-to-int v5, v12

    .line 28
    div-long/2addr v14, v10

    mul-long v14, v14, v3

    long-to-int v3, v14

    const-string v4, "DataReductionProxy.UserViewedUsageDifferenceWithBreakdown"

    .line 29
    invoke-static {v4, v3}, LfV;->d(Ljava/lang/String;I)V

    const-string v3, "DataReductionProxy.UserViewedSavingsDifferenceWithBreakdown"

    .line 30
    invoke-static {v3, v5}, LfV;->d(Ljava/lang/String;I)V

    .line 31
    :cond_4
    :goto_2
    iget-object v3, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->n0:Landroid/widget/TextView;

    iget-boolean v4, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->v0:Z

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v4, :cond_5

    const/16 v4, 0x8

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 32
    iget-object v3, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->m0:Landroid/widget/LinearLayout;

    iget-boolean v4, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->v0:Z

    if-eqz v4, :cond_6

    const/4 v5, 0x0

    :cond_6
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 33
    iget-object v3, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->q0:Landroid/widget/TextView;

    iget-boolean v4, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->v0:Z

    const-string v5, ""

    if-eqz v4, :cond_7

    iget-object v4, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->D0:Ljava/lang/String;

    goto :goto_4

    :cond_7
    move-object v4, v5

    :goto_4
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v3, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->q0:Landroid/widget/TextView;

    iget-boolean v4, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->v0:Z

    if-eqz v4, :cond_8

    const v4, 0x7f13028b

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/Object;

    .line 35
    iget-object v8, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->D0:Ljava/lang/String;

    aput-object v8, v7, v6

    invoke-virtual {v1, v4, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_8
    move-object v4, v5

    .line 36
    :goto_5
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v3, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->r0:Landroid/widget/TextView;

    iget-boolean v4, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->v0:Z

    if-eqz v4, :cond_9

    iget-object v4, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->E0:Ljava/lang/String;

    goto :goto_6

    :cond_9
    move-object v4, v5

    :goto_6
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v3, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->r0:Landroid/widget/TextView;

    iget-boolean v4, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->v0:Z

    if-eqz v4, :cond_a

    const v4, 0x7f13027f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 39
    iget-object v7, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->E0:Ljava/lang/String;

    aput-object v7, v2, v6

    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_a
    move-object v1, v5

    .line 40
    :goto_7
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v1, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->p0:Landroid/widget/TextView;

    if-eqz v1, :cond_c

    .line 42
    iget-boolean v2, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->v0:Z

    if-eqz v2, :cond_b

    iget-object v2, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->C0:Ljava/lang/CharSequence;

    goto :goto_8

    :cond_b
    move-object v2, v5

    :goto_8
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    :cond_c
    iget-object v1, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->o0:Landroid/widget/TextView;

    if-eqz v1, :cond_e

    .line 44
    iget-boolean v2, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->v0:Z

    if-eqz v2, :cond_d

    iget-object v5, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->B0:Ljava/lang/CharSequence;

    :cond_d
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    return-void
.end method
