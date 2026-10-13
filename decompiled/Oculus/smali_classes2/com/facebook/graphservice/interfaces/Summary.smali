.class public Lcom/facebook/graphservice/interfaces/Summary;
.super Ljava/lang/Object;
.source "Summary.java"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/graphservice/interfaces/Summary$Source;
    }
.end annotation


# instance fields
.field public final QPLPointKeys:[Ljava/lang/String;

.field public final QPLPointValues:[J

.field public final additiveParseTimeMs:J

.field public final apiErrorCode:I

.field public final attempts:I

.field public final booleanQPLAnnotationKeys:[Ljava/lang/String;

.field public final booleanQPLAnnotationValues:[Z

.field public final cacheSyncEnd:J

.field public final cacheSyncStart:J

.field public final cachedResponseAge:J

.field public final code:I

.field public final consistencySource:Ljava/lang/String;

.field public final debugInfo:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final fbtraceId:Ljava/lang/String;

.field public final fetchCachedResponseEnd:J

.field public final fetchCachedResponseStart:J

.field public final freshResponse:Z

.field public final integerQPLAnnotationKeys:[Ljava/lang/String;

.field public final integerQPLAnnotationValues:[J

.field public final isFinal:Z

.field public final isNetworkComplete:Z

.field public final isSilent:Z

.field public final isTransient:Z

.field public final networkEnd:J

.field public final networkStart:J

.field public final parsedChunks:I

.field public final parsedDataSize:I

.field public final prefetchPredictionID:Ljava/lang/String;

.field public final rejectedFromAdaptiveFetch:Z

.field public final requestEnd:J

.field public final requestStart:J

.field public final requiresReauth:Z

.field public final responseFirstChunk:J

.field public final serverFlushTime:J

.field public final serverStartTime:J

.field public final source:Ljava/lang/String;
    .annotation build Lcom/facebook/graphservice/interfaces/Summary$Source;
    .end annotation
.end field

.field public final stringQPLAnnotationKeys:[Ljava/lang/String;

.field public final stringQPLAnnotationValues:[Ljava/lang/String;

.field public final summary:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZIJJJJJIIJJJJZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;JJJJZ[Ljava/lang/String;[Z[Ljava/lang/String;[J[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[JLjava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/facebook/graphservice/interfaces/Summary$Source;
        .end annotation
    .end param
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/facebook/graphservice/interfaces/Summary;->source:Ljava/lang/String;

    .line 134
    iput-boolean p2, p0, Lcom/facebook/graphservice/interfaces/Summary;->isFinal:Z

    .line 135
    iput-boolean p3, p0, Lcom/facebook/graphservice/interfaces/Summary;->isNetworkComplete:Z

    .line 136
    iput p4, p0, Lcom/facebook/graphservice/interfaces/Summary;->attempts:I

    .line 137
    iput-wide p5, p0, Lcom/facebook/graphservice/interfaces/Summary;->requestStart:J

    .line 138
    iput-wide p7, p0, Lcom/facebook/graphservice/interfaces/Summary;->networkStart:J

    .line 139
    iput-wide p9, p0, Lcom/facebook/graphservice/interfaces/Summary;->networkEnd:J

    .line 140
    iput-wide p11, p0, Lcom/facebook/graphservice/interfaces/Summary;->responseFirstChunk:J

    .line 141
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/facebook/graphservice/interfaces/Summary;->requestEnd:J

    .line 142
    move/from16 v0, p15

    iput v0, p0, Lcom/facebook/graphservice/interfaces/Summary;->parsedChunks:I

    .line 143
    move/from16 v0, p16

    iput v0, p0, Lcom/facebook/graphservice/interfaces/Summary;->parsedDataSize:I

    .line 144
    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/facebook/graphservice/interfaces/Summary;->additiveParseTimeMs:J

    .line 145
    move-wide/from16 v0, p19

    iput-wide v0, p0, Lcom/facebook/graphservice/interfaces/Summary;->fetchCachedResponseStart:J

    .line 146
    move-wide/from16 v0, p21

    iput-wide v0, p0, Lcom/facebook/graphservice/interfaces/Summary;->fetchCachedResponseEnd:J

    .line 147
    move-wide/from16 v0, p23

    iput-wide v0, p0, Lcom/facebook/graphservice/interfaces/Summary;->cachedResponseAge:J

    .line 148
    move/from16 v0, p25

    iput-boolean v0, p0, Lcom/facebook/graphservice/interfaces/Summary;->freshResponse:Z

    .line 149
    move/from16 v0, p26

    iput v0, p0, Lcom/facebook/graphservice/interfaces/Summary;->code:I

    .line 150
    move/from16 v0, p27

    iput v0, p0, Lcom/facebook/graphservice/interfaces/Summary;->apiErrorCode:I

    .line 151
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/facebook/graphservice/interfaces/Summary;->summary:Ljava/lang/String;

    .line 152
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/facebook/graphservice/interfaces/Summary;->description:Ljava/lang/String;

    .line 153
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/facebook/graphservice/interfaces/Summary;->debugInfo:Ljava/lang/String;

    .line 154
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/facebook/graphservice/interfaces/Summary;->fbtraceId:Ljava/lang/String;

    .line 155
    move/from16 v0, p32

    iput-boolean v0, p0, Lcom/facebook/graphservice/interfaces/Summary;->isSilent:Z

    .line 156
    move/from16 v0, p33

    iput-boolean v0, p0, Lcom/facebook/graphservice/interfaces/Summary;->isTransient:Z

    .line 157
    move/from16 v0, p34

    iput-boolean v0, p0, Lcom/facebook/graphservice/interfaces/Summary;->requiresReauth:Z

    .line 158
    move-object/from16 v0, p35

    iput-object v0, p0, Lcom/facebook/graphservice/interfaces/Summary;->consistencySource:Ljava/lang/String;

    .line 159
    move-wide/from16 v0, p36

    iput-wide v0, p0, Lcom/facebook/graphservice/interfaces/Summary;->serverStartTime:J

    .line 160
    move-wide/from16 v0, p38

    iput-wide v0, p0, Lcom/facebook/graphservice/interfaces/Summary;->serverFlushTime:J

    .line 161
    move-wide/from16 v0, p40

    iput-wide v0, p0, Lcom/facebook/graphservice/interfaces/Summary;->cacheSyncStart:J

    .line 162
    move-wide/from16 v0, p42

    iput-wide v0, p0, Lcom/facebook/graphservice/interfaces/Summary;->cacheSyncEnd:J

    .line 163
    move/from16 v0, p44

    iput-boolean v0, p0, Lcom/facebook/graphservice/interfaces/Summary;->rejectedFromAdaptiveFetch:Z

    .line 164
    move-object/from16 v0, p45

    iput-object v0, p0, Lcom/facebook/graphservice/interfaces/Summary;->booleanQPLAnnotationKeys:[Ljava/lang/String;

    .line 165
    move-object/from16 v0, p46

    iput-object v0, p0, Lcom/facebook/graphservice/interfaces/Summary;->booleanQPLAnnotationValues:[Z

    .line 166
    move-object/from16 v0, p47

    iput-object v0, p0, Lcom/facebook/graphservice/interfaces/Summary;->integerQPLAnnotationKeys:[Ljava/lang/String;

    .line 167
    move-object/from16 v0, p48

    iput-object v0, p0, Lcom/facebook/graphservice/interfaces/Summary;->integerQPLAnnotationValues:[J

    .line 168
    move-object/from16 v0, p49

    iput-object v0, p0, Lcom/facebook/graphservice/interfaces/Summary;->stringQPLAnnotationKeys:[Ljava/lang/String;

    .line 169
    move-object/from16 v0, p50

    iput-object v0, p0, Lcom/facebook/graphservice/interfaces/Summary;->stringQPLAnnotationValues:[Ljava/lang/String;

    .line 170
    move-object/from16 v0, p51

    iput-object v0, p0, Lcom/facebook/graphservice/interfaces/Summary;->QPLPointKeys:[Ljava/lang/String;

    .line 171
    move-object/from16 v0, p52

    iput-object v0, p0, Lcom/facebook/graphservice/interfaces/Summary;->QPLPointValues:[J

    .line 172
    move-object/from16 v0, p53

    iput-object v0, p0, Lcom/facebook/graphservice/interfaces/Summary;->prefetchPredictionID:Ljava/lang/String;

    .line 173
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 188
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "source"

    iget-object v2, p0, Lcom/facebook/graphservice/interfaces/Summary;->source:Ljava/lang/String;

    .line 189
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "isFinal"

    iget-boolean v2, p0, Lcom/facebook/graphservice/interfaces/Summary;->isFinal:Z

    .line 190
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "attempts"

    iget v2, p0, Lcom/facebook/graphservice/interfaces/Summary;->attempts:I

    .line 191
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "requestStart"

    iget-wide v2, p0, Lcom/facebook/graphservice/interfaces/Summary;->requestStart:J

    .line 192
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "networkStart"

    iget-wide v2, p0, Lcom/facebook/graphservice/interfaces/Summary;->networkStart:J

    .line 193
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "networkEnd"

    iget-wide v2, p0, Lcom/facebook/graphservice/interfaces/Summary;->networkEnd:J

    .line 194
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "responseFirstChunk"

    iget-wide v2, p0, Lcom/facebook/graphservice/interfaces/Summary;->responseFirstChunk:J

    .line 195
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "requestEnd"

    iget-wide v2, p0, Lcom/facebook/graphservice/interfaces/Summary;->requestEnd:J

    .line 196
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "parsedChunks"

    iget v2, p0, Lcom/facebook/graphservice/interfaces/Summary;->parsedChunks:I

    .line 197
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "parsedDataSize"

    iget v2, p0, Lcom/facebook/graphservice/interfaces/Summary;->parsedDataSize:I

    .line 198
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "additiveParseTimeMs"

    iget-wide v2, p0, Lcom/facebook/graphservice/interfaces/Summary;->additiveParseTimeMs:J

    .line 199
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "fetchCachedResponseStart"

    iget-wide v2, p0, Lcom/facebook/graphservice/interfaces/Summary;->fetchCachedResponseStart:J

    .line 200
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "fetchCachedResponseEnd"

    iget-wide v2, p0, Lcom/facebook/graphservice/interfaces/Summary;->fetchCachedResponseEnd:J

    .line 201
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "cachedResponseAge"

    iget-wide v2, p0, Lcom/facebook/graphservice/interfaces/Summary;->cachedResponseAge:J

    .line 202
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "freshResponse"

    iget-boolean v2, p0, Lcom/facebook/graphservice/interfaces/Summary;->freshResponse:Z

    .line 203
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "consistencySource"

    iget-object v2, p0, Lcom/facebook/graphservice/interfaces/Summary;->consistencySource:Ljava/lang/String;

    .line 204
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "serverStartTime"

    iget-wide v2, p0, Lcom/facebook/graphservice/interfaces/Summary;->serverStartTime:J

    .line 205
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "serverFlushTime"

    iget-wide v2, p0, Lcom/facebook/graphservice/interfaces/Summary;->serverFlushTime:J

    .line 206
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "rejectedFromAdaptiveFetch"

    iget-boolean v2, p0, Lcom/facebook/graphservice/interfaces/Summary;->rejectedFromAdaptiveFetch:Z

    .line 207
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "booleanQPLAnnotationKeys"

    iget-object v2, p0, Lcom/facebook/graphservice/interfaces/Summary;->booleanQPLAnnotationKeys:[Ljava/lang/String;

    .line 208
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "booleanQPLAnnotationValues"

    iget-object v2, p0, Lcom/facebook/graphservice/interfaces/Summary;->booleanQPLAnnotationValues:[Z

    .line 209
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "integerQPLAnnotationKeys"

    iget-object v2, p0, Lcom/facebook/graphservice/interfaces/Summary;->integerQPLAnnotationKeys:[Ljava/lang/String;

    .line 210
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "integerQPLAnnotationValues"

    iget-object v2, p0, Lcom/facebook/graphservice/interfaces/Summary;->integerQPLAnnotationValues:[J

    .line 211
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "stringQPLAnnotationKeys"

    iget-object v2, p0, Lcom/facebook/graphservice/interfaces/Summary;->stringQPLAnnotationKeys:[Ljava/lang/String;

    .line 212
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "stringQPLAnnotationValues"

    iget-object v2, p0, Lcom/facebook/graphservice/interfaces/Summary;->stringQPLAnnotationValues:[Ljava/lang/String;

    .line 213
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "QPLPointKeys"

    iget-object v2, p0, Lcom/facebook/graphservice/interfaces/Summary;->QPLPointKeys:[Ljava/lang/String;

    .line 214
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "QPLPointValues"

    iget-object v2, p0, Lcom/facebook/graphservice/interfaces/Summary;->QPLPointValues:[J

    .line 215
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "prefetchPredictionID"

    iget-object v2, p0, Lcom/facebook/graphservice/interfaces/Summary;->prefetchPredictionID:Ljava/lang/String;

    .line 216
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
