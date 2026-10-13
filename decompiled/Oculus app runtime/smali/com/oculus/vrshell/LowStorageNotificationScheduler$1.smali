.class final Lcom/oculus/vrshell/LowStorageNotificationScheduler$1;
.super Ljava/lang/Object;
.source "LowStorageNotificationScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/LowStorageNotificationScheduler;->scheduleStorageCheck(JLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/oculus/vrshell/LowStorageNotificationScheduler$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/oculus/vrshell/LowStorageNotificationScheduler$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/oculus/vrshell/LowStorageNotificationScheduler;->access$000(Landroid/content/Context;)V

    return-void
.end method
