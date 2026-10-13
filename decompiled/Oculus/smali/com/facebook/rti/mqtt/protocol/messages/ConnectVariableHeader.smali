.class public Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;
.super Ljava/lang/Object;
.source "ConnectVariableHeader.java"


# instance fields
.field public final mCleanSession:Z

.field public final mHasPassword:Z

.field public final mHasUserName:Z

.field public final mKeepAliveTimeSeconds:I

.field public final mVersion:I

.field public final mWillFlag:Z

.field public final mWillQos:I

.field public final mWillRetain:Z


# direct methods
.method public constructor <init>(IZZZI)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->mVersion:I

    .line 58
    iput-boolean p2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->mHasUserName:Z

    .line 59
    iput-boolean p3, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->mHasPassword:Z

    .line 60
    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->mWillFlag:Z

    .line 61
    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->mWillRetain:Z

    .line 62
    iput v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->mWillQos:I

    .line 63
    iput-boolean p4, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->mCleanSession:Z

    .line 64
    iput p5, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->mKeepAliveTimeSeconds:I

    .line 65
    return-void
.end method

.method public constructor <init>(IZZZZIZI)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->mVersion:I

    .line 42
    iput-boolean p2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->mHasUserName:Z

    .line 43
    iput-boolean p3, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->mHasPassword:Z

    .line 44
    iput-boolean p4, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->mWillFlag:Z

    .line 45
    iput-boolean p5, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->mWillRetain:Z

    .line 46
    iput p6, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->mWillQos:I

    .line 47
    iput-boolean p7, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->mCleanSession:Z

    .line 48
    iput p8, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->mKeepAliveTimeSeconds:I

    .line 49
    return-void
.end method
