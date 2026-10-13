.class public final Lcom/oculus/modules/DialogsModuleImpl;
.super Lcom/oculus/modules/codegen/DialogsModule;
.source "DialogsModuleImpl.java"


# static fields
.field private static final DIALOG_ACTION_KEY:Ljava/lang/String; = "action"

.field private static final DIALOG_ID_KEY:Ljava/lang/String; = "dialogId"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/oculus/modules/DialogsModuleImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/DialogsModuleImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/oculus/modules/codegen/DialogsModule;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/oculus/modules/DialogsModuleImpl;->mContext:Landroid/content/Context;

    .line 22
    invoke-direct {p0}, Lcom/oculus/modules/DialogsModuleImpl;->registerIPCListener()V

    .line 23
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/oculus/modules/DialogsModuleImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/modules/DialogsModuleImpl;Lcom/oculus/modules/codegen/DialogsModule$DialogResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/oculus/modules/DialogsModuleImpl;
    .param p1, "x1"    # Lcom/oculus/modules/codegen/DialogsModule$DialogResult;

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/oculus/modules/DialogsModuleImpl;->emitOnDialogResult(Lcom/oculus/modules/codegen/DialogsModule$DialogResult;)V

    return-void
.end method

.method private registerIPCListener()V
    .locals 2

    .prologue
    .line 47
    const-string v0, "systemDialogResult "

    .line 51
    .local v0, "commandPrefix":Ljava/lang/String;
    new-instance v1, Lcom/oculus/modules/DialogsModuleImpl$1;

    invoke-direct {v1, p0}, Lcom/oculus/modules/DialogsModuleImpl$1;-><init>(Lcom/oculus/modules/DialogsModuleImpl;)V

    invoke-static {v1}, Lcom/oculus/panellib/ShellIPC;->registerOneShotListener(Lcom/oculus/panellib/ShellIPC$Listener;)V

    .line 71
    return-void
.end method


# virtual methods
.method protected hideDialogImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 3
    .param p1, "dialogId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    sget-object v0, Lcom/oculus/modules/DialogsModuleImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::hideDialogImpl("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {}, Lcom/oculus/panellib/ShellIPC;->dialogHide()V

    .line 36
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method protected showDialogImpl(Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 2
    .param p1, "config"    # Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    sget-object v0, Lcom/oculus/modules/DialogsModuleImpl;->TAG:Ljava/lang/String;

    const-string v1, "::showDialogImpl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {p1}, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->convertToJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/panellib/ShellIPC;->dialogShow(Lorg/json/JSONObject;)V

    .line 29
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 30
    return-void
.end method
