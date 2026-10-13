.class public final enum Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;
.super Ljava/lang/Enum;
.source "GuardianHandDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DialogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;

.field public static final enum INVALID_DIALOG:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;

.field public static final enum LEFT_HAND_LOCATOR:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;

.field public static final enum NUM_DIALOG_RESERVED_SLOTS:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;

.field public static final enum RIGHT_HAND_LOCATOR:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;


# instance fields
.field private final val:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 23
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;

    const/4 v1, 0x0

    const-string v2, "INVALID_DIALOG"

    const/4 v3, -0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;->INVALID_DIALOG:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;

    .line 24
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;

    const/4 v2, 0x1

    const-string v3, "RIGHT_HAND_LOCATOR"

    invoke-direct {v0, v3, v2, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;->RIGHT_HAND_LOCATOR:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;

    .line 25
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;

    const/4 v3, 0x2

    const-string v4, "LEFT_HAND_LOCATOR"

    invoke-direct {v0, v4, v3, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;->LEFT_HAND_LOCATOR:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;

    .line 27
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;

    const/4 v4, 0x3

    const-string v5, "NUM_DIALOG_RESERVED_SLOTS"

    invoke-direct {v0, v5, v4, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;->NUM_DIALOG_RESERVED_SLOTS:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;

    const/4 v0, 0x4

    .line 22
    new-array v0, v0, [Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;

    sget-object v5, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;->INVALID_DIALOG:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;->RIGHT_HAND_LOCATOR:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;->LEFT_HAND_LOCATOR:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;->NUM_DIALOG_RESERVED_SLOTS:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;->$VALUES:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput p3, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;->val:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;
    .locals 1

    .line 22
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;

    return-object p0
.end method

.method public static values()[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;
    .locals 1

    .line 22
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;->$VALUES:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;

    invoke-virtual {v0}, [Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;->val:I

    return v0
.end method
