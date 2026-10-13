.class public LFY0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Ljava/lang/String;

.field public final synthetic x:Landroid/os/Bundle;

.field public final synthetic y:LQY0;


# direct methods
.method public constructor <init>(LQY0;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, LFY0;->y:LQY0;

    iput-object p2, p0, LFY0;->w:Ljava/lang/String;

    iput-object p3, p0, LFY0;->x:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, LFY0;->y:LQY0;

    .line 2
    iget-object v0, v0, LQY0;->e:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    .line 3
    iget-object v0, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->C:Lorg/chromium/ui/base/ViewAndroidDelegate;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    throw v0
.end method
