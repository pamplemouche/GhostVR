.class final Lcom/facebook/push/fbns/ipc/FbnsAIDLResult$1;
.super Ljava/lang/Object;
.source "FbnsAIDLResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/push/fbns/ipc/FbnsAIDLResult;
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
        "Lcom/facebook/push/fbns/ipc/FbnsAIDLResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/push/fbns/ipc/FbnsAIDLResult;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/facebook/push/fbns/ipc/FbnsAIDLResult;

    invoke-direct {v0, p1}, Lcom/facebook/push/fbns/ipc/FbnsAIDLResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/facebook/push/fbns/ipc/FbnsAIDLResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/push/fbns/ipc/FbnsAIDLResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/facebook/push/fbns/ipc/FbnsAIDLResult;
    .locals 1

    .prologue
    .line 24
    new-array v0, p1, [Lcom/facebook/push/fbns/ipc/FbnsAIDLResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/facebook/push/fbns/ipc/FbnsAIDLResult$1;->newArray(I)[Lcom/facebook/push/fbns/ipc/FbnsAIDLResult;

    move-result-object v0

    return-object v0
.end method
