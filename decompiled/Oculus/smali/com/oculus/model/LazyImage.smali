.class public Lcom/oculus/model/LazyImage;
.super Ljava/lang/Object;
.source "LazyImage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/model/LazyImage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAspectRatio:F

.field private final mResourceId:I

.field private final mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/oculus/model/LazyImage$1;

    invoke-direct {v0}, Lcom/oculus/model/LazyImage$1;-><init>()V

    sput-object v0, Lcom/oculus/model/LazyImage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/model/LazyImage;->mUri:Ljava/lang/String;

    .line 25
    iput p1, p0, Lcom/oculus/model/LazyImage;->mResourceId:I

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/oculus/model/LazyImage;->mAspectRatio:F

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/model/LazyImage;->mUri:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/model/LazyImage;->mResourceId:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/oculus/model/LazyImage;->mAspectRatio:F

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/oculus/model/LazyImage;->mUri:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/oculus/model/LazyImage;->mResourceId:I

    .line 20
    iput p2, p0, Lcom/oculus/model/LazyImage;->mAspectRatio:F

    .line 21
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public getAspectRatio(Landroid/content/Context;)F
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 34
    iget v1, p0, Lcom/oculus/model/LazyImage;->mAspectRatio:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    .line 35
    iget v0, p0, Lcom/oculus/model/LazyImage;->mAspectRatio:F

    .line 44
    :cond_0
    :goto_0
    return v0

    .line 36
    :cond_1
    iget v1, p0, Lcom/oculus/model/LazyImage;->mResourceId:I

    if-eqz v1, :cond_0

    .line 37
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 38
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/oculus/model/LazyImage;->mResourceId:I

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 40
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v1, v1

    .line 41
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v0, v0

    .line 42
    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/model/LazyImage;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/model/LazyImage;->mUri:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/oculus/model/LazyImage;->mResourceId:I

    invoke-static {v0}, Lcom/facebook/common/util/UriUtil;->getUriForResourceId(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oculus/model/LazyImage;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget v0, p0, Lcom/oculus/model/LazyImage;->mResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget v0, p0, Lcom/oculus/model/LazyImage;->mAspectRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 59
    return-void
.end method
