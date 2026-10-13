.class public final enum Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;
.super Ljava/lang/Enum;
.source "StoreItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/store/StoreItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ColorScheme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;

.field public static final enum CAROUSEL:Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;

.field public static final enum DARK:Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;

.field public static final enum DEFAULT:Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;


# instance fields
.field public final checkmarkResId:I

.field public final notPurchasedColorResId:I

.field public final purchasedColorResId:I

.field public final strikethroughColorResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    const v8, 0x106000b

    .line 482
    new-instance v0, Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;

    const-string v1, "DEFAULT"

    sget v3, Lcom/oculus/horizon/R$drawable;->checkmark_gray:I

    sget v4, Lcom/oculus/horizon/R$color;->oculus_black_4:I

    sget v5, Lcom/oculus/horizon/R$color;->oculus_black_10:I

    sget v6, Lcom/oculus/horizon/R$color;->oculus_black_4:I

    invoke-direct/range {v0 .. v6}, Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;->DEFAULT:Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;

    .line 487
    new-instance v3, Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;

    const-string v4, "DARK"

    sget v6, Lcom/oculus/horizon/R$drawable;->checkmark_gray:I

    sget v7, Lcom/oculus/horizon/R$color;->oculus_black_4:I

    sget v9, Lcom/oculus/horizon/R$color;->oculus_black_4:I

    move v5, v11

    invoke-direct/range {v3 .. v9}, Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;->DARK:Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;

    .line 492
    new-instance v4, Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;

    const-string v5, "CAROUSEL"

    sget v7, Lcom/oculus/horizon/R$drawable;->checkmark_white:I

    move v6, v12

    move v9, v8

    move v10, v8

    invoke-direct/range {v4 .. v10}, Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;-><init>(Ljava/lang/String;IIIII)V

    sput-object v4, Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;->CAROUSEL:Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;

    .line 481
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;

    sget-object v1, Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;->DEFAULT:Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;->DARK:Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;

    aput-object v1, v0, v11

    sget-object v1, Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;->CAROUSEL:Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;

    aput-object v1, v0, v12

    sput-object v0, Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;->$VALUES:[Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .prologue
    .line 507
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 508
    iput p3, p0, Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;->checkmarkResId:I

    .line 509
    iput p4, p0, Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;->purchasedColorResId:I

    .line 510
    iput p5, p0, Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;->notPurchasedColorResId:I

    .line 511
    iput p6, p0, Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;->strikethroughColorResId:I

    .line 512
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;
    .locals 1

    .prologue
    .line 481
    const-class v0, Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;
    .locals 1

    .prologue
    .line 481
    sget-object v0, Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;->$VALUES:[Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;

    invoke-virtual {v0}, [Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;

    return-object v0
.end method
