.class public Lcom/oculus/library/model/Image;
.super Ljava/lang/Object;
.source "Image.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/library/model/Image$ImageName;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/library/model/Image;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final height:I

.field public final name:Lcom/oculus/library/model/Image$ImageName;

.field public final uri:Ljava/lang/String;

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/oculus/library/model/Image$1;

    invoke-direct {v0}, Lcom/oculus/library/model/Image$1;-><init>()V

    sput-object v0, Lcom/oculus/library/model/Image;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/library/model/Image$ImageName;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/Image$ImageName;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/library/model/Image;->name:Lcom/oculus/library/model/Image$ImageName;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/library/model/Image;->uri:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/library/model/Image;->width:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/library/model/Image;->height:I

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/oculus/library/model/Image$ImageName;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/oculus/library/model/Image;->name:Lcom/oculus/library/model/Image$ImageName;

    .line 30
    iput-object p2, p0, Lcom/oculus/library/model/Image;->uri:Ljava/lang/String;

    .line 31
    iput p3, p0, Lcom/oculus/library/model/Image;->width:I

    .line 32
    iput p4, p0, Lcom/oculus/library/model/Image;->height:I

    .line 33
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/oculus/library/model/Image;->name:Lcom/oculus/library/model/Image$ImageName;

    invoke-virtual {v0}, Lcom/oculus/library/model/Image$ImageName;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/oculus/library/model/Image;->uri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget v0, p0, Lcom/oculus/library/model/Image;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v0, p0, Lcom/oculus/library/model/Image;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    return-void
.end method
