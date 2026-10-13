.class public Lcom/oculus/vrshell/home/module/ShutdownIntentModule;
.super Ljava/lang/Object;
.source "ShutdownIntentModule.java"


# static fields
.field private static MODULE_NAME:Ljava/lang/String;


# instance fields
.field public RVRCtxTag:J

.field private hasShutdownIntent:Z

.field private shutdownAction:Ljava/lang/String;

.field private shutdownPackage:Ljava/lang/String;

.field private shutdownURI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/String;

    const-string v1, "ShutdownIntentModule"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/vrshell/home/module/ShutdownIntentModule;->MODULE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/vrshell/home/module/ShutdownIntentModule;->hasShutdownIntent:Z

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/oculus/vrshell/home/module/ShutdownIntentModule;->shutdownURI:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/oculus/vrshell/home/module/ShutdownIntentModule;->shutdownAction:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/oculus/vrshell/home/module/ShutdownIntentModule;->shutdownPackage:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static describe()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "clearShutdownIntent"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v1, Landroid/util/Pair;

    const-string v2, "setShutdownIntent"

    const-string v3, "sss"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    return-object v0
.end method

.method static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method static native nativeInvokeCallback(JILjava/lang/String;)V
.end method


# virtual methods
.method public clearShutdownIntent()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/vrshell/home/module/ShutdownIntentModule;->hasShutdownIntent:Z

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/oculus/vrshell/home/module/ShutdownIntentModule;->shutdownURI:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/oculus/vrshell/home/module/ShutdownIntentModule;->shutdownAction:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/oculus/vrshell/home/module/ShutdownIntentModule;->shutdownPackage:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/oculus/vrshell/home/module/ShutdownIntentModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public setShutdownIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "uri"    # Ljava/lang/String;

    .prologue
    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/vrshell/home/module/ShutdownIntentModule;->hasShutdownIntent:Z

    .line 41
    iput-object p3, p0, Lcom/oculus/vrshell/home/module/ShutdownIntentModule;->shutdownURI:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/oculus/vrshell/home/module/ShutdownIntentModule;->shutdownAction:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/ShutdownIntentModule;->shutdownPackage:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public shutdownModule()V
    .locals 5

    .prologue
    .line 54
    iget-boolean v2, p0, Lcom/oculus/vrshell/home/module/ShutdownIntentModule;->hasShutdownIntent:Z

    if-eqz v2, :cond_1

    .line 55
    const-string v2, "ShutdownIntentModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending activity \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/vrshell/home/module/ShutdownIntentModule;->shutdownAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' or URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/vrshell/home/module/ShutdownIntentModule;->shutdownURI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/vrshell/home/module/ShutdownIntentModule;->shutdownPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    sget-object v2, Lcom/oculus/vrshell/home/HomeApplication;->instance:Lcom/oculus/vrshell/home/HomeApplication;

    invoke-virtual {v2}, Lcom/oculus/vrshell/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 57
    .local v0, "ctx":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 59
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/oculus/vrshell/home/module/ShutdownIntentModule;->shutdownURI:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    iget-object v2, p0, Lcom/oculus/vrshell/home/module/ShutdownIntentModule;->shutdownURI:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 65
    :goto_0
    iget-object v2, p0, Lcom/oculus/vrshell/home/module/ShutdownIntentModule;->shutdownPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 71
    .end local v0    # "ctx":Landroid/content/Context;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 62
    .restart local v0    # "ctx":Landroid/content/Context;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/oculus/vrshell/home/module/ShutdownIntentModule;->shutdownAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 69
    .end local v0    # "ctx":Landroid/content/Context;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v2, "ShutdownIntentModule"

    const-string v3, "No intent to send"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
