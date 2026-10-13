.class public final enum Lcom/oculus/vrshell/panels/PanelButton;
.super Ljava/lang/Enum;
.source "PanelButton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/vrshell/panels/PanelButton;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/vrshell/panels/PanelButton;

.field public static final enum A:Lcom/oculus/vrshell/panels/PanelButton;

.field public static final enum B:Lcom/oculus/vrshell/panels/PanelButton;

.field public static final enum BACK:Lcom/oculus/vrshell/panels/PanelButton;

.field public static final enum HOME:Lcom/oculus/vrshell/panels/PanelButton;

.field public static final enum JOYSTICK_MOVE:Lcom/oculus/vrshell/panels/PanelButton;

.field public static final enum REMOTE_CLICK:Lcom/oculus/vrshell/panels/PanelButton;

.field public static final enum REMOTE_TOUCH:Lcom/oculus/vrshell/panels/PanelButton;

.field public static final enum REMOTE_TRIGGER:Lcom/oculus/vrshell/panels/PanelButton;

.field public static final enum RIGHT_TRIGGER:Lcom/oculus/vrshell/panels/PanelButton;

.field public static final enum TOUCH:Lcom/oculus/vrshell/panels/PanelButton;

.field public static final enum X:Lcom/oculus/vrshell/panels/PanelButton;

.field public static final enum Y:Lcom/oculus/vrshell/panels/PanelButton;


