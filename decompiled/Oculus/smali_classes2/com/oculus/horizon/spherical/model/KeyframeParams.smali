.class public Lcom/oculus/horizon/spherical/model/KeyframeParams;
.super Ljava/lang/Object;
.source "KeyframeParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/spherical/model/KeyframeParams$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/spherical/model/KeyframeParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final pitch:I

.field public final timestamp:J

.field public final yaw:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/oculus/horizon/spherical/model/KeyframeParams$1;

    invoke-direct {v0}, Lcom/oculus/horizon/spherical/model/KeyframeParams$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/spherical/model/KeyframeParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/horizon/spherical/model/KeyframeParams;->timestamp:J

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/spherical/model/KeyframeParams;->pitch:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/spherical/model/KeyframeParams;->yaw:I

    .line 26
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/oculus/horizon/spherical/model/KeyframeParams;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 36
    iget v0, p0, Lcom/oculus/horizon/spherical/model/KeyframeParams;->pitch:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget v0, p0, Lcom/oculus/horizon/spherical/model/KeyframeParams;->yaw:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    return-void
.end method
