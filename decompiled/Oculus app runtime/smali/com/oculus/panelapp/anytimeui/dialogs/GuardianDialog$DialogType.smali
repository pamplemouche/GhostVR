.class public final enum Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;
.super Ljava/lang/Enum;
.source "GuardianDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DialogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

.field public static final enum BOUNDARY_COMPLETE:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

.field public static final enum BOUNDARY_COMPLETE_NOT_OPTIMAL:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

.field public static final enum BOUNDARY_CONFIRM:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

.field public static final enum BOUNDARY_SETUP_FAILED:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

.field public static final enum CONFIRM_FLOOR:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

.field public static final enum DRAW_BOUNDARY:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

.field public static final enum GUARDIAN_WELCOME:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

.field public static final enum INVALID_DIALOG:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

.field public static final enum LEFT_BOUNDS:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

.field public static final enum LEFT_BOUNDS_IN_BLACK:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

.field public static final enum LEFT_BOUNDS_STATIONARY:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

.field public static final enum MAP_FOUND:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

.field public static final enum MAP_RELOC:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

.field public static final enum MAP_SETUP:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

.field public static final enum NUM_DIALOG_RESERVED_SLOTS:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

.field public static final enum PT_WARNING:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

.field public static final enum PT_WARNING_SETUP:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

.field public static final enum SET_FORWARD:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

.field public static final enum SIZE_NOT_OPTIMAL:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

.field public static final enum STATIONARY_COMPLETE:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

.field public static final enum SURVEY:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

.field public static final enum TRACKING_BAD_TEXTURE:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

.field public static final enum TRACKING_BAD_TEXTURE_CONTINUE:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

.field public static final enum TRACKING_BAD_TEXTURE_QUIT:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

.field public static final enum TRACKING_LOST:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

.field public static final enum TRACKING_LOST_CONTINUE:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

.field public static final enum TRACKING_LOST_QUIT:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

.field public static final enum TRACKING_TOO_BRIGHT:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

.field public static final enum TRACKING_TOO_BRIGHT_CONTINUE:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

.field public static final enum TRACKING_TOO_BRIGHT_QUIT:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

.field public static final enum TRACKING_TOO_DARK:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

.field public static final enum TRACKING_TOO_DARK_CONTINUE:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

.field public static final enum TRACKING_TOO_DARK_QUIT:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;


