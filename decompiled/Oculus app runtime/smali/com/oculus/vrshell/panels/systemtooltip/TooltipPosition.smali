.class public final enum Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;
.super Ljava/lang/Enum;
.source "TooltipPosition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

.field public static final enum Bottom:Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

.field public static final enum Left:Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

.field public static final enum Right:Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

.field private static final TAG:Ljava/lang/String;

.field public static final enum Top:Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;


# instance fields
.field private final IPCString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 9
    new-instance v0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

    const/4 v1, 0x0

    const-string v2, "Top"

    const-string v3, "top"

    invoke-direct {v0, v2, v1, v3}, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;->Top:Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

    .line 10
    new-instance v0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

    const/4 v2, 0x1

    const-string v3, "Bottom"

    const-string v4, "bottom"

    invoke-direct {v0, v3, v2, v4}, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;->Bottom:Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

    .line 11
    new-instance v0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

    const/4 v3, 0x2

    const-string v4, "Left"

    const-string v5, "left"

    invoke-direct {v0, v4, v3, v5}, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;->Left:Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

    .line 12
    new-instance v0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

    const/4 v4, 0x3

    const-string v5, "Right"

    const-string v6, "right"

    invoke-direct {v0, v5, v4, v6}, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;->Right:Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

    const/4 v0, 0x4

    .line 8
    new-array v0, v0, [Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

    sget-object v5, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;->Top:Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

    aput-object v5, v0, v1

    sget-object v1, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;->Bottom:Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;->Left:Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;->Right:Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;->$VALUES:[Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

    .line 14
    const-class v0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;->TAG:Ljava/lang/String;

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

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;->IPCString:Ljava/lang/String;

    return-void
.end method

.method public static getTooltipPosition(Ljava/lang/String;)Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;
    .locals 6

    .line 25
    invoke-static {}, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;->values()[Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 26
    invoke-virtual {v4}, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;->getIPCString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 31
    :cond_1
    sget-object v0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    const-string p0, "Unexpected tooltip position string \"%s\", defaulting to TooltipPosition.Top"

    .line 33
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 31
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    sget-object p0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;->Top:Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;
    .locals 1

    .line 8
    const-class v0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

    return-object p0
.end method

.method public static values()[Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;
    .locals 1

    .line 8
    sget-object v0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;->$VALUES:[Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

    invoke-virtual {v0}, [Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

    return-object v0
.end method


# virtual methods
.method public getIPCString()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;->IPCString:Ljava/lang/String;

    return-object v0
.end method
