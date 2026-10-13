.class public Lcom/oculus/horizon/promotion/Promotion$PromotionCreatives;
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
    name = "PromotionCreatives"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/promotion/Promotion$PromotionCreatives;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public content_text:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public primary_action:Lcom/oculus/horizon/promotion/Promotion$PromotionAction;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public secondary_action:Lcom/oculus/horizon/promotion/Promotion$PromotionAction;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public title_text:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 153
    new-instance v0, Lcom/oculus/horizon/promotion/Promotion$PromotionCreatives$1;

    invoke-direct {v0}, Lcom/oculus/horizon/promotion/Promotion$PromotionCreatives$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/promotion/Promotion$PromotionCreatives;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/promotion/Promotion$PromotionCreatives;->title_text:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/promotion/Promotion$PromotionCreatives;->content_text:Ljava/lang/String;

    .line 149
    const-class v0, Lcom/oculus/horizon/promotion/Promotion$PromotionAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/promotion/Promotion$PromotionAction;

    iput-object v0, p0, Lcom/oculus/horizon/promotion/Promotion$PromotionCreatives;->primary_action:Lcom/oculus/horizon/promotion/Promotion$PromotionAction;

    .line 150
    const-class v0, Lcom/oculus/horizon/promotion/Promotion$PromotionAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/promotion/Promotion$PromotionAction;

    iput-object v0, p0, Lcom/oculus/horizon/promotion/Promotion$PromotionCreatives;->secondary_action:Lcom/oculus/horizon/promotion/Promotion$PromotionAction;

    .line 151
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/oculus/horizon/promotion/Promotion$PromotionCreatives;->title_text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/oculus/horizon/promotion/Promotion$PromotionCreatives;->content_text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/oculus/horizon/promotion/Promotion$PromotionCreatives;->primary_action:Lcom/oculus/horizon/promotion/Promotion$PromotionAction;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 176
    iget-object v0, p0, Lcom/oculus/horizon/promotion/Promotion$PromotionCreatives;->secondary_action:Lcom/oculus/horizon/promotion/Promotion$PromotionAction;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 177
    return-void
.end method
