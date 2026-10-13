.class final Lcom/oculus/os/enterprise/internal/Mode$1;
.super Ljava/lang/Object;
.source "Mode.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/os/enterprise/internal/Mode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oculus/os/enterprise/internal/Mode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oculus/os/enterprise/internal/Mode;
    .locals 8

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oculus/os/enterprise/HomeButtonBehaviour;->valueOf(Ljava/lang/String;)Lcom/oculus/os/enterprise/HomeButtonBehaviour;

    move-result-object v6

    .line 101
    array-length p1, v0

    new-array v5, p1, [Lcom/oculus/os/enterprise/AUICapability;

    const/4 p1, 0x0

    .line 102
    :goto_0
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 103
    aget-object v1, v0, p1

    invoke-static {v1}, Lcom/oculus/os/enterprise/AUICapability;->valueOf(Ljava/lang/String;)Lcom/oculus/os/enterprise/AUICapability;

    move-result-object v1

    aput-object v1, v5, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 106
    :cond_0
    new-instance p1, Lcom/oculus/os/enterprise/internal/Mode;

    .line 107
    invoke-static {}, Lcom/oculus/os/enterprise/internal/Version;->latest()Lcom/oculus/os/enterprise/internal/Version;

    move-result-object v1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/oculus/os/enterprise/internal/Mode;-><init>(Lcom/oculus/os/enterprise/internal/Version;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Lcom/oculus/os/enterprise/AUICapability;Lcom/oculus/os/enterprise/HomeButtonBehaviour;Ljava/util/Optional;)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 91
    invoke-virtual {p0, p1}, Lcom/oculus/os/enterprise/internal/Mode$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oculus/os/enterprise/internal/Mode;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/oculus/os/enterprise/internal/Mode;
    .locals 0

    .line 117
    new-array p1, p1, [Lcom/oculus/os/enterprise/internal/Mode;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 91
    invoke-virtual {p0, p1}, Lcom/oculus/os/enterprise/internal/Mode$1;->newArray(I)[Lcom/oculus/os/enterprise/internal/Mode;

    move-result-object p1

    return-object p1
.end method
