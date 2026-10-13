.class public Lcom/facebook/rti/common/fbtrace/EmptyFbTraceLogger;
.super Ljava/lang/Object;
.source "EmptyFbTraceLogger.java"

# interfaces
.implements Lcom/facebook/rti/common/fbtrace/FbTraceLogger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public logAcknowledgePublication(Ljava/lang/Object;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    return-void
.end method

.method public logPublishReceive(Ljava/lang/String;[B)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 10
    const/4 v0, 0x0

    return-object v0
.end method

.method public logPublishSend(Ljava/lang/String;[B)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public logResponseSend(Ljava/lang/Object;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    return-void
.end method
