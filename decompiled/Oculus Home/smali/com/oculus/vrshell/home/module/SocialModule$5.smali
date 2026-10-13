.class Lcom/oculus/vrshell/home/module/SocialModule$5;
.super Landroid/database/ContentObserver;
.source "SocialModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/home/module/SocialModule;->registerFBConnectContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/home/module/SocialModule;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/home/module/SocialModule;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/vrshell/home/module/SocialModule;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/SocialModule$5;->this$0:Lcom/oculus/vrshell/home/module/SocialModule;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 337
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/SocialModule$5;->this$0:Lcom/oculus/vrshell/home/module/SocialModule;

    iget-object v1, p0, Lcom/oculus/vrshell/home/module/SocialModule$5;->this$0:Lcom/oculus/vrshell/home/module/SocialModule;

    invoke-static {v1}, Lcom/oculus/vrshell/home/module/SocialModule;->access$600(Lcom/oculus/vrshell/home/module/SocialModule;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/home/module/SocialModule;->fetchFBConnectAccount(I)V

    .line 338
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/SocialModule$5;->this$0:Lcom/oculus/vrshell/home/module/SocialModule;

    invoke-static {v0}, Lcom/oculus/vrshell/home/module/SocialModule;->access$700(Lcom/oculus/vrshell/home/module/SocialModule;)V

    .line 339
    return-void
.end method
