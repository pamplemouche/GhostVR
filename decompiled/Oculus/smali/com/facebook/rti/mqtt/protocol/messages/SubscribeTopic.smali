.class public Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;
.super Ljava/lang/Object;
.source "SubscribeTopic.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mQualityOfService:I

.field private volatile mTopicExtraInfo:Lcom/facebook/rti/mqtt/protocol/messages/TopicExtraInfo;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final mTopicName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic$1;

    invoke-direct {v0}, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic$1;-><init>()V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->mTopicName:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->mQualityOfService:I

    .line 27
    const-class v0, Lcom/facebook/rti/mqtt/protocol/messages/TopicExtraInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/TopicExtraInfo;

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->mTopicExtraInfo:Lcom/facebook/rti/mqtt/protocol/messages/TopicExtraInfo;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->mTopicName:Ljava/lang/String;

    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->mQualityOfService:I

    .line 22
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 81
    if-ne p0, p1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 84
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 85
    goto :goto_0

    .line 88
    :cond_3
    check-cast p1, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;

    .line 90
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->mTopicName:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->mTopicName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/facebook/rti/common/guavalite/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->mQualityOfService:I

    iget v3, p1, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->mQualityOfService:I

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getTopicName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->mTopicName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 96
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->mTopicName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->mQualityOfService:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 57
    const-string/jumbo v0, "{ name=\'%s\', qos=\'%s\', extra=\'%s\' }"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->mTopicName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->mQualityOfService:I

    .line 58
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->mTopicExtraInfo:Lcom/facebook/rti/mqtt/protocol/messages/TopicExtraInfo;

    aput-object v3, v1, v2

    .line 57
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->mTopicName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->mQualityOfService:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->mTopicExtraInfo:Lcom/facebook/rti/mqtt/protocol/messages/TopicExtraInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 53
    return-void
.end method
