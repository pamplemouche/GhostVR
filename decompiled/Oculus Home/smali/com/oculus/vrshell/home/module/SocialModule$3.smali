.class Lcom/oculus/vrshell/home/module/SocialModule$3;
.super Ljava/lang/Object;
.source "SocialModule.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/home/module/SocialModule;->fetchFacebookAccount(I)V
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
        "Lcom/oculus/vrshell/home/module/SocialModule$FacebookAccount;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/home/module/SocialModule;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/home/module/SocialModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/vrshell/home/module/SocialModule;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/SocialModule$3;->this$0:Lcom/oculus/vrshell/home/module/SocialModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/oculus/vrshell/home/module/SocialModule$FacebookAccount;
    .locals 3

    .prologue
    .line 200
    iget-object v1, p0, Lcom/oculus/vrshell/home/module/SocialModule$3;->this$0:Lcom/oculus/vrshell/home/module/SocialModule;

    const-string v2, "com.facebook.wakizashi"

    invoke-static {v1, v2}, Lcom/oculus/vrshell/home/module/SocialModule;->access$400(Lcom/oculus/vrshell/home/module/SocialModule;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 203
    .local v0, "facebookAccount":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 204
    iget-object v1, p0, Lcom/oculus/vrshell/home/module/SocialModule$3;->this$0:Lcom/oculus/vrshell/home/module/SocialModule;

    const-string v2, "com.facebook.katana"

    invoke-static {v1, v2}, Lcom/oculus/vrshell/home/module/SocialModule;->access$400(Lcom/oculus/vrshell/home/module/SocialModule;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 208
    :cond_0
    invoke-static {v0}, Lcom/oculus/vrshell/home/module/SocialModule;->access$500(Lorg/json/JSONObject;)Lcom/oculus/vrshell/home/module/SocialModule$FacebookAccount;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/oculus/vrshell/home/module/SocialModule$3;->call()Lcom/oculus/vrshell/home/module/SocialModule$FacebookAccount;

    move-result-object v0

    return-object v0
.end method
