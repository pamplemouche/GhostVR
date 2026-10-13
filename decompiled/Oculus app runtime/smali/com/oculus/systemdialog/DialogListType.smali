.class public final enum Lcom/oculus/systemdialog/DialogListType;
.super Ljava/lang/Enum;
.source "DialogListType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/systemdialog/DialogListType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/systemdialog/DialogListType;

.field public static final enum MULTI_SELECT:Lcom/oculus/systemdialog/DialogListType;

.field public static final enum NO_SELECT:Lcom/oculus/systemdialog/DialogListType;

.field public static final enum SINGLE_SELECT:Lcom/oculus/systemdialog/DialogListType;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mIPCString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 10
    new-instance v0, Lcom/oculus/systemdialog/DialogListType;

    const/4 v1, 0x0

    const-string v2, "NO_SELECT"

    const-string v3, "noSelect"

    invoke-direct {v0, v2, v1, v3}, Lcom/oculus/systemdialog/DialogListType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/systemdialog/DialogListType;->NO_SELECT:Lcom/oculus/systemdialog/DialogListType;

    .line 11
    new-instance v0, Lcom/oculus/systemdialog/DialogListType;

    const/4 v2, 0x1

    const-string v3, "SINGLE_SELECT"

    const-string v4, "singleSelect"

    invoke-direct {v0, v3, v2, v4}, Lcom/oculus/systemdialog/DialogListType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/systemdialog/DialogListType;->SINGLE_SELECT:Lcom/oculus/systemdialog/DialogListType;

    .line 12
    new-instance v0, Lcom/oculus/systemdialog/DialogListType;

    const/4 v3, 0x2

    const-string v4, "MULTI_SELECT"

    const-string v5, "multiSelect"

    invoke-direct {v0, v4, v3, v5}, Lcom/oculus/systemdialog/DialogListType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/systemdialog/DialogListType;->MULTI_SELECT:Lcom/oculus/systemdialog/DialogListType;

    const/4 v0, 0x3

    .line 9
    new-array v0, v0, [Lcom/oculus/systemdialog/DialogListType;

    sget-object v4, Lcom/oculus/systemdialog/DialogListType;->NO_SELECT:Lcom/oculus/systemdialog/DialogListType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/oculus/systemdialog/DialogListType;->SINGLE_SELECT:Lcom/oculus/systemdialog/DialogListType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/systemdialog/DialogListType;->MULTI_SELECT:Lcom/oculus/systemdialog/DialogListType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oculus/systemdialog/DialogListType;->$VALUES:[Lcom/oculus/systemdialog/DialogListType;

    .line 14
    const-class v0, Lcom/oculus/systemdialog/DialogListType;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/systemdialog/DialogListType;->TAG:Ljava/lang/String;

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
    iput-object p3, p0, Lcom/oculus/systemdialog/DialogListType;->mIPCString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/systemdialog/DialogListType;
    .locals 1

    .line 9
    const-class v0, Lcom/oculus/systemdialog/DialogListType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/systemdialog/DialogListType;

    return-object p0
.end method

.method public static values()[Lcom/oculus/systemdialog/DialogListType;
    .locals 1

    .line 9
    sget-object v0, Lcom/oculus/systemdialog/DialogListType;->$VALUES:[Lcom/oculus/systemdialog/DialogListType;

    invoke-virtual {v0}, [Lcom/oculus/systemdialog/DialogListType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/systemdialog/DialogListType;

    return-object v0
.end method


# virtual methods
.method public getIPCString()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/oculus/systemdialog/DialogListType;->mIPCString:Ljava/lang/String;

    return-object v0
.end method
