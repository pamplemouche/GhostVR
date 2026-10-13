.class public final enum Lcom/oculus/systemdialog/CommonSystemDialog;
.super Ljava/lang/Enum;
.source "CommonSystemDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/systemdialog/CommonSystemDialog;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/systemdialog/CommonSystemDialog;

.field public static final enum GUARDIAN_ADJUST:Lcom/oculus/systemdialog/CommonSystemDialog;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDialogId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 15
    new-instance v0, Lcom/oculus/systemdialog/CommonSystemDialog;

    const/4 v1, 0x0

    const-string v2, "GUARDIAN_ADJUST"

    const-string v3, "common_system_dialog_guardian_adjust"

    invoke-direct {v0, v2, v1, v3}, Lcom/oculus/systemdialog/CommonSystemDialog;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/systemdialog/CommonSystemDialog;->GUARDIAN_ADJUST:Lcom/oculus/systemdialog/CommonSystemDialog;

    const/4 v0, 0x1

    .line 8
    new-array v0, v0, [Lcom/oculus/systemdialog/CommonSystemDialog;

    sget-object v2, Lcom/oculus/systemdialog/CommonSystemDialog;->GUARDIAN_ADJUST:Lcom/oculus/systemdialog/CommonSystemDialog;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/systemdialog/CommonSystemDialog;->$VALUES:[Lcom/oculus/systemdialog/CommonSystemDialog;

    .line 17
    const-class v0, Lcom/oculus/systemdialog/CommonSystemDialog;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/systemdialog/CommonSystemDialog;->TAG:Ljava/lang/String;

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

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/oculus/systemdialog/CommonSystemDialog;->mDialogId:Ljava/lang/String;

    return-void
.end method

.method public static getCommonSystemDialog(Ljava/lang/String;)Lcom/oculus/systemdialog/CommonSystemDialog;
    .locals 6

    .line 28
    invoke-static {}, Lcom/oculus/systemdialog/CommonSystemDialog;->values()[Lcom/oculus/systemdialog/CommonSystemDialog;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 29
    invoke-virtual {v4}, Lcom/oculus/systemdialog/CommonSystemDialog;->getDialogId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 34
    :cond_1
    sget-object v0, Lcom/oculus/systemdialog/CommonSystemDialog;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    const-string p0, "Unexpected common system dialog ID \"%s\"."

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/systemdialog/CommonSystemDialog;
    .locals 1

    .line 8
    const-class v0, Lcom/oculus/systemdialog/CommonSystemDialog;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/systemdialog/CommonSystemDialog;

    return-object p0
.end method

.method public static values()[Lcom/oculus/systemdialog/CommonSystemDialog;
    .locals 1

    .line 8
    sget-object v0, Lcom/oculus/systemdialog/CommonSystemDialog;->$VALUES:[Lcom/oculus/systemdialog/CommonSystemDialog;

    invoke-virtual {v0}, [Lcom/oculus/systemdialog/CommonSystemDialog;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/systemdialog/CommonSystemDialog;

    return-object v0
.end method


# virtual methods
.method public getDialogId()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/oculus/systemdialog/CommonSystemDialog;->mDialogId:Ljava/lang/String;

    return-object v0
.end method
