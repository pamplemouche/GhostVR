.class public Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;
.super Ljava/lang/Object;
.source "DebugClassGraphBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/inject/DebugClassGraphBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProviderCall"
.end annotation


# instance fields
.field private mCollector:Lcom/facebook/common/instrumentation/InstrumentationInformationCollector;

.field private mConstructedClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final mDependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;",
            ">;"
        }
    .end annotation
.end field

.field private mDuration:Ljava/lang/Long;

.field private final mInstrumentationInfo:Lcom/facebook/common/instrumentation/InstrumentationInfo;

.field private final mKey:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key",
            "<*>;"
        }
    .end annotation
.end field

.field private mOverheadCorrection:J

.field private mStartTime:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/google/inject/Key;Lcom/facebook/common/instrumentation/InstrumentationInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<*>;",
            "Lcom/facebook/common/instrumentation/InstrumentationInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->mKey:Lcom/google/inject/Key;

    .line 75
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->mDependencies:Ljava/util/List;

    .line 76
    iput-object p2, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->mInstrumentationInfo:Lcom/facebook/common/instrumentation/InstrumentationInfo;

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->mOverheadCorrection:J

    .line 79
    return-void
.end method

.method static synthetic access$200(Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;J)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->start(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->stop(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->addDependency(Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;)V

    return-void
.end method

.method static synthetic access$500(Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;J)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->addToProviderCallOverhead(J)V

    return-void
.end method

.method private addDependency(Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->mDependencies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    return-void
.end method

.method private addToProviderCallOverhead(J)V
    .locals 3

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->mOverheadCorrection:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->mOverheadCorrection:J

    .line 123
    return-void
.end method

.method private start(J)V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->mStartTime:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Lcom/facebook/inject/DebugClassGraphBuilder;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Already started provider call."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-wide v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->mOverheadCorrection:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->mOverheadCorrection:J

    .line 93
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->mStartTime:Ljava/lang/Long;

    goto :goto_0
.end method

.method private stop(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->mStartTime:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 98
    invoke-static {}, Lcom/facebook/inject/DebugClassGraphBuilder;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Haven\'t started provider call."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 119
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->mDuration:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 103
    invoke-static {}, Lcom/facebook/inject/DebugClassGraphBuilder;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Have already called stop on this provider calls"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->mStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->mDuration:Ljava/lang/Long;

    .line 109
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 111
    if-eqz p1, :cond_2

    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->mConstructedClass:Ljava/lang/Class;

    .line 114
    iget-object v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->mInstrumentationInfo:Lcom/facebook/common/instrumentation/InstrumentationInfo;

    .line 116
    invoke-static {}, Lcom/facebook/inject/DebugClassGraphBuilder;->access$100()Lcom/facebook/common/instrumentation/InstrumentationHelper$InstrumentationLogger;

    move-result-object v1

    .line 115
    invoke-static {p1, v0, v1}, Lcom/facebook/common/instrumentation/InstrumentationHelper;->addInstrumentationListenerToClassIfCan(Ljava/lang/Object;Lcom/facebook/common/instrumentation/InstrumentationInfo;Lcom/facebook/common/instrumentation/InstrumentationHelper$InstrumentationLogger;)Lcom/facebook/common/instrumentation/InstrumentationInformationCollector;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->mCollector:Lcom/facebook/common/instrumentation/InstrumentationInformationCollector;

    .line 118
    iget-wide v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->mOverheadCorrection:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v2, v4, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->mOverheadCorrection:J

    goto :goto_0

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->mKey:Lcom/google/inject/Key;

    invoke-virtual {v0}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public saveCallTreeInJson(Lorg/json/JSONStringer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 131
    iget-object v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->mConstructedClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "class"

    invoke-virtual {p1, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 133
    iget-object v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->mConstructedClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->mKey:Lcom/google/inject/Key;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->mKey:Lcom/google/inject/Key;

    invoke-virtual {v0}, Lcom/google/inject/Key;->getAnnotationType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 137
    const-string v0, "annotationClass"

    invoke-virtual {p1, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 138
    iget-object v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->mKey:Lcom/google/inject/Key;

    invoke-virtual {v0}, Lcom/google/inject/Key;->getAnnotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->mStartTime:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 142
    const-string v0, "startTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 143
    iget-object v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->mStartTime:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->mDuration:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 147
    const-string v0, "duration"

    invoke-virtual {p1, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 148
    iget-object v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->mDuration:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 151
    :cond_3
    iget-object v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->mCollector:Lcom/facebook/common/instrumentation/InstrumentationInformationCollector;

    if-eqz v0, :cond_4

    .line 152
    const-string v0, "callCnt"

    invoke-virtual {p1, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 153
    iget-object v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->mCollector:Lcom/facebook/common/instrumentation/InstrumentationInformationCollector;

    invoke-virtual {v0}, Lcom/facebook/common/instrumentation/InstrumentationInformationCollector;->getCallCount()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    .line 156
    :cond_4
    const-string v0, "overheadCorrection"

    invoke-virtual {p1, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 157
    iget-wide v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->mOverheadCorrection:J

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    .line 159
    const-string v0, "dependencies"

    invoke-virtual {p1, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 160
    invoke-virtual {p1}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    .line 161
    iget-object v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->mDependencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;

    .line 162
    invoke-virtual {v0, p1}, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->saveCallTreeInJson(Lorg/json/JSONStringer;)V

    goto :goto_0

    .line 164
    :cond_5
    invoke-virtual {p1}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    .line 165
    invoke-virtual {p1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 166
    return-void
.end method
