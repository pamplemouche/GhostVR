.class public final enum Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;
.super Ljava/lang/Enum;
.source "ReviewSortFilterMenuViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SortFilterOptionEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;

.field public static final enum BINARY_ID:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;

.field public static final enum MOST_CRITICAL:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;

.field public static final enum MOST_HELPFUL:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;

.field public static final enum MOST_RECENT:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;


# instance fields
.field public final optionString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 192
    new-instance v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;

    const-string v1, "MOST_HELPFUL"

    const-string v2, "most_helpful"

    invoke-direct {v0, v1, v3, v2}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;->MOST_HELPFUL:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;

    .line 193
    new-instance v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;

    const-string v1, "MOST_RECENT"

    const-string v2, "most_recent"

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;->MOST_RECENT:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;

    .line 194
    new-instance v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;

    const-string v1, "MOST_CRITICAL"

    const-string v2, "most_critical"

    invoke-direct {v0, v1, v5, v2}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;->MOST_CRITICAL:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;

    .line 195
    new-instance v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;

    const-string v1, "BINARY_ID"

    const-string v2, "binary_id"

    invoke-direct {v0, v1, v6, v2}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;->BINARY_ID:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;

    .line 191
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;

    sget-object v1, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;->MOST_HELPFUL:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;->MOST_RECENT:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;->MOST_CRITICAL:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;->BINARY_ID:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;->$VALUES:[Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 199
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 200
    iput-object p3, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;->optionString:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;
    .locals 1

    .prologue
    .line 191
    const-class v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;->$VALUES:[Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;

    invoke-virtual {v0}, [Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;

    return-object v0
.end method
