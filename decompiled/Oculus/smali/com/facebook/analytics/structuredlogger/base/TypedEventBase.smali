.class public Lcom/facebook/analytics/structuredlogger/base/TypedEventBase;
.super Ljava/lang/Object;
.source "TypedEventBase.java"


# instance fields
.field mTypedEvent:Lcom/facebook/analytics/structuredlogger/base/TypedEvent;


# direct methods
.method protected constructor <init>(Lcom/facebook/analytics/structuredlogger/base/TypedEvent;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/facebook/analytics/structuredlogger/base/TypedEventBase;->mTypedEvent:Lcom/facebook/analytics/structuredlogger/base/TypedEvent;

    .line 14
    return-void
.end method


# virtual methods
.method protected addString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/facebook/analytics/structuredlogger/base/TypedEventBase;->mTypedEvent:Lcom/facebook/analytics/structuredlogger/base/TypedEvent;

    invoke-interface {v0, p1, p2}, Lcom/facebook/analytics/structuredlogger/base/TypedEvent;->addString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method protected isSampled()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/analytics/structuredlogger/base/TypedEventBase;->mTypedEvent:Lcom/facebook/analytics/structuredlogger/base/TypedEvent;

    invoke-interface {v0}, Lcom/facebook/analytics/structuredlogger/base/TypedEvent;->isSampled()Z

    move-result v0

    return v0
.end method

.method public log()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/analytics/structuredlogger/base/TypedEventBase;->mTypedEvent:Lcom/facebook/analytics/structuredlogger/base/TypedEvent;

    invoke-interface {v0}, Lcom/facebook/analytics/structuredlogger/base/TypedEvent;->log()V

    .line 62
    return-void
.end method
