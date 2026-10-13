.class public final enum Lcom/oculus/model/ProductStatus;
.super Ljava/lang/Enum;
.source "ProductStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/model/ProductStatus;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/model/ProductStatus;

.field public static final enum DOWNLOADED:Lcom/oculus/model/ProductStatus;

.field public static final enum DOWNLOADING:Lcom/oculus/model/ProductStatus;

.field public static final enum INSTALLED:Lcom/oculus/model/ProductStatus;

.field public static final enum INSTALLING:Lcom/oculus/model/ProductStatus;

.field public static final enum NOT_DOWNLOADED:Lcom/oculus/model/ProductStatus;

.field public static final enum NOT_PURCHASED:Lcom/oculus/model/ProductStatus;

.field public static final enum QUEUED:Lcom/oculus/model/ProductStatus;

.field public static final enum UNINSTALLING:Lcom/oculus/model/ProductStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/oculus/model/ProductStatus;

    const-string v1, "NOT_PURCHASED"

    invoke-direct {v0, v1, v3}, Lcom/oculus/model/ProductStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/model/ProductStatus;->NOT_PURCHASED:Lcom/oculus/model/ProductStatus;

    .line 12
    new-instance v0, Lcom/oculus/model/ProductStatus;

    const-string v1, "NOT_DOWNLOADED"

    invoke-direct {v0, v1, v4}, Lcom/oculus/model/ProductStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/model/ProductStatus;->NOT_DOWNLOADED:Lcom/oculus/model/ProductStatus;

    .line 13
    new-instance v0, Lcom/oculus/model/ProductStatus;

    const-string v1, "QUEUED"

    invoke-direct {v0, v1, v5}, Lcom/oculus/model/ProductStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/model/ProductStatus;->QUEUED:Lcom/oculus/model/ProductStatus;

    .line 14
    new-instance v0, Lcom/oculus/model/ProductStatus;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v6}, Lcom/oculus/model/ProductStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/model/ProductStatus;->DOWNLOADING:Lcom/oculus/model/ProductStatus;

    .line 15
    new-instance v0, Lcom/oculus/model/ProductStatus;

    const-string v1, "DOWNLOADED"

    invoke-direct {v0, v1, v7}, Lcom/oculus/model/ProductStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/model/ProductStatus;->DOWNLOADED:Lcom/oculus/model/ProductStatus;

    .line 19
    new-instance v0, Lcom/oculus/model/ProductStatus;

    const-string v1, "INSTALLING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oculus/model/ProductStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/model/ProductStatus;->INSTALLING:Lcom/oculus/model/ProductStatus;

    .line 20
    new-instance v0, Lcom/oculus/model/ProductStatus;

    const-string v1, "INSTALLED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/oculus/model/ProductStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/model/ProductStatus;->INSTALLED:Lcom/oculus/model/ProductStatus;

    .line 21
    new-instance v0, Lcom/oculus/model/ProductStatus;

    const-string v1, "UNINSTALLING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/oculus/model/ProductStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/model/ProductStatus;->UNINSTALLING:Lcom/oculus/model/ProductStatus;

    .line 9
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/oculus/model/ProductStatus;

    sget-object v1, Lcom/oculus/model/ProductStatus;->NOT_PURCHASED:Lcom/oculus/model/ProductStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/model/ProductStatus;->NOT_DOWNLOADED:Lcom/oculus/model/ProductStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/model/ProductStatus;->QUEUED:Lcom/oculus/model/ProductStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/model/ProductStatus;->DOWNLOADING:Lcom/oculus/model/ProductStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/model/ProductStatus;->DOWNLOADED:Lcom/oculus/model/ProductStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/model/ProductStatus;->INSTALLING:Lcom/oculus/model/ProductStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/model/ProductStatus;->INSTALLED:Lcom/oculus/model/ProductStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oculus/model/ProductStatus;->UNINSTALLING:Lcom/oculus/model/ProductStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/model/ProductStatus;->$VALUES:[Lcom/oculus/model/ProductStatus;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/model/ProductStatus;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/oculus/model/ProductStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/model/ProductStatus;

    return-object v0
.end method

.method public static values()[Lcom/oculus/model/ProductStatus;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/oculus/model/ProductStatus;->$VALUES:[Lcom/oculus/model/ProductStatus;

    invoke-virtual {v0}, [Lcom/oculus/model/ProductStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/model/ProductStatus;

    return-object v0
.end method
