.class public Lcom/facebook/common/time/TimeSpan;
.super Ljava/lang/Object;
.source "TimeSpan.java"


# instance fields
.field private final mDurationNanos:J


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 3
    .param p1, "duration"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/common/time/TimeSpan;->mDurationNanos:J

    .line 87
    return-void
.end method

.method public static fromDays(J)Lcom/facebook/common/time/TimeSpan;
    .locals 2
    .param p0, "days"    # J

    .prologue
    .line 70
    new-instance v0, Lcom/facebook/common/time/TimeSpan;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/common/time/TimeSpan;-><init>(JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public static fromHours(J)Lcom/facebook/common/time/TimeSpan;
    .locals 2
    .param p0, "hours"    # J

    .prologue
    .line 62
    new-instance v0, Lcom/facebook/common/time/TimeSpan;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/common/time/TimeSpan;-><init>(JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public static fromMicros(J)Lcom/facebook/common/time/TimeSpan;
    .locals 2
    .param p0, "micros"    # J

    .prologue
    .line 30
    new-instance v0, Lcom/facebook/common/time/TimeSpan;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/common/time/TimeSpan;-><init>(JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public static fromMillis(J)Lcom/facebook/common/time/TimeSpan;
    .locals 2
    .param p0, "millis"    # J

    .prologue
    .line 38
    new-instance v0, Lcom/facebook/common/time/TimeSpan;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/common/time/TimeSpan;-><init>(JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public static fromMinutes(J)Lcom/facebook/common/time/TimeSpan;
    .locals 2
    .param p0, "minutes"    # J

    .prologue
    .line 54
    new-instance v0, Lcom/facebook/common/time/TimeSpan;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/common/time/TimeSpan;-><init>(JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public static fromNanos(J)Lcom/facebook/common/time/TimeSpan;
    .locals 2
    .param p0, "nanos"    # J

    .prologue
    .line 22
    new-instance v0, Lcom/facebook/common/time/TimeSpan;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/common/time/TimeSpan;-><init>(JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public static fromSeconds(J)Lcom/facebook/common/time/TimeSpan;
    .locals 2
    .param p0, "seconds"    # J

    .prologue
    .line 46
    new-instance v0, Lcom/facebook/common/time/TimeSpan;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/common/time/TimeSpan;-><init>(JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method private static final pluralize(Ljava/lang/StringBuilder;Ljava/lang/String;J)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "singular"    # Ljava/lang/String;
    .param p2, "num"    # J

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-wide/16 v0, 0x1

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 204
    const-string v0, "s"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_0
    return-void
.end method


# virtual methods
.method public as(Ljava/util/concurrent/TimeUnit;)J
    .locals 3
    .param p1, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/facebook/common/time/TimeSpan;->mDurationNanos:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 186
    if-ne p0, p1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v1

    .line 187
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 189
    check-cast v0, Lcom/facebook/common/time/TimeSpan;

    .line 191
    .local v0, "timeSpan":Lcom/facebook/common/time/TimeSpan;
    iget-wide v4, p0, Lcom/facebook/common/time/TimeSpan;->mDurationNanos:J

    iget-wide v6, v0, Lcom/facebook/common/time/TimeSpan;->mDurationNanos:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 198
    iget-wide v0, p0, Lcom/facebook/common/time/TimeSpan;->mDurationNanos:J

    iget-wide v2, p0, Lcom/facebook/common/time/TimeSpan;->mDurationNanos:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public toDays()J
    .locals 4

    .prologue
    .line 121
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lcom/facebook/common/time/TimeSpan;->mDurationNanos:J

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public toHours()J
    .locals 4

    .prologue
    .line 116
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lcom/facebook/common/time/TimeSpan;->mDurationNanos:J

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public toMicros()J
    .locals 4

    .prologue
    .line 96
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lcom/facebook/common/time/TimeSpan;->mDurationNanos:J

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public toMillis()J
    .locals 4

    .prologue
    .line 101
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lcom/facebook/common/time/TimeSpan;->mDurationNanos:J

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public toMinutes()J
    .locals 4

    .prologue
    .line 111
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lcom/facebook/common/time/TimeSpan;->mDurationNanos:J

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public toNanos()J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/facebook/common/time/TimeSpan;->mDurationNanos:J

    return-wide v0
.end method

.method public toSeconds()J
    .locals 4

    .prologue
    .line 106
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lcom/facebook/common/time/TimeSpan;->mDurationNanos:J

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 24

    .prologue
    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/common/time/TimeSpan;->toDays()J

    move-result-wide v4

    .line 137
    .local v4, "days":J
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/common/time/TimeSpan;->toHours()J

    move-result-wide v20

    const-wide/16 v22, 0x18

    rem-long v6, v20, v22

    .line 138
    .local v6, "hours":J
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/common/time/TimeSpan;->toMinutes()J

    move-result-wide v20

    const-wide/16 v22, 0x3c

    rem-long v12, v20, v22

    .line 139
    .local v12, "minutes":J
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/common/time/TimeSpan;->toSeconds()J

    move-result-wide v20

    const-wide/16 v22, 0x3c

    rem-long v18, v20, v22

    .line 140
    .local v18, "seconds":J
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/common/time/TimeSpan;->toMillis()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    rem-long v10, v20, v22

    .line 141
    .local v10, "millis":J
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/common/time/TimeSpan;->toMicros()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    rem-long v8, v20, v22

    .line 142
    .local v8, "micros":J
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/common/time/TimeSpan;->toNanos()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    rem-long v14, v20, v22

    .line 144
    .local v14, "nanos":J
    const-string v17, ""

    .line 145
    .local v17, "sep":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v20, "TimeSpan{"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .local v16, "sb":Ljava/lang/StringBuilder;
    const-wide/16 v20, 0x0

    cmp-long v20, v4, v20

    if-lez v20, :cond_0

    .line 147
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string v20, "Day"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/common/time/TimeSpan;->pluralize(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    .line 149
    const-string v17, ", "

    .line 151
    :cond_0
    const-wide/16 v20, 0x0

    cmp-long v20, v6, v20

    if-lez v20, :cond_1

    .line 152
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v20, "Hour"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6, v7}, Lcom/facebook/common/time/TimeSpan;->pluralize(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    .line 154
    const-string v17, ", "

    .line 156
    :cond_1
    const-wide/16 v20, 0x0

    cmp-long v20, v12, v20

    if-lez v20, :cond_2

    .line 157
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v20, "Minute"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-static {v0, v1, v12, v13}, Lcom/facebook/common/time/TimeSpan;->pluralize(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    .line 159
    const-string v17, ", "

    .line 161
    :cond_2
    const-wide/16 v20, 0x0

    cmp-long v20, v18, v20

    if-lez v20, :cond_3

    .line 162
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string v20, "Second"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/common/time/TimeSpan;->pluralize(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    .line 164
    const-string v17, ", "

    .line 166
    :cond_3
    const-wide/16 v20, 0x0

    cmp-long v20, v10, v20

    if-lez v20, :cond_4

    .line 167
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v20, "Milli"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10, v11}, Lcom/facebook/common/time/TimeSpan;->pluralize(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    .line 169
    const-string v17, ", "

    .line 171
    :cond_4
    const-wide/16 v20, 0x0

    cmp-long v20, v8, v20

    if-lez v20, :cond_5

    .line 172
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string v20, "Micro"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8, v9}, Lcom/facebook/common/time/TimeSpan;->pluralize(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    .line 174
    const-string v17, ", "

    .line 176
    :cond_5
    const-wide/16 v20, 0x0

    cmp-long v20, v14, v20

    if-lez v20, :cond_6

    .line 177
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string v20, "Nano"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-static {v0, v1, v14, v15}, Lcom/facebook/common/time/TimeSpan;->pluralize(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    .line 180
    :cond_6
    const-string v20, "}"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    return-object v20
.end method
