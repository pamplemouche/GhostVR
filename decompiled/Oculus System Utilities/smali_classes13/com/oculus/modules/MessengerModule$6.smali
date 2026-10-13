.class Lcom/oculus/modules/MessengerModule$6;
.super Ljava/lang/Object;
.source "MessengerModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/modules/MessengerModule;->SetAppId(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/modules/MessengerModule;

.field final synthetic val$appId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/modules/MessengerModule;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/modules/MessengerModule;

    .prologue
    .line 502
    iput-object p1, p0, Lcom/oculus/modules/MessengerModule$6;->this$0:Lcom/oculus/modules/MessengerModule;

    iput-object p2, p0, Lcom/oculus/modules/MessengerModule$6;->val$appId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/oculus/modules/MessengerModule$6;->this$0:Lcom/oculus/modules/MessengerModule;

    iget-object v1, p0, Lcom/oculus/modules/MessengerModule$6;->val$appId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oculus/modules/MessengerModule;->access$1602(Lcom/oculus/modules/MessengerModule;Ljava/lang/String;)Ljava/lang/String;

    .line 506
    iget-object v0, p0, Lcom/oculus/modules/MessengerModule$6;->this$0:Lcom/oculus/modules/MessengerModule;

    invoke-static {v0}, Lcom/oculus/modules/MessengerModule;->access$500(Lcom/oculus/modules/MessengerModule;)V

    .line 507
    return-void
.end method
