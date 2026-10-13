.class public Lcom/oculus/browser/VrShellImpl$2;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/oculus/browser/VrShellImpl;

.field public final synthetic val$action:I

.field public final synthetic val$activity:Landroid/app/Activity;

.field public final synthetic val$keycode:I


# direct methods
.method public constructor <init>(Lcom/oculus/browser/VrShellImpl;Landroid/app/Activity;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/VrShellImpl$2;->this$0:Lcom/oculus/browser/VrShellImpl;

    iput-object p2, p0, Lcom/oculus/browser/VrShellImpl$2;->val$activity:Landroid/app/Activity;

    iput p3, p0, Lcom/oculus/browser/VrShellImpl$2;->val$action:I

    iput p4, p0, Lcom/oculus/browser/VrShellImpl$2;->val$keycode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/VrShellImpl$2;->val$activity:Landroid/app/Activity;

    new-instance v1, Landroid/view/KeyEvent;

    iget v2, p0, Lcom/oculus/browser/VrShellImpl$2;->val$action:I

    iget v3, p0, Lcom/oculus/browser/VrShellImpl$2;->val$keycode:I

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method
