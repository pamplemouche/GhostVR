.class public Lcom/oculus/horizon/api/common/Room;
.super Ljava/lang/Object;
.source "Room.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/api/common/Room;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public app:Lcom/oculus/horizon/api/common/App;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/oculus/horizon/api/common/Room$1;

    invoke-direct {v0}, Lcom/oculus/horizon/api/common/Room$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/api/common/Room;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation build Lcom/oculus/util/annotations/UsedByGson;
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-class v0, Lcom/oculus/horizon/api/common/App;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/App;

    iput-object v0, p0, Lcom/oculus/horizon/api/common/Room;->app:Lcom/oculus/horizon/api/common/App;

    .line 19
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Room;->app:Lcom/oculus/horizon/api/common/App;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 24
    return-void
.end method
