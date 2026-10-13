.class final Lcom/oculus/mobileconfig/init/MobileConfigInitModule$1;
.super Ljava/lang/Object;
.source "MobileConfigInitModule.java"

# interfaces
.implements Lcom/facebook/mobileconfig/MobileConfigUserIdProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/mobileconfig/init/MobileConfigInitModule;->provideMobileConfig(Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;Landroid/content/Context;Lcom/facebook/inject/Lazy;)Lcom/facebook/mobileconfig/factory/MobileConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$credentialsLazy:Lcom/facebook/inject/Lazy;


# direct methods
.method constructor <init>(Lcom/facebook/inject/Lazy;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/oculus/mobileconfig/init/MobileConfigInitModule$1;->val$credentialsLazy:Lcom/facebook/inject/Lazy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oculus/mobileconfig/init/MobileConfigInitModule$1;->val$credentialsLazy:Lcom/facebook/inject/Lazy;

    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/mobileconfig/init/MobileConfigInitModule$1;->val$credentialsLazy:Lcom/facebook/inject/Lazy;

    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/auth/credentials/Credentials;

    invoke-virtual {v0}, Lcom/oculus/auth/credentials/Credentials;->getUserId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
