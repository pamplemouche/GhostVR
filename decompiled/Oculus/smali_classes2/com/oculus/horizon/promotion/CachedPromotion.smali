.class public Lcom/oculus/horizon/promotion/CachedPromotion;
.super Ljava/lang/Object;
.source "CachedPromotion.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/promotion/CachedPromotion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mPromotion:Lcom/oculus/horizon/promotion/Promotion;

.field private final mSurfaceId:I

.field private final mTrigger:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/oculus/horizon/promotion/CachedPromotion$1;

    invoke-direct {v0}, Lcom/oculus/horizon/promotion/CachedPromotion$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/promotion/CachedPromotion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-class v0, Lcom/oculus/horizon/promotion/Promotion;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/promotion/Promotion;

    iput-object v0, p0, Lcom/oculus/horizon/promotion/CachedPromotion;->mPromotion:Lcom/oculus/horizon/promotion/Promotion;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/promotion/CachedPromotion;->mTrigger:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/promotion/CachedPromotion;->mSurfaceId:I

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/oculus/horizon/promotion/Promotion;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/oculus/horizon/promotion/CachedPromotion;->mPromotion:Lcom/oculus/horizon/promotion/Promotion;

    .line 16
    iput-object p2, p0, Lcom/oculus/horizon/promotion/CachedPromotion;->mTrigger:Ljava/lang/String;

    .line 17
    iput p3, p0, Lcom/oculus/horizon/promotion/CachedPromotion;->mSurfaceId:I

    .line 18
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public getPromotion()Lcom/oculus/horizon/promotion/Promotion;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oculus/horizon/promotion/CachedPromotion;->mPromotion:Lcom/oculus/horizon/promotion/Promotion;

    return-object v0
.end method

.method public getSurfaceId()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/oculus/horizon/promotion/CachedPromotion;->mSurfaceId:I

    return v0
.end method

.method public getTrigger()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oculus/horizon/promotion/CachedPromotion;->mTrigger:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oculus/horizon/promotion/CachedPromotion;->mPromotion:Lcom/oculus/horizon/promotion/Promotion;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 29
    iget-object v0, p0, Lcom/oculus/horizon/promotion/CachedPromotion;->mTrigger:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget v0, p0, Lcom/oculus/horizon/promotion/CachedPromotion;->mSurfaceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    return-void
.end method
