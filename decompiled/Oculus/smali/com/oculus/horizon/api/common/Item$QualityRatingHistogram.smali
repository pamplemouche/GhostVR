.class public Lcom/oculus/horizon/api/common/Item$QualityRatingHistogram;
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
    name = "QualityRatingHistogram"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/api/common/Item$QualityRatingHistogram;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public count:I

.field public star_rating:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 288
    new-instance v0, Lcom/oculus/horizon/api/common/Item$QualityRatingHistogram$1;

    invoke-direct {v0}, Lcom/oculus/horizon/api/common/Item$QualityRatingHistogram$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/api/common/Item$QualityRatingHistogram;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/api/common/Item$QualityRatingHistogram;->count:I

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/api/common/Item$QualityRatingHistogram;->star_rating:I

    .line 275
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/oculus/horizon/api/common/Item$QualityRatingHistogram;->count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    iget v0, p0, Lcom/oculus/horizon/api/common/Item$QualityRatingHistogram;->star_rating:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    return-void
.end method
