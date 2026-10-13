.class public Lcom/facebook/push/fbns/ipc/FbnsAIDLResult;
.super Ljava/lang/Object;
.source "FbnsAIDLResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/push/fbns/ipc/FbnsAIDLResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mData:Landroid/os/Bundle;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mWhen:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/facebook/push/fbns/ipc/FbnsAIDLResult$1;

    invoke-direct {v0}, Lcom/facebook/push/fbns/ipc/FbnsAIDLResult$1;-><init>()V

    sput-object v0, Lcom/facebook/push/fbns/ipc/FbnsAIDLResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/push/fbns/ipc/FbnsAIDLResult;->mWhen:J

    .line 48
    iput-object p1, p0, Lcom/facebook/push/fbns/ipc/FbnsAIDLResult;->mData:Landroid/os/Bundle;

    .line 49
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/push/fbns/ipc/FbnsAIDLResult;->mWhen:J

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/push/fbns/ipc/FbnsAIDLResult;->mData:Landroid/os/Bundle;

    .line 79
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public getData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/push/fbns/ipc/FbnsAIDLResult;->mData:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 57
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 59
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/push/fbns/ipc/FbnsAIDLResult;->mData:Landroid/os/Bundle;

    goto :goto_0
.end method

.method protected writeFieldsToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/facebook/push/fbns/ipc/FbnsAIDLResult;->mWhen:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 73
    iget-object v0, p0, Lcom/facebook/push/fbns/ipc/FbnsAIDLResult;->mData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 74
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/facebook/push/fbns/ipc/FbnsAIDLResult;->writeFieldsToParcel(Landroid/os/Parcel;I)V

    .line 44
    return-void
.end method
