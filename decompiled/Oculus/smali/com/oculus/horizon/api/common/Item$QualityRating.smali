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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;
    }
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

.field public author_timespent_pct:I

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

.method private constructor <init>(I)V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput p1, p0, Lcom/oculus/horizon/api/common/Item$QualityRating;->score:I

    .line 335
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

.method public static from(I)Lcom/oculus/horizon/api/common/Item$QualityRating;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 402
    if-gtz p0, :cond_0

    .line 404
    const/4 v0, 0x0

    .line 406
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/oculus/horizon/api/common/Item$QualityRating;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/api/common/Item$QualityRating;-><init>(I)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x0

    return v0
.end method

.method public getRank()Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;
    .locals 3

    .prologue
    .line 385
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item$QualityRating;->review_rank_by_viewer:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 386
    sget-object v0, Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;->NOT_RANKED:Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;

    .line 391
    :goto_0
    return-object v0

    .line 389
    :cond_0
    :try_start_0
    const-class v0, Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;

    iget-object v1, p0, Lcom/oculus/horizon/api/common/Item$QualityRating;->review_rank_by_viewer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    sget-object v0, Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;->NOT_RANKED:Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;

    goto :goto_0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item$QualityRating;->review_title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item$QualityRating;->review_description:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
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
