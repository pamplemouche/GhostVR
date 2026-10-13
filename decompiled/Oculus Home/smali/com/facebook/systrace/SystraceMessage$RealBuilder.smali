.class Lcom/facebook/systrace/SystraceMessage$RealBuilder;
.super Lcom/facebook/systrace/SystraceMessage$Builder;
.source "SystraceMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/systrace/SystraceMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RealBuilder"
.end annotation


# instance fields
.field mArgs:Lcom/facebook/systrace/SystraceMessage$ArgsList;

.field mFlusher:Lcom/facebook/systrace/SystraceMessage$Flusher;

.field mSectionName:Ljava/lang/String;

.field mTag:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/facebook/systrace/SystraceMessage$Builder;-><init>()V

    .line 112
    new-instance v0, Lcom/facebook/systrace/SystraceMessage$ArgsList;

    invoke-direct {v0}, Lcom/facebook/systrace/SystraceMessage$ArgsList;-><init>()V

    iput-object v0, p0, Lcom/facebook/systrace/SystraceMessage$RealBuilder;->mArgs:Lcom/facebook/systrace/SystraceMessage$ArgsList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/systrace/SystraceMessage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/systrace/SystraceMessage$1;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/facebook/systrace/SystraceMessage$RealBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public arg(Ljava/lang/String;D)Lcom/facebook/systrace/SystraceMessage$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 147
    iget-object v0, p0, Lcom/facebook/systrace/SystraceMessage$RealBuilder;->mArgs:Lcom/facebook/systrace/SystraceMessage$ArgsList;

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/systrace/SystraceMessage$ArgsList;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-object p0
.end method

.method public arg(Ljava/lang/String;I)Lcom/facebook/systrace/SystraceMessage$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lcom/facebook/systrace/SystraceMessage$RealBuilder;->mArgs:Lcom/facebook/systrace/SystraceMessage$ArgsList;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/systrace/SystraceMessage$ArgsList;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-object p0
.end method

.method public arg(Ljava/lang/String;J)Lcom/facebook/systrace/SystraceMessage$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 141
    iget-object v0, p0, Lcom/facebook/systrace/SystraceMessage$RealBuilder;->mArgs:Lcom/facebook/systrace/SystraceMessage$ArgsList;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/systrace/SystraceMessage$ArgsList;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-object p0
.end method

.method public arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/systrace/SystraceMessage$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/systrace/SystraceMessage$RealBuilder;->mArgs:Lcom/facebook/systrace/SystraceMessage$ArgsList;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/systrace/SystraceMessage$ArgsList;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-object p0
.end method

.method public flush()V
    .locals 5

    .prologue
    .line 124
    iget-object v0, p0, Lcom/facebook/systrace/SystraceMessage$RealBuilder;->mFlusher:Lcom/facebook/systrace/SystraceMessage$Flusher;

    iget-wide v2, p0, Lcom/facebook/systrace/SystraceMessage$RealBuilder;->mTag:J

    iget-object v1, p0, Lcom/facebook/systrace/SystraceMessage$RealBuilder;->mSectionName:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/systrace/SystraceMessage$RealBuilder;->mArgs:Lcom/facebook/systrace/SystraceMessage$ArgsList;

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/facebook/systrace/SystraceMessage$Flusher;->flush(JLjava/lang/String;Lcom/facebook/systrace/SystraceMessage$ArgsList;)V

    .line 125
    return-void
.end method

.method reset(JLcom/facebook/systrace/SystraceMessage$Flusher;Ljava/lang/String;)Lcom/facebook/systrace/SystraceMessage$RealBuilder;
    .locals 1
    .param p1, "tag"    # J
    .param p3, "flusher"    # Lcom/facebook/systrace/SystraceMessage$Flusher;
    .param p4, "sectionName"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-wide p1, p0, Lcom/facebook/systrace/SystraceMessage$RealBuilder;->mTag:J

    .line 116
    iput-object p3, p0, Lcom/facebook/systrace/SystraceMessage$RealBuilder;->mFlusher:Lcom/facebook/systrace/SystraceMessage$Flusher;

    .line 117
    iput-object p4, p0, Lcom/facebook/systrace/SystraceMessage$RealBuilder;->mSectionName:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/facebook/systrace/SystraceMessage$RealBuilder;->mArgs:Lcom/facebook/systrace/SystraceMessage$ArgsList;

    invoke-virtual {v0}, Lcom/facebook/systrace/SystraceMessage$ArgsList;->clear()V

    .line 119
    return-object p0
.end method
