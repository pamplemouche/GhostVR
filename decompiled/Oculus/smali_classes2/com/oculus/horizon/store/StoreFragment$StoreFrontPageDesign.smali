.class final enum Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;
.super Ljava/lang/Enum;
.source "StoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/store/StoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StoreFrontPageDesign"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

.field public static final enum STORE_CONDENSED:Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

.field public static final enum STORE_CONTROL:Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

.field public static final enum STORE_MIXED_ASPECT_RATIO:Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

.field public static final enum STORE_SQUARE:Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 831
    new-instance v0, Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

    const-string v1, "STORE_SQUARE"

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;->STORE_SQUARE:Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

    .line 832
    new-instance v0, Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

    const-string v1, "STORE_CONDENSED"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;->STORE_CONDENSED:Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

    .line 833
    new-instance v0, Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

    const-string v1, "STORE_MIXED_ASPECT_RATIO"

    invoke-direct {v0, v1, v4}, Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;->STORE_MIXED_ASPECT_RATIO:Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

    .line 834
    new-instance v0, Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

    const-string v1, "STORE_CONTROL"

    invoke-direct {v0, v1, v5}, Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;->STORE_CONTROL:Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

    .line 830
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

    sget-object v1, Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;->STORE_SQUARE:Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;->STORE_CONDENSED:Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;->STORE_MIXED_ASPECT_RATIO:Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;->STORE_CONTROL:Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;->$VALUES:[Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 830
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static from(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;
    .locals 1

    .prologue
    .line 837
    const-string v0, "square"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    sget-object v0, Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;->STORE_SQUARE:Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

    .line 844
    :goto_0
    return-object v0

    .line 839
    :cond_0
    const-string v0, "condensed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 840
    sget-object v0, Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;->STORE_CONDENSED:Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

    goto :goto_0

    .line 841
    :cond_1
    const-string v0, "mixed_aspect_ratio"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 842
    sget-object v0, Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;->STORE_MIXED_ASPECT_RATIO:Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

    goto :goto_0

    .line 844
    :cond_2
    sget-object v0, Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;->STORE_CONTROL:Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;
    .locals 1

    .prologue
    .line 830
    const-class v0, Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;
    .locals 1

    .prologue
    .line 830
    sget-object v0, Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;->$VALUES:[Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

    invoke-virtual {v0}, [Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

    return-object v0
.end method
