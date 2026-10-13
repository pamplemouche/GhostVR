.class public final enum Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;
.super Ljava/lang/Enum;
.source "QuickPromotionModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/QuickPromotionModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QPApplication"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;

.field public static final enum HOME:Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;

    const-string v1, "HOME"

    invoke-direct {v0, v1, v2}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;->HOME:Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;

    sget-object v1, Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;->HOME:Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;

    aput-object v1, v0, v2

    sput-object v0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;->$VALUES:[Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;

    return-object v0
.end method

.method public static values()[Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;->$VALUES:[Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;

    invoke-virtual {v0}, [Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;

    return-object v0
.end method
