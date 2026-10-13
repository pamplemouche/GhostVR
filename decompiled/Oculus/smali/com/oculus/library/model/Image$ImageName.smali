.class public final enum Lcom/oculus/library/model/Image$ImageName;
.super Ljava/lang/Enum;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/library/model/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/library/model/Image$ImageName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/library/model/Image$ImageName;

.field public static final enum LANDSCAPE_SMALL:Lcom/oculus/library/model/Image$ImageName;

.field public static final enum SOURCE_MAIN:Lcom/oculus/library/model/Image$ImageName;

.field public static final enum SOURCE_SQUARE:Lcom/oculus/library/model/Image$ImageName;

.field public static final enum SOURCE_TINY:Lcom/oculus/library/model/Image$ImageName;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/oculus/library/model/Image$ImageName;

    const-string v1, "SOURCE_SQUARE"

    const-string/jumbo v2, "source_square"

    invoke-direct {v0, v1, v3, v2}, Lcom/oculus/library/model/Image$ImageName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/library/model/Image$ImageName;->SOURCE_SQUARE:Lcom/oculus/library/model/Image$ImageName;

    .line 12
    new-instance v0, Lcom/oculus/library/model/Image$ImageName;

    const-string v1, "SOURCE_MAIN"

    const-string/jumbo v2, "source_main"

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/library/model/Image$ImageName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/library/model/Image$ImageName;->SOURCE_MAIN:Lcom/oculus/library/model/Image$ImageName;

    .line 13
    new-instance v0, Lcom/oculus/library/model/Image$ImageName;

    const-string v1, "SOURCE_TINY"

    const-string/jumbo v2, "source_tiny"

    invoke-direct {v0, v1, v5, v2}, Lcom/oculus/library/model/Image$ImageName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/library/model/Image$ImageName;->SOURCE_TINY:Lcom/oculus/library/model/Image$ImageName;

    .line 14
    new-instance v0, Lcom/oculus/library/model/Image$ImageName;

    const-string v1, "LANDSCAPE_SMALL"

    const-string v2, "landscape_small"

    invoke-direct {v0, v1, v6, v2}, Lcom/oculus/library/model/Image$ImageName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/library/model/Image$ImageName;->LANDSCAPE_SMALL:Lcom/oculus/library/model/Image$ImageName;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oculus/library/model/Image$ImageName;

    sget-object v1, Lcom/oculus/library/model/Image$ImageName;->SOURCE_SQUARE:Lcom/oculus/library/model/Image$ImageName;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/library/model/Image$ImageName;->SOURCE_MAIN:Lcom/oculus/library/model/Image$ImageName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/library/model/Image$ImageName;->SOURCE_TINY:Lcom/oculus/library/model/Image$ImageName;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/library/model/Image$ImageName;->LANDSCAPE_SMALL:Lcom/oculus/library/model/Image$ImageName;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oculus/library/model/Image$ImageName;->$VALUES:[Lcom/oculus/library/model/Image$ImageName;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/oculus/library/model/Image$ImageName;->value:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/library/model/Image$ImageName;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/oculus/library/model/Image$ImageName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/model/Image$ImageName;

    return-object v0
.end method

.method public static values()[Lcom/oculus/library/model/Image$ImageName;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/oculus/library/model/Image$ImageName;->$VALUES:[Lcom/oculus/library/model/Image$ImageName;

    invoke-virtual {v0}, [Lcom/oculus/library/model/Image$ImageName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/library/model/Image$ImageName;

    return-object v0
.end method
