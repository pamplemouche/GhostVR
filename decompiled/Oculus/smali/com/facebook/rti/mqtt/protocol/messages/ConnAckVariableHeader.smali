.class public Lcom/facebook/rti/mqtt/protocol/messages/ConnAckVariableHeader;
.super Ljava/lang/Object;
.source "ConnAckVariableHeader.java"


# instance fields
.field public final mReturnCode:B


# direct methods
.method public constructor <init>(B)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-byte p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckVariableHeader;->mReturnCode:B

    .line 17
    return-void
.end method
