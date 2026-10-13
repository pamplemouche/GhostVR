.class public Lcom/oculus/horizon/store/InstallModel;
.super Ljava/lang/Object;
.source "InstallModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/store/InstallModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final isFree:Z

.field public final isOwnedByCurrentUser:Z

.field public final itemId:Ljava/lang/String;

.field public final latestTargetSdkVersion:I

.field public final mainImageSource:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final offerId:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final storeWideOfferModel:Lcom/oculus/horizon/store/StoreWideOfferModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/oculus/horizon/store/InstallModel$1;

    invoke-direct {v0}, Lcom/oculus/horizon/store/InstallModel$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/store/InstallModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/InstallModel;->itemId:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/InstallModel;->name:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/InstallModel;->packageName:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/store/InstallModel;->latestTargetSdkVersion:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/InstallModel;->mainImageSource:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/oculus/horizon/store/InstallModel;->isFree:Z

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/oculus/horizon/store/InstallModel;->isOwnedByCurrentUser:Z

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/InstallModel;->permissions:Ljava/util/List;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/InstallModel;->offerId:Ljava/lang/String;

    .line 72
    const-class v0, Lcom/oculus/horizon/store/StoreWideOfferModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/store/StoreWideOfferModel;

    iput-object v0, p0, Lcom/oculus/horizon/store/InstallModel;->storeWideOfferModel:Lcom/oculus/horizon/store/StoreWideOfferModel;

    .line 73
    return-void

    :cond_0
    move v0, v2

    .line 68
    goto :goto_0

    :cond_1
    move v1, v2

    .line 69
    goto :goto_1
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/util/List;Ljava/lang/String;Lcom/oculus/horizon/store/StoreWideOfferModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/store/StoreWideOfferModel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/oculus/horizon/store/InstallModel;->itemId:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/oculus/horizon/store/InstallModel;->name:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/oculus/horizon/store/InstallModel;->packageName:Ljava/lang/String;

    .line 37
    iput p4, p0, Lcom/oculus/horizon/store/InstallModel;->latestTargetSdkVersion:I

    .line 38
    iput-object p5, p0, Lcom/oculus/horizon/store/InstallModel;->mainImageSource:Ljava/lang/String;

    .line 39
    iput-boolean p6, p0, Lcom/oculus/horizon/store/InstallModel;->isFree:Z

    .line 40
    iput-boolean p7, p0, Lcom/oculus/horizon/store/InstallModel;->isOwnedByCurrentUser:Z

    .line 41
    iput-object p8, p0, Lcom/oculus/horizon/store/InstallModel;->permissions:Ljava/util/List;

    .line 42
    iput-object p9, p0, Lcom/oculus/horizon/store/InstallModel;->offerId:Ljava/lang/String;

    .line 43
    iput-object p10, p0, Lcom/oculus/horizon/store/InstallModel;->storeWideOfferModel:Lcom/oculus/horizon/store/StoreWideOfferModel;

    .line 44
    return-void
.end method

.method public static from(Lcom/oculus/horizon/store/StoreApplicationModel;)Lcom/oculus/horizon/store/InstallModel;
    .locals 11

    .prologue
    .line 47
    new-instance v0, Lcom/oculus/horizon/store/InstallModel;

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->itemId:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->packageName:Ljava/lang/String;

    iget v4, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->latestTargetSdkVersion:I

    iget-object v5, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->imageSource:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->isFree:Z

    iget-boolean v7, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->isOwnedByCurrentUser:Z

    iget-object v8, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->permissions:Ljava/util/List;

    iget-object v9, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->offerId:Ljava/lang/String;

    iget-object v10, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->offer:Lcom/oculus/horizon/api/common/Item$StoreWideOffer;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->offer:Lcom/oculus/horizon/api/common/Item$StoreWideOffer;

    .line 57
    invoke-static {v10}, Lcom/oculus/horizon/store/StoreWideOfferModel;->from(Lcom/oculus/horizon/api/common/Item$StoreWideOffer;)Lcom/oculus/horizon/store/StoreWideOfferModel;

    move-result-object v10

    :goto_0
    invoke-direct/range {v0 .. v10}, Lcom/oculus/horizon/store/InstallModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/util/List;Ljava/lang/String;Lcom/oculus/horizon/store/StoreWideOfferModel;)V

    return-object v0

    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 77
    iget-object v0, p0, Lcom/oculus/horizon/store/InstallModel;->itemId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/oculus/horizon/store/InstallModel;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/oculus/horizon/store/InstallModel;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget v0, p0, Lcom/oculus/horizon/store/InstallModel;->latestTargetSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-object v0, p0, Lcom/oculus/horizon/store/InstallModel;->mainImageSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-boolean v0, p0, Lcom/oculus/horizon/store/InstallModel;->isFree:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 83
    iget-boolean v0, p0, Lcom/oculus/horizon/store/InstallModel;->isOwnedByCurrentUser:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 84
    iget-object v0, p0, Lcom/oculus/horizon/store/InstallModel;->permissions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 85
    iget-object v0, p0, Lcom/oculus/horizon/store/InstallModel;->offerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/oculus/horizon/store/InstallModel;->storeWideOfferModel:Lcom/oculus/horizon/store/StoreWideOfferModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 87
    return-void

    :cond_0
    move v0, v2

    .line 82
    goto :goto_0

    :cond_1
    move v1, v2

    .line 83
    goto :goto_1
.end method
