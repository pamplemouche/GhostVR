.class final enum Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;
.super Ljava/lang/Enum;
.source "RubberBandRenderThreadController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SIDE_OF_OUT_BOUND"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

.field public static final enum SIDE_BOTTOM:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

.field public static final enum SIDE_LEFT:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

.field public static final enum SIDE_NONE:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

.field public static final enum SIDE_RIGHT:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

.field public static final enum SIDE_TOP:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    const-string v1, "SIDE_LEFT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;->SIDE_LEFT:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    .line 48
    new-instance v0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    const-string v1, "SIDE_RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;->SIDE_RIGHT:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    .line 50
    new-instance v0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    const-string v1, "SIDE_TOP"

    invoke-direct {v0, v1, v4}, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;->SIDE_TOP:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    .line 52
    new-instance v0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    const-string v1, "SIDE_BOTTOM"

    invoke-direct {v0, v1, v5}, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;->SIDE_BOTTOM:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    .line 54
    new-instance v0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    const-string v1, "SIDE_NONE"

    invoke-direct {v0, v1, v6}, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;->SIDE_NONE:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    sget-object v1, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;->SIDE_LEFT:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;->SIDE_RIGHT:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;->SIDE_TOP:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;->SIDE_BOTTOM:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;->SIDE_NONE:Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;->$VALUES:[Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;->$VALUES:[Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    invoke-virtual {v0}, [Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/spherical/RubberBandRenderThreadController$SIDE_OF_OUT_BOUND;

    return-object v0
.end method
