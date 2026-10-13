.class final Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic$1;
.super Ljava/lang/Object;
.source "SubscribeTopic.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;

    invoke-direct {v0, p1}, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;
    .locals 1

    .prologue
    .line 39
    new-array v0, p1, [Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic$1;->newArray(I)[Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;

    move-result-object v0

    return-object v0
.end method
