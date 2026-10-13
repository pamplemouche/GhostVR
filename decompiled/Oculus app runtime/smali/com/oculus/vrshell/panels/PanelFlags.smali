.class public final enum Lcom/oculus/vrshell/panels/PanelFlags;
.super Ljava/lang/Enum;
.source "PanelFlags.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/vrshell/panels/PanelFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/vrshell/panels/PanelFlags;

.field public static final enum GAZE_INSIDE:Lcom/oculus/vrshell/panels/PanelFlags;

.field public static final enum GAZE_VALID:Lcom/oculus/vrshell/panels/PanelFlags;

.field public static final enum REMOTE_ACTIVE:Lcom/oculus/vrshell/panels/PanelFlags;

.field public static final enum REMOTE_CONNECTED:Lcom/oculus/vrshell/panels/PanelFlags;

.field public static final enum REMOTE_RECENTERED:Lcom/oculus/vrshell/panels/PanelFlags;


# instance fields
.field private final flagValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 6
    new-instance v0, Lcom/oculus/vrshell/panels/PanelFlags;

    const/4 v1, 0x0

    const-string v2, "GAZE_VALID"

    const-wide/16 v3, 0x1

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/oculus/vrshell/panels/PanelFlags;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/oculus/vrshell/panels/PanelFlags;->GAZE_VALID:Lcom/oculus/vrshell/panels/PanelFlags;

    .line 7
    new-instance v0, Lcom/oculus/vrshell/panels/PanelFlags;

    const/4 v2, 0x1

    const-string v3, "GAZE_INSIDE"

    const-wide/16 v4, 0x2

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/oculus/vrshell/panels/PanelFlags;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/oculus/vrshell/panels/PanelFlags;->GAZE_INSIDE:Lcom/oculus/vrshell/panels/PanelFlags;

    .line 8
    new-instance v0, Lcom/oculus/vrshell/panels/PanelFlags;

    const/4 v3, 0x2

    const-string v4, "REMOTE_ACTIVE"

    const-wide/16 v5, 0x4

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/oculus/vrshell/panels/PanelFlags;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/oculus/vrshell/panels/PanelFlags;->REMOTE_ACTIVE:Lcom/oculus/vrshell/panels/PanelFlags;

    .line 9
    new-instance v0, Lcom/oculus/vrshell/panels/PanelFlags;

    const/4 v4, 0x3

    const-string v5, "REMOTE_CONNECTED"

    const-wide/16 v6, 0x8

    invoke-direct {v0, v5, v4, v6, v7}, Lcom/oculus/vrshell/panels/PanelFlags;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/oculus/vrshell/panels/PanelFlags;->REMOTE_CONNECTED:Lcom/oculus/vrshell/panels/PanelFlags;

    .line 10
    new-instance v0, Lcom/oculus/vrshell/panels/PanelFlags;

    const/4 v5, 0x4

    const-string v6, "REMOTE_RECENTERED"

    const-wide/16 v7, 0x10

    invoke-direct {v0, v6, v5, v7, v8}, Lcom/oculus/vrshell/panels/PanelFlags;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/oculus/vrshell/panels/PanelFlags;->REMOTE_RECENTERED:Lcom/oculus/vrshell/panels/PanelFlags;

    const/4 v0, 0x5

    .line 5
    new-array v0, v0, [Lcom/oculus/vrshell/panels/PanelFlags;

    sget-object v6, Lcom/oculus/vrshell/panels/PanelFlags;->GAZE_VALID:Lcom/oculus/vrshell/panels/PanelFlags;

    aput-object v6, v0, v1

    sget-object v1, Lcom/oculus/vrshell/panels/PanelFlags;->GAZE_INSIDE:Lcom/oculus/vrshell/panels/PanelFlags;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/vrshell/panels/PanelFlags;->REMOTE_ACTIVE:Lcom/oculus/vrshell/panels/PanelFlags;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/vrshell/panels/PanelFlags;->REMOTE_CONNECTED:Lcom/oculus/vrshell/panels/PanelFlags;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/vrshell/panels/PanelFlags;->REMOTE_RECENTERED:Lcom/oculus/vrshell/panels/PanelFlags;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oculus/vrshell/panels/PanelFlags;->$VALUES:[Lcom/oculus/vrshell/panels/PanelFlags;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-wide p3, p0, Lcom/oculus/vrshell/panels/PanelFlags;->flagValue:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/vrshell/panels/PanelFlags;
    .locals 1

    .line 5
    const-class v0, Lcom/oculus/vrshell/panels/PanelFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/vrshell/panels/PanelFlags;

    return-object p0
.end method

.method public static values()[Lcom/oculus/vrshell/panels/PanelFlags;
    .locals 1

    .line 5
    sget-object v0, Lcom/oculus/vrshell/panels/PanelFlags;->$VALUES:[Lcom/oculus/vrshell/panels/PanelFlags;

    invoke-virtual {v0}, [Lcom/oculus/vrshell/panels/PanelFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/vrshell/panels/PanelFlags;

    return-object v0
.end method


# virtual methods
.method public getFlagValue()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/oculus/vrshell/panels/PanelFlags;->flagValue:J

    return-wide v0
.end method
