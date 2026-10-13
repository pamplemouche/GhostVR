.class public Lcom/oculus/horizon/api/common/Item$AndroidBinary;
.super Ljava/lang/Object;
.source "Item.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/api/common/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AndroidBinary"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/api/common/Item$AndroidBinary;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public can_use_external_storage:Z

.field public external_signatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public id:Ljava/lang/String;

.field public obb_binary:Lcom/oculus/horizon/api/common/Item$ObbBinary;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public package_name:Ljava/lang/String;

.field public permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public size:J

.field public uri:Ljava/lang/String;

.field public user_quality_rating:Lcom/oculus/horizon/api/common/Item$QualityRating;

.field public version:Ljava/lang/String;

.field public version_code:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 493
    new-instance v0, Lcom/oculus/horizon/api/common/Item$AndroidBinary$1;

    invoke-direct {v0}, Lcom/oculus/horizon/api/common/Item$AndroidBinary$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->id:Ljava/lang/String;

    .line 461
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->package_name:Ljava/lang/String;

    .line 462
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->version:Ljava/lang/String;

    .line 463
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->uri:Ljava/lang/String;

    .line 464
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->version_code:I

    .line 465
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->size:J

    .line 466
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->permissions:Ljava/util/List;

    .line 467
    const-class v0, Lcom/oculus/horizon/api/common/Item$QualityRating;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Item$QualityRating;

    iput-object v0, p0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->user_quality_rating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->can_use_external_storage:Z

    .line 469
    const-class v0, Lcom/oculus/horizon/api/common/Item$ObbBinary;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Item$ObbBinary;

    iput-object v0, p0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->obb_binary:Lcom/oculus/horizon/api/common/Item$ObbBinary;

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->external_signatures:Ljava/util/List;

    .line 471
    return-void

    .line 468
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 490
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->package_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->uri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 479
    iget v0, p0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->version_code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    iget-wide v0, p0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 481
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->permissions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 482
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->user_quality_rating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 483
    iget-boolean v0, p0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->can_use_external_storage:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->obb_binary:Lcom/oculus/horizon/api/common/Item$ObbBinary;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 485
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->external_signatures:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 486
    return-void

    .line 483
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
