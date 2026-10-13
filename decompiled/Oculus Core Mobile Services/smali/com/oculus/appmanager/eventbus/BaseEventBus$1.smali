.class Lcom/oculus/appmanager/eventbus/BaseEventBus$1;
.super Ljava/lang/Object;
.source "BaseEventBus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/appmanager/eventbus/BaseEventBus;->postOnUIBus(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/appmanager/eventbus/BaseEventBus;

.field final synthetic val$event:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/oculus/appmanager/eventbus/BaseEventBus;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/oculus/appmanager/eventbus/BaseEventBus$1;->this$0:Lcom/oculus/appmanager/eventbus/BaseEventBus;

    iput-object p2, p0, Lcom/oculus/appmanager/eventbus/BaseEventBus$1;->val$event:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oculus/appmanager/eventbus/BaseEventBus$1;->this$0:Lcom/oculus/appmanager/eventbus/BaseEventBus;

    invoke-static {v0}, Lcom/oculus/appmanager/eventbus/BaseEventBus;->access$000(Lcom/oculus/appmanager/eventbus/BaseEventBus;)Lcom/squareup/otto/Bus;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/appmanager/eventbus/BaseEventBus$1;->val$event:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 57
    return-void
.end method
