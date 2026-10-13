.class final Lcom/oculus/os/enterprise/internal/Configuration$1;
.super Ljava/lang/Object;
.source "Configuration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/os/enterprise/internal/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oculus/os/enterprise/internal/Configuration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oculus/os/enterprise/internal/Configuration;
    .locals 8

    .line 79
    sget-object v0, Lcom/oculus/os/enterprise/internal/Mode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Lcom/oculus/os/enterprise/internal/Mode;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 81
    new-instance v5, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/os/enterprise/ControllerMode;->valueOf(Ljava/lang/String;)Lcom/oculus/os/enterprise/ControllerMode;

    move-result-object v6

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oculus/os/enterprise/GuardianMode;->valueOf(Ljava/lang/String;)Lcom/oculus/os/enterprise/GuardianMode;

    move-result-object v7

    .line 85
    new-instance p1, Lcom/oculus/os/enterprise/internal/Configuration;

    .line 86
    invoke-static {}, Lcom/oculus/os/enterprise/internal/Version;->latest()Lcom/oculus/os/enterprise/internal/Version;

    move-result-object v2

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/oculus/os/enterprise/internal/Configuration;-><init>(Lcom/oculus/os/enterprise/internal/Version;[Lcom/oculus/os/enterprise/internal/Mode;ILjava/util/Date;Lcom/oculus/os/enterprise/ControllerMode;Lcom/oculus/os/enterprise/GuardianMode;)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lcom/oculus/os/enterprise/internal/Configuration$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oculus/os/enterprise/internal/Configuration;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/oculus/os/enterprise/internal/Configuration;
    .locals 0

    .line 95
    new-array p1, p1, [Lcom/oculus/os/enterprise/internal/Configuration;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lcom/oculus/os/enterprise/internal/Configuration$1;->newArray(I)[Lcom/oculus/os/enterprise/internal/Configuration;

    move-result-object p1

    return-object p1
.end method
