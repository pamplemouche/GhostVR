.class public abstract Lcom/oculus/systemdialog/DialogDefinitionBase;
.super Ljava/lang/Object;
.source "DialogDefinitionBase.java"


# static fields
.field public static final DIALOG_ID_KEY:Ljava/lang/String; = "dialogId"

.field public static final DIALOG_TYPE_COMMON_VALUE:Ljava/lang/String; = "common"

.field public static final DIALOG_TYPE_CUSTOM_VALUE:Ljava/lang/String; = "custom"

.field public static final DIALOG_TYPE_KEY:Ljava/lang/String; = "type"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final mDialogId:Ljava/lang/String;

.field private mDialogResultHandler:Lcom/oculus/systemdialog/DialogResultHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/oculus/systemdialog/DialogDefinitionBase;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/systemdialog/DialogDefinitionBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/oculus/systemdialog/DialogDefinitionBase;->mDialogId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getDialogConfigurationIPCParcel()Ljava/lang/String;
.end method

.method public handleDialogResult(Lcom/oculus/systemdialog/DialogResult;)Z
    .locals 6
    .param p1    # Lcom/oculus/systemdialog/DialogResult;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 46
    sget-object p1, Lcom/oculus/systemdialog/DialogDefinitionBase;->TAG:Ljava/lang/String;

    const-string v1, "Unable to handle null dialog result."

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/oculus/systemdialog/DialogResult;->getDialogId()Ljava/lang/String;

    move-result-object v1

    .line 54
    iget-object v2, p0, Lcom/oculus/systemdialog/DialogDefinitionBase;->mDialogId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 55
    sget-object v2, Lcom/oculus/systemdialog/DialogDefinitionBase;->TAG:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/oculus/systemdialog/DialogDefinitionBase;->mDialogId:Ljava/lang/String;

    aput-object v5, v4, v0

    aput-object v1, v4, v3

    const/4 v1, 0x2

    .line 60
    invoke-virtual {p1}, Lcom/oculus/systemdialog/DialogResult;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    const-string p1, "Expected dialog ID \"%s\" but found \"%s\" instead. Unable to handle dialog result: %s."

    .line 57
    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/oculus/systemdialog/DialogDefinitionBase;->mDialogResultHandler:Lcom/oculus/systemdialog/DialogResultHandler;

    if-nez v1, :cond_2

    .line 68
    sget-object v1, Lcom/oculus/systemdialog/DialogDefinitionBase;->TAG:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    .line 72
    invoke-virtual {p1}, Lcom/oculus/systemdialog/DialogResult;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "Dialog result handler not specified for dialog result: %s."

    .line 70
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 76
    :cond_2
    invoke-interface {v1, p1}, Lcom/oculus/systemdialog/DialogResultHandler;->handleDialogResult(Lcom/oculus/systemdialog/DialogResult;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 77
    sget-object v1, Lcom/oculus/systemdialog/DialogDefinitionBase;->TAG:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    .line 81
    invoke-virtual {p1}, Lcom/oculus/systemdialog/DialogResult;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "The current dialog result handler does not handle dialog result: %s."

    .line 79
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    return v3
.end method

.method public setDialogResultHandler(Lcom/oculus/systemdialog/DialogResultHandler;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/oculus/systemdialog/DialogDefinitionBase;->mDialogResultHandler:Lcom/oculus/systemdialog/DialogResultHandler;

    return-void
.end method
