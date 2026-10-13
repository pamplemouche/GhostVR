.class public Lcom/oculus/model/BundleModel;
.super Ljava/lang/Object;
.source "BundleModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/model/BundleModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final description:Ljava/lang/String;

.field public final isFree:Z

.field public final isOwnedByCurrentUser:Z

.field public final itemId:Ljava/lang/String;

.field public final mainImageSource:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final offerId:Ljava/lang/String;

.field public final price:Ljava/lang/String;

.field public final promoBenefit:Ljava/lang/String;

.field public final releaseDate:Ljava/lang/String;

.field public final smallLandscapeImage:Ljava/lang/String;

.field public final squareImageSource:Ljava/lang/String;

.field public final strikethroughPrice:Ljava/lang/String;

.field public final styleTheme:Lcom/oculus/model/StyleTheme;

.field public final tinyImageSource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/oculus/model/BundleModel$1;

    invoke-direct {v0}, Lcom/oculus/model/BundleModel$1;-><init>()V

    sput-object v0, Lcom/oculus/model/BundleModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/model/BundleModel;->itemId:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/model/BundleModel;->offerId:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/model/BundleModel;->name:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/model/BundleModel;->description:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/model/BundleModel;->releaseDate:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/model/BundleModel;->squareImageSource:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/model/BundleModel;->mainImageSource:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/model/BundleModel;->tinyImageSource:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/model/BundleModel;->price:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/model/BundleModel;->strikethroughPrice:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/model/BundleModel;->promoBenefit:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/model/BundleModel;->smallLandscapeImage:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/oculus/model/BundleModel;->isFree:Z

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/oculus/model/BundleModel;->isOwnedByCurrentUser:Z

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 88
    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    iput-object v0, p0, Lcom/oculus/model/BundleModel;->styleTheme:Lcom/oculus/model/StyleTheme;

    .line 89
    return-void

    :cond_0
    move v0, v2

    .line 85
    goto :goto_0

    :cond_1
    move v1, v2

    .line 86
    goto :goto_1

    .line 88
    :cond_2
    invoke-static {v0}, Lcom/oculus/model/StyleTheme;->valueOf(Ljava/lang/String;)Lcom/oculus/model/StyleTheme;

    move-result-object v0

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/oculus/model/StyleTheme;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/oculus/model/BundleModel;->itemId:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/oculus/model/BundleModel;->offerId:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/oculus/model/BundleModel;->name:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/oculus/model/BundleModel;->description:Ljava/lang/String;

    .line 59
    iput-object p5, p0, Lcom/oculus/model/BundleModel;->releaseDate:Ljava/lang/String;

    .line 60
    iput-object p6, p0, Lcom/oculus/model/BundleModel;->squareImageSource:Ljava/lang/String;

    .line 61
    iput-object p7, p0, Lcom/oculus/model/BundleModel;->mainImageSource:Ljava/lang/String;

    .line 62
    iput-object p8, p0, Lcom/oculus/model/BundleModel;->tinyImageSource:Ljava/lang/String;

    .line 63
    iput-object p9, p0, Lcom/oculus/model/BundleModel;->price:Ljava/lang/String;

    .line 64
    iput-object p10, p0, Lcom/oculus/model/BundleModel;->strikethroughPrice:Ljava/lang/String;

    .line 65
    iput-object p11, p0, Lcom/oculus/model/BundleModel;->promoBenefit:Ljava/lang/String;

    .line 66
    iput-object p12, p0, Lcom/oculus/model/BundleModel;->smallLandscapeImage:Ljava/lang/String;

    .line 67
    iput-boolean p13, p0, Lcom/oculus/model/BundleModel;->isFree:Z

    .line 68
    iput-boolean p14, p0, Lcom/oculus/model/BundleModel;->isOwnedByCurrentUser:Z

    .line 69
    iput-object p15, p0, Lcom/oculus/model/BundleModel;->styleTheme:Lcom/oculus/model/StyleTheme;

    .line 70
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public getPriceText(Landroid/content/Context;III)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 136
    new-instance v0, Lcom/oculus/model/OfferPriceHelper;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/oculus/model/OfferPriceHelper;-><init>(Landroid/content/Context;III)V

    iget-boolean v1, p0, Lcom/oculus/model/BundleModel;->isFree:Z

    iget-object v2, p0, Lcom/oculus/model/BundleModel;->price:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/model/BundleModel;->strikethroughPrice:Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/model/BundleModel;->promoBenefit:Ljava/lang/String;

    .line 137
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oculus/model/OfferPriceHelper;->getPriceText(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public newPurchasedModel()Lcom/oculus/model/BundleModel;
    .locals 17

    .prologue
    .line 111
    new-instance v1, Lcom/oculus/model/BundleModel;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/model/BundleModel;->itemId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oculus/model/BundleModel;->offerId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oculus/model/BundleModel;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oculus/model/BundleModel;->description:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oculus/model/BundleModel;->releaseDate:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oculus/model/BundleModel;->squareImageSource:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oculus/model/BundleModel;->mainImageSource:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oculus/model/BundleModel;->tinyImageSource:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/oculus/model/BundleModel;->price:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oculus/model/BundleModel;->strikethroughPrice:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oculus/model/BundleModel;->promoBenefit:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oculus/model/BundleModel;->smallLandscapeImage:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oculus/model/BundleModel;->isFree:Z

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/model/BundleModel;->styleTheme:Lcom/oculus/model/StyleTheme;

    move-object/from16 v16, v0

    invoke-direct/range {v1 .. v16}, Lcom/oculus/model/BundleModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/oculus/model/StyleTheme;)V

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    iget-object v0, p0, Lcom/oculus/model/BundleModel;->itemId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/oculus/model/BundleModel;->offerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/oculus/model/BundleModel;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/oculus/model/BundleModel;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/oculus/model/BundleModel;->releaseDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/oculus/model/BundleModel;->squareImageSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/oculus/model/BundleModel;->mainImageSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/oculus/model/BundleModel;->tinyImageSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/oculus/model/BundleModel;->price:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/oculus/model/BundleModel;->strikethroughPrice:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/oculus/model/BundleModel;->promoBenefit:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/oculus/model/BundleModel;->smallLandscapeImage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-boolean v0, p0, Lcom/oculus/model/BundleModel;->isFree:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 106
    iget-boolean v0, p0, Lcom/oculus/model/BundleModel;->isOwnedByCurrentUser:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 107
    iget-object v0, p0, Lcom/oculus/model/BundleModel;->styleTheme:Lcom/oculus/model/StyleTheme;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    return-void

    :cond_0
    move v0, v2

    .line 105
    goto :goto_0

    :cond_1
    move v1, v2

    .line 106
    goto :goto_1

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/oculus/model/BundleModel;->styleTheme:Lcom/oculus/model/StyleTheme;

    invoke-virtual {v0}, Lcom/oculus/model/StyleTheme;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
