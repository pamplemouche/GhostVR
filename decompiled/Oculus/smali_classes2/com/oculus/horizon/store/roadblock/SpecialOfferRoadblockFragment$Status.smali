.class public final enum Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;
.super Ljava/lang/Enum;
.source "SpecialOfferRoadblockFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;

.field public static final enum REDEEMED:Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;

.field public static final enum UNREDEEMED:Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;

    const-string v1, "UNREDEEMED"

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;->UNREDEEMED:Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;

    .line 38
    new-instance v0, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;

    const-string v1, "REDEEMED"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;->REDEEMED:Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;

    sget-object v1, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;->UNREDEEMED:Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;->REDEEMED:Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;->$VALUES:[Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;->$VALUES:[Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;

    invoke-virtual {v0}, [Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;

    return-object v0
.end method
