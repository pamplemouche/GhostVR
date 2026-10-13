.class Lcom/oculus/modules/MessengerModule$4;
.super Ljava/lang/Object;
.source "MessengerModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/modules/MessengerModule;->SetUserId(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/modules/MessengerModule;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/modules/MessengerModule;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/modules/MessengerModule;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/oculus/modules/MessengerModule$4;->this$0:Lcom/oculus/modules/MessengerModule;

    iput-object p2, p0, Lcom/oculus/modules/MessengerModule$4;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/oculus/modules/MessengerModule$4;->this$0:Lcom/oculus/modules/MessengerModule;

    iget-object v1, p0, Lcom/oculus/modules/MessengerModule$4;->val$userId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oculus/modules/MessengerModule;->access$1402(Lcom/oculus/modules/MessengerModule;Ljava/lang/String;)Ljava/lang/String;

    .line 484
    iget-object v0, p0, Lcom/oculus/modules/MessengerModule$4;->this$0:Lcom/oculus/modules/MessengerModule;

    invoke-static {v0}, Lcom/oculus/modules/MessengerModule;->access$500(Lcom/oculus/modules/MessengerModule;)V

    .line 485
    return-void
.end method
