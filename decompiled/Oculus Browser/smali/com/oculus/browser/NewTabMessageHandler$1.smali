.class public Lcom/oculus/browser/NewTabMessageHandler$1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/oculus/browser/NewTabMessageHandler;


# direct methods
.method public constructor <init>(Lcom/oculus/browser/NewTabMessageHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/NewTabMessageHandler$1;->this$0:Lcom/oculus/browser/NewTabMessageHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/NewTabMessageHandler$1;->this$0:Lcom/oculus/browser/NewTabMessageHandler;

    invoke-static {v0}, Lcom/oculus/browser/NewTabMessageHandler;->access$000(Lcom/oculus/browser/NewTabMessageHandler;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/oculus/browser/NewTabMessageHandler$1;->this$0:Lcom/oculus/browser/NewTabMessageHandler;

    invoke-static {v0}, Lcom/oculus/browser/NewTabMessageHandler;->access$100(Lcom/oculus/browser/NewTabMessageHandler;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/NewTabMessageHandler$1;->this$0:Lcom/oculus/browser/NewTabMessageHandler;

    invoke-static {v0}, Lcom/oculus/browser/NewTabMessageHandler;->access$000(Lcom/oculus/browser/NewTabMessageHandler;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/oculus/browser/NewTabMessageHandler$1;->this$0:Lcom/oculus/browser/NewTabMessageHandler;

    invoke-static {v3}, Lcom/oculus/browser/NewTabMessageHandler;->access$100(Lcom/oculus/browser/NewTabMessageHandler;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/oculus/browser/NewTabMessageHandler;->access$200(Lcom/oculus/browser/NewTabMessageHandler;JLjava/lang/String;)V

    :cond_0
    return-void
.end method
