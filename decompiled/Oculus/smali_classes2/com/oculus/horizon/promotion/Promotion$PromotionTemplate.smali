.class public Lcom/oculus/horizon/promotion/Promotion$PromotionTemplate;
.super Ljava/lang/Object;
.source "Promotion.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/promotion/Promotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PromotionTemplate"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/promotion/Promotion$PromotionTemplate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field name:Ljava/lang/String;

.field parameters:[Lcom/oculus/horizon/promotion/Promotion$PromotionTemplateParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/oculus/horizon/promotion/Promotion$PromotionTemplate$1;

    invoke-direct {v0}, Lcom/oculus/horizon/promotion/Promotion$PromotionTemplate$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/promotion/Promotion$PromotionTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/promotion/Promotion$PromotionTemplate;->name:Ljava/lang/String;

    .line 108
    sget-object v0, Lcom/oculus/horizon/promotion/Promotion$PromotionTemplateParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/promotion/Promotion$PromotionTemplateParameters;

    iput-object v0, p0, Lcom/oculus/horizon/promotion/Promotion$PromotionTemplate;->parameters:[Lcom/oculus/horizon/promotion/Promotion$PromotionTemplateParameters;

    .line 109
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/oculus/horizon/promotion/Promotion$PromotionTemplate;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/oculus/horizon/promotion/Promotion$PromotionTemplate;->parameters:[Lcom/oculus/horizon/promotion/Promotion$PromotionTemplateParameters;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 133
    return-void
.end method
