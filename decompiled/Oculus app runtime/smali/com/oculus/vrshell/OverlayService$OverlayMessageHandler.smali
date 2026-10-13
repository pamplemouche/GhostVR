.class Lcom/oculus/vrshell/OverlayService$OverlayMessageHandler;
.super Landroid/os/Handler;
.source "OverlayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/OverlayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverlayMessageHandler"
.end annotation


# instance fields
.field private final service:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oculus/vrshell/OverlayService;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oculus/vrshell/OverlayService;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/OverlayService;Lcom/oculus/vrshell/OverlayService;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/oculus/vrshell/OverlayService$OverlayMessageHandler;->this$0:Lcom/oculus/vrshell/OverlayService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 21
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/oculus/vrshell/OverlayService$OverlayMessageHandler;->service:Ljava/lang/ref/WeakReference;

    return-void
.end method