# instance fields
.field private final val:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 56
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const/4 v1, 0x0

    const-string v2, "INVALID_DIALOG"

    const/4 v3, -0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->INVALID_DIALOG:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    .line 57
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const/4 v2, 0x1

    const-string v3, "GUARDIAN_WELCOME"

    invoke-direct {v0, v3, v2, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->GUARDIAN_WELCOME:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    .line 58
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const/4 v3, 0x2

    const-string v4, "CONFIRM_FLOOR"

    invoke-direct {v0, v4, v3, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->CONFIRM_FLOOR:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    .line 59
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const/4 v4, 0x3

    const-string v5, "DRAW_BOUNDARY"

    invoke-direct {v0, v5, v4, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->DRAW_BOUNDARY:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    .line 60
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const/4 v5, 0x4

    const-string v6, "BOUNDARY_SETUP_FAILED"

    invoke-direct {v0, v6, v5, v4}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->BOUNDARY_SETUP_FAILED:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    .line 61
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const/4 v6, 0x5

    const-string v7, "SIZE_NOT_OPTIMAL"

    invoke-direct {v0, v7, v6, v5}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->SIZE_NOT_OPTIMAL:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    .line 62
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const/4 v7, 0x6

    const-string v8, "BOUNDARY_CONFIRM"

    invoke-direct {v0, v8, v7, v6}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->BOUNDARY_CONFIRM:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    .line 63
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const/4 v8, 0x7

    const-string v9, "SET_FORWARD"

    invoke-direct {v0, v9, v8, v7}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->SET_FORWARD:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    .line 64
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const/16 v9, 0x8

    const-string v10, "BOUNDARY_COMPLETE"

    invoke-direct {v0, v10, v9, v8}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->BOUNDARY_COMPLETE:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    .line 65
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const/16 v10, 0x9

    const-string v11, "STATIONARY_COMPLETE"

    invoke-direct {v0, v11, v10, v9}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->STATIONARY_COMPLETE:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    .line 66
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const/16 v11, 0xa

    const-string v12, "BOUNDARY_COMPLETE_NOT_OPTIMAL"

    invoke-direct {v0, v12, v11, v10}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->BOUNDARY_COMPLETE_NOT_OPTIMAL:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    .line 68
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const/16 v12, 0xb

    const-string v13, "LEFT_BOUNDS"

    invoke-direct {v0, v13, v12, v11}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->LEFT_BOUNDS:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    .line 69
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const/16 v13, 0xc

    const-string v14, "LEFT_BOUNDS_STATIONARY"

    invoke-direct {v0, v14, v13, v12}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->LEFT_BOUNDS_STATIONARY:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    .line 70
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const/16 v14, 0xd

    const-string v15, "LEFT_BOUNDS_IN_BLACK"

    invoke-direct {v0, v15, v14, v13}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->LEFT_BOUNDS_IN_BLACK:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    .line 72
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const/16 v15, 0xe

    const-string v13, "MAP_FOUND"

    invoke-direct {v0, v13, v15, v14}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->MAP_FOUND:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    .line 73
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const-string v13, "MAP_RELOC"

    const/16 v14, 0xf

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->MAP_RELOC:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    .line 74
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const-string v13, "MAP_SETUP"

    const/16 v14, 0x10

    const/16 v15, 0xf

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->MAP_SETUP:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    .line 76
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const-string v13, "TRACKING_LOST"

    const/16 v14, 0x11

    const/16 v15, 0x11

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->TRACKING_LOST:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    .line 77
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const-string v13, "TRACKING_TOO_BRIGHT"

    const/16 v14, 0x12

    const/16 v15, 0x12

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->TRACKING_TOO_BRIGHT:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    .line 78
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const-string v13, "TRACKING_TOO_DARK"

    const/16 v14, 0x13

    const/16 v15, 0x13

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->TRACKING_TOO_DARK:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    .line 79
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const-string v13, "TRACKING_BAD_TEXTURE"

    const/16 v14, 0x14

    const/16 v15, 0x14

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->TRACKING_BAD_TEXTURE:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    .line 80
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const-string v13, "TRACKING_LOST_CONTINUE"

    const/16 v14, 0x15

    const/16 v15, 0x15

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->TRACKING_LOST_CONTINUE:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    .line 81
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const-string v13, "TRACKING_TOO_BRIGHT_CONTINUE"

    const/16 v14, 0x16

    const/16 v15, 0x16

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->TRACKING_TOO_BRIGHT_CONTINUE:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    .line 82
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const-string v13, "TRACKING_TOO_DARK_CONTINUE"

    const/16 v14, 0x17

    const/16 v15, 0x17

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->TRACKING_TOO_DARK_CONTINUE:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    .line 83
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const-string v13, "TRACKING_BAD_TEXTURE_CONTINUE"

    const/16 v14, 0x18

    const/16 v15, 0x18

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->TRACKING_BAD_TEXTURE_CONTINUE:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    .line 84
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const-string v13, "TRACKING_LOST_QUIT"

    const/16 v14, 0x19

    const/16 v15, 0x19

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->TRACKING_LOST_QUIT:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    .line 85
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const-string v13, "TRACKING_TOO_BRIGHT_QUIT"

    const/16 v14, 0x1a

    const/16 v15, 0x1a

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->TRACKING_TOO_BRIGHT_QUIT:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    .line 86
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const-string v13, "TRACKING_TOO_DARK_QUIT"

    const/16 v14, 0x1b

    const/16 v15, 0x1b

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->TRACKING_TOO_DARK_QUIT:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    .line 87
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const-string v13, "TRACKING_BAD_TEXTURE_QUIT"

    const/16 v14, 0x1c

    const/16 v15, 0x1c

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->TRACKING_BAD_TEXTURE_QUIT:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    .line 89
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const-string v13, "PT_WARNING"

    const/16 v14, 0x1d

    const/16 v15, 0x1e

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->PT_WARNING:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    .line 90
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const-string v13, "PT_WARNING_SETUP"

    const/16 v14, 0x1e

    const/16 v15, 0x1f

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->PT_WARNING_SETUP:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    .line 92
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const-string v13, "SURVEY"

    const/16 v14, 0x1f

    const/16 v15, 0x20

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->SURVEY:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    .line 94
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const-string v13, "NUM_DIALOG_RESERVED_SLOTS"

    const/16 v14, 0x20

    const/16 v15, 0x21

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->NUM_DIALOG_RESERVED_SLOTS:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const/16 v0, 0x21

    .line 55
    new-array v0, v0, [Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    sget-object v13, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->INVALID_DIALOG:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    aput-object v13, v0, v1

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->GUARDIAN_WELCOME:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->CONFIRM_FLOOR:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->DRAW_BOUNDARY:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->BOUNDARY_SETUP_FAILED:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->SIZE_NOT_OPTIMAL:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->BOUNDARY_CONFIRM:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->SET_FORWARD:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->BOUNDARY_COMPLETE:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->STATIONARY_COMPLETE:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->BOUNDARY_COMPLETE_NOT_OPTIMAL:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->LEFT_BOUNDS:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->LEFT_BOUNDS_STATIONARY:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->LEFT_BOUNDS_IN_BLACK:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->MAP_FOUND:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->MAP_RELOC:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->MAP_SETUP:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->TRACKING_LOST:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->TRACKING_TOO_BRIGHT:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->TRACKING_TOO_DARK:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->TRACKING_BAD_TEXTURE:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->TRACKING_LOST_CONTINUE:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->TRACKING_TOO_BRIGHT_CONTINUE:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->TRACKING_TOO_DARK_CONTINUE:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->TRACKING_BAD_TEXTURE_CONTINUE:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->TRACKING_LOST_QUIT:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->TRACKING_TOO_BRIGHT_QUIT:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->TRACKING_TOO_DARK_QUIT:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->TRACKING_BAD_TEXTURE_QUIT:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->PT_WARNING:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->PT_WARNING_SETUP:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->SURVEY:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->NUM_DIALOG_RESERVED_SLOTS:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->$VALUES:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 99
    iput p3, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->val:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;
    .locals 1

    .line 55
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    return-object p0
.end method

.method public static values()[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;
    .locals 1

    .line 55
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->$VALUES:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    invoke-virtual {v0}, [Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->val:I

    return v0
.end method
