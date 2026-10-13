.class Lcom/oculus/mobileconfig/init/MobileConfigInit$1;
.super Ljava/lang/Object;
.source "MobileConfigInit.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/mobileconfig/init/MobileConfigInit;->scheduleCreationOfRealManager(Lcom/oculus/auth/credentials/Credentials;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/mobileconfig/init/MobileConfigInit;

.field final synthetic val$credentials:Lcom/oculus/auth/credentials/Credentials;


# direct methods
.method constructor <init>(Lcom/oculus/mobileconfig/init/MobileConfigInit;Lcom/oculus/auth/credentials/Credentials;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/oculus/mobileconfig/init/MobileConfigInit$1;->this$0:Lcom/oculus/mobileconfig/init/MobileConfigInit;

    iput-object p2, p0, Lcom/oculus/mobileconfig/init/MobileConfigInit$1;->val$credentials:Lcom/oculus/auth/credentials/Credentials;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/oculus/mobileconfig/init/MobileConfigInit$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v1, p0, Lcom/oculus/mobileconfig/init/MobileConfigInit$1;->this$0:Lcom/oculus/mobileconfig/init/MobileConfigInit;

    iget-object v2, p0, Lcom/oculus/mobileconfig/init/MobileConfigInit$1;->val$credentials:Lcom/oculus/auth/credentials/Credentials;

    iget-object v0, p0, Lcom/oculus/mobileconfig/init/MobileConfigInit$1;->this$0:Lcom/oculus/mobileconfig/init/MobileConfigInit;

    .line 171
    invoke-static {v0}, Lcom/oculus/mobileconfig/init/MobileConfigInit;->access$000(Lcom/oculus/mobileconfig/init/MobileConfigInit;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;

    .line 170
    invoke-virtual {v1, v2, v0}, Lcom/oculus/mobileconfig/init/MobileConfigInit;->updateMobileConfigManagerHolderIfNecessary(Lcom/oculus/auth/credentials/Credentials;Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;)Z

    .line 172
    const/4 v0, 0x0

    return-object v0
.end method
