.class Lcom/oculus/modules/DialogsModuleImpl$1;
.super Ljava/lang/Object;
.source "DialogsModuleImpl.java"

# interfaces
.implements Lcom/oculus/panellib/ShellIPC$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/modules/DialogsModuleImpl;->registerIPCListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/modules/DialogsModuleImpl;


# direct methods
.method constructor <init>(Lcom/oculus/modules/DialogsModuleImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/modules/DialogsModuleImpl;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/oculus/modules/DialogsModuleImpl$1;->this$0:Lcom/oculus/modules/DialogsModuleImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public listen(Ljava/lang/String;)Z
    .locals 6
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 54
    const-string v3, "systemDialogResult "

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    invoke-static {}, Lcom/oculus/modules/DialogsModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::showDialogImpl::listener("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v3, "systemDialogResult "

    .line 59
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 60
    .local v1, "dialogResultJson":Lorg/json/JSONObject;
    new-instance v0, Lcom/oculus/modules/codegen/DialogsModule$DialogResult;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/DialogsModule$DialogResult;-><init>()V

    .line 61
    .local v0, "dialogResult":Lcom/oculus/modules/codegen/DialogsModule$DialogResult;
    const-string v3, "action"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/oculus/modules/codegen/DialogsModule$DialogResult;->action:Ljava/lang/String;

    .line 62
    const-string v3, "dialogId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/oculus/modules/codegen/DialogsModule$DialogResult;->dialogId:Ljava/lang/String;

    .line 63
    iget-object v3, p0, Lcom/oculus/modules/DialogsModuleImpl$1;->this$0:Lcom/oculus/modules/DialogsModuleImpl;

    invoke-static {v3, v0}, Lcom/oculus/modules/DialogsModuleImpl;->access$100(Lcom/oculus/modules/DialogsModuleImpl;Lcom/oculus/modules/codegen/DialogsModule$DialogResult;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v0    # "dialogResult":Lcom/oculus/modules/codegen/DialogsModule$DialogResult;
    .end local v1    # "dialogResultJson":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 64
    :catch_0
    move-exception v2

    .line 65
    .local v2, "jsonException":Lorg/json/JSONException;
    invoke-static {}, Lcom/oculus/modules/DialogsModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse dialog result command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
