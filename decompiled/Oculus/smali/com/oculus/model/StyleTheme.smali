.class public final enum Lcom/oculus/model/StyleTheme;
.super Ljava/lang/Enum;
.source "StyleTheme.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/model/StyleTheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/model/StyleTheme;

.field public static final enum HALLOWEEN:Lcom/oculus/model/StyleTheme;

.field public static final enum SUMMER:Lcom/oculus/model/StyleTheme;

.field public static final enum WINTER:Lcom/oculus/model/StyleTheme;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/oculus/model/StyleTheme;

    const-string v1, "HALLOWEEN"

    invoke-direct {v0, v1, v2}, Lcom/oculus/model/StyleTheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/model/StyleTheme;->HALLOWEEN:Lcom/oculus/model/StyleTheme;

    .line 9
    new-instance v0, Lcom/oculus/model/StyleTheme;

    const-string v1, "WINTER"

    invoke-direct {v0, v1, v3}, Lcom/oculus/model/StyleTheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/model/StyleTheme;->WINTER:Lcom/oculus/model/StyleTheme;

    .line 10
    new-instance v0, Lcom/oculus/model/StyleTheme;

    const-string v1, "SUMMER"

    invoke-direct {v0, v1, v4}, Lcom/oculus/model/StyleTheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/model/StyleTheme;->SUMMER:Lcom/oculus/model/StyleTheme;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/model/StyleTheme;

    sget-object v1, Lcom/oculus/model/StyleTheme;->HALLOWEEN:Lcom/oculus/model/StyleTheme;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/model/StyleTheme;->WINTER:Lcom/oculus/model/StyleTheme;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/model/StyleTheme;->SUMMER:Lcom/oculus/model/StyleTheme;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/model/StyleTheme;->$VALUES:[Lcom/oculus/model/StyleTheme;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/model/StyleTheme;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/oculus/model/StyleTheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/model/StyleTheme;

    return-object v0
.end method

.method public static values()[Lcom/oculus/model/StyleTheme;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/oculus/model/StyleTheme;->$VALUES:[Lcom/oculus/model/StyleTheme;

    invoke-virtual {v0}, [Lcom/oculus/model/StyleTheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/model/StyleTheme;

    return-object v0
.end method
