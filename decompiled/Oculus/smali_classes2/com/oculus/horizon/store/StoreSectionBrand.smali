.class public final enum Lcom/oculus/horizon/store/StoreSectionBrand;
.super Ljava/lang/Enum;
.source "StoreSectionBrand.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/store/StoreSectionBrand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/store/StoreSectionBrand;

.field public static final enum CONCEPTS:Lcom/oculus/horizon/store/StoreSectionBrand;

.field public static final enum GALLERY:Lcom/oculus/horizon/store/StoreSectionBrand;


# instance fields
.field public final iconResourceId:I

.field public final roadblockBannerResourceId:I

.field public final roadblockButtonText:I

.field public final roadblockDescriptionText:I

.field public final roadblockSecondDescriptionText:I

.field public final roadblockTitleText:I

.field public final sectionBannerResourceId:I

.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v15, 0x1

    const/4 v2, 0x0

    const/4 v14, -0x1

    .line 13
    new-instance v0, Lcom/oculus/horizon/store/StoreSectionBrand;

    const-string v1, "GALLERY"

    const-string v3, "GALLERY"

    sget v4, Lcom/oculus/horizon/R$drawable;->store_gallery_icon:I

    sget v5, Lcom/oculus/horizon/R$drawable;->gallery_landing_page:I

    sget v6, Lcom/oculus/horizon/R$drawable;->gallery_landing_page:I

    sget v7, Lcom/oculus/horizon/R$string;->store_gallery_roadblock_description_text:I

    sget v8, Lcom/oculus/horizon/R$string;->store_gallery_roadblock_second_description_text:I

    sget v9, Lcom/oculus/horizon/R$string;->store_gallery_roadblock_title_text:I

    sget v10, Lcom/oculus/horizon/R$string;->store_gallery_roadblock_button_text:I

    invoke-direct/range {v0 .. v10}, Lcom/oculus/horizon/store/StoreSectionBrand;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIIII)V

    sput-object v0, Lcom/oculus/horizon/store/StoreSectionBrand;->GALLERY:Lcom/oculus/horizon/store/StoreSectionBrand;

    .line 22
    new-instance v3, Lcom/oculus/horizon/store/StoreSectionBrand;

    const-string v4, "CONCEPTS"

    const-string v6, "CONCEPTS"

    sget v9, Lcom/oculus/horizon/R$drawable;->concepts_landing_page:I

    sget v10, Lcom/oculus/horizon/R$string;->concepts_landing_page_description:I

    sget v12, Lcom/oculus/horizon/R$string;->concepts_welcome:I

    sget v13, Lcom/oculus/horizon/R$string;->concepts_start_exploring:I

    move v5, v15

    move v7, v14

    move v8, v14

    move v11, v14

    invoke-direct/range {v3 .. v13}, Lcom/oculus/horizon/store/StoreSectionBrand;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIIII)V

    sput-object v3, Lcom/oculus/horizon/store/StoreSectionBrand;->CONCEPTS:Lcom/oculus/horizon/store/StoreSectionBrand;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oculus/horizon/store/StoreSectionBrand;

    sget-object v1, Lcom/oculus/horizon/store/StoreSectionBrand;->GALLERY:Lcom/oculus/horizon/store/StoreSectionBrand;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/horizon/store/StoreSectionBrand;->CONCEPTS:Lcom/oculus/horizon/store/StoreSectionBrand;

    aput-object v1, v0, v15

    sput-object v0, Lcom/oculus/horizon/store/StoreSectionBrand;->$VALUES:[Lcom/oculus/horizon/store/StoreSectionBrand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIIIII)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput-object p3, p0, Lcom/oculus/horizon/store/StoreSectionBrand;->value:Ljava/lang/String;

    .line 56
    iput p4, p0, Lcom/oculus/horizon/store/StoreSectionBrand;->iconResourceId:I

    .line 57
    iput p5, p0, Lcom/oculus/horizon/store/StoreSectionBrand;->sectionBannerResourceId:I

    .line 58
    iput p6, p0, Lcom/oculus/horizon/store/StoreSectionBrand;->roadblockBannerResourceId:I

    .line 59
    iput p7, p0, Lcom/oculus/horizon/store/StoreSectionBrand;->roadblockDescriptionText:I

    .line 60
    iput p8, p0, Lcom/oculus/horizon/store/StoreSectionBrand;->roadblockSecondDescriptionText:I

    .line 61
    iput p9, p0, Lcom/oculus/horizon/store/StoreSectionBrand;->roadblockTitleText:I

    .line 62
    iput p10, p0, Lcom/oculus/horizon/store/StoreSectionBrand;->roadblockButtonText:I

    .line 63
    return-void
.end method

.method public static from(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreSectionBrand;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/oculus/horizon/store/StoreSectionBrand;->GALLERY:Lcom/oculus/horizon/store/StoreSectionBrand;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreSectionBrand;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Lcom/oculus/horizon/store/StoreSectionBrand;->GALLERY:Lcom/oculus/horizon/store/StoreSectionBrand;

    .line 71
    :goto_0
    return-object v0

    .line 68
    :cond_0
    sget-object v0, Lcom/oculus/horizon/store/StoreSectionBrand;->CONCEPTS:Lcom/oculus/horizon/store/StoreSectionBrand;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreSectionBrand;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    sget-object v0, Lcom/oculus/horizon/store/StoreSectionBrand;->CONCEPTS:Lcom/oculus/horizon/store/StoreSectionBrand;

    goto :goto_0

    .line 71
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreSectionBrand;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/oculus/horizon/store/StoreSectionBrand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/store/StoreSectionBrand;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/store/StoreSectionBrand;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/oculus/horizon/store/StoreSectionBrand;->$VALUES:[Lcom/oculus/horizon/store/StoreSectionBrand;

    invoke-virtual {v0}, [Lcom/oculus/horizon/store/StoreSectionBrand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/store/StoreSectionBrand;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionBrand;->value:Ljava/lang/String;

    return-object v0
.end method
