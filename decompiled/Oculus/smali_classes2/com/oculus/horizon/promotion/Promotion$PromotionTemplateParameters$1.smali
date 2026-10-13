.class final Lcom/oculus/horizon/promotion/Promotion$PromotionTemplateParameters$1;
.super Ljava/lang/Object;
.source "Promotion.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/promotion/Promotion$PromotionTemplateParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/oculus/horizon/promotion/Promotion$PromotionTemplateParameters;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oculus/horizon/promotion/Promotion$PromotionTemplateParameters;
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/oculus/horizon/promotion/Promotion$PromotionTemplateParameters;

    invoke-direct {v0, p1}, Lcom/oculus/horizon/promotion/Promotion$PromotionTemplateParameters;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/promotion/Promotion$PromotionTemplateParameters$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oculus/horizon/promotion/Promotion$PromotionTemplateParameters;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/oculus/horizon/promotion/Promotion$PromotionTemplateParameters;
    .locals 1

    .prologue
    .line 93
    new-array v0, p1, [Lcom/oculus/horizon/promotion/Promotion$PromotionTemplateParameters;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/promotion/Promotion$PromotionTemplateParameters$1;->newArray(I)[Lcom/oculus/horizon/promotion/Promotion$PromotionTemplateParameters;

    move-result-object v0

    return-object v0
.end method
