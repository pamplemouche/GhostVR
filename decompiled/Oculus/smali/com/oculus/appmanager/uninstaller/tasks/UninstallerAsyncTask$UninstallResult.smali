.class final enum Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$UninstallResult;
.super Ljava/lang/Enum;
.source "UninstallerAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "UninstallResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$UninstallResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$UninstallResult;

.field public static final enum UNINSTALL_FAILED:Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$UninstallResult;

.field public static final enum UNINSTALL_PENDING:Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$UninstallResult;

.field public static final enum UNINSTALL_SUCCESS:Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$UninstallResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v0, Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$UninstallResult;

    const-string v1, "UNINSTALL_SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$UninstallResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$UninstallResult;->UNINSTALL_SUCCESS:Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$UninstallResult;

    .line 56
    new-instance v0, Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$UninstallResult;

    const-string v1, "UNINSTALL_FAILED"

    invoke-direct {v0, v1, v3}, Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$UninstallResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$UninstallResult;->UNINSTALL_FAILED:Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$UninstallResult;

    .line 57
    new-instance v0, Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$UninstallResult;

    const-string v1, "UNINSTALL_PENDING"

    invoke-direct {v0, v1, v4}, Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$UninstallResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$UninstallResult;->UNINSTALL_PENDING:Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$UninstallResult;

    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$UninstallResult;

    sget-object v1, Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$UninstallResult;->UNINSTALL_SUCCESS:Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$UninstallResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$UninstallResult;->UNINSTALL_FAILED:Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$UninstallResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$UninstallResult;->UNINSTALL_PENDING:Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$UninstallResult;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$UninstallResult;->$VALUES:[Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$UninstallResult;

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
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$UninstallResult;
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$UninstallResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$UninstallResult;

    return-object v0
.end method

.method public static values()[Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$UninstallResult;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$UninstallResult;->$VALUES:[Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$UninstallResult;

    invoke-virtual {v0}, [Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$UninstallResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask$UninstallResult;

    return-object v0
.end method
