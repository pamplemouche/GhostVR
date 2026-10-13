.class final Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest$1;
.super Ljava/lang/Object;
.source "FbnsAIDLRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;
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
        "Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;-><init>(Landroid/os/Parcel;Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;
    .locals 1

    .prologue
    .line 19
    new-array v0, p1, [Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest$1;->newArray(I)[Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;

    move-result-object v0

    return-object v0
.end method
