.class public Lcom/oculus/horizon/api/common/ParcelableBundle;
.super Ljava/lang/Object;
.source "ParcelableBundle.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/api/common/ParcelableBundle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bundleItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/ParcelableItem;",
            ">;"
        }
    .end annotation
.end field

.field public displayName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public displayShortDescription:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/oculus/horizon/api/common/ParcelableBundle$1;

    invoke-direct {v0}, Lcom/oculus/horizon/api/common/ParcelableBundle$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/api/common/ParcelableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableBundle;->displayName:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableBundle;->displayShortDescription:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableBundle;->bundleItems:Ljava/util/List;

    .line 28
    iget-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableBundle;->bundleItems:Ljava/util/List;

    const-class v1, Lcom/oculus/horizon/api/common/ParcelableBundle;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/ParcelableItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/oculus/horizon/api/common/ParcelableBundle;->displayName:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/oculus/horizon/api/common/ParcelableBundle;->displayShortDescription:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/oculus/horizon/api/common/ParcelableBundle;->bundleItems:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableBundle;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableBundle;->displayShortDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableBundle;->bundleItems:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 36
    return-void
.end method
