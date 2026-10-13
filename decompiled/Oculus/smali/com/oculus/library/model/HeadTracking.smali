.class public final enum Lcom/oculus/library/model/HeadTracking;
.super Ljava/lang/Enum;
.source "HeadTracking.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/library/model/HeadTracking;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/library/model/HeadTracking;

.field public static final enum ALLOW_6DOF:Lcom/oculus/library/model/HeadTracking;

.field public static final enum REQUIRE_3DOF:Lcom/oculus/library/model/HeadTracking;

.field public static final enum REQUIRE_6DOF:Lcom/oculus/library/model/HeadTracking;

.field public static final enum UNKNOWN:Lcom/oculus/library/model/HeadTracking;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/oculus/library/model/HeadTracking;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/model/HeadTracking;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/HeadTracking;->UNKNOWN:Lcom/oculus/library/model/HeadTracking;

    .line 7
    new-instance v0, Lcom/oculus/library/model/HeadTracking;

    const-string v1, "REQUIRE_3DOF"

    invoke-direct {v0, v1, v3}, Lcom/oculus/library/model/HeadTracking;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/HeadTracking;->REQUIRE_3DOF:Lcom/oculus/library/model/HeadTracking;

    .line 8
    new-instance v0, Lcom/oculus/library/model/HeadTracking;

    const-string v1, "ALLOW_6DOF"

    invoke-direct {v0, v1, v4}, Lcom/oculus/library/model/HeadTracking;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/HeadTracking;->ALLOW_6DOF:Lcom/oculus/library/model/HeadTracking;

    .line 9
    new-instance v0, Lcom/oculus/library/model/HeadTracking;

    const-string v1, "REQUIRE_6DOF"

    invoke-direct {v0, v1, v5}, Lcom/oculus/library/model/HeadTracking;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/HeadTracking;->REQUIRE_6DOF:Lcom/oculus/library/model/HeadTracking;

    .line 5
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oculus/library/model/HeadTracking;

    sget-object v1, Lcom/oculus/library/model/HeadTracking;->UNKNOWN:Lcom/oculus/library/model/HeadTracking;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/model/HeadTracking;->REQUIRE_3DOF:Lcom/oculus/library/model/HeadTracking;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/library/model/HeadTracking;->ALLOW_6DOF:Lcom/oculus/library/model/HeadTracking;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/library/model/HeadTracking;->REQUIRE_6DOF:Lcom/oculus/library/model/HeadTracking;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oculus/library/model/HeadTracking;->$VALUES:[Lcom/oculus/library/model/HeadTracking;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/oculus/library/model/HeadTracking;
    .locals 5

    .prologue
    .line 14
    invoke-static {}, Lcom/oculus/library/model/HeadTracking;->values()[Lcom/oculus/library/model/HeadTracking;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 15
    invoke-virtual {v0}, Lcom/oculus/library/model/HeadTracking;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 19
    :goto_1
    return-object v0

    .line 14
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 19
    :cond_1
    sget-object v0, Lcom/oculus/library/model/HeadTracking;->UNKNOWN:Lcom/oculus/library/model/HeadTracking;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/library/model/HeadTracking;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/oculus/library/model/HeadTracking;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/model/HeadTracking;

    return-object v0
.end method

.method public static values()[Lcom/oculus/library/model/HeadTracking;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/oculus/library/model/HeadTracking;->$VALUES:[Lcom/oculus/library/model/HeadTracking;

    invoke-virtual {v0}, [Lcom/oculus/library/model/HeadTracking;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/library/model/HeadTracking;

    return-object v0
.end method
