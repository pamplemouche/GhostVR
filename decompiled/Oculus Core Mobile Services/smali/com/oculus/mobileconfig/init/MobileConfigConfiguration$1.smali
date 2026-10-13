.class Lcom/oculus/mobileconfig/init/MobileConfigConfiguration$1;
.super Ljava/lang/Object;
.source "MobileConfigConfiguration.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/mobileconfig/init/MobileConfigConfiguration;->fetchAsync()Lbolts/Task;
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
.field final synthetic this$0:Lcom/oculus/mobileconfig/init/MobileConfigConfiguration;

.field final synthetic val$managerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;


# direct methods
.method constructor <init>(Lcom/oculus/mobileconfig/init/MobileConfigConfiguration;Lcom/facebook/mobileconfig/MobileConfigManagerHolder;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/oculus/mobileconfig/init/MobileConfigConfiguration$1;->this$0:Lcom/oculus/mobileconfig/init/MobileConfigConfiguration;

    iput-object p2, p0, Lcom/oculus/mobileconfig/init/MobileConfigConfiguration$1;->val$managerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

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
    .line 53
    invoke-virtual {p0}, Lcom/oculus/mobileconfig/init/MobileConfigConfiguration$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oculus/mobileconfig/init/MobileConfigConfiguration$1;->this$0:Lcom/oculus/mobileconfig/init/MobileConfigConfiguration;

    iget-object v1, p0, Lcom/oculus/mobileconfig/init/MobileConfigConfiguration$1;->val$managerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    invoke-virtual {v0, v1}, Lcom/oculus/mobileconfig/init/MobileConfigConfiguration;->updateConfigs(Lcom/facebook/mobileconfig/MobileConfigManagerHolder;)Z

    .line 57
    const/4 v0, 0x0

    return-object v0
.end method
