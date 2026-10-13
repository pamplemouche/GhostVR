.class Lcom/facebook/debug/tracer/TraceFormatter;
.super Ljava/lang/Object;
.source "TraceFormatter.java"


# static fields
.field private static final AFTER_PIPES:I = 0x2

.field private static final BEFORE_PIPES:I = 0x0

.field private static final IN_PIPES:I = 0x1

.field private static final MAX_LOG_BYTES_LENGTH:I = 0xfa0

.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/facebook/debug/tracer/TraceFormatter;

    sput-object v0, Lcom/facebook/debug/tracer/TraceFormatter;->TAG:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static appendContiguousLineConnectors(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "prevLine"    # Ljava/lang/String;
    .param p2, "nextLine"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    const/16 v9, 0x7c

    const/4 v8, 0x1

    .line 191
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 229
    :cond_0
    return-void

    .line 198
    :cond_1
    const/4 v4, 0x0

    .line 199
    .local v4, "inConnectorsPrev":I
    const/4 v3, 0x0

    .line 200
    .local v3, "inConnectorsNext":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 201
    .local v5, "maxLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 202
    const/4 v1, 0x0

    .line 203
    .local v1, "cPrev":C
    const/4 v0, 0x0

    .line 204
    .local v0, "cNext":C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 205
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 207
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 208
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 210
    :cond_3
    if-nez v4, :cond_8

    if-ne v1, v9, :cond_8

    .line 211
    const/4 v4, 0x1

    .line 215
    :cond_4
    :goto_1
    if-nez v3, :cond_9

    if-ne v0, v9, :cond_9

    .line 216
    const/4 v3, 0x1

    .line 221
    :cond_5
    :goto_2
    if-ne v4, v10, :cond_6

    if-eq v3, v10, :cond_0

    .line 223
    :cond_6
    if-ne v4, v8, :cond_a

    .line 224
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 201
    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 212
    :cond_8
    if-ne v4, v8, :cond_4

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_4

    if-eq v1, v9, :cond_4

    .line 213
    const/4 v4, 0x2

    goto :goto_1

    .line 217
    :cond_9
    if-ne v3, v8, :cond_5

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_5

    if-eq v0, v9, :cond_5

    .line 218
    const/4 v3, 0x2

    goto :goto_2

    .line 225
    :cond_a
    if-ne v3, v8, :cond_7

    .line 226
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private static appendThreadTraceTitle(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v1, 0x0

    .line 137
    const/4 v0, 0x0

    invoke-static {p0, v0, v1, v1}, Lcom/facebook/debug/tracer/TraceFormatter;->appendThreadTraceTitle(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method private static appendThreadTraceTitle(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "index"    # I
    .param p2, "prevLine"    # Ljava/lang/String;
    .param p3, "nextLine"    # Ljava/lang/String;

    .prologue
    .line 151
    const-string v0, "Thread trace:("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const/16 v0, 0xa

    if-ge p1, v0, :cond_1

    .line 153
    const-string v0, "    "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_0
    :goto_0
    const-string v0, "                 "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-static {p0, p2, p3}, Lcom/facebook/debug/tracer/TraceFormatter;->appendContiguousLineConnectors(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string v0, " .                   TOTAL   THREAD  "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-static {p0, p2, p3}, Lcom/facebook/debug/tracer/TraceFormatter;->appendContiguousLineConnectors(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    return-void

    .line 154
    :cond_1
    const/16 v0, 0x64

    if-ge p1, v0, :cond_2

    .line 155
    const-string v0, "   "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 156
    :cond_2
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_0

    .line 157
    const-string v0, "  "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static getFormattedTrace(ILjava/util/List;Landroid/util/SparseArray;)Ljava/lang/String;
    .locals 22
    .param p0, "startTraceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/debug/tracer/TraceEvent;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/facebook/debug/tracer/TraceEvent;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/debug/tracer/TraceEvent;>;"
    .local p2, "outstandingEvents":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/debug/tracer/TraceEvent;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-wide/16 v6, -0x1

    .line 71
    .local v6, "etime":J
    invoke-static {}, Lcom/facebook/debug/tracer/TracerClock;->nanoTime()J

    move-result-wide v14

    .line 72
    .local v14, "nowNanos":J
    const/4 v8, 0x0

    .line 73
    .local v8, "indents":I
    const/4 v12, 0x0

    .line 74
    .local v12, "foundFirstTraceId":Z
    const-wide/16 v4, -0x1

    .line 75
    .local v4, "startTime":J
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v13, v0, :cond_7

    .line 76
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/debug/tracer/TraceEvent;

    .line 77
    .local v2, "e":Lcom/facebook/debug/tracer/TraceEvent;
    if-nez v2, :cond_1

    .line 75
    :cond_0
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 80
    :cond_1
    if-nez v12, :cond_2

    .line 81
    invoke-virtual {v2}, Lcom/facebook/debug/tracer/TraceEvent;->getId()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, p0

    if-ne v0, v1, :cond_0

    .line 82
    const/4 v12, 0x1

    .line 83
    invoke-virtual {v2}, Lcom/facebook/debug/tracer/TraceEvent;->getEventTimeNanos()J

    move-result-wide v4

    .line 90
    :cond_2
    invoke-virtual {v2}, Lcom/facebook/debug/tracer/TraceEvent;->getEventType()Lcom/facebook/debug/tracer/TraceEvent$Type;

    move-result-object v9

    .line 91
    .local v9, "eventType":Lcom/facebook/debug/tracer/TraceEvent$Type;
    sget-object v18, Lcom/facebook/debug/tracer/TraceEvent$Type;->SPAWN:Lcom/facebook/debug/tracer/TraceEvent$Type;

    move-object/from16 v0, v18

    if-eq v9, v0, :cond_0

    .line 95
    sget-object v18, Lcom/facebook/debug/tracer/TraceEvent$Type;->STOP:Lcom/facebook/debug/tracer/TraceEvent$Type;

    move-object/from16 v0, v18

    if-eq v9, v0, :cond_3

    sget-object v18, Lcom/facebook/debug/tracer/TraceEvent$Type;->STOP_ASYNC:Lcom/facebook/debug/tracer/TraceEvent$Type;

    move-object/from16 v0, v18

    if-ne v9, v0, :cond_4

    .line 96
    :cond_3
    if-nez v8, :cond_6

    .line 97
    sget-object v18, Lcom/facebook/debug/tracer/TraceFormatter;->TAG:Ljava/lang/Class;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Trace contains a stop event without a corresponding start: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 102
    :cond_4
    :goto_2
    const-string v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual/range {v2 .. v8}, Lcom/facebook/debug/tracer/TraceEvent;->appendTraceString(Ljava/lang/StringBuilder;JJI)V

    .line 104
    const-string v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v2}, Lcom/facebook/debug/tracer/TraceEvent;->getEventTimeNanos()J

    move-result-wide v6

    .line 106
    const-string v18, "\n"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    sget-object v18, Lcom/facebook/debug/tracer/TraceEvent$Type;->START:Lcom/facebook/debug/tracer/TraceEvent$Type;

    move-object/from16 v0, v18

    if-eq v9, v0, :cond_5

    sget-object v18, Lcom/facebook/debug/tracer/TraceEvent$Type;->START_ASYNC:Lcom/facebook/debug/tracer/TraceEvent$Type;

    move-object/from16 v0, v18

    if-ne v9, v0, :cond_0

    .line 108
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 99
    :cond_6
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 112
    .end local v2    # "e":Lcom/facebook/debug/tracer/TraceEvent;
    .end local v9    # "eventType":Lcom/facebook/debug/tracer/TraceEvent$Type;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/util/SparseArray;->size()I

    move-result v18

    if-eqz v18, :cond_8

    .line 113
    const-string v18, " Unstopped timers:\n"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/util/SparseArray;->size()I

    move-result v16

    .line 115
    .local v16, "size":I
    const/4 v13, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v13, v0, :cond_8

    .line 116
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/facebook/debug/tracer/TraceEvent;

    .line 117
    .local v17, "startEvent":Lcom/facebook/debug/tracer/TraceEvent;
    invoke-virtual/range {v17 .. v17}, Lcom/facebook/debug/tracer/TraceEvent;->getEventTimeNanos()J

    move-result-wide v10

    .line 118
    .local v10, "eventTimeNanos":J
    const-string v18, "  "

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    const-string v18, " ("

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    sub-long v18, v14, v10

    const-wide/32 v20, 0xf4240

    div-long v18, v18, v20

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 122
    const-string v18, " ms, started at "

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-wide/32 v18, 0xf4240

    div-long v18, v10, v18

    invoke-static/range {v18 .. v19}, Lcom/facebook/debug/tracer/TraceEvent;->formatTime(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v18, "\n"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 128
    .end local v10    # "eventTimeNanos":J
    .end local v16    # "size":I
    .end local v17    # "startEvent":Lcom/facebook/debug/tracer/TraceEvent;
    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    return-object v18
.end method

.method static logTrace(IILjava/lang/String;Ljava/util/List;Landroid/util/SparseArray;)V
    .locals 11
    .param p0, "startTraceId"    # I
    .param p1, "logLevel"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/debug/tracer/TraceEvent;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/facebook/debug/tracer/TraceEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p3, "events":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/debug/tracer/TraceEvent;>;"
    .local p4, "outstandingEvents":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/debug/tracer/TraceEvent;>;"
    invoke-static {p1}, Lcom/facebook/debug/log/BLog;->isLoggable(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    invoke-static {p0, p3, p4}, Lcom/facebook/debug/tracer/TraceFormatter;->getFormattedTrace(ILjava/util/List;Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v6

    .line 29
    .local v6, "trace":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 30
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xfa0

    if-le v8, v9, :cond_6

    .line 31
    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, "lines":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 33
    .local v1, "index":I
    const/4 v7, 0x0

    .line 34
    .local v7, "traceIndex":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v5, v8, v9, v10}, Lcom/facebook/debug/tracer/TraceFormatter;->appendThreadTraceTitle(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 37
    .local v0, "byteCount":I
    :goto_1
    array-length v8, v3

    if-ge v1, v8, :cond_5

    .line 38
    if-eqz v1, :cond_3

    add-int/lit8 v8, v1, -0x1

    aget-object v4, v3, v8

    .line 39
    .local v4, "previousLine":Ljava/lang/String;
    :goto_2
    aget-object v2, v3, v1

    .line 40
    .local v2, "line":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v0

    const/16 v9, 0xfa0

    if-ge v8, v9, :cond_4

    .line 41
    :cond_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v8, "\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v0, v8

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 38
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "previousLine":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 46
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "previousLine":Ljava/lang/String;
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, p2, v8}, Lcom/facebook/debug/log/BLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 48
    add-int/lit8 v7, v7, 0x1

    .line 49
    invoke-static {v5, v7, v4, v2}, Lcom/facebook/debug/tracer/TraceFormatter;->appendThreadTraceTitle(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    goto :goto_1

    .line 53
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "previousLine":Ljava/lang/String;
    :cond_5
    if-lez v0, :cond_0

    .line 54
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, p2, v8}, Lcom/facebook/debug/log/BLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    .end local v0    # "byteCount":I
    .end local v1    # "index":I
    .end local v3    # "lines":[Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "traceIndex":I
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    invoke-static {v5}, Lcom/facebook/debug/tracer/TraceFormatter;->appendThreadTraceTitle(Ljava/lang/StringBuilder;)V

    .line 59
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, p2, v8}, Lcom/facebook/debug/log/BLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
