.class public final enum Lcom/oculus/horizon/store/StoreUtils$FilteringSet;
.super Ljava/lang/Enum;
.source "StoreUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/store/StoreUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FilteringSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/store/StoreUtils$FilteringSet;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/store/StoreUtils$FilteringSet;

.field public static final enum ALL:Lcom/oculus/horizon/store/StoreUtils$FilteringSet;

.field public static final enum APPS_ONLY:Lcom/oculus/horizon/store/StoreUtils$FilteringSet;

.field public static final enum UNIVERSAL_SEARCH_SET:Lcom/oculus/horizon/store/StoreUtils$FilteringSet;


# instance fields
.field public final mFilteringSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 504
    new-instance v0, Lcom/oculus/horizon/store/StoreUtils$FilteringSet;

    const-string v1, "APPS_ONLY"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Application"

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/oculus/horizon/store/StoreUtils$FilteringSet;-><init>(Ljava/lang/String;ILjava/util/Set;)V

    sput-object v0, Lcom/oculus/horizon/store/StoreUtils$FilteringSet;->APPS_ONLY:Lcom/oculus/horizon/store/StoreUtils$FilteringSet;

    .line 505
    new-instance v0, Lcom/oculus/horizon/store/StoreUtils$FilteringSet;

    const-string v1, "UNIVERSAL_SEARCH_SET"

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Application"

    aput-object v3, v2, v5

    const-string v3, "IAPItem"

    aput-object v3, v2, v6

    const-string v3, "InAppRentalItem"

    aput-object v3, v2, v7

    .line 506
    invoke-static {v2}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lcom/oculus/horizon/store/StoreUtils$FilteringSet;-><init>(Ljava/lang/String;ILjava/util/Set;)V

    sput-object v0, Lcom/oculus/horizon/store/StoreUtils$FilteringSet;->UNIVERSAL_SEARCH_SET:Lcom/oculus/horizon/store/StoreUtils$FilteringSet;

    .line 510
    new-instance v0, Lcom/oculus/horizon/store/StoreUtils$FilteringSet;

    const-string v1, "ALL"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Application"

    aput-object v3, v2, v5

    const-string v3, "IAPItem"

    aput-object v3, v2, v6

    const-string v3, "InAppRentalItem"

    aput-object v3, v2, v7

    const-string v3, "AppStoreBanner"

    aput-object v3, v2, v8

    const/4 v3, 0x4

    const-string v4, "AppItemBundle"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "UNKNOWN_TYPE_NAME"

    aput-object v4, v2, v3

    .line 511
    invoke-static {v2}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Lcom/oculus/horizon/store/StoreUtils$FilteringSet;-><init>(Ljava/lang/String;ILjava/util/Set;)V

    sput-object v0, Lcom/oculus/horizon/store/StoreUtils$FilteringSet;->ALL:Lcom/oculus/horizon/store/StoreUtils$FilteringSet;

    .line 503
    new-array v0, v8, [Lcom/oculus/horizon/store/StoreUtils$FilteringSet;

    sget-object v1, Lcom/oculus/horizon/store/StoreUtils$FilteringSet;->APPS_ONLY:Lcom/oculus/horizon/store/StoreUtils$FilteringSet;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/horizon/store/StoreUtils$FilteringSet;->UNIVERSAL_SEARCH_SET:Lcom/oculus/horizon/store/StoreUtils$FilteringSet;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/horizon/store/StoreUtils$FilteringSet;->ALL:Lcom/oculus/horizon/store/StoreUtils$FilteringSet;

    aput-object v1, v0, v7

    sput-object v0, Lcom/oculus/horizon/store/StoreUtils$FilteringSet;->$VALUES:[Lcom/oculus/horizon/store/StoreUtils$FilteringSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 521
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 522
    iput-object p3, p0, Lcom/oculus/horizon/store/StoreUtils$FilteringSet;->mFilteringSet:Ljava/util/Set;

    .line 523
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreUtils$FilteringSet;
    .locals 1

    .prologue
    .line 503
    const-class v0, Lcom/oculus/horizon/store/StoreUtils$FilteringSet;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/store/StoreUtils$FilteringSet;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/store/StoreUtils$FilteringSet;
    .locals 1

    .prologue
    .line 503
    sget-object v0, Lcom/oculus/horizon/store/StoreUtils$FilteringSet;->$VALUES:[Lcom/oculus/horizon/store/StoreUtils$FilteringSet;

    invoke-virtual {v0}, [Lcom/oculus/horizon/store/StoreUtils$FilteringSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/store/StoreUtils$FilteringSet;

    return-object v0
.end method
