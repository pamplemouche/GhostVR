.class Lcom/oculus/vrshell/home/module/AccountLinkingModule$7;
.super Ljava/lang/Object;
.source "AccountLinkingModule.java"

# interfaces
.implements Lcom/oculus/authapi/OVRAuth$CallerInfoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/home/module/AccountLinkingModule;->ensureOVRAuth()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/home/module/AccountLinkingModule;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/home/module/AccountLinkingModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/vrshell/home/module/AccountLinkingModule;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$7;->this$0:Lcom/oculus/vrshell/home/module/AccountLinkingModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attachCallerInfo(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$7;->this$0:Lcom/oculus/vrshell/home/module/AccountLinkingModule;

    invoke-static {v1}, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->access$100(Lcom/oculus/vrshell/home/module/AccountLinkingModule;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/oculus/secure/trustedapp/CallerInfoHelper;->attachCallerInfo(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 249
    .end local p1    # "intent":Landroid/content/Intent;
    :goto_0
    return-object p1

    .line 246
    .restart local p1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception while calling ovrauth"

    invoke-static {v1, v2, v0}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
