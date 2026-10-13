.class public Lcom/oculus/horizon/promotion/Promotion;
.super Ljava/lang/Object;
.source "Promotion.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/promotion/Promotion$PromotionAction;,
        Lcom/oculus/horizon/promotion/Promotion$PromotionCreatives;,
        Lcom/oculus/horizon/promotion/Promotion$PromotionTemplate;,
        Lcom/oculus/horizon/promotion/Promotion$PromotionTemplateParameters;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/promotion/Promotion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public logging_data:Ljava/lang/String;

.field public promotion_creatives:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/horizon/promotion/Promotion$PromotionCreatives;",
            ">;"
        }
    .end annotation
.end field

.field public promotion_id:Ljava/lang/String;

.field public promotion_template:Lcom/oculus/horizon/promotion/Promotion$PromotionTemplate;

.field public triggers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/oculus/horizon/promotion/Promotion$1;

    invoke-direct {v0}, Lcom/oculus/horizon/promotion/Promotion$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/promotion/Promotion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/promotion/Promotion;->promotion_id:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/promotion/Promotion;->logging_data:Ljava/lang/String;

    .line 32
    const-class v0, Lcom/oculus/horizon/promotion/Promotion$PromotionTemplate;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/promotion/Promotion$PromotionTemplate;

    iput-object v0, p0, Lcom/oculus/horizon/promotion/Promotion;->promotion_template:Lcom/oculus/horizon/promotion/Promotion$PromotionTemplate;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/promotion/Promotion;->triggers:Ljava/util/ArrayList;

    .line 34
    sget-object v0, Lcom/oculus/horizon/promotion/Promotion$PromotionCreatives;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/promotion/Promotion;->promotion_creatives:Ljava/util/ArrayList;

    .line 35
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/oculus/horizon/promotion/Promotion;->promotion_creatives:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/promotion/Promotion$PromotionCreatives;

    iget-object v0, v0, Lcom/oculus/horizon/promotion/Promotion$PromotionCreatives;->content_text:Ljava/lang/String;

    return-object v0
.end method

.method public getLoggingData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/oculus/horizon/promotion/Promotion;->logging_data:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryAction()Lcom/oculus/horizon/promotion/Promotion$PromotionAction;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/oculus/horizon/promotion/Promotion;->promotion_creatives:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/promotion/Promotion$PromotionCreatives;

    iget-object v0, v0, Lcom/oculus/horizon/promotion/Promotion$PromotionCreatives;->primary_action:Lcom/oculus/horizon/promotion/Promotion$PromotionAction;

    return-object v0
.end method

.method public getPromotionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/oculus/horizon/promotion/Promotion;->promotion_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryAction()Lcom/oculus/horizon/promotion/Promotion$PromotionAction;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lcom/oculus/horizon/promotion/Promotion;->promotion_creatives:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/promotion/Promotion$PromotionCreatives;

    iget-object v0, v0, Lcom/oculus/horizon/promotion/Promotion$PromotionCreatives;->secondary_action:Lcom/oculus/horizon/promotion/Promotion$PromotionAction;

    return-object v0
.end method

.method public getTemplateName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/oculus/horizon/promotion/Promotion;->promotion_template:Lcom/oculus/horizon/promotion/Promotion$PromotionTemplate;

    iget-object v0, v0, Lcom/oculus/horizon/promotion/Promotion$PromotionTemplate;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateParameterValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/oculus/horizon/promotion/Promotion;->promotion_template:Lcom/oculus/horizon/promotion/Promotion$PromotionTemplate;

    iget-object v1, v0, Lcom/oculus/horizon/promotion/Promotion$PromotionTemplate;->parameters:[Lcom/oculus/horizon/promotion/Promotion$PromotionTemplateParameters;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 247
    iget-object v4, v3, Lcom/oculus/horizon/promotion/Promotion$PromotionTemplateParameters;->name:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 248
    iget-object v0, v3, Lcom/oculus/horizon/promotion/Promotion$PromotionTemplateParameters;->string_value:Ljava/lang/String;

    .line 251
    :goto_1
    return-object v0

    .line 246
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/oculus/horizon/promotion/Promotion;->promotion_creatives:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/promotion/Promotion$PromotionCreatives;

    iget-object v0, v0, Lcom/oculus/horizon/promotion/Promotion$PromotionCreatives;->title_text:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggers()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lcom/oculus/horizon/promotion/Promotion;->triggers:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/oculus/horizon/promotion/Promotion;->promotion_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/oculus/horizon/promotion/Promotion;->logging_data:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/oculus/horizon/promotion/Promotion;->promotion_template:Lcom/oculus/horizon/promotion/Promotion$PromotionTemplate;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 60
    iget-object v0, p0, Lcom/oculus/horizon/promotion/Promotion;->triggers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 61
    iget-object v0, p0, Lcom/oculus/horizon/promotion/Promotion;->promotion_creatives:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 62
    return-void
.end method
