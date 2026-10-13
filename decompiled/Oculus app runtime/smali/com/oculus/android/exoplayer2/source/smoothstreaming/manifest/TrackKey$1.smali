.class final Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/TrackKey$1;
.super Ljava/lang/Object;
.source "TrackKey.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;
    .locals 2

    .line 56
    new-instance v0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/TrackKey$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;
    .locals 0

    .line 61
    new-array p1, p1, [Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/TrackKey$1;->newArray(I)[Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;

    move-result-object p1

    return-object p1
.end method
