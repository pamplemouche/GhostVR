.class public final enum Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;
.super Ljava/lang/Enum;
.source "BundleItemViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

.field public static final enum DOWNLOADING:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

.field public static final enum INSTALLED:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

.field public static final enum INSTALLING:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

.field public static final enum INSTALL_FAILED:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

.field public static final enum NOT_INSTALLED:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

.field public static final enum NOT_PURCHASED:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

.field public static final enum NOT_SUPPORTED:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 361
    new-instance v0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    const-string v1, "NOT_PURCHASED"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;->NOT_PURCHASED:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    .line 362
    new-instance v0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    const-string v1, "NOT_INSTALLED"

    invoke-direct {v0, v1, v4}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;->NOT_INSTALLED:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    .line 363
    new-instance v0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v5}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;->DOWNLOADING:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    .line 364
    new-instance v0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    const-string v1, "INSTALLING"

    invoke-direct {v0, v1, v6}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;->INSTALLING:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    .line 365
    new-instance v0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    const-string v1, "INSTALLED"

    invoke-direct {v0, v1, v7}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;->INSTALLED:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    .line 366
    new-instance v0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    const-string v1, "INSTALL_FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;->INSTALL_FAILED:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    .line 367
    new-instance v0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    const-string v1, "NOT_SUPPORTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;->NOT_SUPPORTED:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    .line 360
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    sget-object v1, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;->NOT_PURCHASED:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;->NOT_INSTALLED:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;->DOWNLOADING:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;->INSTALLING:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;->INSTALLED:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;->INSTALL_FAILED:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;->NOT_SUPPORTED:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;->$VALUES:[Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

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
    .line 360
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;
    .locals 1

    .prologue
    .line 360
    const-class v0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;
    .locals 1

    .prologue
    .line 360
    sget-object v0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;->$VALUES:[Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    invoke-virtual {v0}, [Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    return-object v0
.end method
