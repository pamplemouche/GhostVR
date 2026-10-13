.class final enum Lcom/oculus/horizon/api/common/Item$CinemaVideo$Dimension;
.super Ljava/lang/Enum;
.source "Item.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/api/common/Item$CinemaVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Dimension"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/api/common/Item$CinemaVideo$Dimension;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/api/common/Item$CinemaVideo$Dimension;

.field public static final enum THREE_D:Lcom/oculus/horizon/api/common/Item$CinemaVideo$Dimension;

.field public static final enum TWO_D:Lcom/oculus/horizon/api/common/Item$CinemaVideo$Dimension;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    new-instance v0, Lcom/oculus/horizon/api/common/Item$CinemaVideo$Dimension;

    const-string v1, "TWO_D"

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/api/common/Item$CinemaVideo$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/api/common/Item$CinemaVideo$Dimension;->TWO_D:Lcom/oculus/horizon/api/common/Item$CinemaVideo$Dimension;

    .line 107
    new-instance v0, Lcom/oculus/horizon/api/common/Item$CinemaVideo$Dimension;

    const-string v1, "THREE_D"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/api/common/Item$CinemaVideo$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/api/common/Item$CinemaVideo$Dimension;->THREE_D:Lcom/oculus/horizon/api/common/Item$CinemaVideo$Dimension;

    .line 105
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oculus/horizon/api/common/Item$CinemaVideo$Dimension;

    sget-object v1, Lcom/oculus/horizon/api/common/Item$CinemaVideo$Dimension;->TWO_D:Lcom/oculus/horizon/api/common/Item$CinemaVideo$Dimension;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/horizon/api/common/Item$CinemaVideo$Dimension;->THREE_D:Lcom/oculus/horizon/api/common/Item$CinemaVideo$Dimension;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oculus/horizon/api/common/Item$CinemaVideo$Dimension;->$VALUES:[Lcom/oculus/horizon/api/common/Item$CinemaVideo$Dimension;

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
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/api/common/Item$CinemaVideo$Dimension;
    .locals 1

    .prologue
    .line 105
    const-class v0, Lcom/oculus/horizon/api/common/Item$CinemaVideo$Dimension;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Item$CinemaVideo$Dimension;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/api/common/Item$CinemaVideo$Dimension;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/oculus/horizon/api/common/Item$CinemaVideo$Dimension;->$VALUES:[Lcom/oculus/horizon/api/common/Item$CinemaVideo$Dimension;

    invoke-virtual {v0}, [Lcom/oculus/horizon/api/common/Item$CinemaVideo$Dimension;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/api/common/Item$CinemaVideo$Dimension;

    return-object v0
.end method
