.class public Lcom/oculus/horizon/api/common/Item$QualityRating;
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
    name = "QualityRating"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/api/common/Item$QualityRating;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public author:Lcom/oculus/horizon/api/common/user/User;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public date:I

.field public developer_response:Lcom/oculus/horizon/api/common/Item$DeveloperResponse;

.field public id:Ljava/lang/String;

.field public review_description:Ljava/lang/String;

.field public review_helpful_count:I

.field public review_rank_by_viewer:Ljava/lang/String;

.field public review_title:Ljava/lang/String;

.field public score:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 367
    new-instance v0, Lcom/oculus/horizon/api/common/Item$QualityRating$1;

    invoke-direct {v0}, Lcom/oculus/horizon/api/common/Item$QualityRating$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/api/common/Item$QualityRating;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/Item$QualityRating;->id:Ljava/lang/String;

    .line 339
    const-class v0, Lcom/oculus/horizon/api/common/user/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/user/User;

    iput-object v0, p0, Lcom/oculus/horizon/api/common/Item$QualityRating;->author:Lcom/oculus/horizon/api/common/user/User;

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/api/common/Item$QualityRating;->date:I

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/api/common/Item$QualityRating;->score:I

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/Item$QualityRating;->review_title:Ljava/lang/String;

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/Item$QualityRating;->review_description:Ljava/lang/String;

    .line 344
    const-class v0, Lcom/oculus/horizon/api/common/Item$DeveloperResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Item$DeveloperResponse;

    iput-object v0, p0, Lcom/oculus/horizon/api/common/Item$QualityRating;->developer_response:Lcom/oculus/horizon/api/common/Item$DeveloperResponse;

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/Item$QualityRating;->review_rank_by_viewer:Ljava/lang/String;

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/api/common/Item$QualityRating;->review_helpful_count:I

    .line 347
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item$QualityRating;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item$QualityRating;->author:Lcom/oculus/horizon/api/common/user/User;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 353
    iget v0, p0, Lcom/oculus/horizon/api/common/Item$QualityRating;->date:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    iget v0, p0, Lcom/oculus/horizon/api/common/Item$QualityRating;->score:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item$QualityRating;->review_title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item$QualityRating;->review_description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item$QualityRating;->developer_response:Lcom/oculus/horizon/api/common/Item$DeveloperResponse;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 358
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item$QualityRating;->review_rank_by_viewer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 359
    iget v0, p0, Lcom/oculus/horizon/api/common/Item$QualityRating;->review_helpful_count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    return-void
.end method
