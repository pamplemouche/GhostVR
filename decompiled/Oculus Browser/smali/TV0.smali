.class public final synthetic LTV0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final w:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LTV0;

    invoke-direct {v0}, LTV0;-><init>()V

    sput-object v0, LTV0;->w:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->t:LKV0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, LKV0;->z:Ljava/lang/Runnable;

    .line 3
    sget-object v1, Lorg/chromium/content/browser/LauncherThread;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
