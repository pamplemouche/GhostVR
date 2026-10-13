.class public Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;
.super Ljava/lang/Object;
.source "ConnectPayload.java"


# instance fields
.field public final mClientIdentifier:Ljava/lang/String;

.field public final mPassword:Ljava/lang/String;

.field public final mPendingMessageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public mPhpOverride:Ljava/lang/String;

.field public final mUserName:Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;

.field public final mWillMessage:Ljava/lang/String;

.field public final mWillTopic:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->mClientIdentifier:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->mPendingMessageList:Ljava/util/List;

    .line 52
    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->mWillTopic:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->mWillMessage:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->mUserName:Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;

    .line 55
    iput-object p3, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->mPassword:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->mClientIdentifier:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->mWillTopic:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->mWillMessage:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->mUserName:Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;

    .line 41
    iput-object p5, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->mPassword:Ljava/lang/String;

    .line 42
    iput-object p6, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->mPendingMessageList:Ljava/util/List;

    .line 43
    return-void
.end method


# virtual methods
.method public setPhpOverrider(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->mPhpOverride:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{clientIdentifier=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->mClientIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", willTopic=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->mWillTopic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", willMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->mWillMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->mUserName:Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phpOverride=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->mPhpOverride:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