# instance fields
.field private final flagValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 6
    new-instance v0, Lcom/oculus/vrshell/panels/PanelButton;

    const/4 v1, 0x0

    const-string v2, "A"

    const-wide/16 v3, 0x1

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/oculus/vrshell/panels/PanelButton;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/oculus/vrshell/panels/PanelButton;->A:Lcom/oculus/vrshell/panels/PanelButton;

    .line 7
    new-instance v0, Lcom/oculus/vrshell/panels/PanelButton;

    const/4 v2, 0x1

    const-string v3, "B"

    const-wide/16 v4, 0x2

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/oculus/vrshell/panels/PanelButton;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/oculus/vrshell/panels/PanelButton;->B:Lcom/oculus/vrshell/panels/PanelButton;

    .line 8
    new-instance v0, Lcom/oculus/vrshell/panels/PanelButton;

    const/4 v3, 0x2

    const-string v4, "X"

    const-wide/16 v5, 0x4

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/oculus/vrshell/panels/PanelButton;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/oculus/vrshell/panels/PanelButton;->X:Lcom/oculus/vrshell/panels/PanelButton;

    .line 9
    new-instance v0, Lcom/oculus/vrshell/panels/PanelButton;

    const/4 v4, 0x3

    const-string v5, "Y"

    const-wide/16 v6, 0x8

    invoke-direct {v0, v5, v4, v6, v7}, Lcom/oculus/vrshell/panels/PanelButton;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/oculus/vrshell/panels/PanelButton;->Y:Lcom/oculus/vrshell/panels/PanelButton;

    .line 10
    new-instance v0, Lcom/oculus/vrshell/panels/PanelButton;

    const/4 v5, 0x4

    const-string v6, "BACK"

    const-wide/16 v7, 0x20

    invoke-direct {v0, v6, v5, v7, v8}, Lcom/oculus/vrshell/panels/PanelButton;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/oculus/vrshell/panels/PanelButton;->BACK:Lcom/oculus/vrshell/panels/PanelButton;

    .line 11
    new-instance v0, Lcom/oculus/vrshell/panels/PanelButton;

    const/4 v6, 0x5

    const-string v7, "RIGHT_TRIGGER"

    const-wide/16 v8, 0x100

    invoke-direct {v0, v7, v6, v8, v9}, Lcom/oculus/vrshell/panels/PanelButton;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/oculus/vrshell/panels/PanelButton;->RIGHT_TRIGGER:Lcom/oculus/vrshell/panels/PanelButton;

    .line 13
    new-instance v0, Lcom/oculus/vrshell/panels/PanelButton;

    const/4 v7, 0x6

    const-string v8, "TOUCH"

    const-wide/32 v9, 0x400000

    invoke-direct {v0, v8, v7, v9, v10}, Lcom/oculus/vrshell/panels/PanelButton;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/oculus/vrshell/panels/PanelButton;->TOUCH:Lcom/oculus/vrshell/panels/PanelButton;

    .line 15
    new-instance v0, Lcom/oculus/vrshell/panels/PanelButton;

    const/4 v8, 0x7

    const-string v9, "REMOTE_TOUCH"

    const-wide v10, 0x80000000L

    invoke-direct {v0, v9, v8, v10, v11}, Lcom/oculus/vrshell/panels/PanelButton;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/oculus/vrshell/panels/PanelButton;->REMOTE_TOUCH:Lcom/oculus/vrshell/panels/PanelButton;

    .line 16
    new-instance v0, Lcom/oculus/vrshell/panels/PanelButton;

    const/16 v9, 0x8

    const-string v10, "REMOTE_CLICK"

    const-wide v11, 0x200000000L

    invoke-direct {v0, v10, v9, v11, v12}, Lcom/oculus/vrshell/panels/PanelButton;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/oculus/vrshell/panels/PanelButton;->REMOTE_CLICK:Lcom/oculus/vrshell/panels/PanelButton;

    .line 17
    new-instance v0, Lcom/oculus/vrshell/panels/PanelButton;

    const/16 v10, 0x9

    const-string v11, "REMOTE_TRIGGER"

    const-wide v12, 0x400000000L

    invoke-direct {v0, v11, v10, v12, v13}, Lcom/oculus/vrshell/panels/PanelButton;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/oculus/vrshell/panels/PanelButton;->REMOTE_TRIGGER:Lcom/oculus/vrshell/panels/PanelButton;

    .line 19
    new-instance v0, Lcom/oculus/vrshell/panels/PanelButton;

    const/16 v11, 0xa

    const-string v12, "HOME"

    const-wide v13, 0x800000000L

    invoke-direct {v0, v12, v11, v13, v14}, Lcom/oculus/vrshell/panels/PanelButton;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/oculus/vrshell/panels/PanelButton;->HOME:Lcom/oculus/vrshell/panels/PanelButton;

    .line 21
    new-instance v0, Lcom/oculus/vrshell/panels/PanelButton;

    const/16 v12, 0xb

    const-string v13, "JOYSTICK_MOVE"

    const-wide v14, 0x1000000000L

    invoke-direct {v0, v13, v12, v14, v15}, Lcom/oculus/vrshell/panels/PanelButton;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/oculus/vrshell/panels/PanelButton;->JOYSTICK_MOVE:Lcom/oculus/vrshell/panels/PanelButton;

    const/16 v0, 0xc

    .line 5
    new-array v0, v0, [Lcom/oculus/vrshell/panels/PanelButton;

    sget-object v13, Lcom/oculus/vrshell/panels/PanelButton;->A:Lcom/oculus/vrshell/panels/PanelButton;

    aput-object v13, v0, v1

    sget-object v1, Lcom/oculus/vrshell/panels/PanelButton;->B:Lcom/oculus/vrshell/panels/PanelButton;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/vrshell/panels/PanelButton;->X:Lcom/oculus/vrshell/panels/PanelButton;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/vrshell/panels/PanelButton;->Y:Lcom/oculus/vrshell/panels/PanelButton;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/vrshell/panels/PanelButton;->BACK:Lcom/oculus/vrshell/panels/PanelButton;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/vrshell/panels/PanelButton;->RIGHT_TRIGGER:Lcom/oculus/vrshell/panels/PanelButton;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/vrshell/panels/PanelButton;->TOUCH:Lcom/oculus/vrshell/panels/PanelButton;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oculus/vrshell/panels/PanelButton;->REMOTE_TOUCH:Lcom/oculus/vrshell/panels/PanelButton;

    aput-object v1, v0, v8

    sget-object v1, Lcom/oculus/vrshell/panels/PanelButton;->REMOTE_CLICK:Lcom/oculus/vrshell/panels/PanelButton;

    aput-object v1, v0, v9

    sget-object v1, Lcom/oculus/vrshell/panels/PanelButton;->REMOTE_TRIGGER:Lcom/oculus/vrshell/panels/PanelButton;

    aput-object v1, v0, v10

    sget-object v1, Lcom/oculus/vrshell/panels/PanelButton;->HOME:Lcom/oculus/vrshell/panels/PanelButton;

    aput-object v1, v0, v11

    sget-object v1, Lcom/oculus/vrshell/panels/PanelButton;->JOYSTICK_MOVE:Lcom/oculus/vrshell/panels/PanelButton;

    aput-object v1, v0, v12

    sput-object v0, Lcom/oculus/vrshell/panels/PanelButton;->$VALUES:[Lcom/oculus/vrshell/panels/PanelButton;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-wide p3, p0, Lcom/oculus/vrshell/panels/PanelButton;->flagValue:J

    return-void
.end method

.method public static getAnyActionFlagValue()J
    .locals 4

    .line 34
    sget-object v0, Lcom/oculus/vrshell/panels/PanelButton;->TOUCH:Lcom/oculus/vrshell/panels/PanelButton;

    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/PanelButton;->getFlagValue()J

    move-result-wide v0

    invoke-static {}, Lcom/oculus/vrshell/panels/PanelButton;->getClickOrTriggerFlagValue()J

    move-result-wide v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static getAnyBackFlagValue()J
    .locals 4

    .line 38
    sget-object v0, Lcom/oculus/vrshell/panels/PanelButton;->BACK:Lcom/oculus/vrshell/panels/PanelButton;

    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/PanelButton;->getFlagValue()J

    move-result-wide v0

    sget-object v2, Lcom/oculus/vrshell/panels/PanelButton;->B:Lcom/oculus/vrshell/panels/PanelButton;

    .line 39
    invoke-virtual {v2}, Lcom/oculus/vrshell/panels/PanelButton;->getFlagValue()J

    move-result-wide v2

    or-long/2addr v0, v2

    sget-object v2, Lcom/oculus/vrshell/panels/PanelButton;->Y:Lcom/oculus/vrshell/panels/PanelButton;

    .line 40
    invoke-virtual {v2}, Lcom/oculus/vrshell/panels/PanelButton;->getFlagValue()J

    move-result-wide v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static getClickOrTriggerFlagValue()J
    .locals 4

    .line 45
    sget-object v0, Lcom/oculus/vrshell/panels/PanelButton;->REMOTE_TRIGGER:Lcom/oculus/vrshell/panels/PanelButton;

    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/PanelButton;->getFlagValue()J

    move-result-wide v0

    sget-object v2, Lcom/oculus/vrshell/panels/PanelButton;->RIGHT_TRIGGER:Lcom/oculus/vrshell/panels/PanelButton;

    .line 46
    invoke-virtual {v2}, Lcom/oculus/vrshell/panels/PanelButton;->getFlagValue()J

    move-result-wide v2

    or-long/2addr v0, v2

    sget-object v2, Lcom/oculus/vrshell/panels/PanelButton;->REMOTE_CLICK:Lcom/oculus/vrshell/panels/PanelButton;

    .line 47
    invoke-virtual {v2}, Lcom/oculus/vrshell/panels/PanelButton;->getFlagValue()J

    move-result-wide v2

    or-long/2addr v0, v2

    sget-object v2, Lcom/oculus/vrshell/panels/PanelButton;->A:Lcom/oculus/vrshell/panels/PanelButton;

    .line 48
    invoke-virtual {v2}, Lcom/oculus/vrshell/panels/PanelButton;->getFlagValue()J

    move-result-wide v2

    or-long/2addr v0, v2

    sget-object v2, Lcom/oculus/vrshell/panels/PanelButton;->X:Lcom/oculus/vrshell/panels/PanelButton;

    .line 49
    invoke-virtual {v2}, Lcom/oculus/vrshell/panels/PanelButton;->getFlagValue()J

    move-result-wide v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/vrshell/panels/PanelButton;
    .locals 1

    .line 5
    const-class v0, Lcom/oculus/vrshell/panels/PanelButton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/vrshell/panels/PanelButton;

    return-object p0
.end method

.method public static values()[Lcom/oculus/vrshell/panels/PanelButton;
    .locals 1

    .line 5
    sget-object v0, Lcom/oculus/vrshell/panels/PanelButton;->$VALUES:[Lcom/oculus/vrshell/panels/PanelButton;

    invoke-virtual {v0}, [Lcom/oculus/vrshell/panels/PanelButton;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/vrshell/panels/PanelButton;

    return-object v0
.end method


# virtual methods
.method public getFlagValue()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/oculus/vrshell/panels/PanelButton;->flagValue:J

    return-wide v0
.end method
