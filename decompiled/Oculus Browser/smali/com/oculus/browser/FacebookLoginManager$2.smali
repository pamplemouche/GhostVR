.class public Lcom/oculus/browser/FacebookLoginManager$2;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/oculus/browser/FacebookLoginManager;


# direct methods
.method public constructor <init>(Lcom/oculus/browser/FacebookLoginManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/FacebookLoginManager$2;->this$0:Lcom/oculus/browser/FacebookLoginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/FacebookLoginManager$2;->this$0:Lcom/oculus/browser/FacebookLoginManager;

    invoke-static {v0}, Lcom/oculus/browser/FacebookLoginManager;->access$200(Lcom/oculus/browser/FacebookLoginManager;)V

    return-void
.end method
