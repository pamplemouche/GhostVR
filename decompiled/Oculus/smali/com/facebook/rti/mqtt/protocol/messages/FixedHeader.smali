.class public Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;
.super Ljava/lang/Object;
.source "FixedHeader.java"


# instance fields
.field public final mDupFlag:Z

.field public final mMessageType:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

.field public final mQosLevel:I

.field public mRemainingLength:I

.field private mRetain:Z


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/protocol/messages/MessageType;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->mMessageType:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    .line 34
    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->mDupFlag:Z

    .line 35
    iput v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->mQosLevel:I

    .line 36
    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->mRetain:Z

    .line 37
    iput v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->mRemainingLength:I

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/facebook/rti/mqtt/protocol/messages/MessageType;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->mMessageType:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    .line 42
    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->mDupFlag:Z

    .line 43
    iput p2, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->mQosLevel:I

    .line 44
    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->mRetain:Z

    .line 45
    iput v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->mRemainingLength:I

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/facebook/rti/mqtt/protocol/messages/MessageType;ZIZI)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->mMessageType:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    .line 26
    iput-boolean p2, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->mDupFlag:Z

    .line 27
    iput p3, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->mQosLevel:I

    .line 28
    iput-boolean p4, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->mRetain:Z

    .line 29
    iput p5, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->mRemainingLength:I

    .line 30
    return-void
.end method


# virtual methods
.method public isRetain()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->mRetain:Z

    return v0
.end method

.method public setRetain(Z)V
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->mRetain:Z

    .line 54
    return-void
.end method
