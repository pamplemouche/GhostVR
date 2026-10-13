.class public final enum Lcom/oculus/library/model/PlayMode;
.super Ljava/lang/Enum;
.source "PlayMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/library/model/PlayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/library/model/PlayMode;

.field public static final enum ROOM_SCALE:Lcom/oculus/library/model/PlayMode;

.field public static final enum SITTING:Lcom/oculus/library/model/PlayMode;

.field public static final enum STANDING:Lcom/oculus/library/model/PlayMode;

.field public static final enum UNKNOWN:Lcom/oculus/library/model/PlayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 6
    new-instance v0, Lcom/oculus/library/model/PlayMode;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/oculus/library/model/PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/PlayMode;->UNKNOWN:Lcom/oculus/library/model/PlayMode;

    .line 7
    new-instance v0, Lcom/oculus/library/model/PlayMode;

    const/4 v2, 0x1

    const-string v3, "SITTING"

    invoke-direct {v0, v3, v2}, Lcom/oculus/library/model/PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/PlayMode;->SITTING:Lcom/oculus/library/model/PlayMode;

    .line 8
    new-instance v0, Lcom/oculus/library/model/PlayMode;

    const/4 v3, 0x2

    const-string v4, "STANDING"

    invoke-direct {v0, v4, v3}, Lcom/oculus/library/model/PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/PlayMode;->STANDING:Lcom/oculus/library/model/PlayMode;

    .line 9
    new-instance v0, Lcom/oculus/library/model/PlayMode;

    const/4 v4, 0x3

    const-string v5, "ROOM_SCALE"

    invoke-direct {v0, v5, v4}, Lcom/oculus/library/model/PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/PlayMode;->ROOM_SCALE:Lcom/oculus/library/model/PlayMode;

    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [Lcom/oculus/library/model/PlayMode;

    sget-object v5, Lcom/oculus/library/model/PlayMode;->UNKNOWN:Lcom/oculus/library/model/PlayMode;

    aput-object v5, v0, v1

    sget-object v1, Lcom/oculus/library/model/PlayMode;->SITTING:Lcom/oculus/library/model/PlayMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/model/PlayMode;->STANDING:Lcom/oculus/library/model/PlayMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/library/model/PlayMode;->ROOM_SCALE:Lcom/oculus/library/model/PlayMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/library/model/PlayMode;->$VALUES:[Lcom/oculus/library/model/PlayMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/library/model/PlayMode;
    .locals 1

    .line 5
    const-class v0, Lcom/oculus/library/model/PlayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/library/model/PlayMode;

    return-object p0
.end method

.method public static values()[Lcom/oculus/library/model/PlayMode;
    .locals 1

    .line 5
    sget-object v0, Lcom/oculus/library/model/PlayMode;->$VALUES:[Lcom/oculus/library/model/PlayMode;

    invoke-virtual {v0}, [Lcom/oculus/library/model/PlayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/library/model/PlayMode;

    return-object v0
.end method
