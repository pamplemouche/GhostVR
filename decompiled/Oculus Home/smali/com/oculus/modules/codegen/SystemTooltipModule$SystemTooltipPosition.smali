.class public final enum Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;
.super Ljava/lang/Enum;
.source "SystemTooltipModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/SystemTooltipModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SystemTooltipPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;

.field public static final enum bottom:Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;

.field public static final enum left:Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;

.field public static final enum right:Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;

.field public static final enum top:Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;

    const-string v1, "bottom"

    invoke-direct {v0, v1, v2}, Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;->bottom:Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;

    .line 34
    new-instance v0, Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;

    const-string v1, "left"

    invoke-direct {v0, v1, v3}, Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;->left:Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;

    .line 35
    new-instance v0, Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;

    const-string v1, "right"

    invoke-direct {v0, v1, v4}, Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;->right:Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;

    .line 36
    new-instance v0, Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;

    const-string v1, "top"

    invoke-direct {v0, v1, v5}, Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;->top:Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;

    sget-object v1, Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;->bottom:Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;->left:Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;->right:Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;->top:Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;->$VALUES:[Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;

    return-object v0
.end method

.method public static values()[Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;->$VALUES:[Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;

    invoke-virtual {v0}, [Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;

    return-object v0
.end method
