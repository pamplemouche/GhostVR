.class public Lcom/oculus/vrshell/home/PaymentFlowProvider;
.super Ljava/lang/Object;
.source "PaymentFlowProvider.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/oculus/vrshell/home/PaymentFlowProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/PaymentFlowProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static returnIAPResult(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p0, "success"    # Z
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "componentNameFlatten"    # Ljava/lang/String;
    .param p3, "platformRequestId"    # Ljava/lang/String;

    .prologue
    .line 17
    :try_start_0
    sget-object v7, Lcom/oculus/vrshell/home/HomeApplication;->instance:Lcom/oculus/vrshell/home/HomeApplication;

    invoke-virtual {v7}, Lcom/oculus/vrshell/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 18
    .local v1, "ctx":Landroid/content/Context;
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 20
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 22
    .local v6, "returnPackage":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.oculus.iap_shell_result"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 25
    .local v3, "intent":Landroid/content/Intent;
    :try_start_1
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 26
    .local v4, "platformRequestIdLong":J
    const-string v7, "platform_request_id"

    invoke-virtual {v3, v7, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 31
    .end local v4    # "platformRequestIdLong":J
    :goto_0
    :try_start_2
    const-string v7, "iap_shell_json"

    invoke-virtual {v3, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const-string v7, "is_successful"

    invoke-virtual {v3, v7, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 33
    const-string v7, "return_package"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    invoke-virtual {v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 38
    const-string v7, "com.oculus.horizon"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    invoke-virtual {v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 41
    invoke-static {v1, v0}, Lcom/oculus/vrshell/home/PaymentFlowProvider;->returnToCallingPackage(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 43
    const/4 v7, 0x0

    .line 46
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "returnPackage":Ljava/lang/String;
    :goto_1
    return v7

    .line 27
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    .restart local v1    # "ctx":Landroid/content/Context;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v6    # "returnPackage":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 28
    .local v2, "e":Ljava/lang/NumberFormatException;
    sget-object v7, Lcom/oculus/vrshell/home/PaymentFlowProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "StoreIAP: Cannot parse platformRequestId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", returning IAP result without it."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 44
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "returnPackage":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 45
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/oculus/vrshell/home/PaymentFlowProvider;->TAG:Ljava/lang/String;

    const-string v8, "StoreIAP: Failed to return IAP result to the calling app."

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    const/4 v7, -0x1

    goto :goto_1
.end method

.method private static returnToCallingPackage(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 68
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 69
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 70
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 72
    return-void
.end method
