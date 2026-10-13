.class Lcom/oculus/modules/OSUpdaterModuleImpl$OtaUpdateProgressCallback;
.super Ljava/lang/Object;
.source "OSUpdaterModuleImpl.java"

# interfaces
.implements Lcom/oculus/osupdaterapi/OsUpdater$OtaUpdateProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/OSUpdaterModuleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OtaUpdateProgressCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/modules/OSUpdaterModuleImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oculus/modules/OSUpdaterModuleImpl$1;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/oculus/modules/OSUpdaterModuleImpl$OtaUpdateProgressCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 6

    .prologue
    .line 72
    invoke-static {}, Lcom/oculus/modules/OSUpdaterModuleImpl;->access$200()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/oculus/toast/ToastAPI$Duration;->DEFAULT:Lcom/oculus/toast/ToastAPI$Duration;

    sget-object v2, Lcom/oculus/toast/ToastAPI$Icon;->GEAR:Lcom/oculus/toast/ToastAPI$Icon;

    const/4 v3, 0x0

    .line 76
    invoke-static {}, Lcom/oculus/modules/OSUpdaterModuleImpl;->access$200()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f050002

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 71
    invoke-static {v0, v1, v2, v3, v4}, Lcom/oculus/toast/ToastAPI;->createToast(Landroid/content/Context;Lcom/oculus/toast/ToastAPI$Duration;Lcom/oculus/toast/ToastAPI$Icon;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 6
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-static {}, Lcom/oculus/modules/OSUpdaterModuleImpl;->access$200()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/oculus/toast/ToastAPI$Duration;->DEFAULT:Lcom/oculus/toast/ToastAPI$Duration;

    sget-object v2, Lcom/oculus/toast/ToastAPI$Icon;->GEAR:Lcom/oculus/toast/ToastAPI$Icon;

    const/4 v3, 0x0

    .line 66
    invoke-static {}, Lcom/oculus/modules/OSUpdaterModuleImpl;->access$200()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f050003

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 61
    invoke-static {v0, v1, v2, v3, v4}, Lcom/oculus/toast/ToastAPI;->createToast(Landroid/content/Context;Lcom/oculus/toast/ToastAPI$Duration;Lcom/oculus/toast/ToastAPI$Icon;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public onProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 57
    return-void
.end method
